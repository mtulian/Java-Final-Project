<div style="background-color: #ffffff; margin-top:75px; margin-bottom: 15px;">
    <div class="row">
    <div class="col-md-6 col-md-offset-3" style=" text-align: center;">
    <br>
   
    
    <%  String s = (String)session.getAttribute("tipoUsuario");
        
        //VERIFICA QUE HAYA USUARIO LOGUEADO     
        if(s!=null)
                {%>
                
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
                        {%> 
                        
                            <h2 style="text-align: center;">Inhabilitar un usuario</h2><hr>
                            
                                
                            <form role="form" id="login" method="post" onsubmit="validaLogin(event)" action="uBaja.do">
                             
                            
                            <div class="form-group " id="email">
                            <label class="control-label">Ingrese Email</label>
                            <div class="input-group" >   
                            <span class="input-group-addon"><span class="glyphicon glyphicon-text-color"></span></span>
                            <input type="email" class="form-control" name="texto" id="texto" placeholder="Introduce Email">
                            </div>    
                            </div>
                            
                                <button type="submit" class="btn btn-default" > <strong>Inhabilitar</strong> </button>
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
</div>

    



         