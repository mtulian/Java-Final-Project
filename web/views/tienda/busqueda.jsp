<%@page import="Actions.Canciones.CancionesFunciones"%>
<%@page import="java.util.*"%>
<%@page import="Model.Disco"%>
<%@page import="Actions.Discos.DiscosFunciones"%>

<div style="margin-top: 60px; background-color: #FFF; margin-bottom: 10px">
    <br><h2 style="text-align: center;">Resultados de la b�squeda</h2>
    <div style="margin-left:  15px;"><a href="javascript:window.history.back();"><h4>&laquo; Volver atr�s</h4></a></div> <hr>
    <ul id="cd-gallery-items" class="cd-container" style="padding-top: 20px">
			
                   <%  
                        DiscosFunciones funciones = new DiscosFunciones();
                        CancionesFunciones funcionesCanciones = new CancionesFunciones();
                        Disco dis = new Disco();
                        ArrayList<Model.Disco> lista = new ArrayList<Model.Disco>();
                        String tipo = request.getParameter("tipolista");
                        
                        
                        if(tipo.equals("todos"))
                        {lista = funciones.getAll();
                        }
                        
                        int i;
                        int f = lista.size();
                        for(i=0;i<f;i++) 
                        { dis = lista.get(i); 
                          double precio = funcionesCanciones.getOne(dis.getUpc(), 0).getPrecio();
                            %>
                             <li>
                                 <img src="img/thumb.jpg" alt="Preview image" class="img-responsive" style=" float: left;" >
                                 <div class="texto-tienda" style="text-align: left;" id="disco">
                                     
                                     <strong>Artista:</strong><%out.print(dis.getArtista());%><br>
                                     <strong>Album:</strong><%out.print(dis.getAlbum());%> <br>
                                     <strong>Precio:</strong>  $<%out.print(precio);%> <br>
                                     <strong>Stock:</strong><%out.print(dis.getStock());%> <br>
                                     <strong>CANTIDAD:</strong>
                                     <input type="number" value="0" min="0" step="5.0" data-number-to-fixed="2" 
                                            data-number-stepfactor="100" 
                                            class="form-control currency" id="cantidad" name="precio" />
                                            <a href="#">Ver canciones..</a><br><br>
                                    
                                     <button id="agregarItem" onclick="agregar('<% out.print(dis.getUpc());%>' )">
                                     Agregar a carrito
                                     </button>
                                     
                                 </div>
                                </li>
                                
                       <% } %>
                      

		</ul> <!-- cd-gallery-items -->
              
</div>                