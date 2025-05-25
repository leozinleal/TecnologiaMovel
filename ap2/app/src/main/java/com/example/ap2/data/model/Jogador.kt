package com.example.ap2.data.model

import java.io.Serializable

data class Jogador (
    val id : Int,
    val nomeJogador: String,
    val posicao: String,
    val check: Boolean,
    val time: String,
    val idade: Int,
    val nacionalidade: String,
) :Serializable