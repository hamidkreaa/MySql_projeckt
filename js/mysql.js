function mysqlQuery(query)
{
	var xhttp = new XMLHttpRequest();
	xhttp.open( "POST", '', false );
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send('query='+query);
	return xhttp.responseText;
}
