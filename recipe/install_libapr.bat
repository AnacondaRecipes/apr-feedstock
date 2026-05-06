set SUBPKG=apr

cmake -GNinja ^
    -S%SRC_DIR%\%SUBPKG% ^
    -B%SRC_DIR%\%SUBPKG%.build ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
if errorlevel 1 exit 1

cmake --build %SRC_DIR%\%SUBPKG%.build -- install
if errorlevel 1 exit 1
