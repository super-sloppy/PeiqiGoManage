<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Highcharts Example</title>

    <style type="text/css">

    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/analyze.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.js"></script>
    <script src="http://code.highcharts.com/highcharts.js"></script>
</head>
<body>

<div id="all">
    <div class="choose_term">

    </div>
    <div class="container">
        <div id="container1"></div>
        <div id="container2" ></div>
        <div id="container3" ></div>

    </div>
    <div class="sheet">
        <div id="container4" style="width: 80%;height: 80%;margin: 5% auto;"></div>



        <script type="text/javascript">

            Highcharts.chart('container4', {
                chart: {
                    type: 'column'
                },
                title: {
                    text: '热门问题排行'
                },
                subtitle: {
                    text: ''
                },
                xAxis: {
                    categories: [
                        't1',
                        't2',
                        't3',
                        't4',
                        't5',
                        't6',
                        't7',
                    ],
                    crosshair: true
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: '数量 (万)'
                    }
                },
                tooltip: {
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                    '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
                    footerFormat: '</table>',
                    shared: true,
                    useHTML: true
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name: '热门问题',
                    data: [49.9, 71.5, 106.4, 129.2, 144.0,150.0,168.2]

                }]
            });
        </script>

    </div>

</div>




<script type="text/javascript">

    Highcharts.chart('container1', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: '回答问题百分比'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: '回答',
            colorByPoint: true,
            data: [{
                name: '回答',
                y: 91.23
            }, {
                name: '未回答',
                y: 8.77,
                sliced: true,

            }]
        }]
    });
    Highcharts.chart('container2', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: '提出问题百分比'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: '提出问题',
            colorByPoint: true,
            data: [{
                name: '提出问题',
                y: 80.77
            }, {
                name: '未提出问题',
                y: 19.23,
                sliced: true,

            }]
        }]
    });
    Highcharts.chart('container3', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: '解决问题百分比'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: '解决问题',
            colorByPoint: true,
            data: [{
                name: '解决问题 ',
                y: 68.23,

            }, {
                name: '未解决',
                y: 32.77,
                sliced: true,

            }]
        }]
    });
</script>
</body>
</html>
