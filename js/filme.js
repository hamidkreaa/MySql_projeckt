var filme = ['titel','beschreibung','jahr','runtime','land','bild'];


function showFilme(sort)
{
	//var sort='1';
	document.getElementById("out").innerHTML = "";
	//document.getElementById("filmdatei").innerHTML = "";
	//alert(sort);
	var query ='';
	
	switch (sort) {
		case '0':
			query ='SELECT titel,beschreibung,jahr,runtime,land,bild FROM film';
			break;
		case '1':
			query ='SELECT titel,beschreibung,jahr,runtime,land,bild';
			query += ' FROM film';
			query += ' JOIN filmgenre on film.id=filmgenre.film_id';
			query += ' JOIN genre on genre.id=filmgenre.genre_id';
			query += ' where genre like "Action"';
			
			break;
		case '2':
			query ='SELECT titel,beschreibung,jahr,runtime,land,bild';
			query += ' FROM film';
			query += ' JOIN filmgenre on film.id=filmgenre.film_id';
			query += ' JOIN genre on genre.id=filmgenre.genre_id';
			query += ' where genre like "Crime"';
			
			break;
		case '3':
			query ='SELECT titel,beschreibung,jahr,runtime,land,bild';
			query += ' FROM film';
			query += ' JOIN filmgenre on film.id=filmgenre.film_id';
			query += ' JOIN genre on genre.id=filmgenre.genre_id';
			query += ' where genre like "Drama"';
			
			break;
		case '4':
			query ='SELECT titel,beschreibung,jahr,runtime,land,bild';
			query += ' FROM film';
			query += ' JOIN filmgenre on film.id=filmgenre.film_id';
			query += ' JOIN genre on genre.id=filmgenre.genre_id';
			query += ' where genre like "Horror"';
			
			break;
		default:
			query ='SELECT titel,beschreibung,jahr,runtime,land,bild FROM film';
	}
	//alert(query);
	
	var i, table;
	table = '<table class="table table-hover">';

	// header
	table += '<tr>';
	for( i in filme )
		table += '<th>' + filme[i] + '</th>';
	table += '</tr>';

	// rows
	var res = JSON.parse(mysqlQuery(query));
	for( i in res )
	{
		table += '<tr onclick = "displayfilm(this)">';
		for( var j in filme )
			table += '<td>' + res[i][filme[j]] + '</td>';
		table += '</tr>';
	}
	table += '</table>';
	//alert(table);
	document.getElementById("out").innerHTML = table;
	//alert(query);
	document.getElementById("query").innerHTML = query;
}




function displayfilm(obj) 
{
	//alert(obj);
	var node = obj.childNodes;	
	document.getElementById("filmdatei").innerHTML =
		"Film Name: <br>" + (node[0].innerHTML) +
		"<br>Beschreibung: <br>" +	(node[1].innerHTML)+
		"<br>Runtime: <br>" + (node[3].innerHTML) + 
		"<br>Jahr: <br>" + (node[2].innerHTML) +
		"<br>land: <br>" + (node[4].innerHTML);
}
