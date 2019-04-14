.PHONY: run
run:  
	@robot  -x junit.xml -b debug.log -v version:0.2.0 -d results tests/

.PHONY: clean
clean:
	@rm -rf results
