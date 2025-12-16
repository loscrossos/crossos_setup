qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript '
var panel = panels()[0];
panel.hiding = "autohide";
'