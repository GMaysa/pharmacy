const labels = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
];

const dataIncome = {
    labels: labels,
    datasets: [{
        label: 'Income(Jt)',
        backgroundColor: [
        //     // 'rgba(255, 99, 132, 0.5)',
        //     // 'rgba(75, 192, 192, 0.5)',
        //     // 'rgba(255, 205, 86, 0.5)',
        //     // 'rgba(201, 203, 207, 0.5)',
        //     // 'rgba(54, 162, 235, 0.5)'
            'rgba(150, 61, 191)',
            // 'rgba(74, 61, 191, .5)',
            // 'rgba(236, 65, 118, .5)',
            // 'rgba(255, 164, 94, .5)',
            // 'rgba(161, 54, 112, .5)',
            // 'rgba(84, 56, 132, .5)'
        ],
        borderColor: 'rgb(150, 61, 191, .50)',
        data: [1.732, 3.573, 0.73, 0.34, 1.22, 4.13],
    }]
};
const dataCategory = {
    labels: labels,
    datasets: [{
        label: '',
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
        data: [163, 204, 77, 41, 103, 397],
    }]
};
const configIncome = {
    type: 'line',
    data: dataIncome,
    options: {
        scales: {
            y: {
                suggestedMin: 0,
                suggestedMax: 5
            }
        }
    }
};

const drugsChart = new Chart(document.getElementById('chart-drugs'), configIncome);

const configDrugs = {
    type: 'doughnut',
    data: dataCategory,
    options: {}
};


const chart = new Chart(document.getElementById('chart-input'), configDrugs);
// const lineChart = new Chart(document.getElementById('chart-'), config);