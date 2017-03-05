<?php

echo "OK!";

$dsn = "mysql:host=db;dbname=docker_compose_pet_project;charset=utf8";

try{
    $conn = new \PDO($dsn, "paolo", "pwd");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    var_dump($e->getMessage());
}

$stmt = $conn->query("SELECT * FROM users");

$tpl = <<<EOT
    <h3>:id</h3>
    <p>customer id: <b>:customer_id</b><br />
    age: <b>:age</b><br />
    city: <b>:city</b><br />
    email: <b>:email</b><br />
    firstname: <b>:firstname</b><br />
    lastname: <b>:lastname</b></p>
EOT;


foreach ($stmt->fetchAll() as $k => $item) {
    preg_match_all("/:[a-z_]+/", $tpl, $matches);
    $r = str_replace($matches[0], $item, $tpl);
    echo $r;
}