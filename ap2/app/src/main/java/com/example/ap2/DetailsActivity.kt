package com.example.ap2

import android.os.Bundle
import android.widget.TextView
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.Toolbar
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import com.example.ap2.data.model.Jogador

class DetailsActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_details)

        val toolbar = findViewById<Toolbar>(R.id.toolbar)
        setSupportActionBar(toolbar)

        supportActionBar?.setDisplayHomeAsUpEnabled(true)

        val id = findViewById<TextView>(R.id.idTodo)
        val title = findViewById<TextView>(R.id.todoTitle)
        val description = findViewById<TextView>(R.id.taskDescription)
        val date = findViewById<TextView>(R.id.createdAt)
        val user = findViewById<TextView>(R.id.openedBy)

        val jogador = intent.getSerializableExtra("jogador") as? Jogador
        jogador?.let {
                id.text = it.id.toString()
                title.text = it.nomeJogador
                description.text = it.posicao
                date.text = it.time
                user.text = it.nacionalidade
            }
        }

        override fun onSupportNavigateUp(): Boolean {
            finish()
            return true
        }
    }