const waterInput = document.getElementById("waterInput");
const rainInput = document.getElementById("rainInput");
const criticalInput = document.getElementById("criticalInput");

const waterValue = document.getElementById("waterValue");
const rainValue = document.getElementById("rainValue");
const alertValue = document.getElementById("alertValue");
const buzzerValue = document.getElementById("buzzerValue");

const riskPanel = document.getElementById("riskPanel");
const riskIcon = document.getElementById("riskIcon");
const riskTitle = document.getElementById("riskTitle");
const riskDescription = document.getElementById("riskDescription");
const riskNumber = document.getElementById("riskNumber");

function updateDashboard() {
    const water = waterInput.checked;
    const rain = rainInput.checked;
    const critical = criticalInput.checked;

    let risk = 0;
    let alert = false;
    let buzzer = false;

    if (critical) {
        risk = 3;
        alert = true;
        buzzer = true;
    } else if (water &&
