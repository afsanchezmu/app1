<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<webratio:Page page="page11"/>
<html>
  <head>
    <link href="Resources/favicon.png" rel="shortcut icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
    <title>Completed stuff</title>
    <c:set var="wrAjaxDebugLevel" value="minimal"/>
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "jquery-ui-style", "wr-resver": "1.9.2"}-->
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery", "wr-resver": "1.12.4"}-->
	<script src="<webratio:Resource path="WRResources/script.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-utils-supportscripts", "wr-resver": "7.2.18"}-->
	<script src="<webratio:Resource path="WRResources/ajax/jquery-ui/jquery-ui.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-ui", "wr-resver": "1.9.2"}-->
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-ui-style", "wr-resver": "7.2.18"}-->
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext)}"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-runtime", "wr-resver": "7.2.18"}-->
<c:if test="${not wrAjax and not webratio:isWindow(pageContext)}">
	<script type="text/javascript">
		<c:choose>
			<c:when test="${wrBoxed}">
				(wr._configs = (wr._configs || {}))["${wrClientAppName}"] = (function() {
					var app = new wr.app.App("${wrClientAppName}");
					app.configure({
			</c:when>
			<c:otherwise>
				(function() { 
					wr.getApp().mergeConfig({
			</c:otherwise>
		</c:choose>
			log: {
				implementation: "wr.log.LogPlugin",
				appenders: [
					"wr.log.HtmlAppender"
				],
				categories: {
					<c:choose>
						<c:when test="${wrAjaxDebugLevel eq 'full'}">
							"": wr.log.Level.DEBUG
						</c:when>
						<c:otherwise>
							"": wr.log.Level.WARN,
							"wr.logic.AjaxRequestActor._response": wr.log.Level.DEBUG,
							"wr.ui.html.ElementViewer._code": wr.log.Level.DEBUG,
							"wr.widgets": wr.log.Level.DEBUG
						</c:otherwise>
					</c:choose>
				}
			},
		ui: {
			implementation: "wr.ui.UIPlugin",
			factories: {
				"display": "wr.ui.DisplayControlFactory",
				"window": "wr.ui.WindowControlFactory",
				"default": "wr.ui.ViewerBasedControlFactory"
			},
			display: { 
				factory: "display", 
				viewer: "wr.ui.web.BrowserViewer",
				views: {
					"${wrCurrentWindowName}": {
						factory: "window",
						viewer: "${wrBoxed ? 'wr.ui.web.BoxViewer' : 'wr.ui.web.WindowViewer'}",
						viewerConfig: { <c:if test="${wrBoxed}">boxSelector: "#wr-${wrClientAppName}"</c:if> },
						views: {
							"${wrCurrentWindowName}_page": {
								viewer: "wr.ui.html.ContainerElementViewer",
								viewerConfig: { containersFilter: ".wr-ajaxDiv" }
							}
						}
					}
				}
			}
		},
		nav: {
			implementation: "wr.nav.NavPlugin",
			routers: [ {
				name: "wr.nav.PropagationRouter",
				priority: -50
			}, {
				name: "wr.nav.HttpWebRouter",
				priority: -100
			} ]
		},
		logic: {
			implementation: "wr.logic.LogicPlugin"
		},
		oldajax: {
			implementation: "wr.LegacyAjaxPlugin",
				containersFilter: ".wr-ajaxDiv"
			}
		<c:choose>
			<c:when test="${wrBoxed}">
					}).chain(function() {
						app.init();
					}).chain(function() {
						app.start();
					});
				});
			</c:when>
			<c:otherwise>
					});
				})();
			</c:otherwise>
		</c:choose>
	</script>
</c:if>
			</c:if>
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="BootstrapStyle/js/html5shiv.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "html5shiv"}-->
			<![endif]-->
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="BootstrapStyle/js/respond.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "respond"}-->
			<![endif]-->
	<script src="<webratio:Resource path="BootstrapStyle/dist/js/bootstrap.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "bootstrap-js"}-->
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-960gs-12"}-->
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext)}"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-ui-datepicker-lang", "wr-resver": "1.9.2"}-->
			</c:if>
	<link href="<webratio:Resource path="wr-css/global.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "WebRatio-global-style"}-->
	<link href="<webratio:Resource path="WRResources/browsercontrol.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-browsercontrol-style"}-->
	<link href="<webratio:Resource path="wrdefault/css/default.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wrdefault-style"}-->
	<link href="<webratio:Resource path="builtin/grid_elements.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-ui-gridsystem"}-->
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BootstrapStyle/bootstrap-css', 'BootstrapStyle/dist/css/', pageContext))}">
	<link href="<webratio:Resource path="${webratio:expandLayoutResourceContent('BootstrapStyle/bootstrap-css', 'BootstrapStyle/dist/css/', pageContext)}"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "bootstrap-css"}-->
			</c:if>
	<link href="<webratio:Resource path="BootstrapStyle/css/app.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "app-css"}-->
	<link href="<webratio:Resource path="wr-css/menu.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "WebRatio-menu-style"}-->
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="wr-js/respond.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "WebRatio-respond-js"}-->
			<![endif]-->
	<link href="<webratio:Resource path="wr-css/units.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "WebRatio-units-style"}-->
	<script src="<webratio:Resource path="BootstrapStyle/js/app.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "app-js"}-->
	<script src="<webratio:Resource path="wr-js/responsive-menu.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "WebRatio-responsive-menu-js"}-->
	<script src="<webratio:Resource path="WRResources/ajax/webratio/calendar-utils.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-calendar-utils", "wr-resver": "7.2.18"}-->
<script type="text/javascript">if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
  </head>  
  <body>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
		<div id="_wr_page" title="app1;sv3#page11"></div>
			<html:form action="form_page11.do${wrAjax ? '#!ajax=true' : ''}" styleId="page11FormBean" enctype="multipart/form-data">
		<c:if test="${wrBoxed}">
			<script>
				jQuery("#page11FormBean").prop("action", "${wrBaseURI}form_page11.do${wrAjax ? '#!ajax=true' : ''}");
			</script>
		</c:if>
		<div class="wr-ajaxDiv" id="page11HiddenFields">
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page11"/>
				<input type="hidden" name="ln75" value="<webratio:Link link="ln75"/>">
				<input type="hidden" name="ln76" value="<webratio:Link link="ln76"/>">
		</div>
	    <div id="top">
	    	<div class="user">
	    		<div class="container">
	    			<div class="wr-ajaxDiv" id="mpage2_customlocation_0"><div class="wr-ajaxDiv" id="mpage2_grid_0">
<div class="wr-ajaxDiv" id="mpage2_cell_0">
	<div class="wr-ajaxDiv" id="dau5_0">
<c:if test="${not(empty dau5) and (dau5.dataSize gt 0)}">
	  <div class="plain ">
	  	<div class="plain DataUnit">
			<p>
				<bean:message key="Welcome"/> 
<c:out value="${dau5.data.userName}"/> 
			</p>
			<ul>
			<c:if test="${webratio:isTargetAccessible('ln67', pageContext)}">
				  <li> <c:if test="${webratio:isTargetAccessible('ln67', pageContext)}">
	 		<a title="Logout" id="ln67" class="btn  btn-default " href="<webratio:Link link="ln67" position="index"/>" >
			Logout</a>
	</c:if>
 </li>
			</c:if>
			</ul>
		</div>
	  </div>
</c:if>
</div>
</div>
</div></div>
	    		</div>
	    	</div>
	    	<div class="logo">
	    		<div class="container">
	    			<a href="page8.do" title="Home"><img src="wr-images/logo_big.png" width="264" height="66" alt="WebRatio"></a>
	    		</div>
	    	</div>
	    	<div class="main-menu">
	    		<div class="container">
	    			<a href="#navmenu" title="Menu" class="toggle-menu">Menu</a>
			    	<ul id="navmenu">
					        <li>
					           <c:if test="${webratio:isTargetAccessible('page8.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page8.link"/>">
   Home
</a>
			</c:if>
					        </li>
					      	<li class="current">
					  		   <c:if test="${webratio:isTargetAccessible('page11.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page11.link"/>">
   Completed stuff
</a>
			</c:if>
					         </li>
					        <li>
					           <c:if test="${webratio:isTargetAccessible('page10.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page10.link"/>">
   Active Items
</a>
			</c:if>
					        </li>
					</ul>
				</div>
	    	</div>
	    </div>
	    <div class="container">
			<div id="breadcrumb">
				<a href="page8.do" title="Home"><img src="wr-images/home_bc.png" width="12" height="11" alt="Home"></a>
				<span class="sep">&rsaquo;</span>
				<span>Completed stuff</span>
			</div>
			<div id="page-links">
			</div>
		</div>
		<div id="body" class="container">	
			<div id="grid" class=" ">
		    	<div class="wr-ajaxDiv" id="page11_grid_0">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page11_cell_0">
	<div class="wr-ajaxDiv" id="page11_grid_1">
<div class="wr-ajaxDiv" id="page11_cell_1">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Completed Processes
		</h2>
	</div>
	<div class="panel-body">
		<div class="wr-ajaxDiv" id="enu5_0">
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu5"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu5"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld12"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld12" class="control-label col-md-2">Process</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld12" styleClass="wr-submitButtons:ln76 form-control " property="sfld12" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld12List" labelProperty="sfld12LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld12"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld9_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld9_locale" class="control-label col-md-2">From Date</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld9_locale" styleClass="wr-submitButtons:ln76 form-control " property="fld9_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld9_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld9_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld9_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld9_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld9_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld9_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld10_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld10_locale" class="control-label col-md-2">To Date</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld10_locale" styleClass="wr-submitButtons:ln76 form-control " property="fld10_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld10_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld10_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld10_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld10_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld10_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld10_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln76', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln76', pageContext)}">
			<button title="Search" onclick="$('#page11FormBean')[0].target='_self'" class="btn  btn-default " id="button:ln76" name="button:ln76" type="submit" value="Search">
			Search</button>
	</c:if>
			</c:if>
		</div>
	</div></div>
</div>	
</div>
		<div class="wr-ajaxDiv" id="pwu6_0">
<c:choose>
<c:when test="${not(empty pwu6) and (pwu6.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						     	Process Name
					        </th>
					        <th scope="col" class="">
						     	Completed at
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln70', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu6.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu6.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
			<c:if test="${webratio:isTargetAccessible('ln69', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln69" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln69" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln69', sourcePage: 'page11'}))">
			</c:if>
										<c:out value="${current.name}"/>
			<c:if test="${webratio:isTargetAccessible('ln69', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" timestamp">
			<c:if test="${webratio:isTargetAccessible('ln69', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln69" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln69" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln69', sourcePage: 'page11'}))">
			</c:if>
										<fmt:formatDate value="${current.completedAt}" pattern="${timestampPattern}"/>
			<c:if test="${webratio:isTargetAccessible('ln69', pageContext)}">
											</a>
			</c:if>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln70', pageContext)}">
							   		<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln70', pageContext)}">
	 		<a title="History Diagram" id="ln70" class=" " href="<webratio:Link link="ln70" position="index"/>" target="_blank"  >
			<span class="glyphicon "></span> </a>
	</c:if>
									</td>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu6.scroller.of gt 10}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu6.scroller.current ne pwu6.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu6First" onclick="return ajaxRequest('<webratio:Link link="pwu6First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6First', sourcePage: 'page11'}))" class="  scroll" href="<webratio:Link link="pwu6First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu6First" onclick="return ajaxRequest('<webratio:Link link="pwu6First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6First', sourcePage: 'page11'}))" class="  scroll" href="<webratio:Link link="pwu6First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu6.scroller.current ne pwu6.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu6Previous" onclick="return ajaxRequest('<webratio:Link link="pwu6Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6Previous', sourcePage: 'page11'}))" class="  scroll" href="<webratio:Link link="pwu6Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu6Previous" onclick="return ajaxRequest('<webratio:Link link="pwu6Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6Previous', sourcePage: 'page11'}))" class="  scroll" href="<webratio:Link link="pwu6Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu6.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu6.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu6Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu6Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6Block', sourcePage: 'page11'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu6.scroller.current ne pwu6.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu6Next" onclick="return ajaxRequest('<webratio:Link link="pwu6Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6Next', sourcePage: 'page11'}))" class="  scroll" href="<webratio:Link link="pwu6Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu6Next" onclick="return ajaxRequest('<webratio:Link link="pwu6Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6Next', sourcePage: 'page11'}))" class="  scroll" href="<webratio:Link link="pwu6Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu6.scroller.current ne pwu6.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu6Last" onclick="return ajaxRequest('<webratio:Link link="pwu6Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6Last', sourcePage: 'page11'}))" class="  scroll" href="<webratio:Link link="pwu6Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu6Last" onclick="return ajaxRequest('<webratio:Link link="pwu6Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6Last', sourcePage: 'page11'}))" class="  scroll" href="<webratio:Link link="pwu6Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	               </c:otherwise>
	            </c:choose>
	    </ul>
	    </div>
	</c:if>
			</div>
		</div>
</c:when>
<c:otherwise>
		<div class="alert alert-info empty-message ">
			<bean:message key="noProcessInstancesFound"/>
		</div>
</c:otherwise>
</c:choose>
</div>
	</div>
</div></div>
</div>
</div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page11_cell_13">
	<div class="wr-ajaxDiv" id="inu3_0">
<c:if test="${not(empty inu3) and (inu3.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Finished Activities
		</h2>
	</div>
	<div class="panel-body">
		<div class="plain ">
			<div class="plain IndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped" id="inu3_0_sortable">
					<thead>
						<tr>
							<th scope="col" class="">Activity</th>
							<th scope="col" class="">Completed at</th>
							<th scope="col" class="">Username</th>
							<th scope="col" class="">Group</th>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${inu3.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr<c:if test="${inu3.currentIndex eq index}"> class="info"</c:if>>	
								<td class=" string">
									<c:out value="${current.activityName}"/>
								</td>
								<td class=" timestamp">
									<fmt:formatDate value="${current.completedAt}" pattern="${timestampPattern}"/>
								</td>
								<td class=" string">
									<c:out value="${current.userName}"/>
								</td>
								<td class=" string">
									<c:out value="${current.group}"/>
								</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
			</div>
		</div>
	</div>
</div>
</c:if>
   </div>
</div>
				</div>
					<div class="clear"></div>
</div>
</div>
	    	</div>
	  	</div>
		<div id="copyright">
			<div class="container">
				<div style="color: #666; font-family: Tahoma; font-size: small; text-decoration: none;">
					<span>|</span>
					<span>generated by</span>
					<a target="_blank" title="WebRatio | High Productivity Web and Mobile App Dev Platform" href="http://www.webratio.com" style="color: #666;font-family: Tahoma;font-size: small;text-decoration: none;"><span style="color: #036; padding: 0px; margin: 0px;">Web</span><img style="width: 8px; height: 8px; border: 0px; padding: 0px; margin: 0px;" alt="Generated by WebRatio" src="WRResources/WRLogo8.png" ><span style="color: #C00; padding: 0px; margin: 0px;">Ratio</span></a><sup style="font-size: 80%;">&reg;</sup>
					<span>|</span>
				</div>
			</div>
		</div>
		</html:form>
		<script type="text/javascript">
			if (typeof wr !== "undefined" && wr.getApp().isConfigurable()) {
				wr.getApp().mergeConfig({
					"ui+": {
						autoFocusFirstWindow: true
					}
				});
			}
		</script>
	<script type="application/json" class="wr-linkInfos">
		<webratio:LinkInfos page="page11"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page11" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page11"/>
	</script>
</webratio:CollectScripts>
<c:if test="${wrBoxed}">
		</div>
		<c:if test="${not wrAjax}">
			<script type="text/javascript">
				jQuery(function($) {
					wr.ui.html.addRemoveListener($("#wr-${wrClientAppName}")[0], $.proxy(wr.runScoped, this, "${wrClientAppName}", wr.LegacyAjaxPlugin.exit));
				});
				wr._configs["${wrClientAppName}"]();
			</script>
		</c:if>
		<c:if test="${not(empty inlineScripts)}">
			<script type="text/javascript">
				wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
					${inlineScripts}
				});
			</script>
		</c:if>
</c:if>
  </body>
</html>