CC=cc
CFLAGS=-O0
OUTDIR = output

all: $(OUTDIR)/lab001 $(OUTDIR)/lab002 $(OUTDIR)/lab003 $(OUTDIR)/lab004 $(OUTDIR)/lab005 $(OUTDIR)/lab006 $(OUTDIR)/lab007 $(OUTDIR)/lab008 $(OUTDIR)/lab013

$(OUTDIR)/lab%: lab%.c
	@mkdir -p $(OUTDIR)
	$(CC) -o $@ $< $(CFLAGS)

index: *.c
	sed -n '/\* lab[0-9]* - /s/...//p' *.c > INDEX

clean:
	rm -rf $(OUTDIR) *.data
