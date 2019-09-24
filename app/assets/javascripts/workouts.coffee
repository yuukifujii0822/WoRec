window.draw_graph = -> 
    ctx = document.getElementById("myChart").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: gon.workout_date,
            datasets: [{
                label: gon.exercise_name,
                data: [72.5, 68, 65],
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
                        min: 60
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
            display: false,
            text: '成長記録'
            }
        }
    })