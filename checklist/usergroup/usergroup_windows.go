package usergroup

import (
	"bytes"
	"fmt"
	"os/exec"
	"slices"
	"strings"
)

func GetUsersAndGroups() (string, error) {
	groups, err := getLocalGroups()
	if err != nil {
		return "", err
	}

	userGroups := make(map[string][]string)

	for _, group := range groups {
		members, err := getGroupMembers(group)
		if err != nil {
			continue // skip group if error (e.g. no members)
		}
		for _, user := range members {
			userGroups[user] = append(userGroups[user], group)
		}
	}

	var result string
	users := make([]string, 0, len(userGroups))
	for user := range userGroups {
		users = append(users, user)
	}
	slices.Sort(users)
	for _, user := range users {
		groups := userGroups[user]
		slices.Sort(groups)
		result += fmt.Sprintf(`"%s": %s\n`, user, strings.Join(groups, ", "))
	}

	return result, nil
}

// get all local groups
func getLocalGroups() ([]string, error) {
	cmd := exec.Command("powershell", "-Command", "net", "localgroup")
	var out bytes.Buffer
	cmd.Stdout = &out
	err := cmd.Run()
	if err != nil {
		return nil, err
	}

	var groups []string
	lines := strings.Split(out.String(), "\n")
	started := false
	for _, line := range lines {
		line = strings.TrimSpace(line)
		if strings.Contains(line, "-------") {
			started = true
			continue
		}
		if started {
			if line == "" || strings.HasPrefix(line, "The command completed") {
				break
			}
			groups = append(groups, line)
		}
	}
	return groups, nil
}

// get members of a group
func getGroupMembers(group string) ([]string, error) {
	cmd := exec.Command("net", "localgroup", group)
	var out bytes.Buffer
	cmd.Stdout = &out
	err := cmd.Run()
	if err != nil {
		return nil, err
	}

	var users []string
	lines := strings.Split(out.String(), "\n")
	started := false
	for _, line := range lines {
		line = strings.TrimSpace(line)
		if strings.Contains(line, "-------") {
			started = true
			continue
		}
		if started {
			if line == "" || strings.HasPrefix(line, "The command completed") {
				break
			}
			users = append(users, line)
		}
	}
	return users, nil
}
