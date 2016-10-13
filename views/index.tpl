<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>[hsmr] Zukunftswerkstatt Sammel-Formular</title>
        <link rel="stylesheet" href="/static/pure-min.css">
        <link rel="stylesheet" href="/static/grids-responsive-min.css">
        <style type="text/css">
            body {
                padding: 1em;
            }

            .l-box {
                padding: 1em;
            }
            .success {
                padding: 1.5em;
                text-align: center;
                color: white;
                font-size: 125%;
                border-radius: 4px;
                text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
                background: rgb(28, 184, 65);
            }
        </style>
    </head>
    <body>
        %if sent:
        <p class="success">Vielen Dank für Dein Feedback. Du kannst das Formular für weitere Punkte auch erneut ausfüllen.</p>
        %end
        <h1>[hsmr] Zukunftswerkstatt Sammel-Formular</h1>
        <p>
            Das Formular ist in die Bereiche <em>Erfahrene Probleme</em> und <em>Selbstreflexion</em> unterteilt.
            %if not sent:
            Das Formular kann auch mehrfach abgesendet werden um einzelne Punkte voneinander abzugrenzen.
            %end
        </p>

        <form class="pure-form pure-form-stacked pure-g" method="post" action="/">
            <div class="pure-u-1 pure-u-md-1-2">
                <div class="l-box">
                    <fieldset class="pure-group">
                        <legend>Erfahrene Probleme</legend>

                        <label for="problems_heading">Kernige Überschrift o. Stichpunkte zu erfahrenen Problemen</label>
                        <input type="text" id="problems_heading" name="problems_heading" class="pure-input-1" placeholder="Kernige Überschrift o. Stichpunkte zu erfahrenen Problemen">

                        <label for="problems">Beschreibung erfahrener Probleme</label>
                        <textarea id="problems" name="problems"class="pure-input-1" rows="10" placeholder="Beschreibung erfahrener Probleme"></textarea>
                    </fieldset>
                </div>
            </div>

            <div class="pure-u-1 pure-u-md-1-2">
                <div class="l-box">
                    <fieldset class="pure-group">
                        <legend>Selbstreflexion</legend>

                        <label for="problems_heading">Kernige Überschrift o. Stichpunkte zu eigenem Verhalten</label>
                        <input type="text" id="selfreflection_heading" name="selfreflection_heading" class="pure-input-1" placeholder="Kernige Überschrift o. Stichpunkte zu eigenem Verhalten">

                        <label for="problems">Kritik an eigenem Verhalten</label>
                        <textarea id="selfreflection" name="selfreflection"class="pure-input-1" rows="10" placeholder="Kritik an eigenem Verhalten"></textarea>
                    </fieldset>
                </div>
            </div>

            <button type="submit" class="pure-button pure-input-1 pure-button-primary">Probleme und Selbstkritik mitteilen</button>
            <input type="text" name="_csrf" value="foobar" hidden>
        </form>
    </body>
</html>