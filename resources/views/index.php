 <!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Angular-Laravel Authentication</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/textAngular/1.4.6/textAngular.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ng-table/0.8.3/ng-table.min.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ng-tags-input/3.0.0/ng-tags-input.bootstrap.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ng-tags-input/3.0.0/ng-tags-input.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ng-dialog/0.5.1/css/ngDialog.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ng-dialog/0.5.1/css/ngDialog-theme-default.min.css">
    </head>
    <body ng-app="authApp">

        <nav class="navbar navbar-default">
          <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#"><i class="fa fa-cutlery"></i></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class=""><a href="#/projeto">Projeto</a></li>
                <li class=""><a href="#/index">Documentos</a></li>
                <li class=""><a href="#/regranegocio">Regras de Negocio</a></li>
                <li class=""><a href="#/mensagem">Mensagem</a></li>
                <li class=""><a href="#/tela">Tela</a></li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
        <div class="container">
            <div ui-view></div>
        </div>

    </body>

    <!-- Application Dependencies -->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular-route.min.js"></script>

    <script src="https://code.angularjs.org/1.4.6/angular-sanitize.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.15/angular-ui-router.min.js"></script>
    <script src="//cdn.jsdelivr.net/satellizer/0.12.5/satellizer.min.js"></script>

    <script src='http://textangular.com/dist/textAngular-rangy.min.js'></script>
    <script src='http://textangular.com/dist/textAngular-sanitize.min.js'></script>
    <script src='http://textangular.com/dist/textAngular.min.js'></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/ng-table/0.8.3/ng-table.min.js"></script>

    <!-- Application Scripts -->
    <script src="scripts/app.js"></script>
    <script src="scripts/authController.js"></script>
    <script src="scripts/userController.js"></script>
</html>
