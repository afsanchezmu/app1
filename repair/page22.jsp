<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<webratio:Page page="page22"/>
<html>
  <head>
    <link href="Resources/favicon.png" rel="shortcut icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
    <title>Test proper system functionality</title>
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
			<html:form action="form_page22.do${wrAjax ? '#!ajax=true' : ''}" styleId="page22FormBean" enctype="multipart/form-data">
		<c:if test="${wrBoxed}">
			<script>
				jQuery("#page22FormBean").prop("action", "${wrBaseURI}form_page22.do${wrAjax ? '#!ajax=true' : ''}");
			</script>
		</c:if>
		<div class="wr-ajaxDiv" id="page22HiddenFields">
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page22"/>
				<input type="hidden" name="ln158" value="<webratio:Link link="ln158"/>">
				<input type="hidden" name="ln159" value="<webratio:Link link="ln159"/>">
				<input type="hidden" name="ln160" value="<webratio:Link link="ln160"/>">
				<input type="hidden" name="ln161" value="<webratio:Link link="ln161"/>">
				<input type="hidden" name="sv4ln132" value="<webratio:Link link="sv4ln132"/>">
					<input type="hidden" name="sv4ln132_sr" value="<webratio:Link link="sv4ln132" selectiveRefresh="true"/>">
				<input type="hidden" name="sv4ln133" value="<webratio:Link link="sv4ln133"/>">
				<input type="hidden" name="sv4ln134" value="<webratio:Link link="sv4ln134"/>">
					<input type="hidden" name="sv4ln134_sr" value="<webratio:Link link="sv4ln134" selectiveRefresh="true"/>">
				<input type="hidden" name="sv4ln135" value="<webratio:Link link="sv4ln135"/>">
		</div>
	    <div id="top">
	    	<div class="user">
	    		<div class="container">
	    			<div class="wr-ajaxDiv" id="sv4mpage4_customlocation_2"><div class="wr-ajaxDiv" id="sv4mpage4_grid_6">
<div class="wr-ajaxDiv" id="sv4mpage4_cell_76">
	<div class="wr-ajaxDiv" id="sv4dau11_0">
<c:if test="${not(empty sv4dau11) and (sv4dau11.dataSize gt 0)}">
	  <div class="plain ">
	  	<div class="plain DataUnit">
			<p>
				<bean:message key="Welcome"/> 
<c:out value="${sv4dau11.data.userName}"/> 
			</p>
			<ul>
			<c:if test="${webratio:isTargetAccessible('sv4ln137', pageContext)}">
				  <li> <c:if test="${webratio:isTargetAccessible('sv4ln137', pageContext)}">
		 			<a title="Logout" id="sv4ln137"  href="<webratio:Link link="sv4ln137" position="index"/>">
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
					        <li>
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
				<span>Test proper system functionality</span>
			</div>
			<div id="page-links">
			</div>
		</div>
		<div id="body" class="container">	
			<div id="left-column">
				<div class="wr-ajaxDiv" id="sv4mpage4_customlocation_1"><div class="wr-ajaxDiv" id="sv4mpage4_grid_2">
<div class="wr-ajaxDiv" id="sv4mpage4_cell_49">
	<div class="wr-ajaxDiv" id="sv4mpage4_grid_3">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_50">
	<div class="wr-ajaxDiv" id="sv4mpage4_grid_4">
<div class="wr-ajaxDiv" id="sv4mpage4_cell_51"><div class="frame">
	<div class="frame-title">Notes</div>
	<div class="frame-content">
		<div class="wr-ajaxDiv" id="sv4pwu12_0">
<c:if test="${not(empty sv4pwu12) and (sv4pwu12.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<c:forEach var="current" varStatus="status" items="${sv4pwu12.data}">
					<c:set var="index" value="${status.index}"/>
					<table class="full-width row<c:if test="${sv4pwu12.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								<tr>
								   <td class="highlight value<c:if test="${sv4pwu12.currentIndex eq index}">Current</c:if> string">
										<c:out value="${current.userName}"/>
								   </td>
								</tr>
								<tr>
								   <td class=" value<c:if test="${sv4pwu12.currentIndex eq index}">Current</c:if> timestamp">
										<fmt:formatDate value="${current.timestamp}" pattern="${timestampPattern}"/>
								   </td>
								</tr>
								<tr>
								   <td class=" value<c:if test="${sv4pwu12.currentIndex eq index}">Current</c:if> text">
										<c:set var="_wr_string" value="${current.text}"/>
<%	
	{
	 String  _wr_noteTextValue = (String) pageContext.getAttribute("_wr_string");
	 if(_wr_noteTextValue != null && _wr_noteTextValue.length() > 100){
      _wr_noteTextValue = _wr_noteTextValue.substring(0,100);
      _wr_noteTextValue = _wr_noteTextValue + "...";
     }
     pageContext.setAttribute("_wr_cutText", _wr_noteTextValue);
	}
%>
<span ><c:out value="${_wr_cutText}"  escapeXml="false"/></span>
								   </td>
								</tr>
			<c:if test="${webratio:isTargetAccessible('sv4ln138', pageContext)}">
						        <tr>
									<td class=" value<c:if test="${sv4pwu12.currentIndex eq index}">Current</c:if>">
										<c:choose>
							   				<c:when test="${sv4pwu12.currentIndex eq index}">
												 <c:if test="${webratio:isTargetAccessible('sv4ln138', pageContext)}">
		 			<a title="delete" id="sv4ln138" onclick="return ajaxRequest('<webratio:Link link="sv4ln138" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4ln138', sourcePage: 'page22'}))" class=" linkCurrent" href="<webratio:Link link="sv4ln138" position="index"/>">							
					delete</a>
	</c:if>
							   				</c:when>
							   				<c:otherwise>
							   					 <c:if test="${webratio:isTargetAccessible('sv4ln138', pageContext)}">
		 			<a title="delete" id="sv4ln138" onclick="return ajaxRequest('<webratio:Link link="sv4ln138" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4ln138', sourcePage: 'page22'}))" class=" link" href="<webratio:Link link="sv4ln138" position="index"/>">							
					delete</a>
	</c:if>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
								</tr>
			</c:if>
						</table>
					</c:forEach>
					<c:if test="${sv4pwu12.scroller.of gt 5}">
						<table border="0" cellspacing="1" cellpadding="2">
						   <tr> 
								    <td class="scrollText">
								        <c:choose>
								            <c:when test="${sv4pwu12.scroller.current ne sv4pwu12.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('sv4pwu12First', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="sv4pwu12First" onclick="return ajaxRequest('<webratio:Link link="sv4pwu12First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu12First', sourcePage: 'page22'}))" class=" scroll" href="<webratio:Link link="sv4pwu12First" position="index"/>">							
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
							                <c:when test="${sv4pwu12.scroller.current ne sv4pwu12.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('sv4pwu12Previous', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="sv4pwu12Previous" onclick="return ajaxRequest('<webratio:Link link="sv4pwu12Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu12Previous', sourcePage: 'page22'}))" class=" scroll" href="<webratio:Link link="sv4pwu12Previous" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${sv4pwu12.scroller.from} <bean:message key="PowerIndex.To"/> ${sv4pwu12.scroller.to} <bean:message key="PowerIndex.Of"/> ${sv4pwu12.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${sv4pwu12.scroller.current ne sv4pwu12.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('sv4pwu12Next', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="sv4pwu12Next" onclick="return ajaxRequest('<webratio:Link link="sv4pwu12Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu12Next', sourcePage: 'page22'}))" class=" scroll" href="<webratio:Link link="sv4pwu12Next" position="index"/>">							
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
					    		            <c:when test="${sv4pwu12.scroller.current ne sv4pwu12.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('sv4pwu12Last', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="sv4pwu12Last" onclick="return ajaxRequest('<webratio:Link link="sv4pwu12Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu12Last', sourcePage: 'page22'}))" class=" scroll" href="<webratio:Link link="sv4pwu12Last" position="index"/>">							
					<bean:message key="PowerIndex.Last"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Last"/></span>
							               </c:otherwise>
							            </c:choose>
								    </td>
						   </tr>
						 </table>
					</c:if>
			</div>
		</div>
</c:if>
</div>
		<div class="wr-ajaxDiv" id="sv4enu9_0">
	 <div class="plain ">
		<div class="plain EntryUnit">
				<table>
					<tr>
						<td colspan="2" class="error">
							<html:errors property="sv4enu9" />
						</td>
					</tr>
					<tr class="row">
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:textarea styleId="sv4fld15" styleClass=" field" cols="25" rows="4" property="sv4fld15" readonly="false"/>
						</td>
						    </tr>
							<tr>
								<td class="error"><span class=" error"><html:errors property="sv4fld15"/></span></td>
					 	</tr>
					<tr>
						<td colspan="2">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('sv4ln132', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('sv4ln132', pageContext)}">
 			<input title="Write" onclick="return ajaxRequest('page22FormBean', $H({isForm: true, pressedLink: 'button:sv4ln132', selectiveRefresh: true, sourcePage: 'page22'})) " class=" button"  id="button:sv4ln132" name="button:sv4ln132" type="submit" value="Write">
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
</div>
</div>
</div></div>
</div>
</div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_63">
	<div class="wr-ajaxDiv" id="sv4mpage4_grid_5">
<div class="wr-ajaxDiv" id="sv4mpage4_cell_64"><div class="frame">
	<div class="frame-title">Attachments</div>
	<div class="frame-content">
		<div class="wr-ajaxDiv" id="sv4pwu11_0">
<c:if test="${not(empty sv4pwu11) and (sv4pwu11.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<c:forEach var="current" varStatus="status" items="${sv4pwu11.data}">
					<c:set var="index" value="${status.index}"/>
					<table class="full-width row<c:if test="${sv4pwu11.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								<tr>
								   <td class=" value<c:if test="${sv4pwu11.currentIndex eq index}">Current</c:if> string">
										<c:out value="${current.userName}"/>
								   </td>
								</tr>
								<tr>
								   <td class=" value<c:if test="${sv4pwu11.currentIndex eq index}">Current</c:if> timestamp">
										<fmt:formatDate value="${current.timestamp}" pattern="${timestampPattern}"/>
								   </td>
								</tr>
								<tr>
								   <td class="highlight value<c:if test="${sv4pwu11.currentIndex eq index}">Current</c:if> blob">
										<c:if test="${not (empty current.file)}">
			<a target="_blank" class="highlight" href="<webratio:BLOB value="${current.file}"/>"><c:out value="${current.file.name}"/></a>
  </c:if>
								   </td>
								</tr>
			<c:if test="${webratio:isTargetAccessible('sv4ln131', pageContext)}">
						        <tr>
									<td class=" value<c:if test="${sv4pwu11.currentIndex eq index}">Current</c:if>">
										<c:choose>
							   				<c:when test="${sv4pwu11.currentIndex eq index}">
												 <c:set var="_wr_message"><bean:message key="confirmAttachmentDeletion"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('sv4ln131', pageContext)}">
				<input title="delete" id="sv4ln131" class=" linkCurrent"  type="button" value="delete" onclick=" var c = confirm('<c:out value="${_wr_message}"/>'); if (c) { return ajaxRequest('<webratio:Link link="sv4ln131" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4ln131', sourcePage: 'page22'})) } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; }  return c; ">
	</c:if>
							   				</c:when>
							   				<c:otherwise>
							   					 <c:set var="_wr_message"><bean:message key="confirmAttachmentDeletion"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('sv4ln131', pageContext)}">
				<input title="delete" id="sv4ln131" class=" link"  type="button" value="delete" onclick=" var c = confirm('<c:out value="${_wr_message}"/>'); if (c) { return ajaxRequest('<webratio:Link link="sv4ln131" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4ln131', sourcePage: 'page22'})) } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; }  return c; ">
	</c:if>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
								</tr>
			</c:if>
						</table>
					</c:forEach>
					<c:if test="${sv4pwu11.scroller.of gt 5}">
						<table border="0" cellspacing="1" cellpadding="2">
						   <tr> 
								    <td class="scrollText">
								        <c:choose>
								            <c:when test="${sv4pwu11.scroller.current ne sv4pwu11.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('sv4pwu11First', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="sv4pwu11First" onclick="return ajaxRequest('<webratio:Link link="sv4pwu11First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu11First', sourcePage: 'page22'}))" class=" scroll" href="<webratio:Link link="sv4pwu11First" position="index"/>">							
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
							                <c:when test="${sv4pwu11.scroller.current ne sv4pwu11.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('sv4pwu11Previous', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="sv4pwu11Previous" onclick="return ajaxRequest('<webratio:Link link="sv4pwu11Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu11Previous', sourcePage: 'page22'}))" class=" scroll" href="<webratio:Link link="sv4pwu11Previous" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${sv4pwu11.scroller.from} <bean:message key="PowerIndex.To"/> ${sv4pwu11.scroller.to} <bean:message key="PowerIndex.Of"/> ${sv4pwu11.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${sv4pwu11.scroller.current ne sv4pwu11.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('sv4pwu11Next', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="sv4pwu11Next" onclick="return ajaxRequest('<webratio:Link link="sv4pwu11Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu11Next', sourcePage: 'page22'}))" class=" scroll" href="<webratio:Link link="sv4pwu11Next" position="index"/>">							
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
					    		            <c:when test="${sv4pwu11.scroller.current ne sv4pwu11.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('sv4pwu11Last', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="sv4pwu11Last" onclick="return ajaxRequest('<webratio:Link link="sv4pwu11Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu11Last', sourcePage: 'page22'}))" class=" scroll" href="<webratio:Link link="sv4pwu11Last" position="index"/>">							
					<bean:message key="PowerIndex.Last"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Last"/></span>
							               </c:otherwise>
							            </c:choose>
								    </td>
						   </tr>
						 </table>
					</c:if>
			</div>
		</div>
</c:if>
</div>
		<div class="wr-ajaxDiv" id="sv4enu10_0">
	 <div class="plain ">
		<div class="plain EntryUnit">
				<table>
					<tr>
						<td colspan="2" class="error">
							<html:errors property="sv4enu10" />
						</td>
					</tr>
					<tr class="row">
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:hidden property="sv4fld16_preload"/>
			<html:file styleId="sv4fld16" styleClass="wr-submitButtons:sv4ln134  field" property="sv4fld16" disabled="false" size="25"/>
		<c:if test="${not(empty page22FormBean.map.sv4fld16_preload)}">
		  <table>
		    <tr>
		      <td>
		        <html:checkbox styleClass="wr-submitButtons:sv4ln134  field" property="sv4fld16_clear" disabled="false"/> clear <a target="blank" href="<webratio:BLOB value="${page22FormBean.map.sv4fld16_preload}"/>">preview</a>
		      </td>
		    </tr>
		  </table>
		</c:if>
						</td>
						    </tr>
							<tr>
								<td class="error"><span class=" error"><html:errors property="sv4fld16"/></span></td>
					 	</tr>
					<tr>
						<td colspan="2">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('sv4ln134', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('sv4ln134', pageContext)}">
 			<input title="Upload" onclick="return ajaxRequest('page22FormBean', $H({isForm: true, pressedLink: 'button:sv4ln134', selectiveRefresh: true, sourcePage: 'page22'})) " class=" button"  id="button:sv4ln134" name="button:sv4ln134" type="submit" value="Upload">
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
</div>
</div>
</div></div>
</div>
</div>
				</div>
					<div class="clear"></div>
</div>
</div>
</div>
</div></div>
			</div>
			<div id="grid" class="has-left ">
				<div class="wr-ajaxDiv" id="sv4mpage4_customlocation_0"><div class="wr-ajaxDiv" id="sv4mpage4_grid_0">
<div class="wr-ajaxDiv" id="sv4mpage4_cell_0"><div class="frame">
	<div class="frame-title">Process Details</div>
	<div class="frame-content">
		<div class="wr-ajaxDiv" id="sv4mpage4_grid_1">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_1">
	<div class="wr-ajaxDiv" id="sv4dau9_0">
<c:if test="${not(empty sv4dau9) and (sv4dau9.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain DataUnit">
			    <table>
							<tr class="row">
			        		  	<th class=" header">Process</th>
			        		  	<td class=" value string"><c:out value="${sv4dau9.data.processName}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Process instance</th>
			        		  	<td class=" value string"><c:out value="${sv4dau9.data.name}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Process description</th>
			        		  	<td class=" value text"><c:out value="${sv4dau9.data.description}" escapeXml="false"/></td>
			        		</tr>
				  <tr>
				  <td colspan="6">
			           <table>
			               <tr>
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
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_13">
	<div class="wr-ajaxDiv" id="sv4dau10_0">
<c:if test="${not(empty sv4dau10) and (sv4dau10.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain DataUnit">
			    <table>
							<tr class="row">
			        		  	<th class=" header">Activity</th>
			        		  	<td class=" value string"><c:out value="${sv4dau10.data.name}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Active since</th>
			        		  	<td class=" value timestamp"><fmt:formatDate value="${sv4dau10.data.activeSince}" pattern="${timestampPattern}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Activity description</th>
			        		  	<td class=" value text"><c:out value="${sv4dau10.data.description}" escapeXml="false"/></td>
			        		</tr>
				  <tr>
				  <td colspan="6">
			           <table>
			               <tr>
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
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_25">
	<div class="wr-ajaxDiv" id="sv4dau9_1">
<c:if test="${not(empty sv4dau9) and (sv4dau9.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain DataUnit">
			    <table>
				  <tr>
				  <td colspan="0">
			           <table>
			               <tr>
			<c:if test="${webratio:isTargetAccessible('sv4ln120', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr_sv4var16', null, pageContext)}">
			                 <td class="link"> <c:if test="${webratio:evaluateCondition('cexpr_sv4var16', 'index', pageContext)}"><c:set var="_wr_message"><bean:message key="confirmRollback"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('sv4ln120', pageContext)}">
		 			<a title="Rollback" id="sv4ln120" class=" link" href="<webratio:Link link="sv4ln120" position="index"/>" onclick="if (confirm('<c:out value="${_wr_message}"/>')) { return true; } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; return false; }">
					Rollback</a>
	</c:if></c:if>
 </td>
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('sv4ln121', pageContext)}">
			                 <td class="link"> <c:if test="${webratio:isTargetAccessible('sv4ln121', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="sv4ln121" class=" link" href="<webratio:Link link="sv4ln121" position="index"/>" target="_blank" >
						<img title="History Diagram" alt="History Diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
					<td>
		 			<a title="History Diagram" id="sv4ln121" class=" link" href="<webratio:Link link="sv4ln121" position="index"/>" target="_blank" >
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
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_37">
	<div class="wr-ajaxDiv" id="sv4inu6_0">
<c:if test="${not(empty sv4inu6) and (sv4inu6.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain IndexUnit">
				<table border="0" cellspacing="1" cellpadding="2" id="sv4inu6_0_sortable">
					<tr>
						<th class=" header"></th>
						<th nowrap="nowrap" class=" header">name</th>
						<th nowrap="nowrap" class=" header">completed at</th>
						<th nowrap="nowrap" class=" header">userName</th>
					</tr>
				<c:forEach var="current" varStatus="status" items="${sv4inu6.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${sv4inu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								<td class=" value<c:if test="${sv4inu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
									<img src="WRResources/spacer.gif" class="bullet<c:if test="${sv4inu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" border="0" alt=""/>
								</td>
									<!-- not linked attribute -->
									<td class=" value<c:if test="${sv4inu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.name}"/>
									</td>
									<!-- not linked attribute -->
									<td class=" value<c:if test="${sv4inu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">				
										<fmt:formatDate value="${current.completedAt}" pattern="${timestampPattern}"/>
									</td>
									<!-- not linked attribute -->
									<td class=" value<c:if test="${sv4inu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.userName}"/>
									</td>
						</tr>
					</c:forEach>
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
</div></div>
</div></div>   
		    	<div class="wr-ajaxDiv" id="page22_grid_0">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page22_cell_0">
	<div class="wr-ajaxDiv" id="enu18_0">
<div class="frame">
	<div class="frame-title">RepairFile</div>
	<div class="frame-content">
	 <div class="plain ">
		<div class="plain EntryUnit">
				<table>
					<tr>
						<td colspan="3" class="error">
							<html:errors property="enu18" />
						</td>
					</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Problem abstract
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<c:out value="${page22FormBean.map.fld35}" /><html:hidden property="fld35"/>
						</td>
								<td class="error"></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Computer characteristic
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<c:out value="${page22FormBean.map.fld36}" /><html:hidden property="fld36"/>
						</td>
								<td class="error"></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Defect description
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:textarea styleId="fld37" styleClass=" field" cols="35" rows="8" property="fld37" readonly="false"/>
						</td>
								<td class="error"><span class=" error"><html:errors property="fld37"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Request date
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<c:out value="${page22FormBean.map.fld38_locale}" /><html:hidden property="fld38_locale"/>
						</td>
								<td class="error"></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Repair price
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<c:out value="${page22FormBean.map.fld39_locale}" /><html:hidden property="fld39_locale"/>
						</td>
								<td class="error"></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Repair progress
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<table>
			<c:forEach var="current" varStatus="status" items="${page22FormBean.map.msfld1List}">
				<tr>
					<td class=" multiselectionfield">
						<html:multibox styleClass="  multiselectionfield" property="msfld1" value="${current}" disabled="false" styleId="msfld1_${status.index}"/>
						   <c:out value="${page22FormBean.map.msfld1LabelList[status.index]}"/>
					</td>
				</tr>
			</c:forEach>
		</table>
						</td>
								<td class="error"><span class=" error"><html:errors property="msfld1"/></span></td>
					 	</tr>
			<html:hidden property="fld34" styleId="fld34"/>
		  </table>
		</div>
	</div>
</div>
</div></div>
</div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page22_cell_12">
	<div class="wr-ajaxDiv" id="enu19_0">
	 <div class="plain ">
		<div class="plain EntryUnit">
				<table>
					<tr>
						<td colspan="3" class="error">
							<html:errors property="enu19" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln159', pageContext)}">
					  <td> <c:set var="_wr_message"><bean:message key="Confirm Finish"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('ln159', pageContext)}">
			<input title="Finish" onclick=" var c = confirm('<c:out value="${_wr_message}"/>'); if (c) { $('#page22FormBean')[0].target='_self' } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; } return c; " class=" button"  id="button:ln159" name="button:ln159" type="submit" value="Finish">
	</c:if>
 </td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln160', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln160', pageContext)}">
			<input title="Save and Work Later" onclick="$('#page22FormBean')[0].target='_self'" class=" button"  id="button:ln160" name="button:ln160" type="submit" value="Save and Work Later">
	</c:if>
 </td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln161', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln161', pageContext)}">
			<input title="Cancel" onclick="$('#page22FormBean')[0].target='_self'" class=" button"  id="button:ln161" name="button:ln161" type="submit" value="Cancel">
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
		<webratio:LinkInfos page="page22"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page22" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page22"/>
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