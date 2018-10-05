<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Inscription</title>
        <!--<link type="text/css" rel="stylesheet" href="resources/css/form.css" />-->
        <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <style>
            body {margin-top: 20px}
            .requis, .erreur { color: #c00 }
            .succes {color: green}
            label{ font-weight: bold}
        </style>
    </head>
    <body class="container">
        <form method="post" action="inscription" class="form-row col-md-6">
            <fieldset class="jumbotron">
                <legend  class="display-4 text-center">Inscription</legend>
                <p><img src="resources/img/logo.png" class="col-md-5 offset-md-3" alt="Logo" /> </p>
                <p class="lead text-center">Vous pouvez vous inscrire via ce formulaire.</p>
                
                <div class="form-group">
                <label for="email">Adresse email <span class="requis">*</span></label>
                <input type="email" id="email" name="email" value="<c:out value="${param.email}"/>" size="20" maxlength="60" class="form-control"/>
                <small class="erreur">${erreurs['email']}</small>
                </div>

                <div class="form-group">
                <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" class="form-control"/>
                <small class="erreur">${erreurs['motdepasse']}</small>
                </div>

                <div class="form-group">
                <label for="confirmation">Confirmation du mot de passe <span class="requis">*</span></label>
                <input type="password" id="confirmation" name="confirmation" value="" size="20" maxlength="20" class="form-control"/>
                <small class="erreur">${erreurs['confirmation']}</small>
                </div>

                <div class="form-group">
                <label for="nom">Nom d'utilisateur</label>
                <input type="text" id="nom" name="nom" value="<c:out value="${param.nom}"/>" size="20" maxlength="20" class="form-control"/>
                <small class="erreur">${erreurs['nom']}</small>
                </div>

                <input type="submit" value="Inscription" class="btn btn-primary btn-lg" />
                <br /> <br />
                
                <p class="${empty erreurs ? 'succes' : 'erreur'}">${resultat}</p>
            </fieldset>
        </form>
    </body>
</html>
