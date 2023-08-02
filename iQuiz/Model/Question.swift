//
//  Question.swift
//  iQuiz
//
//  Created by Luan Faria on 01/08/23.
//

import Foundation

struct Question {
    var title: String
    var response: [String]
    var rightResponse: Int
}

let questions: [Question] = [
    Question(title: "Qual é o termo utilizado para designar a vela que é ajustada ao mastro, mais próxima do barco?",
                response: ["Mestra", "Genoa", "Balão"],
                rightResponse: 0),
        
        Question(title: "O que é o 'vento aparente' em veleiros?",
                response: ["A direção do vento em relação ao norte verdadeiro.",
                           "A direção do vento em relação ao norte magnético.",
                           "A direção do vento percebida a bordo do veleiro, considerando a velocidade do barco."],
                rightResponse: 2),

        Question(title: "Qual é a parte mais larga do casco de um veleiro, responsável por proporcionar estabilidade?",
                response: ["Proa", "Popa", "Meia-nau"],
                rightResponse: 2),

        Question(title: "O que é uma 'regata' de veleiros?",
                response: ["Uma competição onde os veleiros devem percorrer uma rota pré-definida seguindo as regras de tráfego marítimo.",
                           "Uma reunião social de velejadores em um clube náutico.",
                           "Um tipo de manobra realizada para aumentar a velocidade do veleiro."],
                rightResponse: 0),

        Question(title: "Qual é o significado de 'nó' em termos de velocidade de veleiros?",
                response: ["Um ponto de ancoragem para o veleiro.",
                           "Uma unidade de medida de velocidade, equivalente a uma milha náutica por hora.",
                           "Uma corda utilizada para prender as velas ao mastro."],
                rightResponse: 1),

        Question(title: "O que é uma 'jibe' em veleiros?",
                response: ["Uma manobra para mudar de direção virando a proa do veleiro contra o vento.",
                           "Uma espécie de veleiro pequeno utilizado para treinamento.",
                           "Uma corda utilizada para ajustar a tensão das velas."],
                rightResponse: 0),

        Question(title: "Como é chamada a estrutura vertical que sustenta o mastro de um veleiro?",
                response: ["Bolina", "Escota", "Estai"],
                rightResponse: 2),

        Question(title: "O que é uma 'draga' em termos de navegação de veleiros?",
                response: ["Uma embarcação pequena utilizada para transportar suprimentos entre o veleiro e a costa.",
                           "Uma área profunda e abrigada onde os veleiros podem ancorar.",
                           "Um objeto flutuante à deriva que pode representar perigo para o veleiro."],
                rightResponse: 2),

        Question(title: "Qual é o nome dado ao processo de ajustar as velas para aproveitar ao máximo a direção e a força do vento?",
                response: ["Largar as velas", "Fazer adernar o veleiro", "Ajustar o rumo"],
                rightResponse: 0),

        Question(title: "O que é uma 'bujarrona' em termos de veleiros?",
                response: ["Uma bandeira com um buraco no centro, utilizada como sinalização náutica.",
                           "Uma vela triangular utilizada quando o veleiro está navegando contra o vento.",
                           "Um tipo de âncora usada para ancorar veleiros em áreas com fundo de areia."],
                rightResponse: 1)
]
