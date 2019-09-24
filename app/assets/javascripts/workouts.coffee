window.draw_graph = -> 
    ctx = document.getElementById("myChart").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["1月", "2月", "3月", "4月", "5月","6月"],
            datasets: [{
                label: 'ベンチプレス',
                data: [40, 55, 60, 70, 60, 65],
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgba(255,99,132,1)',
                borderWidth: 3
                lineTension: 0,
                fill: false,
                type: 'line'
            }]
        },
        options: {
            scales: {
                xAxes:[{
                    scaleLabel:{
                      display: true,
                      labelString: 'トレーニング日'
                      }
                  }],
                yAxes: [{
                    ticks: {
                        min: 35
                        max: 75
                        beginAtZero:true
                    },
                    scaleLabel: {
                    display: true,
                    labelString: 'kg(1RM)'
                    }
                }]
            },
            title: {
            display: true,
            text: '成長記録'
            }
        }
    })