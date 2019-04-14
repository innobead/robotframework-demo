*** Settings ***
Library  BuiltIn
Library  Process
Library  ../libs/caasptest/

*** Variables ***
${VERSION}  0.2.0

*** Test Cases ***
caaspctl comparision by keyword
  [Setup]  setup
  [Teardown]  teardown

  ${result}=  run process  caaspctl  version  stderr=STDOUT

  should be equal  ${result.rc}  ${0}
  should be equal  ${result.stdout}  ${VERSION}

caaspctl comparision by lib
  [Setup]  setup
  [Teardown]  teardown

  ${result}=  run process  caaspctl  version  stderr=STDOUT

  should be equal  ${result.rc}  ${0}
  caaspctl version should be equal  ${result.stdout}  ${VERSION}

caaspctl comparision by lib by regex
  [Setup]  setup
  [Teardown]  teardown

  ${result}=  run process  caaspctl  version  stderr=STDOUT

  should be equal  ${result.rc}  ${0}
  caaspctl version should be equal by regex  ${result.stdout}  ${VERSION}

*** Keywords ***
Setup
  log  "test cases setup"

Teardown
  log  "test case teardown"

