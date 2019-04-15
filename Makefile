.PHONY: run
run:  
	@robot --xunit xunit.xml --debugfile debug.log --loglevel INFO --outputdir output -v version:0.2.0 tests/

.PHONY: runindocker
runindocker:  
	@docker run -v `pwd`:/project caaspautotest --xunit xunit.xml --debugfile debug.log --loglevel INFO --outputdir output -v version:0.2.0 tests/

.PHONY: buildimage
buildimage:
	@docker build -f Dockerfile_caasp -t caaspautotest .

.PHONY: clean
clean:
	@rm -rf results


