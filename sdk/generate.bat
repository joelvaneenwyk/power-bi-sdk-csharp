pushd "%~dp0"
@echo "%~dp0"
rd "PowerBI.Api\Source\" /s /q

@echo Generating code using powerbi.md
call npm exec autorest --version=2.0.4413 powerbi.md
popd
@echo AutoRest run sucessfully
