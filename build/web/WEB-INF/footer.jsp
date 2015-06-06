<%-- 
    Document   : footer
    Created on : 5 juin 2015, 11:28:43
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <div class="large-3 pull-9 columns">
            
          <ul class="side-nav">
            <li><a href="<%=request.getContextPath()%>/inscriptionServlet">inscription</a></li>
          </ul>
          
          <p><img src="http://placehold.it/320x240&text=Ad"/></p>
            
        </div>
        
      </div>
        
      
       
      
      <footer class="row">
        <div class="large-12 columns">
          <hr/>
          <div class="row">
            <div class="large-6 columns">
              <p>© Copyright ENSAK 2015.</p>
            </div>
          </div>
        </div> 
      </footer>
</body>
<script src="<%=request.getContextPath()%>/js/foundation.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/fastclick.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/placeholder.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/modernizr.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/jquery.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/responsive-tables.js"></script>

 <script>
      $(document).foundation();
    </script>
</html>