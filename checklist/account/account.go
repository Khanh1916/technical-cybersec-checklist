package account

import (
	"bufio"
	"bytes"
	"os"
	"os/exec"
	"runtime"
	"slices"
	"strings"
)

func GetAccounts() (string, error) {
	var (
		results []string
		err     error
	)
	switch runtime.GOOS {
	case "linux":
		results, err = getAccountsLinux()
	case "windows":
		results, err = getAccountsWindows()
	}
	if err != nil {
		return "", err
	}
	slices.Sort(results)
	return strings.Join(results, ", "), nil
}

func getAccountsLinux() ([]string, error) {
	file, err := os.Open("/etc/passwd")
	if err != nil {
		return nil, err
	}
	defer file.Close()

	var users []string
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		line := scanner.Text()
		parts := strings.Split(line, ":")
		if len(parts) >= 1 {
			users = append(users, parts[0])
		}
	}

	if scanner.Err() != nil {
		return nil, scanner.Err()
	}

	return users, nil
}

func getAccountsWindows() ([]string, error) {
	cmd := exec.Command("net", "user")
	var out bytes.Buffer
	cmd.Stdout = &out
	err := cmd.Run()
	if err != nil {
		return nil, err
	}

	lines := strings.Split(out.String(), "\n")
	var users []string
	parsing := false

	for _, line := range lines {
		line = strings.TrimSpace(line)
		if line == "" {
			continue
		}

		// Bắt đầu parse sau dòng chứa dấu ---
		if strings.HasPrefix(line, "-----") {
			parsing = true
			continue
		}

		// Dừng khi gặp dòng thông báo hoàn thành
		if strings.Contains(line, "The command completed successfully.") {
			break
		}

		if parsing {
			// Tách từng user trong dòng (tách bằng khoảng trắng)
			fields := strings.Fields(line)
			users = append(users, fields...)
		}
	}

	return users, nil
}
