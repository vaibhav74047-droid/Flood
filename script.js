const levelElement = document.getElementById("level");
const scoreElement = document.getElementById("score");
const messageElement = document.getElementById("message");
const sequenceElement = document.getElementById("sequence");
const answerArea = document.getElementById("answerArea");
const answerInput = document.getElementById("answer");
const startButton = document.getElementById("startButton");
const submitButton = document.getElementById("submitButton");
const resetButton = document.getElementById("resetButton");

let sequence = [];
let level = 1;
let score = 0;
let gameActive = false;
let canAnswer = false;
let roundId = 0;

function showSequence() {
    const thisRound = ++roundId;

    gameActive = true;
    canAnswer = false;

   
