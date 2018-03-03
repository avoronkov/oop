var data = [];
var labels = [];
for (var i = 0; i < raw.length; i++) {
	data.push({t: moment(raw[i][0], dateFormat), y: raw[i][1]});
	labels.push(raw[i][0]);
}

var ctx = document.getElementById("canvas").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
		labels: labels,
        datasets: [{
			label: 'Activity (in changed files)',
            data: data,
			type: 'bar',
			backgroundColor: window.chartColors.blue,
			borderColor: window.chartColors.blue,
        }]
    },
	options: {
			scales: {
				xAxes: [{
					type: 'time',
					// distribution: 'series',
					ticks: {
						source: 'labels',
					},
				}],
				yAxes: [{
					ticks: {
						beginAtZero:true
					}
				}]
			}
		}
});
	</script>
</body>
</html>

