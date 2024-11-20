<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
        .background-container {
            background-image: url('ff.png'); 
            background-size: cover;
            background-position: center;
            height: 100vh; 
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: #fff;
            text-align: center;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 20px;
        }
        .ligne-horizontal {
            width: 100%;
            height: 3px;
            background-color: #fff;
            margin-bottom: 20px;
        }
        </style>
    <meta charset="UTF-8">
    <title>Modifier un étudiant</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"></head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">Gestion des étudiants</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item">
                    <a class="nav-link" href="home.jsp"><i class="fas fa-home"></i> Accueil</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="ajouter.jsp"><i class="fas fa-user-plus"></i> Ajouter des étudiants</a>
                </li>
                 <li class="nav-item active">
                    <a class="nav-link" href="index1.jsp"><i class="fas fa-envelope"></i> Contactez-nous</a>
                </li>
                 <li class="nav-item active">
                    <a class="nav-link" href="index2.jsp"><i class="fas fa-info-circle"></i> À propos</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <h1 class="mt-5  text-primary">Modifier un étudiant</h1>
    
     <form method='POST' action='Modiff'>
<input type="hidden" name="id" value="${param.id}">
        
        <div class="form-group">
            <label for="prenom">Prénom:</label>
            <input type="text" class="form-control" id="prenom" name="prenom" value="${etudiant.prenom}">
        </div>
        
        <div class="form-group">
            <label for="nom">Nom:</label>
            <input type="text" class="form-control" id="nom" name="nom" value="${etudiant.nom}">
        </div>
        
        <div class="form-group">
            <label for="groupe">Groupe:</label>
            <input type="text" class="form-control" id="groupe" name="groupe" value="${etudiant.groupe}">
        </div>
        
        <button type="submit" class="btn btn-primary">Modifier</button>
    </form>
</div>
<hr>
 <div class="background-container">
        <h1>Maher</h1>
        <div class="ligne-horizontal"></div>
<h2>Gestion des etudiants </h2>    </div>

<footer class="bg-dark text-white p-3 mt-5">
    <div class="container">
        <p>&copy; Maher -2024 Gestion des étudiants</p>
    </div>
</footer>

<!-- Intégration du script Bootstrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

