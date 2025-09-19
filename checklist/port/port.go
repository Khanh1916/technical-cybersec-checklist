package port

import (
	"fmt"
	"log"
	"net"
	"slices"
	"strings"

	gopsutilnet "github.com/shirou/gopsutil/v3/net"
)

func GetPorts() (string, error) {
	conns, err := gopsutilnet.Connections("inet")
	if err != nil {
		log.Fatal(err)
	}

	ports := make([]string, 0)

	for _, conn := range conns {
		if conn.Status == "LISTEN" {
			if net.ParseIP(conn.Laddr.IP).IsLoopback() {
				continue
			}
			ports = append(ports, fmt.Sprint(conn.Laddr.Port))
		}
	}
	slices.Sort(ports)
	return strings.Join(ports, ", "), nil
}
