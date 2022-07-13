
.PHONY: build
build:
	@go build -o ./../../../../bin/protoc-gen-go-pname ./cmd/protoc-gen-go-pname

.PHONY: run
run:
	@protoc	--go_out paths=source_relative:./api \
		--go-pname_out=paths=source_relative,pkg_name=adminpb:./api \
		-I ./api \
		./api/adminpb/*.proto

all: build run