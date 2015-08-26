

<div style="background-color: #ffffff; margin-top:75px; margin-bottom: 15px">
  

<!-- FORMULARIO DE REGISTRO DE NUEVO DISCO-->
<div class="row" style="margin-left: 15%; margin-right: 15%; margin-bottom: 2%" >
    <br>
    <h2 style="text-align: center;">Registro de nuevo disco</h2><hr>
    
    <%  String s = (String)session.getAttribute("tipoUsuario");
        
        //VERIFICA QUE HAYA USUARIO LOGUEADO     
        if(s!=null){%>
                
                <!--VERIFICA QUE NO HAYA MENSAJES CARGADOS EN LA VARIABLE DE SESI�N COMO RESPUESTA DEL SERVIDOR-->
                <% if(session.getAttribute("mensajeExito")!= null)
                {%>
                        <!--SERVIDOR DEVUELVE MENSAJE DE �XITO-->
                      
                        <div class="alert alert-success" style="text-align: center;">
                           
                       <% out.print((String)session.getAttribute("mensajeExito"));
                       session.setAttribute("mensajeExito", null);
                       %>
                       </div>
                       <hr><div style="margin-left:  15px;"><a href="p_admin.jsp"><h4>&laquo; Volver al men� principal..</h4></a></div> <br><br>
                            
                       
                       <%}
                              
                
                else{   if(s.equals("admin"))
                        { 
                            if (session.getAttribute("mensajeError")!=null)
                                { %>
                                
                                    <!--SERVIDOR DEVUELVE MENSAJE DE ERROR-->
                                    <br><br>    
                                    <div class="alert alert-warning" style="text-align: center;">
                                    <% out.print((String)session.getAttribute("mensajeError"));
                                    session.setAttribute("mensajeError", null);
                                    %>
                                    </div>  
                              <%    };%>  
                            <!--FORMULARIO DE ALTA-->
                            <form role="form" class="form-horizontal" enctype="multipart/form-data" id="dAlta" method="post" action="dAlta.do" >
                            
                            
                            <h4>Datos del disco</h4>
                            <hr>

                             <div class="col-xs-8">


                             <label for="UPC" id="lblUPC">UPC:</label>
                             <input type="text" class="form-control" id="upc" name="upc"  placeholder="Introduce UPC del disco">
                             </div>
                             <br><br><br><br>


                             <div class="col-xs-8">
                             <label for="Artista" id="lblArtista">Artista:</label>
                             <input type="text" class="form-control" id="artista"  name="artista" placeholder="Ingrese el artista.">
                             </div>
                             <br><br><br><br>


                             <div class="col-xs-8">
                             <label for="album" id="lblAlbum">Album:</label>
                             <input type="text" class="form-control" placeholder="Ingrese el Album" name="album" id="album"><br>
                             </div>
                             <br><br><br><br>


                             <div class="col-xs-8">
                             <label for="genero" id="lblGenero">G�nero:</label>
                             <input type="text" class="form-control" placeholder="Ingrese el genero" name="genero" id="genero"><br>
                             </div>
                             <br><br><br><br>

                             <div class="col-xs-8">
                             <label for="stock" id="lblStock">Stock:</label>
                             <input type="text" class="form-control" placeholder="Ingrese Stock" name="stock" id="stock"><br>
                             </div>
                             <br><br><br><br>


                             <div class="col-xs-8">
                             <label for="descripcion" id="lblDescripcion">Descripci�n:</label>
                             <textarea rows="3" class="form-control" placeholder="Ingrese descripcion" name="descripcion" id="descripcion"></textarea>
                             </div>    
                             <br><br><br><br><br><br>

                            <div class="col-xs-8"> 
                                <label for="precio" id="lblPrecio">Precio:</label>
                                <input type="number" value="0" min="0" step="5.0" data-number-to-fixed="2" data-number-stepfactor="100" class="form-control currency" id="precio" name="precio" />
                            </div>
                            <br><br><br><br>

                             <div class="col-xs-8">
                             <label for="imagen" id="lblImagen">Im�gen de la tapa del disco</label>
                             <input type="file" id="file" name="file">
                             <p class="help-block">Seleccione un archivo con extensi�n .jpg y no menor a: 200x200px.</p>
                             </div>
                             <br><br><br><br><br><br>

                             <button type="submit" class="btn btn-default" style="width: 220px; margin-left: 15px;">Registrar canciones</button>
                             <br><br>

                         </form>

                          
                      <% }else{%>
                                    <!--RESTRICCI�N PARA LOS NO ADMINISTRADORES -->
                                    <h3 style="text-align: center; font-style: italic;">
                                    Lo sentimos, p�gina s�lo habilitada para administradores.
                                    </h3>
                                    <hr> 
                           <%}
                    
                  }%>
            
        <%}else{%>     <!--RESTRICCI�N PARA USUARIO NO LOGUEADO-->
                        <h3 style="text-align: center; font-style: italic;">
                        Lo sentimos, debe iniciar sesi�n como administrador.
                        </h3>
                        <hr> 
                        
                    <%}%>
              
       
        
    
  </div>
</div>

    