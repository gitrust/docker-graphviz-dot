
# name of the docker image
DOCKERIMAGE:=gitrust/docker-graphviz-dot


# Available formats
#   canon cmap cmapx cmapx_np dot dot_json eps fig gv imap imap_np 
#   ismap json json0 mp pdf pic plain plain-ext png pov ps ps2 svg svgz 
#   tk vml vmlz x11 xdot xdot1.2 xdot1.4 xdot_json xlib

# our target format
FORMAT:=png

# a list of all .dot files
ALL_DOT_FILES:=$(shell ls *.dot)

# make graph for all *.dot files using a target format
graph: $(patsubst %.dot,%.$(FORMAT),$(ALL_DOT_FILES))

# default conversion command
# convert .dot to .png
%.$(FORMAT): *.dot
	cat $< | docker container run --rm -i $(DOCKERIMAGE) dot -T$(FORMAT) > $(patsubst %.dot,%.$(FORMAT),$<)
	
# build docker image	
build:
	docker build -t $(DOCKERIMAGE) .

