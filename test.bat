@echo off
REM Description: Tests generated JSON files against schemas
REM Prerequisites: install 'ajv-cli' and 'ajv-formats':$  npm install -g ajv-cli ajv-formats

call ajv test -s ./schemas/schema.json -r "./schemas/*.json" -d "examples/valid/*.json" -c ajv-formats --valid
call ajv test -s ./schemas/schema.json -r "./schemas/*.json" -d "examples/invalid/*.json" -c ajv-formats --invalid 


if %errorlevel%==0 (
	echo.
	echo All tests PASSED
	echo.
)