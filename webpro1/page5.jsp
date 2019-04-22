<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<webratio:Page page="page5"/>
<html>
  <head>
    <link href="Resources/favicon.png" rel="shortcut icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
    <title>Control Panel</title>
    <c:set var="wrAjaxDebugLevel" value="minimal"/>
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "jquery-ui-style", "wr-resver": "1.9.2"}-->
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery", "wr-resver": "1.12.4"}-->
	<script src="<webratio:Resource path="WRResources/script.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-utils-supportscripts", "wr-resver": "7.2.18"}-->
	<script src="<webratio:Resource path="WRResources/ajax/jquery-ui/jquery-ui.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-ui", "wr-resver": "1.9.2"}-->
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
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext)}"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-ui-datepicker-lang", "wr-resver": "1.9.2"}-->
			</c:if>
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
	<script src="<webratio:Resource path="WRResources/ajax/webratio/calendar-utils.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-calendar-utils", "wr-resver": "7.2.18"}-->
	<link href="<webratio:Resource path="BootstrapStyle/css/bpm.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "bs-bpm-css"}-->
<script type="text/javascript">if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
  </head>  
  <body>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
			<html:form action="form_page5.do${wrAjax ? '#!ajax=true' : ''}" styleId="page5FormBean" enctype="multipart/form-data">
		<c:if test="${wrBoxed}">
			<script>
				jQuery("#page5FormBean").prop("action", "${wrBaseURI}form_page5.do${wrAjax ? '#!ajax=true' : ''}");
			</script>
		</c:if>
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page5"/>
				<input type="hidden" name="ln25" value="<webratio:Link link="ln25"/>">
				<input type="hidden" name="ln26" value="<webratio:Link link="ln26"/>">
				<input type="hidden" name="ln27" value="<webratio:Link link="ln27"/>">
	    <div id="top">
	    	<div class="user">
	    		<div class="container">
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
	<c:if test="${webratio:evaluateCondition('cexpr5', null, pageContext)}"><a title="Home" id="ln35"  href="<webratio:Link link="ln35" position="index"/>">
					Home</a></c:if>
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
					      	<li class="current">
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
				<span>Control Panel</span>
			</div>
			<div id="page-links">
			</div>
		</div>
		<div id="body" class="container">	
			<div id="grid" class=" ">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
<c:if test="${not(empty pu11.exception)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			An Error Occurred
		</h2>
	</div>
	<div class="panel-body">
<div class="plain ">
 <div class="plain ProcessUnit">
	<c:set var="exc" value="${pu11.exception}"/>
	<c:set var="errorTitle">
		<c:choose>
			<c:when test="${pu11.errorType eq 'ASSIGNED_ACTIVITY'}">Unable to start or resume the work item</c:when>
			<c:when test="${pu11.errorType eq 'COMPLETED_ACTIVITY'}">The work item has already been completed</c:when>
			<c:when test="${pu11.errorType eq 'ABORTED_ACTIVITY'}">The work item has been aborted</c:when>
			<c:otherwise>An Error Occurred</c:otherwise>
		</c:choose>   
	</c:set>
	<h2><c:out value="${errorTitle}"/></h2>
	<table>
		<c:choose>
		  <c:when test="${pu11.errorType eq 'ASSIGNED_ACTIVITY'}">
			<tr>
			  <td class="value">The work item "<b><c:out value="${pu11.activityInstanceName} [#${pu11.activityInstanceOid}]"/></b>" has already been assigned to another user and group.</td>
		    </tr>
		    <tr>
		       <td class="value" title="Assigned Group" style="padding-left:10px">
		       	Group: <b><c:out value="${pu11.activityGroupName} [#${pu11.activityGroupOid}]"/></b>
		       </td>
		    </tr>
		    <tr>
		       <td class="value" title="Assigned User" style="padding-left:10px">
		         User: <b><c:out value="${pu11.activityUserName} [#${pu11.activityUserOid}]"/></b>
		       </td>
		    </tr>
		    <tr>
		    	<td class="value">
		    		Go back to your <a class="link" href="<webratio:Link escapeXml="true" link="page5.link" position="index"/>">home</a> page and select another work item to execute.
		    	</td>
		    </tr>
		  </c:when>
		  <c:when test="${pu11.errorType eq 'COMPLETED_ACTIVITY'}">
			<tr>
			  <td class="value">The work item "<b><c:out value="${pu11.activityInstanceName} [#${pu11.activityInstanceOid}]"/></b>" has already been completed.</td>
		    </tr>
		    <tr><td class="value">Go back to your <a class="link" href="<webratio:Link escapeXml="true" link="page5.link" position="index"/>">home</a> page and select another work item to execute.</td></tr>
		  </c:when>
		  <c:when test="${pu11.errorType eq 'ABORTED_ACTIVITY'}">
			<tr><td class="value">The work item "<b><c:out value="${pu11.activityInstanceName} [#${pu11.activityInstanceOid}]"/></b>" has been aborted.</td></tr>
			<tr><td class="value">Go back to your <a class="link" href="<webratio:Link escapeXml="true" link="page5.link" position="index"/>">home</a> page and select another work item to execute.</td></tr>
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
				<div class="grid_12 alpha omega agrd_24">
<c:if test="${not(empty pu10)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Processes
		</h2>
	</div>
	<div class="panel-body">
<div class="plain ">
 <div class="plain ProcessUnit">
	<c:if test="${not(empty pu10.status)}">
	<div class="alert alert-${pu10.status}">
         <bean:message key="Process.metadata.${pu10.status}"/>
	</div>	
	</c:if>
	<table class="table table-striped table-hover">
       <thead>
       <tr>
            <th scope="col" class=" smallcol">
                <script>multiChoiceMap["pu10_0"] = "all"</script>
				<input type="checkbox" id="pu10_0SelectAll" onclick="toggleCheckboxes('pu10_0', 'Checked')"/>
				<label class="sr-only" for="pu10_0SelectAll">Select all rows</label>
            </th>
			<th scope="col" class="">Process</th>
			<th scope="col" class="">Version</th>
			<th scope="col" class="">Status</th>	
			<th scope="col" class=" smallcol" colspan="3">Commands</th>
		</tr>
		</thead>
		<c:if test="${not(empty pu10.data)}">
		<tbody>
		   <c:forEach var="current" varStatus="status" items="${pu10.data}">
		      <c:set var="index" value="${status.index}"/>
		      <c:set var="processStatus" value="${current.status}"/>
		      <tr class="status-${processStatus}">
		         <td class="">
		           <c:choose>
		             <c:when test="${current.status eq 'invalid'}">
		                <html:multibox disabled="true" property="pu10Checked" value="${current.key}"/>
		             </c:when>
		             <c:otherwise>
		                <html:multibox styleId="pu10_0_${index}" property="pu10Checked" value="${current.key}"/>
		             </c:otherwise>
		           </c:choose>
		         </td>
		         <td class=""><c:out value="${current.name}"/></td>
		         <td class=""><c:out value="${current.version}"/></td>
		         <td class="">${current.status}</td>
		         <td class=" smallcol">
		         <c:choose>
		           <c:when test="${current.status eq 'new'}">
		           		<a title="create" href="<webratio:Link escapeXml="true" link="ln24" position="index"/>" class="text-primary"><span class="glyphicon glyphicon-save"></span></a>
		           </c:when>
		           <c:when test="${current.status eq 'invalid'}">
		               <a title="force update" href="<webratio:Link escapeXml="true" link="ln23" position="index"/>" class="text-danger"><span class="glyphicon glyphicon-save"></span></a>
		           </c:when>
		           <c:when test="${current.status eq 'outdated'}">
		               <a title="update" href="<webratio:Link escapeXml="true" link="ln22" position="index"/>" class="text-warning"><span class="glyphicon glyphicon-save"></span></a>
		           </c:when>
		           <c:otherwise>
		           	  <span class="text-muted"><span class="glyphicon glyphicon-save"></span></span>
		           </c:otherwise>
		         </c:choose>
		         </td>
		         <td class=" smallcol">
		         <c:choose>
		           <c:when test="${current.status ne 'new'}">
		             <a title="delete" href="<webratio:Link escapeXml="true" link="ln19" position="index"/>" class="text-danger"><span class="glyphicon glyphicon-remove"></span></a>
		           </c:when>
		           <c:otherwise><span class="text-muted"><span class="glyphicon glyphicon-remove"></span></span></c:otherwise>
		         </c:choose>
		         </td>
		         <td class=" smallcol">
		         	<a title="diagram" href="<webratio:Link escapeXml="true" link="ln21" position="index"/>" target="_blank" class="text-primary"><span class="glyphicon glyphicon-info-sign"></span></a>
		         </td>
		      </tr>
		      <c:if test="${not(empty current.details)}">
		      <tr class="status-${processStatus}">
		        <td colspan="7">
		            <ul>
		            <c:forEach var="detail" items="${current.details}">
		              <li><c:out value="${detail}"/></li>
		            </c:forEach>
		            </ul>
		        </td>
		      </tr>
		      </c:if>
		   </c:forEach>
		</tbody>
		</c:if>
	</table>	
    <div class="btn-toolbar">
         <button title="Update Processes" onclick="$('#page5FormBean')[0].target='_self'" class="btn  btn-default  btn" id="button:ln16" name="button:ln16" type="submit" value="Update Processes">
			Update Processes</button>
         <c:set var="_wr_message"><bean:message key="confirmDeletion"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
			<button title="Delete Processes" onclick=" var c = confirm('<c:out value="${_wr_message}"/>');  if (c) { $('#page5FormBean')[0].target='_self' }; return c; " class="btn  btn-default  btn" id="button:ln20" name="button:ln20" type="submit" value="Delete Processes">
			Delete Processes</button>
        <span class="text-danger"><html:errors property="pu10Checked" /></span>
    </div>         
 </div>
</div>   
	</div>
</div>
</c:if>   
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
<div class="frame">
	<div class="frame-title">Process Instances</div>
	<div class="frame-content">
	 <div class="plain ">
		<div class="plain EntryUnit">
				<table>
					<tr>
						<td colspan="3" class="error">
							<html:errors property="enu2" />
						</td>
					</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								User
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld2" styleClass="wr-submitButtons:ln26  selectionfield" property="sfld2" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld2List" labelProperty="sfld2LabelList"/>
			</html:select>
						</td>
								<td class="error"><span class=" error"><html:errors property="sfld2"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Group
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld3" styleClass="wr-submitButtons:ln26  selectionfield" property="sfld3" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld3List" labelProperty="sfld3LabelList"/>
			</html:select>
						</td>
								<td class="error"><span class=" error"><html:errors property="sfld3"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Process
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld1" styleClass="wr-submitButtons:ln26  selectionfield" property="sfld1" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld1List" labelProperty="sfld1LabelList"/>
			</html:select>
						</td>
								<td class="error"><span class=" error"><html:errors property="sfld1"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Status
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld4" styleClass="wr-submitButtons:ln26  selectionfield" property="sfld4" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld4List" labelProperty="sfld4LabelList"/>
			</html:select>
						</td>
								<td class="error"><span class=" error"><html:errors property="sfld4"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Process Active Since From
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld3_locale" styleClass="wr-submitButtons:ln26  field" property="fld3_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld3_locale').datepicker({
									showOn: "button",
									showWeek: true,
									buttonImage: "Resources/calendar.gif",
									buttonImageOnly: true,
									showButtonPanel: true,
									dateFormat: pattern.dateFormat,
									firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
								});
							});
						</script>
					</c:otherwise></c:choose>
				</div>
			</div>
						</td>
								<td class="error"><span class=" error"><html:errors property="fld3_locale"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Process Active Since To
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld4_locale" styleClass="wr-submitButtons:ln26  field" property="fld4_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld4_locale').datepicker({
									showOn: "button",
									showWeek: true,
									buttonImage: "Resources/calendar.gif",
									buttonImageOnly: true,
									showButtonPanel: true,
									dateFormat: pattern.dateFormat,
									firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
								});
							});
						</script>
					</c:otherwise></c:choose>
				</div>
			</div>
						</td>
								<td class="error"><span class=" error"><html:errors property="fld4_locale"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Activity Status
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld5" styleClass="wr-submitButtons:ln26  selectionfield" property="sfld5" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld5List" labelProperty="sfld5LabelList"/>
			</html:select>
						</td>
								<td class="error"><span class=" error"><html:errors property="sfld5"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Activity Ready Since From
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld5_locale" styleClass="wr-submitButtons:ln26  field" property="fld5_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld5_locale').datepicker({
									showOn: "button",
									showWeek: true,
									buttonImage: "Resources/calendar.gif",
									buttonImageOnly: true,
									showButtonPanel: true,
									dateFormat: pattern.dateFormat,
									firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
								});
							});
						</script>
					</c:otherwise></c:choose>
				</div>
			</div>
						</td>
								<td class="error"><span class=" error"><html:errors property="fld5_locale"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Activity Ready Since To
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld6_locale" styleClass="wr-submitButtons:ln26  field" property="fld6_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld6_locale').datepicker({
									showOn: "button",
									showWeek: true,
									buttonImage: "Resources/calendar.gif",
									buttonImageOnly: true,
									showButtonPanel: true,
									dateFormat: pattern.dateFormat,
									firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
								});
							});
						</script>
					</c:otherwise></c:choose>
				</div>
			</div>
						</td>
								<td class="error"><span class=" error"><html:errors property="fld6_locale"/></span></td>
					 	</tr>
					<tr>
						<td colspan="3">
					<table>
				      <tr>
					  <td> <input title="Search" onclick="$('#page5FormBean')[0].target='_self'" class=" button"  id="button:ln26" name="button:ln26" type="submit" value="Search">
 </td>
					</tr>
				    </table>
				   </td>
			   </tr>
		  </table>
		</div>
	</div>
<c:choose>
<c:when test="${not(empty pwu2) and (pwu2.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
					<c:if test="${pwu2.scroller.of gt 20}">
						<table border="0" cellspacing="1" cellpadding="2">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu2.scroller.current ne pwu2.scroller.first}">
							     	             <a title="<bean:message key="PowerIndex.First"/>" id="pwu2First" class=" scroll" href="<webratio:Link link="pwu2First" position="index"/>">
					<bean:message key="PowerIndex.First"/></a>
								            </c:when>
								            <c:otherwise>
								           			<span><bean:message key="PowerIndex.First"/></span>
								           		</c:otherwise>
								        </c:choose>
								    </td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu2.scroller.current ne pwu2.scroller.previous}">
								    	         <a title="<bean:message key="PowerIndex.Previous"/>" id="pwu2Previous" class=" scroll" href="<webratio:Link link="pwu2Previous" position="index"/>">
					<bean:message key="PowerIndex.Previous"/></a>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu2.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu2.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu2.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu2.scroller.current ne pwu2.scroller.next}">
					    			    	     <a title="<bean:message key="PowerIndex.Next"/>" id="pwu2Next" class=" scroll" href="<webratio:Link link="pwu2Next" position="index"/>">
					<bean:message key="PowerIndex.Next"/></a>
					    		            </c:when>
						    	            <c:otherwise>
								           			<span><bean:message key="PowerIndex.Next"/></span>
						    	            </c:otherwise>
						    	        </c:choose>
								    </td>
								    <td class="scrollText">
								    	<c:choose>
					    		            <c:when test="${pwu2.scroller.current ne pwu2.scroller.last}">
						    		    	     <a title="<bean:message key="PowerIndex.Last"/>" id="pwu2Last" class=" scroll" href="<webratio:Link link="pwu2Last" position="index"/>">
					<bean:message key="PowerIndex.Last"/></a>
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
									    <c:forEach var="current" varStatus="status" items="${pwu2.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu2.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu2Block" position="index"/>"  onclick="">${current}</a>
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
						<!-- begin header -->
						<tr>
							<th class=" header"></th>
					        <th nowrap="nowrap" class=" header">
						            Name
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <a title="Active Since" id="pwu2processInstanceActiveTimestamp" class=" sort" href="<webratio:Link link="pwu2processInstanceActiveTimestamp" position="index"/>">
					Active Since</a>
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Completed at
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Cancelled at
					        </th>
<th class=" header"></th> 
						</tr>
						<!-- end header -->
				<!-- instances -->
				<c:forEach var="current" varStatus="status" items="${pwu2.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
						        <td class=" link<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<a href="<webratio:Link escapeXml="true" link="ln14" position="index"/>" class="link<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="" >
						            <img src="WRResources/spacer.gif" class="bullet<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" border="0" alt="details"/>					
										</a>
							    </td>
								   <td class=" link<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">
										<a href="<webratio:Link escapeXml="true" link="ln14" position="index"/>" class=" link<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="" >
									<c:out value="${current.name}"/>
										</a>
								   </td>
								   <td class=" link<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">
										<a href="<webratio:Link escapeXml="true" link="ln14" position="index"/>" class=" link<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="" >
									<fmt:formatDate value="${current.activeSince}" pattern="${timestampPattern}"/>
										</a>
								   </td>
								   <td class=" link<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">
										<a href="<webratio:Link escapeXml="true" link="ln14" position="index"/>" class=" link<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="" >
									<fmt:formatDate value="${current.completedAt}" pattern="${timestampPattern}"/>
										</a>
								   </td>
								   <td class=" link<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">
										<a href="<webratio:Link escapeXml="true" link="ln14" position="index"/>" class=" link<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="" >
									<fmt:formatDate value="${current.cancelledAt}" pattern="${timestampPattern}"/>
										</a>
								   </td>
									<td class=" link<c:if test="${pwu2.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
							   			<c:choose>
							   				<c:when test="${pwu2.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="diagram" id="ln15" class=" linkCurrentAlternate" href="<webratio:Link link="ln15" position="index"/>" target="_blank" >
						<img title="diagram" alt="diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>
														</c:when>
														<c:otherwise>
															 <table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="diagram" id="ln15" class=" linkCurrent" href="<webratio:Link link="ln15" position="index"/>" target="_blank" >
						<img title="diagram" alt="diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="diagram" id="ln15" class=" linkAlternate" href="<webratio:Link link="ln15" position="index"/>" target="_blank" >
						<img title="diagram" alt="diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>
														</c:when>
														<c:otherwise>
															 <table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="diagram" id="ln15" class=" link" href="<webratio:Link link="ln15" position="index"/>" target="_blank" >
						<img title="diagram" alt="diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>
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
</c:when>
<c:otherwise>
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<table>
				    <tr>
				      <td><bean:message key="noProcessInstancesFound"/></td>
				    </tr>
				</table>
			</div>
		</div>
</c:otherwise>
</c:choose>
</div>
</div>
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