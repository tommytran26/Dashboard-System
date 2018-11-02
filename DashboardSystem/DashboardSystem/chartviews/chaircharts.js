

var ctxAverageFinalGradeByInstructor = document.getElementById("averageFinalGradeByInstructor");
var myAverageFinalGradeByInstructor = new Chart(ctxAverageFinalGradeByInstructor, {
    type: 'bar',
    data: {
        labels: ["A.Smith", "T.Griffin", "D.Rose", "M.Jackson", "T.Tran", "N.Deluca"],
        datasets: [{
            label: 'Dataset 1',
            data: [60, 89, 80, 50, 100, 95],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            display: false
        },
        title: {
            display: true,
            text: 'Average Final Grade By Instructor For Course XXX'
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        },
        maintainAspectRatio: false
    }
});


  
var ctxGradeLiftByProfessor = document.getElementById("gradeLiftByProfessor");
var myGradeLiftByProfessor = new Chart(ctxGradeLiftByProfessor, {
    type: 'bar',
    data: {
        labels: ["A.Smith", "T.Griffin", "D.Rose", "M.Jackson", "T.Tran", "N.Deluca"],
        datasets: [{
            label: 'Dataset 1',
            yAxisID: 'y-axis-1',
            data: [-60, 89, -80, 50, -100, -95],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        },

            ]
    },
    options: {
        responsive: true,
        legend: {
            display: false
        },
        title: {
            display: true,
            text: 'Grade Lift By Instructor For Course XXX'
        },
        tooltips: {
            mode: 'index',
            intersect: true
        },
        scales: {
            yAxes: [{
                type: 'linear', // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
                display: true,
                position: 'left',
                id: 'y-axis-1',
            }],
        },
        maintainAspectRatio: false
    }
});


var ctxEnrollments = document.getElementById("courseEnrollByTerm");
var myEnrollments = new Chart(ctxEnrollments, {
    type: 'horizontalBar',
    data: {
        labels: ["'12", "'13", "'14", "'15", "'16"],
        datasets: [{
            label: 'Dataset 1',
            data: [58, 112, 240, 299, 388],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            display: false
        },
        title: {
            display: true,
            text: 'Course Enrollments By Term'
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        },
        maintainAspectRatio: false
    }
});

var ctxStudentsTaughtByInstructor = document.getElementById('sectionEnrollByTermPerInstructor').getContext('2d');
var myStudentsTaughtByInstructor = Chart.Scatter(ctxStudentsTaughtByInstructor, {
    data: {
        datasets: [{
            label: 'My First dataset',
            borderColor: 'rgba(255, 99, 132, 0.2)',
            backgroundColor: 'rgba(255, 99, 132, 0.2)',
            data: [{
                x: 4,
                y: 8,
            }, {
                x: 10,
                y: 2,
            }, {
                x: 10,
                y: 2,
            }, {
                x: 14,
                y: 16,
            }, {
                x: 9,
                y: 7,
            }, {
                x: 5,
                y: 5,
            }, {
                x: 14,
                y: 10,
            }]
        }]
    },
    options: {
        legend: {
            display: false
        },
        title: {
            display: true,
            text: 'Section Enrollments by Instructor for Course XXX'
        },
        maintainAspectRatio: false
    }
});
