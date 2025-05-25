package com.example.ap2.data

import com.example.ap2.data.model.Jogador

class JogadorRepository {
    val jogadorList = listOf(
        Jogador(1, "Luis Suárez", "Atacante", false, "Grêmio", 37, "Uruguai"),
        Jogador(2, "Cristaldo", "Meia", false, "Grêmio", 28, "Argentina"),
        Jogador(3, "Kannemann", "Zagueiro", false, "Grêmio", 33, "Argentina"),
        Jogador(4, "Pepê", "Meia", false, "Grêmio", 26, "Brasil"),
        Jogador(5, "Endrick", "Atacante", false, "Palmeiras", 18, "Brasil"),
        Jogador(6, "Raphael Veiga", "Meia", false, "Palmeiras", 28, "Brasil"),
        Jogador(7, "Hulk", "Atacante", false, "Atlético-MG", 37, "Brasil"),
        Jogador(8, "Paulinho", "Atacante", false, "Atlético-MG", 24, "Brasil"),
        Jogador(9, "Lucas Moura", "Meia", false, "São Paulo", 31, "Brasil"),
        Jogador(10, "Calleri", "Atacante", false, "São Paulo", 30, "Argentina"),
        Jogador(11, "Gabigol", "Atacante", false, "Flamengo", 27, "Brasil"),
        Jogador(12, "Arrascaeta", "Meia", false, "Flamengo", 30, "Uruguai"),
        Jogador(13, "Pedro", "Atacante", false, "Flamengo", 27, "Brasil"),
        Jogador(14, "Cano", "Atacante", false, "Fluminense", 36, "Argentina"),
        Jogador(15, "Ganso", "Meia", false, "Fluminense", 34, "Brasil"),
        Jogador(16, "Rony", "Atacante", false, "Palmeiras", 29, "Brasil"),
        Jogador(17, "Tiquinho Soares", "Atacante", false, "Botafogo", 33, "Brasil"),
        Jogador(18, "Eduardo", "Meia", false, "Botafogo", 34, "Brasil"),
        Jogador(19, "Marinho", "Atacante", false, "Ceará", 33, "Brasil"),
        Jogador(20, "Mendoza", "Atacante", false, "Santos", 30, "Colômbia")
    )

    fun getJogadores() = jogadorList
}