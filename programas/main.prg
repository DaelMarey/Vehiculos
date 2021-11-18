gdirectorio=SYS(5) + SYS(2003)

clear screen
set date to dmy
set century on
set exclusive off
set deleted on
set bell off
set escape off
set confirm on
set sysmenu off
set talk off
set notify cursor off
SET DECIMALS TO 2
*SET SAFETY OFF
*SET RESOURCE OFF

DO FORM gdirectorio + "\formas\inicio"

WITH _Screen
  .Icon = gdirectorio +"\iconos\gastos.ico"
  &&.Picture = "fondo.bmp"
  .WindowState = 2    &&0-Normal 1-Minimizado   2-Maximizado
  .Caption='Control de Gastos de Vehiculos'
ENDWITH

READ events

_screen.Icon = ""
_screen.Caption='Microsoft Visual FoxPro'

CLEAR EVENTS