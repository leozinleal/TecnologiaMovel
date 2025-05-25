package com.example.ap2.ui.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.ListAdapter
import com.example.ap2.R
import com.example.ap2.data.model.Jogador

class JogadorAdapter(
    private val onDelete: (Jogador) -> Unit,
    private val onDetails: (Jogador) -> Unit
) : ListAdapter<Jogador, JogadorViewHolder>(JogadorDiffCallback()) {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): JogadorViewHolder {
        val itemView =
            LayoutInflater.from(parent.context).inflate(R.layout.jogadores_item_list, parent, false)
        return JogadorViewHolder(itemView, onDelete = onDelete, onDetails = onDetails)
    }

    override fun onBindViewHolder(holder: JogadorViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

}