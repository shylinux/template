package template

import (
	"github.com/shylinux/icebergs"
)

func init() {
	ice.Index.Register(&ice.Context{Name: "template", Help: "template",
		Caches:  map[string]*ice.Cache{},
		Configs: map[string]*ice.Config{},
		Commands: map[string]*ice.Command{
			"hi": {Name: "hi", Help: "hi", Hand: func(m *ice.Message, c *ice.Context, cmd string, arg ...string) {
				m.Echo("hello world")
			}},
		},
	}, nil)
}
