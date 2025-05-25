package com.example.ap2

import android.content.Intent
import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.os.bundleOf
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import androidx.recyclerview.widget.RecyclerView
import com.example.ap2.data.JogadorRepository
import com.example.ap2.data.model.Jogador
import com.example.ap2.ui.adapter.JogadorAdapter
import com.google.android.material.snackbar.Snackbar

class MainActivity : AppCompatActivity() {
    private val repository = JogadorRepository()
    private lateinit var adapter: JogadorAdapter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val rc = findViewById<RecyclerView>(R.id.recyclerView)
        adapter = JogadorAdapter(
            onDelete = { jogador ->
                deleteJogador(rc, jogador)
            },
            onDetails = { jogador ->
                goToDetails(jogador = jogador)
            }
        )

        rc.adapter = adapter
        adapter.submitList(repository.jogadorList)
    }

    private fun deleteJogador(recyclerView: RecyclerView, jogador: Jogador){
        val newList = repository.jogadorList.toMutableList()
        newList.remove(jogador)
        adapter.submitList(newList)
        Snackbar.make(this, recyclerView, "Deletado com sucesso", Snackbar.LENGTH_LONG).show()
    }

    private fun goToDetails(jogador: Jogador){
        val intent = Intent(this, DetailsActivity::class.java).apply {
            this.putExtras(bundleOf("jogador" to jogador))
        }

        startActivity(intent)
    }
}