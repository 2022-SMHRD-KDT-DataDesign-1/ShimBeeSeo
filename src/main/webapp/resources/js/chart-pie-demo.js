// Set new default font family and font color to mimic Bootstrap's default styling
(Chart.defaults.global.defaultFontFamily = "Metropolis"),
'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = "#858796";

// Pie Chart Example

$.ajax({
			url : "region.do",
			type : "get",
			dataType : "json",
			success : function(result){
				
				var regionArr = ["수도권", "강원권", "충청권", "경상권", "전라권", "제주권"];
				var numberArr = [0, 0, 0, 0, 0, 0];
				for(var i = 0; i < result.length; i++) {
					for(var j = 0; j < regionArr.length; j++){
						if(result[i].user_address === regionArr[j]) {
							numberArr[j] = result[i].region_count;
						}
					
					}
				}
				console.log(result);
		var ctx = document.getElementById("region");
		var myPieChart = new Chart(ctx, {
		    type: "pie",
		    data: {
		        labels: regionArr,
		        datasets: [{
		            data: numberArr,
		            backgroundColor: [
		            	"rgba(187, 51, 255, 1)",
		            	"rgb(255, 203, 166)",
		            	"rgb(255, 205, 86)",
		                "rgba(0, 97, 242, 1)",
		                "rgba(0, 172, 105, 1)",
		                "rgba(88, 0, 232, 1)"
		            ],
		            hoverBackgroundColor: [
		            	"rgba(187, 51, 255, 0.9)",
		            	"rgb(255, 159, 64, 0.9)",
		            	"rgb(255, 205, 86, 0.9)",
		                "rgba(0, 97, 242, 0.9)",
		                "rgba(0, 172, 105, 0.9)",
		                "rgba(88, 0, 232, 0.9)"
		            ],
		            hoverBorderColor: "rgba(234, 236, 244, 1)"
		        }]
		    },
		    options: {
		        maintainAspectRatio: false,
		        tooltips: {
		            backgroundColor: "rgb(255,255,255)",
		            bodyFontColor: "#858796",
		            borderColor: "#dddfeb",
		            borderWidth: 1,
		            xPadding: 15,
		            yPadding: 15,
		            displayColors: false,
		            caretPadding: 10
		        },
		        legend: {
		            display: true,
		            position : 'right',
		        },
		        cutoutPercentage: 55
		    }
		});
		}, /* callback 함수 요청되고나서 실행하는 함수*/
    			error : function() {
    				alert("loadResult error");
    			}
		});
