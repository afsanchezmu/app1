<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<webratio:Page page="page13"/>
<html>
  <head>
    <link href="Resources/favicon.png" rel="shortcut icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
    <title>Home</title>
    <c:set var="wrAjaxDebugLevel" value="minimal"/>
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery", "wr-resver": "1.12.4"}-->
	<script src="<webratio:Resource path="WRResources/script.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-utils-supportscripts", "wr-resver": "7.2.18"}-->
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "jquery-ui-style", "wr-resver": "1.9.2"}-->
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
	<link href="<webratio:Resource path="wr-css/global.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "WebRatio-global-style"}-->
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
			<html:form action="form_page13.do${wrAjax ? '#!ajax=true' : ''}" styleId="page13FormBean" enctype="multipart/form-data">
		<c:if test="${wrBoxed}">
			<script>
				jQuery("#page13FormBean").prop("action", "${wrBaseURI}form_page13.do${wrAjax ? '#!ajax=true' : ''}");
			</script>
		</c:if>
		<div class="wr-ajaxDiv" id="page13HiddenFields">
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page13"/>
				<input type="hidden" name="ln92" value="<webratio:Link link="ln92"/>">
		</div>
	    <div id="top">
	    	<div class="user">
	    		<div class="container">
	    			<div class="wr-ajaxDiv" id="mpage3_customlocation_0"><div class="wr-ajaxDiv" id="mpage3_grid_0">
<div class="wr-ajaxDiv" id="mpage3_cell_0">
	<div class="wr-ajaxDiv" id="dau8_0">
<c:if test="${not(empty dau8) and (dau8.dataSize gt 0)}">
	  <div class="plain ">
	  	<div class="plain DataUnit">
			<p>
				<bean:message key="Welcome"/> 
<c:out value="${dau8.data.userName}"/> 
			</p>
			<ul>
			<c:if test="${webratio:isTargetAccessible('ln108', pageContext)}">
				  <li> <c:if test="${webratio:isTargetAccessible('ln108', pageContext)}">
		 			<a title="Logout" id="ln108"  href="<webratio:Link link="ln108" position="index"/>">
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
	    			<a href="page13.do" title="Home"><img src="wr-images/logo_big.png" width="264" height="66" alt="WebRatio"></a>
	    		</div>
	    	</div>
	    	<div class="main-menu">
	    		<div class="container">
	    			<a href="#navmenu" title="Menu" class="toggle-menu">Menu</a>
			    	<ul id="navmenu">
					      	<li class="current">
					  		   <c:if test="${webratio:isTargetAccessible('page13.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page13.link"/>">
   Home
</a>
			</c:if>
					         </li>
					        <li>
					           <c:if test="${webratio:isTargetAccessible('page16.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page16.link"/>">
   Completed Processes
</a>
			</c:if>
					        </li>
					        <li>
					           <c:if test="${webratio:isTargetAccessible('page15.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page15.link"/>">
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
				<a href="page13.do" title="Home"><img src="wr-images/home_bc.png" width="12" height="11" alt="Home"></a>
				<span class="sep">&rsaquo;</span>
				<span>Home</span>
			</div>
			<div id="page-links">
			</div>
		</div>
		<div id="body" class="container">	
			<div id="left-column">
				<div class="wr-ajaxDiv" id="page13_customlocation_0"><div class="wr-ajaxDiv" id="page13_grid_2">
<div class="wr-ajaxDiv" id="page13_cell_60">
	<div class="wr-ajaxDiv" id="inu4_0">
<c:if test="${not(empty inu4) and (inu4.dataSize gt 0)}">
	<div class="frame">
	<div class="frame-title">Start a New Process</div>
	<div class="frame-content">
		<div class="plain ">
			<div class="plain IndexUnit">
				<table border="0" cellspacing="1" cellpadding="2" id="inu4_0_sortable">
				<c:forEach var="current" varStatus="status" items="${inu4.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${inu4.currentIndex eq index}">Current</c:if>">	
									<!-- linked attribute -->
									<td class=" link<c:if test="${inu4.currentIndex eq index}">Current</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln81', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln81" position="index"/>" class=" link<c:if test="${inu4.currentIndex eq index}">Current</c:if>" onclick="">
			</c:if>
										<c:out value="${current.name}"/>
			<c:if test="${webratio:isTargetAccessible('ln81', pageContext)}">
											</a>
			</c:if>
									</td>
			<c:if test="${webratio:isTargetAccessible('ln81', pageContext)}">
			</c:if>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	 </div>
</div>
</c:if>
   </div>
</div>
</div></div>
			</div>
			<div id="grid" class="has-left ">
		    	<div class="wr-ajaxDiv" id="page13_grid_0">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page13_cell_0">
	<div class="wr-ajaxDiv" id="pwu8_0">
<c:if test="${not(empty pwu8) and (pwu8.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Notifications
		</h2>
	</div>
	<div class="panel-body">
		<div class="plain notification">
			<div class="plain PowerIndexUnit">
					<c:if test="${pwu8.scroller.of gt 5}">
						<table border="0" cellspacing="1" cellpadding="2">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu8.scroller.current ne pwu8.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu8First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu8First" onclick="return ajaxRequest('<webratio:Link link="pwu8First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8First', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu8First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
								            </c:when>
								            <c:otherwise>
								           			<span><bean:message key="PowerIndex.First"/></span>
								           		</c:otherwise>
								        </c:choose>
								    </td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu8.scroller.current ne pwu8.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu8Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu8Previous" onclick="return ajaxRequest('<webratio:Link link="pwu8Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8Previous', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu8Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu8.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu8.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu8.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu8.scroller.current ne pwu8.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu8Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu8Next" onclick="return ajaxRequest('<webratio:Link link="pwu8Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8Next', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu8Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
					    		            </c:when>
						    	            <c:otherwise>
								           			<span><bean:message key="PowerIndex.Next"/></span>
						    	            </c:otherwise>
						    	        </c:choose>
								    </td>
								    <td class="scrollText">
								    	<c:choose>
					    		            <c:when test="${pwu8.scroller.current ne pwu8.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu8Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu8Last" onclick="return ajaxRequest('<webratio:Link link="pwu8Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8Last', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu8Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Last"/></span>
							               </c:otherwise>
							            </c:choose>
								    </td>
						   </tr>
							   <tr>  
								    <td colspan="5" class="scrollText"> 
									    <span><bean:message key="PowerIndex.Jump"/></span>
									    <c:forEach var="current" varStatus="status" items="${pwu8.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu8.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu8Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu8Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8Block', sourcePage: 'page13'}))">${current}</a>
									        </c:when>
									        <c:otherwise>
									          ${current}
									        </c:otherwise>
									      </c:choose>
									      </span>
								    	</c:forEach> 
								    </td>
							   </tr>
						 </table>
					</c:if>
				<table border="0" cellspacing="1" cellpadding="2">
				<!-- instances -->
				<c:forEach var="current" varStatus="status" items="${pwu8.data}">
					<c:set var="index" value="${status.index}"/>
						<tr class="row<c:if test="${pwu8.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> <c:if test="${not(current.read)}">not-</c:if>highlight">	
								   <td class=" value<c:if test="${pwu8.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.message}"/>
								   </td>
			<c:if test="${webratio:isTargetAccessible('ln89', pageContext)}">
									<td class=" value<c:if test="${pwu8.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu8.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:isTargetAccessible('ln89', pageContext)}">
	 		<a title="delete" id="ln89" class="  linkCurrentAlternate" href="<webratio:Link link="ln89" position="index"/>" >
			delete</a>
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln89', pageContext)}">
	 		<a title="delete" id="ln89" class="  linkCurrent" href="<webratio:Link link="ln89" position="index"/>" >
			delete</a>
	</c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:isTargetAccessible('ln89', pageContext)}">
	 		<a title="delete" id="ln89" class="  linkAlternate" href="<webratio:Link link="ln89" position="index"/>" >
			delete</a>
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln89', pageContext)}">
	 		<a title="delete" id="ln89" class="  link" href="<webratio:Link link="ln89" position="index"/>" >
			delete</a>
	</c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln90', pageContext)}">
<c:if test="${not(webratio:evaluateCondition('cexpr_var13', 'index', pageContext))}">
									<td class="nowrap value<c:if test="${pwu8.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu8.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var13', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln90', pageContext)}">
	 		<a title="mark as read" id="ln90" class=" nowrap linkCurrentAlternate" href="<webratio:Link link="ln90" position="index"/>" >
			mark as read</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var13', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln90', pageContext)}">
	 		<a title="mark as read" id="ln90" class=" nowrap linkCurrent" href="<webratio:Link link="ln90" position="index"/>" >
			mark as read</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var13', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln90', pageContext)}">
	 		<a title="mark as read" id="ln90" class=" nowrap linkAlternate" href="<webratio:Link link="ln90" position="index"/>" >
			mark as read</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var13', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln90', pageContext)}">
	 		<a title="mark as read" id="ln90" class=" nowrap link" href="<webratio:Link link="ln90" position="index"/>" >
			mark as read</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln91', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr_var13', 'index', pageContext)}">
									<td class="nowrap value<c:if test="${pwu8.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu8.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr_var13', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln91', pageContext)}">
	 		<a title="mark as unread" id="ln91" class=" nowrap linkCurrentAlternate" href="<webratio:Link link="ln91" position="index"/>" >
			mark as unread</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr_var13', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln91', pageContext)}">
	 		<a title="mark as unread" id="ln91" class=" nowrap linkCurrent" href="<webratio:Link link="ln91" position="index"/>" >
			mark as unread</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr_var13', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln91', pageContext)}">
	 		<a title="mark as unread" id="ln91" class=" nowrap linkAlternate" href="<webratio:Link link="ln91" position="index"/>" >
			mark as unread</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr_var13', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln91', pageContext)}">
	 		<a title="mark as unread" id="ln91" class=" nowrap link" href="<webratio:Link link="ln91" position="index"/>" >
			mark as unread</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
</c:if>
			</c:if>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
</c:if>
</div>
</div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page13_cell_12">
	<div class="wr-ajaxDiv" id="enu6_0">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Search
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu6"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu6"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld13"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld13" class="control-label col-md-2">Process</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld13" styleClass="wr-submitButtons:ln92 form-control " property="sfld13" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld13List" labelProperty="sfld13LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld13"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld14"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld14" class="control-label col-md-2">Status</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld14" styleClass="wr-submitButtons:ln92 form-control " property="sfld14" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld14List" labelProperty="sfld14LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld14"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln92', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln92', pageContext)}">
			<button title="Search" onclick="$('#page13FormBean')[0].target='_self'" class="btn  btn-default " id="button:ln92" name="button:ln92" type="submit" value="Search">
			Search</button>
	</c:if>
			</c:if>
		</div>
	</div></div>
</div>	
	</div>
</div></div>
</div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page13_cell_24">
	<div class="wr-ajaxDiv" id="pwu7_0">
<c:choose>
<c:when test="${not(empty pwu7) and (pwu7.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Work Items
		</h2>
	</div>
	<div class="panel-body">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="attachment">
						            #
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7activityInstanceProcessInstanceName', pageContext)}">
	 		<a title="Process" id="pwu7activityInstanceProcessInstanceName" onclick="return ajaxRequest('<webratio:Link link="pwu7activityInstanceProcessInstanceName" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7activityInstanceProcessInstanceName', sourcePage: 'page13'}))" class="  sort" href="<webratio:Link link="pwu7activityInstanceProcessInstanceName" position="index"/>">							
			Process</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7activityInstanceName', pageContext)}">
	 		<a title="Activity" id="pwu7activityInstanceName" onclick="return ajaxRequest('<webratio:Link link="pwu7activityInstanceName" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7activityInstanceName', sourcePage: 'page13'}))" class="  sort" href="<webratio:Link link="pwu7activityInstanceName" position="index"/>">							
			Activity</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7activityInstanceStatus', pageContext)}">
	 		<a title="Status" id="pwu7activityInstanceStatus" onclick="return ajaxRequest('<webratio:Link link="pwu7activityInstanceStatus" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7activityInstanceStatus', sourcePage: 'page13'}))" class="  sort" href="<webratio:Link link="pwu7activityInstanceStatus" position="index"/>">							
			Status</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7activityInstanceReadyTimestamp', pageContext)}">
	 		<a title="Running for" id="pwu7activityInstanceReadyTimestamp" onclick="return ajaxRequest('<webratio:Link link="pwu7activityInstanceReadyTimestamp" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7activityInstanceReadyTimestamp', sourcePage: 'page13'}))" class="  sort" href="<webratio:Link link="pwu7activityInstanceReadyTimestamp" position="index"/>">							
			Running for</a>
	</c:if>
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln82', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr10', null, pageContext)}">
<th scope="col" class="small smallcol"></th> 
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln84', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr11', null, pageContext)}">
<th scope="col" class=" smallcol"></th> 
</c:if>
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu7.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu7.currentIndex eq index}">class="info"</c:if>>	
								<td class="attachment integer">
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln83" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln83" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln83', sourcePage: 'page13'}))">
			</c:if>
										<fmt:formatNumber value="${current.processAttachmentCount}" pattern="${integerPattern}"/>
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" string">
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln83" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln83" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln83', sourcePage: 'page13'}))">
			</c:if>
										<c:out value="${current.processInstanceName}"/>
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" string">
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln83" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln83" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln83', sourcePage: 'page13'}))">
			</c:if>
										<c:out value="${current.name}"/>
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" string">
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln83" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln83" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln83', sourcePage: 'page13'}))">
			</c:if>
										<c:out value="${current.status}"/>
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" timestamp">
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln83" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln83" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln83', sourcePage: 'page13'}))">
			</c:if>
										<c:set var="startedSince" value="${current.readySince}"/>    
<%   
 {
    java.sql.Timestamp startedSince = (java.sql.Timestamp) pageContext.getAttribute("startedSince");
    String duration = null;
    if(startedSince != null){
      java.sql.Timestamp  end = new java.sql.Timestamp(System.currentTimeMillis());  
      long delta = end.getTime() - startedSince.getTime();
      duration = " " + org.apache.commons.lang.time.DurationFormatUtils.formatDuration(delta, "d'd 'H'h 'm'm 's's'");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0d", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0h", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0m", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0s", "");
      duration = org.apache.commons.lang.StringUtils.replace(duration, "s", "\"");
      duration = org.apache.commons.lang.StringUtils.replace(duration, "m", "'").trim();
    }else{
      duration = " - ";
    }
%><%=duration%>
<% } %>
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
											</a>
			</c:if>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln82', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr10', null, pageContext)}">
							   		<td class="small smallcol">
										 <c:if test="${webratio:evaluateCondition('cexpr10', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln82', pageContext)}">
	 		<a title="resume" id="ln82" class=" small" href="<webratio:Link link="ln82" position="index"/>" >
			resume</a>
	</c:if></c:if>
									</td>
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln84', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr11', null, pageContext)}">
							   		<td class=" smallcol">
										 <c:if test="${webratio:evaluateCondition('cexpr11', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln84', pageContext)}">
	 		<a title="work on" id="ln84" class=" " href="<webratio:Link link="ln84" position="index"/>" >
			work on</a>
	</c:if></c:if>
									</td>
</c:if>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu7.scroller.of gt 10}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu7.scroller.current ne pwu7.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu7First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu7First" onclick="return ajaxRequest('<webratio:Link link="pwu7First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7First', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu7First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu7First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu7First" onclick="return ajaxRequest('<webratio:Link link="pwu7First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7First', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu7First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu7.scroller.current ne pwu7.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu7Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu7Previous" onclick="return ajaxRequest('<webratio:Link link="pwu7Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7Previous', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu7Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu7Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu7Previous" onclick="return ajaxRequest('<webratio:Link link="pwu7Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7Previous', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu7Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu7.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu7.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu7Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu7Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7Block', sourcePage: 'page13'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu7.scroller.current ne pwu7.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu7Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu7Next" onclick="return ajaxRequest('<webratio:Link link="pwu7Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7Next', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu7Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu7Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu7Next" onclick="return ajaxRequest('<webratio:Link link="pwu7Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7Next', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu7Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu7.scroller.current ne pwu7.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu7Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu7Last" onclick="return ajaxRequest('<webratio:Link link="pwu7Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7Last', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu7Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu7Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu7Last" onclick="return ajaxRequest('<webratio:Link link="pwu7Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7Last', sourcePage: 'page13'}))" class="  scroll" href="<webratio:Link link="pwu7Last" position="index"/>">							
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
	</div>
</div>
</c:when>
<c:otherwise>
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Work Items
		</h2>
	</div>
	<div class="panel-body">
		<div class="alert alert-info empty-message ">
			<bean:message key="NoWorkItemsFound"/>
		</div>
	</div>
</div>
</c:otherwise>
</c:choose>
</div>
</div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page13_cell_36">
	<div class="wr-ajaxDiv" id="page13_grid_1"><c:if test="${webratio:evaluateCondition('cexpr9', null, pageContext)}">
<div class="frame">
	<div class="frame-title">Work Item Details</div>
	<div class="frame-content">
<div class="container_12">
				<div class="grid_6 alpha agrd_12">
					<div class="wr-ajaxDiv" id="page13_cell_37">
	<div class="wr-ajaxDiv" id="dau6_0">
<c:if test="${not(empty dau6) and (dau6.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain DataUnit">
			    <table>
							<tr class="row">
			        		  	<th class=" header">process name</th>
			        		  	<td class=" value string"><c:out value="${dau6.data.processName}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">name</th>
			        		  	<td class=" value string"><c:out value="${dau6.data.name}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">role</th>
			        		  	<td class=" value string"><c:out value="${dau6.data.group}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">status</th>
			        		  	<td class=" value string"><c:out value="${dau6.data.status}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">ready since</th>
			        		  	<td class=" value timestamp"><c:set var="startedSince" value="${dau6.data.readySince}"/>    
<%   
 {
    java.sql.Timestamp startedSince = (java.sql.Timestamp) pageContext.getAttribute("startedSince");
    String duration = null;
    if(startedSince != null){
      java.sql.Timestamp  end = new java.sql.Timestamp(System.currentTimeMillis());  
      long delta = end.getTime() - startedSince.getTime();
      duration = " " + org.apache.commons.lang.time.DurationFormatUtils.formatDuration(delta, "d'd 'H'h 'm'm 's's'");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0d", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0h", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0m", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0s", "");
      duration = org.apache.commons.lang.StringUtils.replace(duration, "s", "\"");
      duration = org.apache.commons.lang.StringUtils.replace(duration, "m", "'").trim();
    }else{
      duration = " - ";
    }
%><%=duration%>
<% } %></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">active since</th>
			        		  	<td class=" value timestamp"><c:set var="startedSince" value="${dau6.data.activeSince}"/>    
<%   
 {
    java.sql.Timestamp startedSince = (java.sql.Timestamp) pageContext.getAttribute("startedSince");
    String duration = null;
    if(startedSince != null){
      java.sql.Timestamp  end = new java.sql.Timestamp(System.currentTimeMillis());  
      long delta = end.getTime() - startedSince.getTime();
      duration = " " + org.apache.commons.lang.time.DurationFormatUtils.formatDuration(delta, "d'd 'H'h 'm'm 's's'");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0d", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0h", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0m", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0s", "");
      duration = org.apache.commons.lang.StringUtils.replace(duration, "s", "\"");
      duration = org.apache.commons.lang.StringUtils.replace(duration, "m", "'").trim();
    }else{
      duration = " - ";
    }
%><%=duration%>
<% } %></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">worked at</th>
			        		  	<td class=" value timestamp"><fmt:formatDate value="${dau6.data.workedAt}" pattern="${timestampPattern}"/></td>
			        		</tr>
				  <tr>
				  <td colspan="14">
			           <table>
			               <tr>
			<c:if test="${webratio:isTargetAccessible('ln88', pageContext)}">
			                 <td class="link"> <c:if test="${webratio:isTargetAccessible('ln88', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln88" class=" link" href="<webratio:Link link="ln88" position="index"/>" target="_blank" >
						<img title="History Diagram" alt="History Diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
					<td>
		 			<a title="History Diagram" id="ln88" class=" link" href="<webratio:Link link="ln88" position="index"/>" target="_blank" >
					History Diagram</a>
					</td>
				</tr>
			</table>	
	</c:if>
 </td>
			</c:if>
			               </tr>
			           </table>
			        </td>
			      </tr>  
			    </table> 
			 </div>
		 </div>
</c:if>
    </div>
</div>
				</div>
				<div class="grid_6 omega agrd_12">
					<div class="wr-ajaxDiv" id="page13_cell_43">
	<div class="wr-ajaxDiv" id="pu20_0">
<c:if test="${not(empty pu20) and (pu20.dataSize gt 0)}">
 <div class="plain ">
	<div class="plain ProcessUnit">
      <table>
	      <c:forEach var="current" varStatus="status" items="${pu20.data}">
	           <c:set var="index" value="${status.index}"/>    
	           <c:set var="type" value="${current.type}"/>
	           <c:set var="typePattern" value="${type}Pattern"/>
	           <tr class="row">
	           	<th class="header">
	           		<c:out value="${current.name}"/>
	           	</th>
	           	<td class="value ${type}">
		           <c:forEach var="value" varStatus="vStatus" items="${current.values}">
		                <c:choose>
		                   <c:when test="${type eq 'boolean'}">
		                      <c:choose>
		                        <c:when test="${value}"><bean:message key="${type}.yes"/></c:when>
		                        <c:otherwise><bean:message key="${type}.no"/></c:otherwise>
		                      </c:choose>
		                   </c:when>
		                   <c:when test="${type eq 'date' or type eq 'time' or type eq 'timestamp'}">
		                     <fmt:formatDate value="${value}" pattern="${pageScope[typePattern]}"/>
		                   </c:when>
		                   <c:when test="${type eq 'integer' or type eq 'float' or type eq 'decimal'}">
		                     <fmt:formatNumber value="${value}" pattern="${pageScope[typePattern]}"/>
		                   </c:when>
		                   <c:when test="${type eq 'blob'}">
		                     <c:if test="${not (empty value)}">
		                       <a target="_blank" border="0" href="<webratio:BLOB value="${value}"/>"><c:out value="${value.name}"/></a>
		                     </c:if>
		                   </c:when>
		                   <c:when test="${type eq 'url'}">
		                     <c:if test="${not(empty value)}">
		                       <a target="_blank" href="<c:out value="${value}"/>"><c:out value="${value}"/></a>
		                     </c:if>
		                   </c:when>
		                   <c:when test="${type eq 'text'}">
		                     <c:out value="${value}"/>
		                   </c:when>
		                   <c:when test="${current.hasCases}">
		                     <c:out value="${value}"/>
		                   </c:when>
		                   <c:otherwise><c:out value="${value}"/></c:otherwise>
		                </c:choose>
		                <c:if test="${not vStatus.last}">&nbsp;</c:if>
		            </c:forEach>
	             </td>
	            </tr>
	        </c:forEach>
		</table>
	</div>
 </div>	
</c:if></div>
</div>
				</div>
					<div class="clear"></div>
</div>
</div>
</div></c:if></div>
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
		<webratio:LinkInfos page="page13"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page13" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page13"/>
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