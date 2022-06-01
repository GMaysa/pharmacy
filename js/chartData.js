const labels = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
];

const data = {
    labels: labels,
    datasets: [{
        label: 'Income',
        backgroundColor: [
            // 'rgba(255, 99, 132, 0.5)',
            // 'rgba(75, 192, 192, 0.5)',
            // 'rgba(255, 205, 86, 0.5)',
            // 'rgba(201, 203, 207, 0.5)',
            // 'rgba(54, 162, 235, 0.5)'
            'rgba(150, 61, 191, .5)',
            'rgba(74, 61, 191, .5)',
            'rgba(236, 65, 118, .5)',
            'rgba(255, 164, 94, .5)',
            'rgba(161, 54, 112, .5)',
            'rgba(84, 56, 132, .5)'
        ],
        // borderColor: 'rgb(255, 99, 132)',
        data: [10, 100, 50, 20, 200, 300],
    }]
};

const config = {
    type: 'line',
    data: data,
    options: {}
};

const drugsChart = new Chart(document.getElementById('chart-drugs'), config);

const conf = {
    type: 'doughnut',
    data: data,
    options: {}
};


const chart = new Chart(document.getElementById('chart-input'), conf);
// const lineChart = new Chart(document.getElementById('chart-'), config);