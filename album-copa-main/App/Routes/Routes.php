<?php

use Slim\App;
use App\Controllers\TeamController;

$app = new \Slim\App(['settings' => ['displayErrorDetails' => true]]);

/**
 * As linhas 12 a 20 são necessárias para se permitir o acesso dessas rotas por outros sistemas.
 * O padrão é ter acesso liberado somentre para quem estiver no mesmo servidor. Essa restrição está relacionada ao CORS 
 */
$app->options('/{routes:.+}', function ($request, $response, $args) {
    return $response;
});

$app->add(function ($req, $res, $next) {
    $response = $next($req, $res);
    return $response->withHeader('Access-Control-Allow-Origin', '*')
    ->withHeader('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept, Origin, Authorization')->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
});

/**
 * Adicione o mapeamento das rotas para os métodos do controlador de recados nas linhas abaixo
 */

 $app->get   ('/', TeamController::class . ":getAll");
 //http://localhost:8080

 $app->get   ('/{id}', TeamController::class . ":getById");
 //http://localhost:8080/5 ou qualquer outro ID

 $app->get   ('/teamname/{nome}', TeamController::class . ":getByTeamName");
 //http://localhost:8080/teamname/Franca | http://localhost:8080/teamname/Brasil | http://localhost:8080/teamname/Argentina

 $app->get   ('/teams/', TeamController::class . ":getAllTeams");
 //http://localhost:8080/teams/
 
 $app->get   ('/team/{id}', TeamController::class . ":getByTeamId");
 //http://localhost:8080/team/1 | http://localhost:8080/team/2 | http://localhost:8080/team/3
 
 $app->get   ('/player/{posicao}', TeamController::class . ":getByPosition");
 // http://localhost:8080/player/defender ou qualquer outra posição

 $app->get   ('/playername/{name}', TeamController::class . ":getByPlayerName"); 
 //http://localhost:8080/playername/Richarlison (Ou qualquer outro nome de jogador presente na DB)

 $app->get   ('/selectionplayers/{name}', TeamController::class . ":getPlayerPerSelection");
 //http://localhost:8080/selectionplayers/Franca | http://localhost:8080/selectionplayers/Brasil | http://localhost:8080/selectionplayers/Argentina

 


$app->run();
