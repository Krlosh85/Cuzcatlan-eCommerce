// Constante para establecer la ruta y parámetros de comunicación con la API.
const API_CATALOGO = '../../core/api/commerce/catalogo.php?action=';

// Método que se ejecuta cuando el documento está listo.
$( document ).ready(function() {
    // Se busca en la URL las variables (parámetros) disponibles.
    let params = new URLSearchParams( location.search );
    // Se obtienen los datos localizados por medio de las variables.
    const ID = params.get( 'id' );
    // Se llama a la función que muestra el detalle del producto seleccionado previamente.
    readOneProducto( ID );
});

// Función para obtener y mostrar los datos del producto seleccionado.
function readOneProducto( id )
{
    $.ajax({
        dataType: 'json',
        url: API_CATALOGO + 'readOneProducto',
        data: { id_producto: id },
        type: 'post'
    })
    .done(function( response ) {
        // Se comprueba si la API ha retornado datos, de lo contrario se muestra un mensaje de error en pantalla.
        if ( response.status ) {
            // Se colocan los datos en la tarjeta de acuerdo con el producto seleccionado previamente.
            $( '#imagen' ).prop( 'src', '../../resources/img/productos/' + response.dataset.imagen_producto );
            $( '#nombre' ).text( response.dataset.nombre_producto );
            $( '#descripcion' ).text( response.dataset.descripcion_producto );
            $( '#precio' ).text( response.dataset.precio_producto );
        } else {
            // Se presenta un mensaje de error cuando no existen datos para mostrar.
            $( '#title' ).html( `<i class="material-icons small">cloud_off</i><span class="red-text">${response.exception}</span>` );
            // Se limpia el contenido del div sino existen datos para mostrar.
            $( '#detalle' ).html( '' );
        }
    })
    .fail(function( jqXHR ) {
        // Se verifica si la API ha respondido para mostrar la respuesta, de lo contrario se presenta el estado de la petición.
        if ( jqXHR.status == 200 ) {
            console.log( jqXHR.responseText );
        } else {
            console.log( jqXHR.status + ' ' + jqXHR.statusText );
        }
    });
}