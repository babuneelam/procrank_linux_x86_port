BUILDDIR=bin

SUBDIRS = libpagemap procrank

all: 
        @for dir in $(SUBDIRS); \
        do \
            $(MAKE) -C $${dir} $@ || exit $$?; \
        done

clean:
        echo cleaning up in .
        @for dir in $(SUBDIRS); \
        do \
            $(MAKE) -C $${dir} clean || exit $$?; \
        done
