package file

import (
	"fmt"
	"os"
	"slices"
	"strings"
)

func Files(folders []string) string {
	slices.Sort(folders)
	var result string
	for _, folder := range folders {
		files := getFiles(folder)
		slices.Sort(files)
		result += fmt.Sprintf(`"%s": %s\n`, folder, strings.Join(files, ", "))
	}
	return result
}

func getFiles(folder string) []string {
	entry, err := os.ReadDir(folder)
	if err != nil {
		return nil
	}
	var files []string
	for _, e := range entry {
		if e.IsDir() {
			continue
		}
		files = append(files, e.Name())
	}
	return files
}
