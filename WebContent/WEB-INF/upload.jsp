<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Envoi de fichier</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/form.css"/>" />
    </head>
    <body>
        <form action="<c:url value="/upload" />" method="post" enctype="multipart/form-data">
            <fieldset>
                <legend>Envoi de fichier</legend>

                <label for="description">Description du fichier</label>
                <input type="text" id="description" name="description" value="<c:out value="${fichier.description}"/>" />
                <span class="erreur">${form.erreurs['description']}</span>
                <br />
                

                <label for="fichier">Emplacement du fichier <span class="requis">*</span></label>
                <input type="file" id="fichier" name="fichier" value="<c:out value="${fichier.nom}"/>" />
                <span class="erreur">${form.erreurs['fichier']}</span>
                <br />
                
                <input type="submit" value="Envoyer" class="sansLabel" />
                <br />
                
                <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>        
            </fieldset>
        </form>
    </body>
</html>