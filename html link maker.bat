@echo off
set /p weblink="Enter the web link: "
set /p filename="Enter the file name (without extension): "

echo ^<html^> > "%filename%.html"
echo ^<head^> >> "%filename%.html"
echo ^<title^>Redirecting to %weblink%^</title^> >> "%filename%.html"
echo ^<meta http-equiv="refresh" content="0;url=%weblink%" /^> >> "%filename%.html"
echo ^</head^> >> "%filename%.html"
echo ^<body^> >> "%filename%.html"
echo Redirecting to %weblink%... >> "%filename%.html"
echo ^</body^> >> "%filename%.html"
echo ^</html^> >> "%filename%.html"

echo HTML file "%filename%.html" has been created with the link %weblink%.
pause
