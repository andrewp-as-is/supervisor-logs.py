<!--
https://readme42.com
-->


[![](https://img.shields.io/pypi/v/supervisor-logs.svg?maxAge=3600)](https://pypi.org/project/supervisor-logs/)
[![](https://img.shields.io/badge/License-Unlicense-blue.svg?longCache=True)](https://unlicense.org/)
[![](https://github.com/andrewp-as-is/supervisor-logs.py/workflows/tests42/badge.svg)](https://github.com/andrewp-as-is/supervisor-logs.py/actions)

### Installation
```bash
$ [sudo] pip install supervisor-logs
```

#### Examples
`file.ini` before
```
[program:name]
```

```bash
$ export SUPERVISOR_LOGS=~/Library/Logs
$ python -m supervisor_logs.add file.ini
```

`file.ini` after
```
[program:name]
stderr_logfile = ~/Library/Logs/supervisor/name/err.log
stdout_logfile = ~/Library/Logs/supervisor/name/out.log
```

```bash
$ find . -name "*.ini" -exec supervisor_logs.add {} \;  # add logs to program sections
$ find . -name "*.ini" -exec supervisor_logs.mkdir {} \;  # make log directories
$ find . -name "*.ini" -exec supervisor_logs.clear {} \;  # clear log files
```

<p align="center">
    <a href="https://readme42.com/">readme42.com</a>
</p>