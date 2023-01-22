<?php 

namespace App\Repositories;

use App\Connection\ConnectionFactory;
use PDO;

class TeamRepository {

    public $connection;

    public function __construct()
    {
        $factory = new ConnectionFactory();
        $this->connection = $factory->getConnection();
    }

    public function getAll(){
        $sql = "SELECT * FROM mytable";

        $table = $this->connection->query($sql); 
        $resultados = $table->fetchAll(PDO::FETCH_ASSOC);

        return $resultados;
    }

    public function getById($id){
        $sql = "SELECT * FROM mytable WHERE id = :id";

        $table = $this->connection->prepare($sql); 
        $table->bindParam(":id", $id);
        $table->execute();

        $resultados = $table->fetch(PDO::FETCH_ASSOC);

        return $resultados;

    }
    
    public function create(string $texto){

        $sql = "INSERT INTO tb_teams (Position, Player, Club, Age, Caps) VALUES('$Player')";

        $statement = $this->connection->exec($sql);

        $id = $this->connection->lastInsertId();

        return $id;
    }
    
    public function getAllTeams()
    {
        $sql = "SELECT * FROM selecoes";

        $table = $this->connection->query($sql); 
        $resultados = $table->fetchAll(PDO::FETCH_ASSOC);

        return $resultados;
    }

    public function getByTeamName($nome)
    {
        $sql = "SELECT nome FROM selecoes WHERE nome = :nome";
        $table = $this->connection->prepare($sql); 
        $table->bindParam(":nome", $nome);

        $table->execute();

        $resultados = $table->fetch(PDO::FETCH_ASSOC);

        return $resultados;
    }

    public function getByTeamId($teamId)
    {
        $sql = "SELECT * FROM selecoes WHERE id = :teamId";

        $table = $this->connection->prepare($sql); 
        $table->bindParam(":teamId", $teamId);
        $table->execute();

        $resultados = $table->fetch(PDO::FETCH_ASSOC);

        return $resultados;
    }

    public function getByPosition($posicao)
    { 
        
        $sql = "SELECT * FROM mytable WHERE Position = :posicao";
        $table = $this->connection->prepare($sql); 
        $table->bindParam(":posicao", $posicao);
        $table->execute();
        $resultados = $table->fetchAll(PDO::FETCH_ASSOC);
        
        return $resultados;

    }

     public function getByPlayerName($name)
    {
        $sql = "SELECT * FROM mytable WHERE Player LIKE :name";
        $table = $this->connection->prepare($sql); 
        $table->bindParam(":name", $name);
        $table->execute();

        $resultados = $table->fetch(PDO::FETCH_ASSOC);

        return $resultados;
    }

    public function getPlayerPerSelection($name){
        $sql = "SELECT mytable.* FROM mytable
                INNER JOIN selecoes ON mytable.Id_Selecao = selecoes.id
                WHERE selecoes.nome = :name";
        $table = $this->connection->prepare($sql); 
        $table->bindParam(":name", $name);
        $table->execute();
        $resultados = $table->fetchAll(PDO::FETCH_ASSOC);
        
        return $resultados;
    }
}