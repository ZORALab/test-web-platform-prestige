echo >/dev/null # >nul & GOTO WINDOWS & rem ^




################################################################################
# Unix Main Codes                                                              #
################################################################################
while true; do
        pgrep hugo | xargs kill -9 &> /dev/null
        sleep 3
        hugo server --noBuildLock \
                --disableFastRender \
                --port 8080 \
                --renderToDisk \
                --gc &
        sleep 180
done
################################################################################
# Unix Main Codes                                                              #
################################################################################
exit $?




:WINDOWS
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
:loop
taskkill /f /im hugo >NUL &
timeout /t 3
hugo server --noBuildLock ^
        --disableFastRender ^
        --port 8080 ^
        --renderToDisk ^
        --gc &
timeout /t 180
goto loop
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
EXIT /B