<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<webratio:Page page="page12"/>
<html>
  <head>
    <link href="Resources/favicon.png" rel="shortcut icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
    <title>Error</title>
    <c:set var="wrAjaxDebugLevel" value="minimal"/>
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery", "wr-resver": "1.12.4"}-->
	<script src="<webratio:Resource path="WRResources/script.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-utils-supportscripts", "wr-resver": "7.2.18"}-->
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "jquery-ui-style", "wr-resver": "1.9.2"}-->
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<script src="<webratio:Resource path="WRResources/ajax/jquery-ui/jquery-ui.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-ui", "wr-resver": "1.9.2"}-->
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-ui-style", "wr-resver": "7.2.18"}-->
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling) and not(empty webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext))}">
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
<script type="text/javascript">if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
  </head>  
  <body>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
		<div id="_wr_page" title="app1;sv3#page12"></div>
			<html:form action="form_page12.do${wrAjax ? '#!ajax=true' : ''}" styleId="page12FormBean" enctype="multipart/form-data">
		<c:if test="${wrBoxed}">
			<script>
				jQuery("#page12FormBean").prop("action", "${wrBaseURI}form_page12.do${wrAjax ? '#!ajax=true' : ''}");
			</script>
		</c:if>
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page12"/>
	    <div id="top">
	    	<div class="user">
	    		<div class="container">
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
					        <li>
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
				<span>Error</span>
			</div>
			<div id="page-links">
			</div>
		</div>
		<div id="body" class="container">	
			<div id="left-column">
			</div>
			<div id="grid" class="has-left ">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
<c:if test="${not(empty pu17.exception)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			An Error Occurred
		</h2>
	</div>
	<div class="panel-body">
<div class="plain ">
 <div class="plain ProcessUnit">
	<c:set var="exc" value="${pu17.exception}"/>
	<c:set var="errorTitle">
		<c:choose>
			<c:when test="${pu17.errorType eq 'ASSIGNED_ACTIVITY'}">Unable to start or resume the work item</c:when>
			<c:when test="${pu17.errorType eq 'COMPLETED_ACTIVITY'}">The work item has already been completed</c:when>
			<c:when test="${pu17.errorType eq 'ABORTED_ACTIVITY'}">The work item has been aborted</c:when>
			<c:otherwise>An Error Occurred</c:otherwise>
		</c:choose>   
	</c:set>
	<h2><c:out value="${errorTitle}"/></h2>
	<table>
		<c:choose>
		  <c:when test="${pu17.errorType eq 'ASSIGNED_ACTIVITY'}">
			<tr>
			  <td class="value">The work item "<b><c:out value="${pu17.activityInstanceName} [#${pu17.activityInstanceOid}]"/></b>" has already been assigned to another user and group.</td>
		    </tr>
		    <tr>
		       <td class="value" title="Assigned Group" style="padding-left:10px">
		       	Group: <b><c:out value="${pu17.activityGroupName} [#${pu17.activityGroupOid}]"/></b>
		       </td>
		    </tr>
		    <tr>
		       <td class="value" title="Assigned User" style="padding-left:10px">
		         User: <b><c:out value="${pu17.activityUserName} [#${pu17.activityUserOid}]"/></b>
		       </td>
		    </tr>
		    <tr>
		    	<td class="value">
		    		Go back to your <a class="link" href="<webratio:Link escapeXml="true" link="page8.link" position="index"/>">home</a> page and select another work item to execute.
		    	</td>
		    </tr>
		  </c:when>
		  <c:when test="${pu17.errorType eq 'COMPLETED_ACTIVITY'}">
			<tr>
			  <td class="value">The work item "<b><c:out value="${pu17.activityInstanceName} [#${pu17.activityInstanceOid}]"/></b>" has already been completed.</td>
		    </tr>
		    <tr><td class="value">Go back to your <a class="link" href="<webratio:Link escapeXml="true" link="page8.link" position="index"/>">home</a> page and select another work item to execute.</td></tr>
		  </c:when>
		  <c:when test="${pu17.errorType eq 'ABORTED_ACTIVITY'}">
			<tr><td class="value">The work item "<b><c:out value="${pu17.activityInstanceName} [#${pu17.activityInstanceOid}]"/></b>" has been aborted.</td></tr>
			<tr><td class="value">Go back to your <a class="link" href="<webratio:Link escapeXml="true" link="page8.link" position="index"/>">home</a> page and select another work item to execute.</td></tr>
		  </c:when>
		  <c:otherwise>
		    <tr>
			  <td class="value"><c:out value="${exc.message}"/></td>
		    </tr>   
		  </c:otherwise>
		</c:choose>
		<tr>
			<td class="value">If the error persists please contact the system administrator.</td>
		</tr> 
	</table>
<!--
<%=org.apache.commons.lang.exception.ExceptionUtils.getFullStackTrace((Exception) pageContext.getAttribute("exc"))%>
--> 
	</div>
  </div>   
	</div>
</div> 
</c:if>
				</div>
					<div class="clear"></div>
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