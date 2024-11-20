<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Gestion des �tudiants</title>
    <!-- Int�gration des styles Bootstrap -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    
 
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
    
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#" >Gestion des �tudiants</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp"><i class="fas fa-home"></i> Accueil</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="ajouter.jsp"><i class="fas fa-user-plus"></i> Ajouter des �tudiants</a>
                </li>
                 <li class="nav-item active">
                    <a class="nav-link" href="index1.jsp"><i class="fas fa-envelope"></i> Contactez-nous</a>
                </li>
                 <li class="nav-item active">
                    <a class="nav-link" href="index2.jsp"><i class="fas fa-info-circle"></i> � propos</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
 
<div class="container mt-3">
    <h2>Liste des �tudiants</h2>
    <a class="btn btn-primary mt-3 mb-3" href="ajouter.jsp">Ajouter des �tudiants</a>

    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nom</th>
                <th scope="col">Pr�nom</th>
                <th scope="col">Groupe</th>
                <th scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${Liste}" var="et">
                <tr>
                    <td>${et.id}</td>
                    <td>${et.nom}</td>
                    <td>${et.prenom}</td>
                    <td>${et.groupe}</td>
                    <td>
                        <!-- Bouton de suppression avec style Bootstrap -->
                     <a href="Delete?id=${et.id}" class="btn btn-danger btn-sm">
                       <i class="fas fa-trash"></i> Supprimer
                     </a>

                    <a href="modifier.jsp?id=${et.id}" class="btn btn-success btn-sm">
                    <i class="fas fa-edit"></i> Modifier
                    </a>



                        
                    </td>
                </tr>
            </c:forEach>
            
        </tbody>
    </table>
      <div class="form-group">
    <label for="groupFilter">Filtrer par groupe :</label>
    <select class="form-control" id="groupFilter">
        <option value="">Tous les groupes</option>
        <option value="GL">GL</option>
        <option value="RT">RT</option>
    </select>
 </div>
 <script>
$(document).ready(function() {
    $('.table').DataTable({
        language: {
            "sProcessing":     "Traitement en cours...",
            "sSearch":         "Rechercher&nbsp;:",
            "sLengthMenu":     "Afficher _MENU_ &eacute;l&eacute;ments",
            "sInfo":           "Affichage de l'&eacute;l&eacute;ment _START_ &agrave; _END_ sur _TOTAL_ &eacute;l&eacute;ments",
            "sInfoEmpty":      "Affichage de l'&eacute;l&eacute;ment 0 &agrave; 0 sur 0 &eacute;l&eacute;ments",
            "sInfoFiltered":   "(filtr&eacute; de _MAX_ &eacute;l&eacute;ments au total)",
            "sInfoPostFix":    "",
            "sLoadingRecords": "Chargement en cours...",
            "sZeroRecords":    "Aucun &eacute;l&eacute;ment &agrave; afficher",
            "sEmptyTable":     "Aucune donn�e disponible dans le tableau",
            "oPaginate": {
                "sFirst":      "Premier",
                "sPrevious":   "Pr&eacute;c&eacute;dent",
                "sNext":       "Suivant",
                "sLast":       "Dernier"
            },
            "oAria": {
                "sSortAscending":  ": activer pour trier la colonne par ordre croissant",
                "sSortDescending": ": activer pour trier la colonne par ordre d�croissant"
            },
            "select": {
                "rows": {
                    "_": "%d lignes s�lectionn�es",
                    "0": "Aucune ligne s�lectionn�e",
                    "1": "1 ligne s�lectionn�e"
                }
            }
        },
       
    });

    $('#groupFilter').on('change', function() {
        var group = $(this).val();
        $('.table').DataTable().column(3).search(group).draw(); 
    });
});
</script>

 <div class="background-container">
        <h1>Maher</h1>
        <div class="ligne-horizontal"></div>
<h2>Gestion des etudiants </h2>    </div>
</div>
<footer class="bg-dark text-white p-3 mt-5">
    <div class="container">
        <p>&copy; Maher -2024 Gestion des �tudiants</p>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>


</body>
</html>


