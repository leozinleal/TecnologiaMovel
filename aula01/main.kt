package aula01

fun main(){
    val listaDeNumeros = mutableListOf<Int>()


    var soma = 0
    if(listaDeNumeros.size == 5){  //informando para que o tamanho da minha list tem que ser igual a 5
        for(i in listaDeNumeros){  // passando pela lista de numeros
            soma += i  //soma = soma+num
        }
        val media = soma / 5
        println(media)
    }
    else{
        println("Numeros insuficientes")
    }
    //////////////////////////////////////

    val color = "blue"
    when(color){
        "blue" -> println("azul")
        "red" -> println("vermelho")
        "green" -> println("verde")
        "yellow" -> println("amarelo")
    }
}