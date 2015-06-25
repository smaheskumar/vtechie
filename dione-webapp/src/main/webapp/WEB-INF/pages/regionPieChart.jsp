<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="${pageContext.request.contextPath}/js/d3.v3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/d3.tip.v0.6.3.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dione.bar.css"/>
</head>
<body>
<script>

var margin = {top: 40, right: 20, bottom: 30, left: 40},
    width = 960 - margin.left - margin.right,
    height = 500 - margin.top - margin.bottom;
	
	
var r=250;

var i=0;
var dataset = []

//var color = d3.scale.ordinal().range(["yellow","lightyellow","blue","orange","grey","steelblue","lightgreen"]);
var color = d3.scale.category20c();

var canvas=d3.select("body").append("svg")
	.attr("width",1500)
	.attr("height",1500);

var group = canvas.append("g")
			.attr("transform","translate(300,300)");

var arc=d3.svg.arc()
		.innerRadius(50)
		.outerRadius(r);
var pie = d3.layout.pie()
		.value(function(d){return d.offers;})
		
var tip = d3.tip()
  .attr('class', 'd3-tip')
  .offset([-10, 0])
  .html(function(d) {
    return "<strong>Offers:</strong> <span style='color:red'>" + d.data.offers + "</span>";
  })
  
 var svg = d3.select("body").append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

svg.call(tip);

d3.csv("${pageContext.request.contextPath}/resources/csv/regionoffers.csv", type, function(error, data) {

		
 var arcs=group.selectAll(".arc")
		.data(pie(data))
		.enter().append("a")
		.attr("xlink:href", function(d) {return "${pageContext.request.contextPath}/getofferbyage/"+"groupdata"})
		.append("g")
		.attr("class","arc")
		.on('mouseover', tip.show)
      .on('mouseout', tip.hide);
	
	arcs.append("path")
		.attr("d",arc)
		.attr("fill", function(d, i){
        return color(i);
    });
	//.attr("fill",function(d){return color(d.data.offers);});
		
	
	arcs.append("text")
      .attr("transform", function(d) { return "translate(" + arc.centroid(d) + ")"; })
      .attr("dy", ".35em")
     .style("text-anchor", "middle")
	 .style("fill","black")
	 .text(function(d) { return d.data.region; });


});
   
   

function type(d) {
  d.offers = +d.offers;
  return d;
}
	
</script>

</body>
</html>