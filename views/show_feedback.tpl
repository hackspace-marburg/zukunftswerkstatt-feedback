<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>[hsmr] Zukunftswerkstatt Feedback-Evaluation</title>
        <link rel="stylesheet" href="/static/pure-min.css">
        <link rel="stylesheet" href="/static/grids-responsive-min.css">
        <style type="text/css">
            body {
                padding: 1em;
                -moz-hyphens: auto;
                -o-hyphens: auto;
                -webkit-hyphens: auto;
                -ms-hyphens: auto;
                hyphens: auto; 
            }
        </style>
    </head>
    <body>
        <h1>[hsmr] Zukunftswerkstatt Feedback-Evaluation</h1>
        <table class="pure-table pure-table-bordered" width="100%">
            <thead>
                <tr>
                    <th style="width: 50%">Erfahrene Probleme</th>
                    <th style="width: 50%">Selbstreflexion</th>
                </tr>
            </thead>
            <tbody>
                % for feedback in feedbacks:
                <tr>
                    <td style="width: 50%">
                        <h2>{{ feedback[0] }}</h2>
                        {{ feedback[1] }}
                    </td>
                    <td style="width: 50%">
                        <h2>{{ feedback[2] }}</h2>
                        {{ feedback[3] }}
                    </td>
                </tr>
                % end
            </tbody>
         </table>
    </body>
</html>