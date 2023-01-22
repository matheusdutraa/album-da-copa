<?php

namespace App\Controllers;

use Slim\Http\Request;
use Slim\Http\Response;
use App\Repositories\TeamRepository;

class TeamController {

    //adicione a variável de repository nesta linha
    
    public $repository;

    public function __construct()
    {
        //adicione o algoritmo para criar um "objeto da classe TeamRepository"
        $this->repository = new TeamRepository();

    }

    public function getAll(Request $request, Response $response, array $args){
        
        $team = $this->repository->getAll();
        return $response->withJson($team)->withStatus(200);
    }

    public function getById(Request $request, Response $response, array $args){
        
        $id = $args['id'];

        $team = $this->repository->getById($id);
        return $response->withJson($team)->withStatus(200);
    }

    public function getAllTeams(Request $request, Response $response, array $args)
    {
        $teams = $this->repository->getAllTeams();
        return $response->withJson($teams)->withStatus(200);
    }

    public function getByTeamName(Request $request, Response $response, array $args){

        $time = $args['nome'];
        
        $team = $this->repository->getByTeamName($time);
        return $response->withJson($team)->withStatus(200);
    }

    public function getByTeamId(Request $request, Response $response, array $args)
    {
        $teamId = $args['id'];

        $team = $this->repository->getByTeamId($teamId);
        return $response->withJson($team)->withStatus(200);
    }

    public function getByGroup(Request $request, Response $response, array $args){

        
        
        $teams = $this->repository->getByGroup($inicio);
        return $response->withJson($teams)->withStatus(200);
    }

    public function getByPosition(Request $request, Response $response, array $args){
            
            $posicao = $args['posicao'];
            
            $teams = $this->repository->getByPosition($posicao);
            return $response->withJson($teams)->withStatus(200);
    }

    public function getPlayerPerSelection(Request $request, Response $response, array $args){
        $name = $args['name'];
        echo $name;
        $teams = $this->repository->getPlayerPerSelection($name);
        return $response->withJson($teams)->withStatus(200);
    }

    public function getByPlayerName(Request $request, Response $response, array $args)
    {
        $name = $args['name'];
        $teams = $this->repository->getByPlayerName($name);
        return $response->withJson($teams)->withStatus(200);
    }

    public function create(Request $request, Response $response, array $args){

        //Obter campo por campo
        //$data = $request->getParam('nome_do_campo');

        $data = $request->getParams();


        //Obter todos os campos do formulario
        //$data = $request->getParams();

        
        //obter todos os dados de envio
        $data = $request->getParsedBody();

        $data['id'] = $this->repository->create($data['texto']);

        return $response->withJson(["id" => $data]);

    }

    public function update(Request $request, Response $response, array $args){
        $data = $request->getParsedBody();

       $this->repository->update($data['id'], $data['texto']);

        $response->write("chamou update");
        
        return $response;
    }

    public function delete(Request $request, Response $response, array $args){
        $response->write("chamou o delete");
        return $response;
    }

}