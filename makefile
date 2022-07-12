
.PHONY: build
build:
	@go build -o ./../../../../bin/protoc-gen-go-pname ./cmd/protoc-gen-go-pname

.PHONY: run
run:
	@protoc --go-pname_out=paths=source_relative,enum_name=Code:./api \
		-I ./api \
		./api/adminpb/v1/*.proto

all: build run