<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<link href="<webratio:Resource path="wr-css/global.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "WebRatio-global-style"}-->
	<link href="<webratio:Resource path="wr-css/menu.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "WebRatio-menu-style"}-->
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="wr-js/respond.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "WebRatio-respond-js"}-->
			<![endif]-->
	<link href="<webratio:Resource path="wr-css/units.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "WebRatio-units-style"}-->
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-960gs-12"}-->
	<script src="<webratio:Resource path="wr-js/responsive-menu.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "WebRatio-responsive-menu-js"}-->
	<link href="<webratio:Resource path="wrdefault/css/default.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wrdefault-style"}-->
	<link href="<webratio:Resource path="builtin/grid_elements.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-ui-gridsystem"}-->
<script type="text/javascript">if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
  </head>  
  <body>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
	  <div class="plain ">
	  	<div class="plain DataUnit">
			<p>
				<bean:message key="Welcome"/> 
<c:out value="${dau2.data.userName}"/> 
			</p>
			<ul>
				  <li> <a title="Logout" id="ln33"  href="<webratio:Link link="ln33" position="index"/>">
					Logout</a>
 </li>
			</ul>
		</div>
	  </div>
</c:if>
</div>
	<div class="wr-ajaxDiv" id="ln35_0"><c:if test="${webratio:evaluateCondition('cexpr5', null, pageContext)}"><a title="Home" id="ln35"  href="<webratio:Link link="ln35" position="index"/>">
					Home</a></c:if></div>
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
		    	<div class="wr-ajaxDiv" id="page3_grid_0">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page3_cell_0">
	<div class="wr-ajaxDiv" id="dau1_0">
<c:if test="${not(empty dau1) and (dau1.dataSize gt 0)}">
	<div class="frame">
	<div class="frame-title">Process Instance Details</div>
	<div class="frame-content">
		<div class="plain ">
			<div class="plain DataUnit">
			    <table>
							<tr class="row">
			        		  	<th class=" header">Name</th>
			        		  	<td class=" value string"><c:out value="${dau1.data.name}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Description</th>
			        		  	<td class=" value text"><c:out value="${dau1.data.description}" escapeXml="false"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Status</th>
			        		  	<td class=" value string"><c:out value="${dau1.data.status}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Active Since</th>
			        		  	<td class=" value timestamp"><fmt:formatDate value="${dau1.data.activeSince}" pattern="${timestampPattern}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Completed at</th>
			        		  	<td class=" value timestamp"><fmt:formatDate value="${dau1.data.completedAt}" pattern="${timestampPattern}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Cancelled at</th>
			        		  	<td class=" value timestamp"><fmt:formatDate value="${dau1.data.cancelledAt}" pattern="${timestampPattern}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Aborted at</th>
			        		  	<td class=" value timestamp"><fmt:formatDate value="${dau1.data.abortedAt}" pattern="${timestampPattern}"/></td>
			        		</tr>
				  <tr>
				  <td colspan="14">
			           <table>
			               <tr>
			                 <td class="link"> <table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln10" class=" link" href="<webratio:Link link="ln10" position="index"/>" target="_blank" >
						<img title="History Diagram" alt="History Diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
					<td>
		 			<a title="History Diagram" id="ln10" class=" link" href="<webratio:Link link="ln10" position="index"/>" target="_blank" >
					History Diagram</a>
					</td>
				</tr>
			</table>
 </td>
<c:if test="${webratio:evaluateCondition('cexpr2', null, pageContext)}">
			                 <td class="link"> <c:if test="${webratio:evaluateCondition('cexpr2', 'index', pageContext)}"><c:set var="_wr_message"><bean:message key="confirmCancelProcess"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="Mark as Cancelled" id="ln9" class=" link" href="<webratio:Link link="ln9" position="index"/>" onclick="if (confirm('<c:out value="${_wr_message}"/>')) { return true; } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; return false; }">
						<img title="Mark as Cancelled" alt="Mark as Cancelled" src="Resources/delete_gray.png" border="0"/>
					</a>
				</td>
					<td>
		 			<a title="Mark as Cancelled" id="ln9" class=" link" href="<webratio:Link link="ln9" position="index"/>" onclick="if (confirm('<c:out value="${_wr_message}"/>')) { return true; } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; return false; }">
					Mark as Cancelled</a>
					</td>
				</tr>
			</table></c:if>
 </td>
</c:if>
			                 <td class="link"> <c:set var="_wr_message"><bean:message key="confirmDeletion"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="Delete Process Instance" id="ln11" class=" link" href="<webratio:Link link="ln11" position="index"/>" onclick="if (confirm('<c:out value="${_wr_message}"/>')) { return true; } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; return false; }">
						<img title="Delete Process Instance" alt="Delete Process Instance" src="Resources/delete.png" border="0"/>
					</a>
				</td>
					<td>
		 			<a title="Delete Process Instance" id="ln11" class=" link" href="<webratio:Link link="ln11" position="index"/>" onclick="if (confirm('<c:out value="${_wr_message}"/>')) { return true; } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; return false; }">
					Delete Process Instance</a>
					</td>
				</tr>
			</table>
 </td>
			               </tr>
			           </table>
			        </td>
			      </tr>  
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
					<div class="wr-ajaxDiv" id="page3_cell_12">
	<div class="wr-ajaxDiv" id="pwu1_0">
<c:if test="${not(empty pwu1) and (pwu1.dataSize gt 0)}">
	<div class="frame">
	<div class="frame-title">Activity List</div>
	<div class="frame-content">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<table border="0" cellspacing="1" cellpadding="2">
						<!-- begin header -->
						<tr>
							<th class=" header"></th>
					        <th nowrap="nowrap" class="nowrap header">
						             <a title="Name" id="pwu1activityInstanceName" class=" sort" href="<webratio:Link link="pwu1activityInstanceName" position="index"/>">
					Name</a>
					        </th>
					        <th nowrap="nowrap" class="nowrap header">
						             <a title="Assignee" id="pwu1activityInstanceUserName" class=" sort" href="<webratio:Link link="pwu1activityInstanceUserName" position="index"/>">
					Assignee</a>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <a title="Group" id="pwu1activityInstanceGroupName" class=" sort" href="<webratio:Link link="pwu1activityInstanceGroupName" position="index"/>">
					Group</a>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <a title="Execution" id="pwu1activityInstanceExecution" class=" sort" href="<webratio:Link link="pwu1activityInstanceExecution" position="index"/>">
					Execution</a>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <a title="Status" id="pwu1activityInstanceStatus" class=" sort" href="<webratio:Link link="pwu1activityInstanceStatus" position="index"/>">
					Status</a>
					        </th>
					        <th nowrap="nowrap" class="nowrap header">
						             <a title="Ready Since" id="pwu1activityInstanceReadyTimestamp" class=" sort" href="<webratio:Link link="pwu1activityInstanceReadyTimestamp" position="index"/>">
					Ready Since</a>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <a title="Active Since" id="pwu1activityInstanceActiveTimestamp" class=" sort" href="<webratio:Link link="pwu1activityInstanceActiveTimestamp" position="index"/>">
					Active Since</a>
					        </th>
					        <th nowrap="nowrap" class="nowrap header">
						             <a title="Completed at" id="pwu1activityInstanceCompletedTimestamp" class=" sort" href="<webratio:Link link="pwu1activityInstanceCompletedTimestamp" position="index"/>">
					Completed at</a>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <a title="Aborted at" id="pwu1activityInstanceAbortedTimestamp" class=" sort" href="<webratio:Link link="pwu1activityInstanceAbortedTimestamp" position="index"/>">
					Aborted at</a>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <a title="Cancelled at" id="pwu1activityInstanceCancelledTimestamp" class=" sort" href="<webratio:Link link="pwu1activityInstanceCancelledTimestamp" position="index"/>">
					Cancelled at</a>
					        </th>
<th class=" header"></th> 
<th class=" header"></th> 
						</tr>
						<!-- end header -->
				<!-- instances -->
				<c:forEach var="current" varStatus="status" items="${pwu1.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								<td class=" value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
									<img src="WRResources/spacer.gif" class="bullet<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" border="0" alt="Select User and Group Assignee"/>
								</td>
								   <td class="nowrap value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.name}"/>
								   </td>
								   <td class="nowrap value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.userName}"/>
								   </td>
								   <td class=" value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.group}"/>
								   </td>
								   <td class=" value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.execution}"/>
								   </td>
								   <td class=" value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.status}"/>
								   </td>
								   <td class="nowrap value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">				
										<fmt:formatDate value="${current.readySince}" pattern="${timestampPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">				
										<fmt:formatDate value="${current.activeSince}" pattern="${timestampPattern}"/>
								   </td>
								   <td class="nowrap value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">				
										<fmt:formatDate value="${current.completedAt}" pattern="${timestampPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">				
										<fmt:formatDate value="${current.abortedAt}" pattern="${timestampPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">				
										<fmt:formatDate value="${current.cancelledAt}" pattern="${timestampPattern}"/>
								   </td>
									<td class=" value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu1.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:choose>
	       <c:when test="${not(not(webratio:evaluateCondition('cexpr4', 'index', pageContext)))}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="Select User and Group Assignee" id="ln12" onclick="return ajaxRequest('<webratio:Link link="ln12" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln12', sourcePage: 'page3'}))" class=" linkCurrentAlternate" href="<webratio:Link link="ln12" position="index"/>">							
						<img title="Select User and Group Assignee" alt="Select User and Group Assignee" src="Resources/assign.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
     </c:when>
	 <c:otherwise>
				<table cellspacing="0" cellpadding="0" id="ln12">
					<tr>
							<td valign="middle">
								<img alt="Select User and Group Assignee" title="Select User and Group Assignee" src="Resources/assign_disabled.png" border="0"/>
							</td>
					</tr>
				</table>		
	 </c:otherwise>
  </c:choose>
														</c:when>
														<c:otherwise>
															 <c:choose>
	       <c:when test="${not(not(webratio:evaluateCondition('cexpr4', 'index', pageContext)))}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="Select User and Group Assignee" id="ln12" onclick="return ajaxRequest('<webratio:Link link="ln12" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln12', sourcePage: 'page3'}))" class=" linkCurrent" href="<webratio:Link link="ln12" position="index"/>">							
						<img title="Select User and Group Assignee" alt="Select User and Group Assignee" src="Resources/assign.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
     </c:when>
	 <c:otherwise>
				<table cellspacing="0" cellpadding="0" id="ln12">
					<tr>
							<td valign="middle">
								<img alt="Select User and Group Assignee" title="Select User and Group Assignee" src="Resources/assign_disabled.png" border="0"/>
							</td>
					</tr>
				</table>		
	 </c:otherwise>
  </c:choose>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:choose>
	       <c:when test="${not(not(webratio:evaluateCondition('cexpr4', 'index', pageContext)))}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="Select User and Group Assignee" id="ln12" onclick="return ajaxRequest('<webratio:Link link="ln12" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln12', sourcePage: 'page3'}))" class=" linkAlternate" href="<webratio:Link link="ln12" position="index"/>">							
						<img title="Select User and Group Assignee" alt="Select User and Group Assignee" src="Resources/assign.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
     </c:when>
	 <c:otherwise>
				<table cellspacing="0" cellpadding="0" id="ln12">
					<tr>
							<td valign="middle">
								<img alt="Select User and Group Assignee" title="Select User and Group Assignee" src="Resources/assign_disabled.png" border="0"/>
							</td>
					</tr>
				</table>		
	 </c:otherwise>
  </c:choose>
														</c:when>
														<c:otherwise>
															 <c:choose>
	       <c:when test="${not(not(webratio:evaluateCondition('cexpr4', 'index', pageContext)))}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="Select User and Group Assignee" id="ln12" onclick="return ajaxRequest('<webratio:Link link="ln12" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln12', sourcePage: 'page3'}))" class=" link" href="<webratio:Link link="ln12" position="index"/>">							
						<img title="Select User and Group Assignee" alt="Select User and Group Assignee" src="Resources/assign.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
     </c:when>
	 <c:otherwise>
				<table cellspacing="0" cellpadding="0" id="ln12">
					<tr>
							<td valign="middle">
								<img alt="Select User and Group Assignee" title="Select User and Group Assignee" src="Resources/assign_disabled.png" border="0"/>
							</td>
					</tr>
				</table>		
	 </c:otherwise>
  </c:choose>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
									<td class=" value<c:if test="${pwu1.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu1.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:choose>
	       <c:when test="${not(not(webratio:evaluateCondition('cexpr3', 'index', pageContext)))}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="Remove Assignee" id="ln13" class=" linkCurrentAlternate" href="<webratio:Link link="ln13" position="index"/>">
						<img title="Remove Assignee" alt="Remove Assignee" src="Resources/unassign.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
     </c:when>
	 <c:otherwise>
				<table cellspacing="0" cellpadding="0" id="ln13">
					<tr>
							<td valign="middle">
								<img alt="Remove Assignee" title="Remove Assignee" src="Resources/unassign_disabled.png" border="0"/>
							</td>
					</tr>
				</table>		
	 </c:otherwise>
  </c:choose>
														</c:when>
														<c:otherwise>
															 <c:choose>
	       <c:when test="${not(not(webratio:evaluateCondition('cexpr3', 'index', pageContext)))}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="Remove Assignee" id="ln13" class=" linkCurrent" href="<webratio:Link link="ln13" position="index"/>">
						<img title="Remove Assignee" alt="Remove Assignee" src="Resources/unassign.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
     </c:when>
	 <c:otherwise>
				<table cellspacing="0" cellpadding="0" id="ln13">
					<tr>
							<td valign="middle">
								<img alt="Remove Assignee" title="Remove Assignee" src="Resources/unassign_disabled.png" border="0"/>
							</td>
					</tr>
				</table>		
	 </c:otherwise>
  </c:choose>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:choose>
	       <c:when test="${not(not(webratio:evaluateCondition('cexpr3', 'index', pageContext)))}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="Remove Assignee" id="ln13" class=" linkAlternate" href="<webratio:Link link="ln13" position="index"/>">
						<img title="Remove Assignee" alt="Remove Assignee" src="Resources/unassign.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
     </c:when>
	 <c:otherwise>
				<table cellspacing="0" cellpadding="0" id="ln13">
					<tr>
							<td valign="middle">
								<img alt="Remove Assignee" title="Remove Assignee" src="Resources/unassign_disabled.png" border="0"/>
							</td>
					</tr>
				</table>		
	 </c:otherwise>
  </c:choose>
														</c:when>
														<c:otherwise>
															 <c:choose>
	       <c:when test="${not(not(webratio:evaluateCondition('cexpr3', 'index', pageContext)))}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="Remove Assignee" id="ln13" class=" link" href="<webratio:Link link="ln13" position="index"/>">
						<img title="Remove Assignee" alt="Remove Assignee" src="Resources/unassign.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
     </c:when>
	 <c:otherwise>
				<table cellspacing="0" cellpadding="0" id="ln13">
					<tr>
							<td valign="middle">
								<img alt="Remove Assignee" title="Remove Assignee" src="Resources/unassign_disabled.png" border="0"/>
							</td>
					</tr>
				</table>		
	 </c:otherwise>
  </c:choose>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
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
					<div class="wr-ajaxDiv" id="page3_cell_24">
	<div class="wr-ajaxDiv" id="dau1_1">
<c:if test="${not(empty dau1) and (dau1.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain DataUnit">
			    <table><tr><td>
			    <table>
			        </table>
			       </td>
			       <td valign="middle">
			           <table>
			               <tr>
			                 <td class="link"> <input title="Back" id="ln8" class=" link"  type="button" value="Back" onclick="setWindowLocation('<webratio:Link link="ln8" position="index"/>');event.preventDefault ? event.preventDefault() : event.returnValue = false; return false;">
 </td>
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