function loadOffersJSON(data_path)
{
    var loyaltyDiv = $("#loyalty");
    /*$.ajax({
   		method: "GET",
  		url: data_file,
	})
  	.done(function( data ) {*/
	$.getJSON( data_path, function( data ) {
      	var offerData = data.BrowseOffersResponse.Return.OfferData;
   	    var divHtml = '', rowHtml = '<div class="row">';

   	    loyaltyDiv.html('');
	    for(var i = 0; i < offerData.length; i++){  // loop complete json object
	      //results.innerHTML += data[obj].user+" is "+data[obj].age+ " yrs and lives in "+ data[obj].country+"<hr/>" ;
	        console.log(offerData[i].Headline);
	        console.log('Tag;'+offerData[i].TagCategory);

	        divHtml = '<div class="col-sm-3 padding"><div class="col-item">';

	        imageUrl = 'http://placehold.it/350x260';
			var entry = offerData[i].OfferMedia.OfferImage.Entry;
	        for(var j = 0; j < entry.length;j++){
	            if(entry[j].Key == 'MERCHANT_LOGO'){
	                imageUrl = entry[j].Value.Item.ImageUrl;
	            }
	        }
            divHtml += '<div class="photo"><img src="' + imageUrl  + '" class="img-responsive" alt="a" /></div>';

            divHtml += '<div class="info"><div class="row"><div class="price col-md-10"><div style="height: 60px;"><h5 style="color: white;overflow: visible; font-size: larger; left: 30px; padding-left: 10px;">';

            divHtml += offerData[i].Headline.substr(0,30);
            divHtml += '</h5></div><h5 class="price-text-color">' + offerData[i].TagCategory + '</h5>';
            divHtml += '</div></div><div class="separator clear-left">' +
	                            //'<p class="btn-add">' +
	                              //  '<i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to cart</a></p>'+
	                            '<p class="btn-details">' +
	                                '<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm" style="position: relative; left:  18px; top: -20px;">More details</a></p>'+
	                        '</div>'+
	                        '<div class="clearfix">' +
	                        '</div>' +
	                    '</div>' +
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