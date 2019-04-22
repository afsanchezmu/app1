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
	<link href="<webratio:Resource path="BootstrapStyle/css/bpm.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "bs-bpm-css"}-->
<script type="text/javascript">if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
  </head>  
  <body>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
		<div id="_wr_page" title="app1;sv2#page5"></div>
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
	<c:if test="${webratio:evaluateCondition('cexpr5', null, pageContext)}"><a title="Home" id="ln35" class=" " href="<webratio:Link link="ln35" position="index"/>" >
			Home</a></c:if>
<div class="container_12">
				<div class="grid_2 suffix_10 alpha omega agrd_4">
	<c:set var="_wr_message"><bean:message key="SeeuLater"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
	 		<a title="Logout" id="ln33" class=" " href="<webratio:Link link="ln33" position="index"/>"  onclick="return confirm('<c:out value="${_wr_message}"/>')">
			<span class="glyphicon "></span> </a>
				</div>
					<div class="clear"></div>
</div>
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
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Process Instances
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu2"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu2"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld2"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld2" class="control-label col-md-2">User</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld2" styleClass="wr-submitButtons:ln26 form-control " property="sfld2" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld2List" labelProperty="sfld2LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld2"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld3"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld3" class="control-label col-md-2">Group</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld3" styleClass="wr-submitButtons:ln26 form-control " property="sfld3" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld3List" labelProperty="sfld3LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld3"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld1"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld1" class="control-label col-md-2">Process</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld1" styleClass="wr-submitButtons:ln26 form-control " property="sfld1" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld1List" labelProperty="sfld1LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld1"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld4"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld4" class="control-label col-md-2">Status</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld4" styleClass="wr-submitButtons:ln26 form-control " property="sfld4" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld4List" labelProperty="sfld4LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld4"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld3_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld3_locale" class="control-label col-md-2">Process Active Since From</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld3_locale" styleClass="wr-submitButtons:ln26 form-control " property="fld3_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld3_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld3_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld3_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld3_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld3_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld3_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld4_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld4_locale" class="control-label col-md-2">Process Active Since To</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld4_locale" styleClass="wr-submitButtons:ln26 form-control " property="fld4_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld4_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld4_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld4_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld4_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld4_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld4_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld5"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld5" class="control-label col-md-2">Activity Status</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld5" styleClass="wr-submitButtons:ln26 form-control " property="sfld5" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld5List" labelProperty="sfld5LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld5"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld5_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld5_locale" class="control-label col-md-2">Activity Ready Since From</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld5_locale" styleClass="wr-submitButtons:ln26 form-control " property="fld5_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld5_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld5_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld5_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld5_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld5_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld5_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld6_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld6_locale" class="control-label col-md-2">Activity Ready Since To</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld6_locale" styleClass="wr-submitButtons:ln26 form-control " property="fld6_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld6_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld6_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld6_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld6_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld6_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld6_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
					 <button title="Search" onclick="$('#page5FormBean')[0].target='_self'" class="btn  btn-default " id="button:ln26" name="button:ln26" type="submit" value="Search">
			Search</button>
		</div>
	</div></div>
</div>	
<c:choose>
<c:when test="${not(empty pwu2) and (pwu2.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						            Name
					        </th>
					        <th scope="col" class="">
						             <a title="Active Since" id="pwu2processInstanceActiveTimestamp" class="  sort" href="<webratio:Link link="pwu2processInstanceActiveTimestamp" position="index"/>" >
			Active Since</a>
					        </th>
					        <th scope="col" class="">
						            Completed at
					        </th>
					        <th scope="col" class="">
						            Cancelled at
					        </th>
<th scope="col" class=" smallcol"></th> 
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu2.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu2.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
											<a href="<webratio:Link escapeXml="true" link="ln14" position="index"/>" class="" onclick="">
										<c:out value="${current.name}"/>
											</a>
								</td>
								<td class=" timestamp">
											<a href="<webratio:Link escapeXml="true" link="ln14" position="index"/>" class="" onclick="">
										<fmt:formatDate value="${current.activeSince}" pattern="${timestampPattern}"/>
											</a>
								</td>
								<td class=" timestamp">
											<a href="<webratio:Link escapeXml="true" link="ln14" position="index"/>" class="" onclick="">
										<fmt:formatDate value="${current.completedAt}" pattern="${timestampPattern}"/>
											</a>
								</td>
								<td class=" timestamp">
											<a href="<webratio:Link escapeXml="true" link="ln14" position="index"/>" class="" onclick="">
										<fmt:formatDate value="${current.cancelledAt}" pattern="${timestampPattern}"/>
											</a>
								</td>
							   		<td class=" smallcol">
										 <a title="diagram" id="ln15" class=" " href="<webratio:Link link="ln15" position="index"/>" target="_blank"  >
			<span class="glyphicon "></span> </a>
									</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu2.scroller.of gt 20}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu2.scroller.current ne pwu2.scroller.first}">
	     	            <li> <a title="<bean:message key="PowerIndex.First"/>" id="pwu2First" class="  scroll" href="<webratio:Link link="pwu2First" position="index"/>" >
			<bean:message key="PowerIndex.First"/></a>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.First"/>" id="pwu2First" class="  scroll" href="<webratio:Link link="pwu2First" position="index"/>" >
			<bean:message key="PowerIndex.First"/></a>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu2.scroller.current ne pwu2.scroller.previous}">
	     	            <li> <a title="<bean:message key="PowerIndex.Previous"/>" id="pwu2Previous" class="  scroll" href="<webratio:Link link="pwu2Previous" position="index"/>" >
			<bean:message key="PowerIndex.Previous"/></a>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Previous"/>" id="pwu2Previous" class="  scroll" href="<webratio:Link link="pwu2Previous" position="index"/>" >
			<bean:message key="PowerIndex.Previous"/></a>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu2.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu2.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu2Block" position="index"/>"  onclick="">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu2.scroller.current ne pwu2.scroller.next}">
	     	            <li> <a title="<bean:message key="PowerIndex.Next"/>" id="pwu2Next" class="  scroll" href="<webratio:Link link="pwu2Next" position="index"/>" >
			<bean:message key="PowerIndex.Next"/></a>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Next"/>" id="pwu2Next" class="  scroll" href="<webratio:Link link="pwu2Next" position="index"/>" >
			<bean:message key="PowerIndex.Next"/></a>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu2.scroller.current ne pwu2.scroller.last}">
	     	            <li> <a title="<bean:message key="PowerIndex.Last"/>" id="pwu2Last" class="  scroll" href="<webratio:Link link="pwu2Last" position="index"/>" >
			<bean:message key="PowerIndex.Last"/></a>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Last"/>" id="pwu2Last" class="  scroll" href="<webratio:Link link="pwu2Last" position="index"/>" >
			<bean:message key="PowerIndex.Last"/></a>
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