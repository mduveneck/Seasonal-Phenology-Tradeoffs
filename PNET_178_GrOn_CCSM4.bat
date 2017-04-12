set rep_num=301601702
for %%a in ("C:/Program Files/LANDIS-II/v6/bin/extensions/Landis.Extension.Succession.BiomassPnET.dll") do set PNET_DLL_DATE=%%~ta
for %%a in ("C:/Program Files/LANDIS-II/v6/bin/extensions/Landis.Extension.LandUse-1.0.dll") do set LANDUSE_PLUS_DLL_DATE=%%~ta
for %%a in ("C:/Program Files/LANDIS-II/v6/bin/extensions/Landis.Extension.BiomassHarvest-3.0.dll") do set HARVEST_DLL_DATE=%%~ta
for %%a in ("C:/Program Files/LANDIS-II/v6/bin/extensions/Landis.Extension.Output.PnET.dll") do set OUTPUT_PNET_DLL_DATE=%%~ta
set name=PNET_178_scenario_GrOn_CCSM4
TITLE %name% R: %rep_num% MLM:,%PNET_DLL_DATE%
for %%i in (%rep_num%) do call C_drive_helprun %name% %%i
rem for %%i in (%rep_num%) do call SSD_server_helprun %name% %%i
pause
