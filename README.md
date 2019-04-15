Robotframework demo

# Prerequites
- Install python3
- Install robotframework
- Download released caaspctl*.zip artifact (in top folder)
- Have github private key (id_rsa in top folder)

# Goals
- Show us how easy it is to create a test.
- Show us how easy it is to read the logs and find out what happened.
- Show us how easy it is to run the test from our machine. 
That also means how easy it is to add all the required packages for the test env to be ready.

## Goal 1: how easy to create a test
- Create a test suite file
- Add test cases and import used libraries
- Run the test case

```
robot --xunit xunit.xml --debugfile debug.log --loglevel INFO --outputdir output -v version:0.2.0 tests/
```

## Goal 2: how easy to read test logs and report
- After goal 1, there are few files for logs and report.
    - output.xml (robot xml report for customized report or automation)
    - report.html (high level test suites summary HTML report)
    - log.html (test suites HTML report)
    - debug.log (detailed debug log)
    - xunit.xml (junit compatiable report)
- Also, support CI integration. (ex: Jenkins plugin)

## Goal 3: how easy to run test case from anywhere
- Create a container image for runtime environment (ex: save on registry.suse.de)
- Run test case in container

```
docker run -v `pwd`:/project caaspautotest --xunit xunit.xml --debugfile debug.log --loglevel INFO --outputdir output -v version:0.2.0 tests/
```

## Demo (write, run test)
[![asciicast](https://asciinema.org/a/ZdB5LSvQNdAd2UK7wEqLBaWZx.svg)](https://asciinema.org/a/ZdB5LSvQNdAd2UK7wEqLBaWZx)

## Demo (test log)
[![asciicast](https://asciinema.org/a/dQgsZBk8WMJ4fc8FAXLLNLkYR.svg)](https://asciinema.org/a/dQgsZBk8WMJ4fc8FAXLLNLkYR)

# Misc
- Enable syntax highlight in vim

```
https://github.com/mfukar/robotframework-vim
```

- Default Robot libraies

```
Check ~/.pyenv/versions/3.7.1/lib/python3.7/site-packages/robot/libraries/__init__.py

STDLIBS = frozenset(('BuiltIn', 'Collections', 'DateTime', 'Dialogs', 'Easter',
                     'OperatingSystem', 'Process', 'Remote', 'Reserved',
                     'Screenshot', 'String', 'Telnet', 'XML'))
```

- Community Robot libraries (100+)

```
pip search robotframework*
```
