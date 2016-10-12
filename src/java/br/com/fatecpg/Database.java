/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg;

import java.util.ArrayList;

/**
 *
 * @author Gustavo
 */
public class Database {
    private static ArrayList<Cliente> clientes = new ArrayList<>();
    public static ArrayList<Cliente> getClientes(){
        return clientes;
    }
    private static ArrayList<Fornecedor> fornecedores = new ArrayList<>();
    public static ArrayList<Fornecedor> getFornecedores(){
        return fornecedores;
    }
}
