<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%> 
<webratio:Page page="sv4page18"/>
<html>
<head>
  <title>Process Diagram</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <c:set var="wrAjaxDebugLevel" value="minimal"/>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "jquery-ui-style", "wr-resver": "1.9.2"}-->
			</c:if>
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery", "wr-resver": "1.12.4"}-->
	<script src="<webratio:Resource path="WRResources/script.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-utils-supportscripts", "wr-resver": "7.2.18"}-->
	<link href="<webratio:Resource path="wrdefault/css/bpm.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wrdefault-bpm-style"}-->
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
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-960gs-12"}-->
	<link href="<webratio:Resource path="wrdefault/css/default.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wrdefault-style"}-->
	<link href="<webratio:Resource path="builtin/grid_elements.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-ui-gridsystem"}-->
<script type="text/javascript">if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
</head>
<body style="background-color:white">
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
<c:if test="${not(empty sv4pdu5) and (sv4pdu5.dataSize gt 0)}">
    <div class="diagram-title" style="width:${sv4pdu5.width}px">
      <c:out value="${sv4pdu5.processName}"/>
	</div>
	<div class="plain ">
		<div class="ProcessDiagramUnit" style="position:relative; width:${sv4pdu5.width}px; height:${sv4pdu5.height}px; z-index:1">
          <c:if test="${not(empty sv4pdu5.data)}">
          <c:forEach var="current" varStatus="status" items="${sv4pdu5.data}">
		     <c:set var="index" value="${status.index}"/>
             <c:if test="${(not(empty current.parentProcessInstanceOid))||(not(empty current.subProcessInstanceOids))||(not(empty current.parentProcesses))||(not(empty current.subProcesses))}">
              <div id="${current.uuid}" class="diagram-popup-div" style="position:absolute; top:${current.y}px; left:${current.x2 - 10}px; z-index:2; display:none;" onmouseover="jQuery(this).show()" onmouseout="jQuery(this).hide()">
               <table class="diagram-popup-table">
			   <c:choose>
                  <c:when test="${not(empty current.parentProcessInstanceOid)}">
                      <tr>
                        <td nowrap="nowrap"><img src="Resources/parent_level.png"/></td>
                        <td nowrap="nowrap"><a class="diagram-link" href="<webratio:Link escapeXml="true" link="sv4pdu5parentLevel" position="index"/>" ><c:out value="${current.parentProcessInstanceName}"/></a></td>
                      </tr>
                  </c:when>
	              <c:when test="${not(empty current.parentProcesses)}">
	                  <c:forEach var="process" varStatus="status2" items="${current.parentProcesses}">
		                <c:set var="index2" value="${status2.index}"/>
		                <tr>
		                  <td nowrap="nowrap"><img src="Resources/parent_level.png"/></td>
		                  <td nowrap="nowrap"><a class="diagram-link" href="<webratio:Link escapeXml="true" link="sv4pdu5parentLevel" position="index,index2"/>" ><c:out value="${process.model.name}"/></a></td>
		                </tr>
		              </c:forEach>
	              </c:when> 
	           </c:choose>
			   <c:choose>
                  <c:when test="${not(empty current.subProcessInstanceOids)}">
			         <c:forEach var="oid" varStatus="status2" items="${current.subProcessInstanceOids}">
		               <c:set var="index2" value="${status2.index}"/>
		               <tr>
		                 <td nowrap="nowrap"><img src="Resources/sub_level.png"/></td>
		                  <td nowrap="nowrap"><a class="diagram-link" href="<webratio:Link escapeXml="true" link="sv4pdu5subLevel" position="index,index2"/>" ><c:out value="${current.subProcessInstanceNames[index2]}"/></a></td>
		               </tr>
		             </c:forEach>   
			      </c:when>
	              <c:when test="${not(empty current.subProcesses)}">
	                 <c:forEach var="process" varStatus="status2" items="${current.subProcesses}">
		               <c:set var="index2" value="${status2.index}"/>
		               <tr>
		                 <td nowrap="nowrap"><img src="Resources/sub_level.png"/></td>
		                 <td nowrap="nowrap"><a class="diagram-link" href="<webratio:Link escapeXml="true" link="sv4pdu5subLevel" position="index,index2"/>" ><c:out value="${process.model.name}"/></a></td>
		               </tr>
		             </c:forEach> 
	              </c:when> 
	           </c:choose>
			   </table>
			 </div>
			 </c:if> 
          </c:forEach>
          </c:if>
          <img src="<webratio:BLOB value="${sv4pdu5.diagramFile}"/>" usemap="#diagramMap" width="${sv4pdu5.width}" height="${sv4pdu5.height}" border="0"/>
          <map name="diagramMap">
            <c:forEach var="current" varStatus="status" items="${sv4pdu5.data}">
			  <c:set var="index" value="${status.index}"/>
              <area shape="rect" coords="${current.coords}" onmouseover="jQuery(document.getElementById('${current.uuid}')).show()" onmouseout="jQuery(document.getElementById('${current.uuid}')).hide()" />
            </c:forEach>
          </map>       
      </div>
    </div>
    <div class="diagram-bottom" style="width:${sv4pdu5.width}px"></div>
</c:if>
				</div>
					<div class="clear"></div>
</div>
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