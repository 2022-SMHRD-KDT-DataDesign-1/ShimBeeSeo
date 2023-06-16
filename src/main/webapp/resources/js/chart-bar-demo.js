// Set new default font family and font color to mimic Bootstrap's default styling
(Chart.defaults.global.defaultFontFamily = "Metropolis"),
'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = "#858796";

function number_format(number, decimals, dec_point, thousands_sep) {
    // *     example: number_format(1234.56, 2, ',', ' ');
    // *     return: '1 234,56'
    number = (number + "").replace(",", "").replace(" ", "");
    var n = !isFinite(+number) ? 0 : +number,
        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
        sep = typeof thousands_sep === "undefined" ? "," : thousands_sep,
        dec = typeof dec_point === "undefined" ? "." : dec_point,
        s = "",
        toFixedFix = function(n, prec) {
            var k = Math.pow(10, prec);
            return "" + Math.round(n * k) / k;
        };
    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
    s = (prec ? toFixedFix(n, prec) : "" + Math.round(n)).split(".");
    if (s[0].length > 3) {
        s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
    }
    if ((s[1] || "").length < prec) {
        s[1] = s[1] || "";
        s[1] += new Array(prec - s[1].length + 1).join("0");
    }
    return s.join(dec);
}

// Bar Chart Example
$.ajax({
			url : "countCate.do",
			type : "get",
			dataType : "json",
			success : function(result){
				
				var cateArr = ["집", "나무", "사람", "전체"];
				var countArr = [0, 0, 0, 0];
				for(var i = 0; i < result.length; i++) {
					if(result[i].cate_seq === 1) {
						countArr[0] = result[i].count_cate;
					} else if(result[i].cate_seq === 2) {
						countArr[1] = result[i].count_cate;
					} else if(result[i].cate_seq === 3) {
						countArr[2] = result[i].count_cate;
					} else {
						countArr[3] = result[i].count_cate;
					}
					
					/*countArr.push(result[i].count_cate);*/
				}
				console.log(result);
				console.log(cateArr);
				console.log(countArr);
	var ctx = document.getElementById("countCate");
	var myBarChart = new Chart(ctx, {
	    type: "bar",
	    data: {
	        labels: cateArr,
	        datasets: [{
	            label: "시행한 검사 횟수",
	            backgroundColor: "rgba(0, 97, 242, 1)",
	            hoverBackgroundColor: "rgba(0, 97, 242, 0.9)",
	            borderColor: "#4e73df",
	            data: countArr,
	            maxBarThickness: 25
	        }]
	    },
	    options: {
	        maintainAspectRatio: false,
	        layout: {
	            padding: {
	                left: 10,
	                right: 25,
	                top: 25,
	                bottom: 0
	            }
	        },
	        scales: {
	            xAxes: [{
	                time: {
	                    unit: "month"
	                },
	                gridLines: {
	                    display: false,
	                    drawBorder: false
	                },
	                ticks: {
	                    maxTicksLimit: 6
	                }
	            }],
	            yAxes: [{
	                ticks: {
	                    min: 0,
	                    /*max: 100,*/
	                    maxTicksLimit: 5,
	                    padding: 10,
	                    // Include a dollar sign in the ticks
	                    callback: function(value, index, values) {
	                        return number_format(value);
	                    }
	                },
	                gridLines: {
	                    color: "rgb(234, 236, 244)",
	                    zeroLineColor: "rgb(234, 236, 244)",
	                    drawBorder: false,
	                    borderDash: [2],
	                    zeroLineBorderDash: [2]
	                }
	            }]
	        },
	        legend: {
	            display: false
	        },
	        tooltips: {
	            titleMarginBottom: 10,
	            titleFontColor: "#6e707e",
	            titleFontSize: 14,
	            backgroundColor: "rgb(255,255,255)",
	            bodyFontColor: "#858796",
	            borderColor: "#dddfeb",
	            borderWidth: 1,
	            xPadding: 15,
	            yPadding: 15,
	            displayColors: false,
	            caretPadding: 10,
	            callbacks: {
	                label: function(tooltipItem, chart) {
	                    var datasetLabel =
	                        chart.datasets[tooltipItem.datasetIndex].label || "";
	                    return datasetLabel + number_format(tooltipItem.yLabel);
	                }
	            }
	        }
	    }
	});
	
	}, /* callback 함수 요청되고나서 실행하는 함수*/
    			error : function() {
    				alert("loadResult error");
    			}
});

$.ajax({
			url : "kidsAge.do",
			type : "get",
			dataType : "json",
			success : function(result){
			
			var birthday = [];
			var ages = [];
			var agesCate = ["4세", "5세", "6세", "7세", "8세", "9세", "10세", "기타"];
			var agesCount = [0, 0, 0, 0, 0, 0, 0, 0];
			var today = new Date();
			
			for(var i = 0; i < result.length; i++) {
				birthday.push(new Date(result[i]));
				var age = today.getFullYear() - birthday[i].getFullYear();
				if(age < 4 || age > 10){
					ages.push("기타");
				} else {
					ages.push(age+"세");
				}
			}
			
			for(var i = 0; i < ages.length; i++) {
				for(var j = 0; j < agesCate.length; j++){
					if(ages[i] === agesCate[j]) {
						agesCount[j] += 1;
					}
				}
			}
			
				
			
			// years 의 값이 실질적으로 구해진 나이이다.
			/*console.log('계산 된 나이 : ' + years);*/
				
			var ctx = document.getElementById("kidsAge");
			var myBarChart2 = new Chart(ctx, {
			    type: "bar",
			    data: {
			        labels: agesCate,
			        datasets: [{
			            label: "자녀의 나이",
			            backgroundColor: "rgba(0, 97, 242, 1)",
			            hoverBackgroundColor: "rgba(0, 97, 242, 0.9)",
			            borderColor: "#4e73df",
			            data: agesCount,
			            maxBarThickness: 25
			        }]
			    },
			    options: {
			        maintainAspectRatio: false,
			        layout: {
			            padding: {
			                left: 10,
			                right: 25,
			                top: 25,
			                bottom: 0
			            }
			        },
			        scales: {
			            xAxes: [{
			                time: {
			                    unit: "month"
			                },
			                gridLines: {
			                    display: false,
			                    drawBorder: false
			                },
			                ticks: {
			                    maxTicksLimit: 6
			                }
			            }],
			            yAxes: [{
			                ticks: {
			                    min: 0,
			                    /*max: 100,*/
			                    maxTicksLimit: 5,
			                    padding: 10,
			                    // Include a dollar sign in the ticks
			                    callback: function(value, index, values) {
			                        return number_format(value);
			                    }
			                },
			                gridLines: {
			                    color: "rgb(234, 236, 244)",
			                    zeroLineColor: "rgb(234, 236, 244)",
			                    drawBorder: false,
			                    borderDash: [2],
			                    zeroLineBorderDash: [2]
			                }
			            }]
			        },
			        legend: {
			            display: false
			        },
			        tooltips: {
			            titleMarginBottom: 10,
			            titleFontColor: "#6e707e",
			            titleFontSize: 14,
			            backgroundColor: "rgb(255,255,255)",
			            bodyFontColor: "#858796",
			            borderColor: "#dddfeb",
			            borderWidth: 1,
			            xPadding: 15,
			            yPadding: 15,
			            displayColors: false,
			            caretPadding: 10,
			            callbacks: {
			                label: function(tooltipItem, chart) {
			                    var datasetLabel =
			                        chart.datasets[tooltipItem.datasetIndex].label || "";
			                    return datasetLabel + number_format(tooltipItem.yLabel);
			                }
			            }
			        }
			    }
			});
			}, /* callback 함수 요청되고나서 실행하는 함수*/
			    			error : function() {
			    				alert("loadResult error");
			    			}
});

