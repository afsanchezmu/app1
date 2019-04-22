<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<webratio:Page page="page3"/>
<html>
  <head>
    <link href="Resources/favicon.png" rel="shortcut icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
    <title>Process Instance Details</title>
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
		<div id="_wr_page" title="app1;sv2#page3"></div>
			<html:form action="form_page3.do${wrAjax ? '#!ajax=true' : ''}" styleId="page3FormBean" enctype="multipart/form-data">
		<c:if test="${wrBoxed}">
			<script>
				jQuery("#page3FormBean").prop("action", "${wrBaseURI}form_page3.do${wrAjax ? '#!ajax=true' : ''}");
			</script>
		</c:if>
		<div class="wr-ajaxDiv" id="page3HiddenFields">
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page3"/>
		</div>
	    <div id="top">
	    	<div class="user">
	    		<div class="container">
	    			<div class="wr-ajaxDiv" id="mpage1_customlocation_0"><div class="wr-ajaxDiv" id="mpage1_grid_0">
<div class="wr-ajaxDiv" id="mpage1_cell_0">
	<div class="wr-ajaxDiv" id="dau2_0">
<c:if test="${not(empty dau2) and (dau2.dataSize gt 0)}">
	<ul class="nav navbar-nav navbar-right">
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">
	<bean:message key="Welcome"/> 
<c:out value="${dau2.data.userName}"/> 
			<span class="caret"></span></a>
			<ul class="dropdown-menu">
				  <li> <a title="Logout" id="ln33" class="btn  btn-default " href="<webratio:Link link="ln33" position="index"/>" >
			Logout</a>
 </li>
			</ul>
		</li>
	</ul>
</c:if>     
</div>
	<div class="wr-ajaxDiv" id="ln35_0"><c:if test="${webratio:evaluateCondition('cexpr5', null, pageContext)}"><a title="Home" id="ln35" class=" " href="<webratio:Link link="ln35" position="index"/>" >
			Home</a></c:if></div>
	<div class="wr-ajaxDiv" id="mpage1_grid_1">
<div class="container_12">
				<div class="grid_2 suffix_10 alpha omega agrd_4">
					<div class="wr-ajaxDiv" id="mpage1_cell_1">
	<div class="wr-ajaxDiv" id="ln33_1"><c:set var="_wr_message"><bean:message key="SeeuLater"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
	 		<a title="Logout" id="ln33" class=" " href="<webratio:Link link="ln33" position="index"/>"  onclick="return confirm('<c:out value="${_wr_message}"/>')">
			<span class="glyphicon "></span> </a></div>
</div>
				</div>
					<div class="clear"></div>
</div>
</div>
</div>
</div></div>
	    		</div>
	    	</div>
	    	<div class="logo">
	    		<div class="container">
	    			<a href="page5.do" title="Home"><img src="wr-images/logo_big.png" width="264" height="66" alt="WebRatio"></a>
	    		</div>
	    	</div>
	    	<div class="main-menu">
	    		<div class="container">
	    			<a href="#navmenu" title="Menu" class="toggle-menu">Menu</a>
			    	<ul id="navmenu">
					        <li>
 <a class="" href="<webratio:Link link="page5.link"/>">
   Control Panel
</a>
					        </li>
					</ul>
				</div>
	    	</div>
	    </div>
	    <div class="container">
			<div id="breadcrumb">
				<a href="page5.do" title="Home"><img src="wr-images/home_bc.png" width="12" height="11" alt="Home"></a>
				<span class="sep">&rsaquo;</span>
				<span>Process Instance Details</span>
			</div>
			<div id="page-links">
			</div>
		</div>
		<div id="body" class="container">	
			<div id="grid" class=" ">
				<div class="wr-ajaxDiv" id="mpage1_customlocation_2"><div class="wr-ajaxDiv" id="mpage1_grid_3">
<div class="wr-ajaxDiv" id="mpage1_cell_14"></div>
</div></div>   
		    	<div class="wr-ajaxDiv" id="page3_grid_0">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page3_cell_0">
	<div class="wr-ajaxDiv" id="dau1_0">
<c:if test="${not(empty dau1) and (dau1.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Process Instance Details
		</h2>
	</div>
	<div class="panel-body">
		<div class="">
			<div class="row">
				<label class="header col-md-2">Name</label>
				<div class="value col-md-10"><c:out value="${dau1.data.name}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">Description</label>
				<div class="value col-md-10"><c:out value="${dau1.data.description}" escapeXml="false"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">Status</label>
				<div class="value col-md-10"><c:out value="${dau1.data.status}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">Active Since</label>
				<div class="value col-md-10"><fmt:formatDate value="${dau1.data.activeSince}" pattern="${timestampPattern}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">Completed at</label>
				<div class="value col-md-10"><fmt:formatDate value="${dau1.data.completedAt}" pattern="${timestampPattern}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">Cancelled at</label>
				<div class="value col-md-10"><fmt:formatDate value="${dau1.data.cancelledAt}" pattern="${timestampPattern}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">Aborted at</label>
				<div class="value col-md-10"><fmt:formatDate value="${dau1.data.abortedAt}" pattern="${timestampPattern}"/></div>
			</div>
			<p class="unit-actions">
				 <a title="History Diagram" id="ln10" class="btn  btn-default " href="<webratio:Link link="ln10" position="index"/>" target="_blank"  >
			<span class="glyphicon "></span> History Diagram</a>
<c:if test="${webratio:evaluateCondition('cexpr2', null, pageContext)}">
				 <c:if test="${webratio:evaluateCondition('cexpr2', 'index', pageContext)}"><c:set var="_wr_message"><bean:message key="confirmCancelProcess"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
	 		<a title="Mark as Cancelled" id="ln9" class="btn  btn-default " href="<webratio:Link link="ln9" position="index"/>"  onclick="return confirm('<c:out value="${_wr_message}"/>')">
			<span class="glyphicon "></span> Mark as Cancelled</a></c:if>
</c:if>
				 <c:set var="_wr_message"><bean:message key="confirmDeletion"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
	 		<a title="Delete Process Instance" id="ln11" class="btn  btn-default " href="<webratio:Link link="ln11" position="index"/>"  onclick="return confirm('<c:out value="${_wr_message}"/>')">
			<span class="glyphicon "></span> Delete Process Instance</a>
			</p>
		</div>
	</div>
</div>     
</c:if>
   </div>
</div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page3_cell_12">
	<div class="wr-ajaxDiv" id="pwu1_0">
<c:if test="${not(empty pwu1) and (pwu1.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Activity List
		</h2>
	</div>
	<div class="panel-body">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="nowrap">
						             <a title="Name" id="pwu1activityInstanceName" class="  sort" href="<webratio:Link link="pwu1activityInstanceName" position="index"/>" >
			Name</a>
					        </th>
					        <th scope="col" class="nowrap">
						             <a title="Assignee" id="pwu1activityInstanceUserName" class="  sort" href="<webratio:Link link="pwu1activityInstanceUserName" position="index"/>" >
			Assignee</a>
					        </th>
					        <th scope="col" class="">
						             <a title="Group" id="pwu1activityInstanceGroupName" class="  sort" href="<webratio:Link link="pwu1activityInstanceGroupName" position="index"/>" >
			Group</a>
					        </th>
					        <th scope="col" class="">
						             <a title="Execution" id="pwu1activityInstanceExecution" class="  sort" href="<webratio:Link link="pwu1activityInstanceExecution" position="index"/>" >
			Execution</a>
					        </th>
					        <th scope="col" class="">
						             <a title="Status" id="pwu1activityInstanceStatus" class="  sort" href="<webratio:Link link="pwu1activityInstanceStatus" position="index"/>" >
			Status</a>
					        </th>
					        <th scope="col" class="nowrap">
						             <a title="Ready Since" id="pwu1activityInstanceReadyTimestamp" class="  sort" href="<webratio:Link link="pwu1activityInstanceReadyTimestamp" position="index"/>" >
			Ready Since</a>
					        </th>
					        <th scope="col" class="">
						             <a title="Active Since" id="pwu1activityInstanceActiveTimestamp" class="  sort" href="<webratio:Link link="pwu1activityInstanceActiveTimestamp" position="index"/>" >
			Active Since</a>
					        </th>
					        <th scope="col" class="nowrap">
						             <a title="Completed at" id="pwu1activityInstanceCompletedTimestamp" class="  sort" href="<webratio:Link link="pwu1activityInstanceCompletedTimestamp" position="index"/>" >
			Completed at</a>
					        </th>
					        <th scope="col" class="">
						             <a title="Aborted at" id="pwu1activityInstanceAbortedTimestamp" class="  sort" href="<webratio:Link link="pwu1activityInstanceAbortedTimestamp" position="index"/>" >
			Aborted at</a>
					        </th>
					        <th scope="col" class="">
						             <a title="Cancelled at" id="pwu1activityInstanceCancelledTimestamp" class="  sort" href="<webratio:Link link="pwu1activityInstanceCancelledTimestamp" position="index"/>" >
			Cancelled at</a>
					        </th>
<th scope="col" class=" smallcol"></th> 
<th scope="col" class=" smallcol"></th> 
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu1.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu1.currentIndex eq index}">class="info"</c:if>>	
								<td class="nowrap string">
										<c:out value="${current.name}"/>
								</td>
								<td class="nowrap string">
										<c:out value="${current.userName}"/>
								</td>
								<td class=" string">
										<c:out value="${current.group}"/>
								</td>
								<td class=" string">
										<c:out value="${current.execution}"/>
								</td>
								<td class=" string">
										<c:out value="${current.status}"/>
								</td>
								<td class="nowrap timestamp">
										<fmt:formatDate value="${current.readySince}" pattern="${timestampPattern}"/>
								</td>
								<td class=" timestamp">
										<fmt:formatDate value="${current.activeSince}" pattern="${timestampPattern}"/>
								</td>
								<td class="nowrap timestamp">
										<fmt:formatDate value="${current.completedAt}" pattern="${timestampPattern}"/>
								</td>
								<td class=" timestamp">
										<fmt:formatDate value="${current.abortedAt}" pattern="${timestampPattern}"/>
								</td>
								<td class=" timestamp">
										<fmt:formatDate value="${current.cancelledAt}" pattern="${timestampPattern}"/>
								</td>
									<td class=" smallcol">
										 <c:choose>
	       <c:when test="${not(not(webratio:evaluateCondition('cexpr4', 'index', pageContext)))}">
	 		<a title="Select User and Group Assignee" id="ln12" onclick="return ajaxRequest('<webratio:Link link="ln12" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln12', sourcePage: 'page3'}))" class=" " href="<webratio:Link link="ln12" position="index"/>">							
			<span class="glyphicon "></span> </a>
     </c:when>
	 <c:otherwise>
	 		<span title="Select User and Group Assignee" id="ln12" class="disabled  ">
			<span class="glyphicon "></span> </span>
	 </c:otherwise>
  </c:choose>
									</td>
									<td class=" smallcol">
										 <c:choose>
	       <c:when test="${not(not(webratio:evaluateCondition('cexpr3', 'index', pageContext)))}">
	 		<a title="Remove Assignee" id="ln13" class=" " href="<webratio:Link link="ln13" position="index"/>" >
			<span class="glyphicon "></span> </a>
     </c:when>
	 <c:otherwise>
	 		<span title="Remove Assignee" id="ln13" class="disabled  ">
			<span class="glyphicon "></span> </span>
	 </c:otherwise>
  </c:choose>
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
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page3_cell_24">
	<div class="wr-ajaxDiv" id="dau1_1">
<c:if test="${not(empty dau1) and (dau1.dataSize gt 0)}">
		<div class="">
			<p class="unit-actions">
				 <a title="Back" id="ln8" class="btn  btn-default " href="<webratio:Link link="ln8" position="index"/>" >
			Back</a>
			</p>
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
		<webratio:LinkInfos page="page3"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page3" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page3"/>
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