# Description

Makefile which uses a Docker container to generate graphviz graphs

# Usage

Build docker image

	make build

Create graph

	make graph


By calling `make graph` you would generate graphs for all `*.dot` files residing in current directory.

# Examples

	make graph
	make graph FORMAT=pdf
	make graph FORMAT=png
	make people.png
	
# References

- https://www.docker.com/
- https://graphviz.org/
- https://en.wikipedia.org/wiki/DOT_(graph_description_language)