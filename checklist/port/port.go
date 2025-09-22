package port

import (
	"fmt"
	"log"
	"net"
	"slices"
	"strings"

	gopsutilnet "github.com/shirou/gopsutil/v3/net"
)

func socketTypeToString(t uint32) string {
	switch t {
	case 1:
		return "TCP"
	case 2:
		return "UDP"
	default:
		return "UNKNOWN"
	}
}

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
			ports = append(ports, fmt.Sprintf("%s:%d/%s", conn.Laddr.IP, conn.Laddr.Port, socketTypeToString(conn.Type)))
		}
	}
	slices.Sort(ports)
	return strings.Join(ports, "\n"), nil
}
