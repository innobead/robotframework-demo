def caaspctl_version_should_be_equal(output: str, expected_output: str):
    if output != expected_output:
        raise RuntimeError("version incorrect: {}:{}".format(output, expected_output))

def caaspctl_version_should_be_equal_by_regex(output: str, expected_output: str):
    import re
    if not re.search(r"\s{}\s".format(expected_output), output):
        raise RuntimeError("version incorrect: {}:{}".format(output, expected_output))

