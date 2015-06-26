function loadOffersJSON(data_path)
{
    var loyaltyDiv = $("#loyalty");
    $.ajax({
   		method: "GET",
  		url: "personalizedoffer?email="+$("#username").val(),
	})
  	.done(function( data ) {
	//$.getJSON( data_path, function( data ) {
      	//var offerData = data.BrowseOffersResponse.Return.OfferData;
      	var offerData = data.offerData;
   	    var divHtml = '', rowHtml = '<div class="row">';
	
   	    loyaltyDiv.html('');
	    for(var i = 0; i < offerData.length; i++){  // loop complete json object
	      //results.innerHTML += data[obj].user+" is "+data[obj].age+ " yrs and lives in "+ data[obj].country+"<hr/>" ;
	        console.log(offerData[i].headline);
	        console.log('Tag;'+offerData[i].tagCategory);

	        divHtml = '<div class="col-sm-3 padding"><div class="col-item">';

	        imageUrl = 'http://placehold.it/350x260';
			var entry = offerData[i].offerMedia.offerImage.entry;
	        for(var j = 0; j < entry.length;j++){
	            if(entry[j].key == 'LARGE'){
	                imageUrl = entry[j].value.item.imageUrl;
	            }
	        }
            divHtml += '<div class="photo" style="height:130px; background:url(' + imageUrl +  ') no-repeat center center; background-size:cover; "></div>';

            divHtml += '<div class="info"><h5 style="color: white;font-size: 16px;">';

            divHtml += offerData[i].headline.substr(0,30);
            divHtml += '</h5><h6 class="price-text-color">' + offerData[i].merchant.name + '</h6>';
            divHtml += '</div>' +
	                '</div>' +
				'</div>';

			if (i > 0 && (i-3)%4 === 0) {
				//For every 5th element, create a new row.
				rowHtml += divHtml + '</div><hr/>';
				loyaltyDiv.append(rowHtml);
				rowHtml = '<div class="row">';
			}
			else {
				rowHtml += divHtml;
			}
	    } //main for loop
		rowHtml += '</div><hr/>';
		loyaltyDiv.append(rowHtml);
	});   
    loyaltyDiv.html("requesting..."); // can use img tag, animated gif file
}