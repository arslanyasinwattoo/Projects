<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<!-- div as defined in your style sheet -->
	<div class="content">
	 <div class="row-fluid">
        <div class="row-fluid box color_2 title_medium height_medium2 bar_stats paint_hover ">
          <div class="title hidden-phone">
          
          </div>
		<div class="content row-fluid fluid numbers">
            <div class="span3 stats hidden-phone">
              <div id="placeholder3" style="width:100%;height:65px;margin-top:7px"></div>
            </div>
           
              <h1 class="value"><a href="${pageContext.request.contextPath}/Login.bnu">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login/Register</a></h1>
          
          <!-- End .row-fluid --> 
          </div>
         </div>
         </div>
		<img src="img/logoAS.jpg"  style="position: relative; left: 30%;opacity:0.7;filter:alpha(opacity=50);"> 

	</div>
</t:template>
