package com.example.ap2.ui.adapter

import android.graphics.Paint
import android.view.View
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.example.ap2.R
import com.example.ap2.data.model.Jogador
import com.google.android.material.checkbox.MaterialCheckBox

class JogadorViewHolder(
    itemView: View,
    private val onDelete: (Jogador) -> Unit,
    private val onDetails: (Jogador) -> Unit
) : RecyclerView.ViewHolder(itemView) {
    private val title: TextView = itemView.findViewById(R.id.tituloJogador)
    private val descricao: TextView = itemView.findViewById(R.id.jogadorDescricao)
    private val jogadorCheck: MaterialCheckBox = itemView.findViewById(R.id.jogadorCheck)
    private val actionDelete: TextView = itemView.findViewById(R.id.actionDelete)
    private val actionDetails: TextView = itemView.findViewById(R.id.actionDetails)


    fun bind(jogador: Jogador) {
        title.text = jogador.nomeJogador
        descricao.text = jogador.posicao
        jogadorCheck.isChecked = jogador.check

        actionDelete.setOnClickListener {
            onDelete(jogador)
        }

        actionDetails.setOnClickListener {
            onDetails(jogador)
        }

        paintTaskChecked()
    }

    private fun paintTaskChecked() {
        this.jogadorCheck.addOnCheckedStateChangedListener { checkBox, state ->
            if (checkBox.isChecked) {
                this.title.paintFlags = Paint.STRIKE_THRU_TEXT_FLAG
                this.descricao.paintFlags = Paint.STRIKE_THRU_TEXT_FLAG
                this.actionDetails.visibility = View.GONE
                this.actionDelete.visibility = View.GONE
            } else {
                this.title.paintFlags = 0
                this.descricao.paintFlags = 0
                this.actionDetails.visibility = View.VISIBLE
                this.actionDelete.visibility = View.VISIBLE
            }
        }
    }
}