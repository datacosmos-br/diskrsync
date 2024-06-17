module github.com/datacosmos-br/diskrsync

go 1.22

toolchain go1.22.4

require (
	github.com/dop251/spgz v1.2.1
	github.com/spf13/pflag v1.0.5
	github.com/vbauerster/mpb/v7 v7.5.3
	golang.org/x/sys v0.21.0 // indirect
)

require (
	github.com/dop251/diskrsync v1.3.0
	golang.org/x/crypto v0.24.0
)

replace github.com/dop251/diskrsync => github.com/datacosmos-br/diskrsync v1.3.3

require (
	github.com/VividCortex/ewma v1.2.0 // indirect
	github.com/acarl005/stripansi v0.0.0-20180116102854-5a71ef0e047d // indirect
	github.com/mattn/go-runewidth v0.0.15 // indirect
	github.com/rivo/uniseg v0.4.7 // indirect
)
