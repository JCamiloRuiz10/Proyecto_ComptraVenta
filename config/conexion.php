<?php
     class conectar{
        protected $dbh;

        protected function Conexion(){

            $nombreServidor = "localhost";
            $usuario = "root";
            $baseDatos = "CompraVenta";
            $password = "";
            //$puerto = "3307"; // Puerto configurado en my.cnf
    
            try {
                
                $objConexion = new PDO('mysql:host='.$nombreServidor.';dbname='.$baseDatos.';',$usuario,$password);
                //$objConexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $objConexion->exec("set names utf8");
    
            } catch (Exception $e) {
                print "Eroro conexion BD". $e->getMessage()."<\br>";
                die();
            }
            return $objConexion;
        
            
            // try {
                
            // } catch (Exception $e) {
            //     print "Eroro conexion BD". $e->getMessage()."<\br>";
            //     die();
            // }
        }
     }
?>