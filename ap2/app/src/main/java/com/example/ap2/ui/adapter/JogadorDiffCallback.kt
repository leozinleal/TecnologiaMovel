package com.example.ap2.ui.adapter

import androidx.recyclerview.widget.DiffUtil
import com.example.ap2.data.model.Jogador

class JogadorDiffCallback : DiffUtil.ItemCallback<Jogador>() {

    // Verifica se os IDs dos itens são iguais
    override fun areItemsTheSame(oldItem: Jogador, newItem: Jogador): Boolean {
        return oldItem.id == newItem.id
    }

    // Verifica se o conteúdo do item mudou
    override fun areContentsTheSame(oldItem: Jogador, newItem: Jogador): Boolean {
        return oldItem == newItem // Usa o equals da data class
    }
}