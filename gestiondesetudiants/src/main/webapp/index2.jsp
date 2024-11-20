<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <meta charset="ISO-8859-1">
    <title>Gestion des �tudiants</title>
    <style>
        .card {
            border: none; 
            border-radius: 15px; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
            transition: transform 0.3s ease, box-shadow 0.3s ease; 
        }
        .card:hover {
            transform: translateY(-5px); 
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); 
        }
        .card-body {
            padding: 20px; 
        }
        .card-title {
            font-weight: bold; 
            margin-bottom: 10px;
        }
        .card-icon {
            font-size: 2em; 
            margin-bottom: 10px; 
        }

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

        .grand-container {
            padding: 20px;
            background-color: white;
            color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px; /* Correction du style */
            transition: transform 0.3s ease-in-out;
        }
        .grand-container:hover {
            transform: scale(1.05);
        }
        .petite-container {
            background-color: #fff;
            color: #007bff;
            padding: 10px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .petite-container:hover {
            background-color: #f0f0f0;
        }
        /* Ajout de l'animation */
        @keyframes bouger {
          0% { transform: scale(1); }
          50% { transform: scale(1.1); }
          100% { transform: scale(1); }
        }
        .petite-container.clicked {
          animation: bouger 0.5s ease;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Gestion des �tudiants</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
    
    <div class="container mt-5 grand-container">
        <div class="row justify-content-center">
            <div class="card-deck"> <!-- Utilisation de card-deck pour afficher les cartes dans une grille -->
                <div class="card mb-3 petite-container" data-toggle="modal" data-target="#paragraphModal1">
                    <div class="card-body">
                        <i class="fas fa-users"></i>
                        <h5 class="card-title">� propos de nous</h5>
                    </div>
                </div>
                <div class="card mb-3 petite-container" data-toggle="modal" data-target="#paragraphModal2">
                    <div class="card-body">
                        <i class="fas fa-bullseye"></i>
                        <h5 class="card-title">Notre mission</h5>
                    </div>
                </div>
                <div class="card mb-3 petite-container" data-toggle="modal" data-target="#paragraphModal3">
                    <div class="card-body">
                        <i class="fas fa-users"></i>
                        <h5 class="card-title">Notre �quipe</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="paragraphModal1" tabindex="-1" role="dialog" aria-labelledby="paragraphModalLabel1"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="paragraphModalLabel1">Gestion des �tudiants</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Bienvenue sur notre application de gestion des �tudiants. Notre objectif est de simplifier le processus de gestion des �tudiants pour les �coles, les coll�ges et les universit�s.</p>
                    <p>Nous offrons des solutions innovantes pour aider les �tablissements d'enseignement � suivre les donn�es des �tudiants, g�rer les inscriptions, g�rer les notes, et bien plus encore.</p>
                    <p>Nous sommes une �quipe passionn�e de d�veloppeurs et d'experts en �ducation d�vou�s � fournir des outils puissants et conviviaux pour r�pondre aux besoins de gestion des �tablissements d'enseignement.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="paragraphModal2" tabindex="-1" role="dialog" aria-labelledby="paragraphModalLabel2"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="paragraphModalLabel2">Gestion des �tudiants</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Notre mission est de fournir des solutions innovantes pour simplifier la gestion des �tudiants et am�liorer l'efficacit� des �tablissements d'enseignement.
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="paragraphModal3" tabindex="-1" role="dialog" aria-labelledby="paragraphModalLabel3"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="paragraphModalLabel3">Gestion des �tudiants</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Notre �quipe est compos�e de d�veloppeurs talentueux et d'experts en �ducation d�vou�s � fournir des solutions logicielles de haute qualit� pour les �tablissements d'enseignement.
                </div>
            </div>
        </div>
    </div>
       <hr>
   
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="etet.jpg" class="card-img-top" alt="Image">
                    <div class="card-body">
                        <h5 class="card-title">Gestion des �tudiants</h5>
                        <p class="card-text">Informations sur la gestion des �tudiants.</p>
                        <button type="button" class="btn btn-warning"> <i class="fas fa-angle-double-right ml-2"></i>Voir plus</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="hii.jpg" class="card-img-top" alt="Image">
                    <div class="card-body">
                         <h5 class="card-title">Emplacement des universit�s</h5>
            <p class="card-text">Description de l'emplacement des universit�s.</p>
                        <button type="button" class="btn btn-warning"> <i class="fas fa-angle-double-right ml-2"></i>Voir plus</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="etudiant.jpg" class="card-img-top" alt="Image">
                    <div class="card-body">
                        <h5 class="card-title">Liens utiles</h5>
                        <p class="card-text">Acc�s � des liens ou des messages informatifs.</p>
                        <button type="button" class="btn btn-warning"> <i class="fas fa-angle-double-right ml-2"></i>Voir plus</button>
                    </div>
                </div>
            </div>
             <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="fi.jpg" class="card-img-top" alt="Image">
                    <div class="card-body">
                         <h5 class="card-title">Conseils pour les �tudes</h5>
                        <p class="card-text">Conseils utiles pour r�ussir ses �tudes.</p>
                        <button type="button" class="btn btn-warning"> <i class="fas fa-angle-double-right ml-2"></i>Voir plus</button>
                    </div>
                </div>
            </div>
             <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="po.jpg" class="card-img-top" alt="Image">
                    <div class="card-body">
                       <h5 class="card-title">Relation entre coll�gues</h5>
                        <p class="card-text">Conseils utiles pour avoir des relations.</p>
                        <button type="button" class="btn btn-warning"> <i class="fas fa-angle-double-right ml-2"></i>Voir plus</button>
                    </div>
                </div>
            </div>
             <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="to.jpg" class="card-img-top" alt="Image">
                    <div class="card-body">
                         <h5 class="card-title">Ressources d'�tude</h5>
                        <p class="card-text"> Trouver de bonnes ressources d'�tude.</p>
                        <button type="button" class="btn btn-warning"> <i class="fas fa-angle-double-right ml-2"></i>Voir plus</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>

    
    <div class="background-container">
        <h1>Maher</h1>
        <div class="ligne-horizontal"></div>
        <h2>Gestion des �tudiants </h2>
    </div>

    <footer class="bg-dark text-white p-3 mt-5">
        <div class="container">
            <p>&copy; Maher - 2024 Gestion des �tudiants</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Ajout de JavaScript pour l'animation -->
    <script>
        $(document).ready(function() {
            $(".petite-container").click(function() {
                $(this).addClass("clicked");
                setTimeout(function() {
                    $(".petite-container").removeClass("clicked");
                }, 500);
            });
        });
    </script>
</body>
</html>
