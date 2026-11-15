// EOEX_fnc_handleLoadingScreen


params ["_enable", "_progress"];


if (_enable) then {
    if (isNil "EOEX_var_loadingScreen") then {
        startLoadingScreen [localize "STR_EOEX_LOADING_NEW_CLIENT"];
    };
    EOEX_var_loadingScreen = true;
    progressLoadingScreen _progress;
} else {
    endLoadingScreen;
    EOEX_var_loadingScreen = nil;
};
