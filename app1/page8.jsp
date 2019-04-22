<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="xls" uri="http://www.webratio.com/2006/TagLib/XLS/JSP20" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<webratio:Page page="page8"/>
<html>
  <head>
    <link href="Resources/favicon.png" rel="shortcut icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
    <title>Home</title>
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
		<div id="_wr_page" title="app1;sv3#page8"></div>
			<html:form action="form_page8.do${wrAjax ? '#!ajax=true' : ''}" styleId="page8FormBean" enctype="multipart/form-data">
		<c:if test="${wrBoxed}">
			<script>
				jQuery("#page8FormBean").prop("action", "${wrBaseURI}form_page8.do${wrAjax ? '#!ajax=true' : ''}");
			</script>
		</c:if>
		<div class="wr-ajaxDiv" id="page8HiddenFields">
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page8"/>
				<input type="hidden" name="ln51" value="<webratio:Link link="ln51"/>">
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
					      	<li class="current">
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
				<span>Home</span>
			</div>
			<div id="page-links">
			</div>
		</div>
		<div id="body" class="container">	
			<div id="left-column">
				<div class="wr-ajaxDiv" id="page8_customlocation_0"><div class="wr-ajaxDiv" id="page8_grid_2">
<div class="wr-ajaxDiv" id="page8_cell_60">
	<div class="wr-ajaxDiv" id="inu2_0">
<c:if test="${not(empty inu2) and (inu2.dataSize gt 0)}">
	<div class="frame">
	<div class="frame-title">New Idea!</div>
	<div class="frame-content">
		<div class="plain ">
			<div class="plain IndexUnit">
				<table border="0" cellspacing="1" cellpadding="2" id="inu2_0_sortable">
				<c:forEach var="current" varStatus="status" items="${inu2.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${inu2.currentIndex eq index}">Current</c:if>">	
									<!-- linked attribute -->
									<td class=" link<c:if test="${inu2.currentIndex eq index}">Current</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln40', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln40" position="index"/>" class=" link<c:if test="${inu2.currentIndex eq index}">Current</c:if>" onclick="">
			</c:if>
										<c:out value="${current.name}"/>
			<c:if test="${webratio:isTargetAccessible('ln40', pageContext)}">
											</a>
			</c:if>
									</td>
			<c:if test="${webratio:isTargetAccessible('ln40', pageContext)}">
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
		    	<div class="wr-ajaxDiv" id="page8_grid_0">
<div class="container_12">
				<div class="grid_6 alpha agrd_12">
					<div class="wr-ajaxDiv" id="page8_cell_0">
	<div class="wr-ajaxDiv" id="pwu4_0">
<c:if test="${not(empty pwu4) and (pwu4.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Notifications
		</h2>
	</div>
	<div class="panel-body">
		<div class="plain notification">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu4.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu4.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.message}"/>
								</td>
								<td class=" boolean">
										<c:if test="${not(empty current.read)}">
  <c:choose>
    <c:when test="${current.read}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln48', pageContext)}">
									<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln48', pageContext)}">
	 		<a title="delete" id="ln48" class=" " href="<webratio:Link link="ln48" position="index"/>" >
			delete</a>
	</c:if>
									</td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln49', pageContext)}">
<c:if test="${not(webratio:evaluateCondition('cexpr_var9', null, pageContext))}">
									<td class="nowrap smallcol">
										 <c:if test="${not(webratio:evaluateCondition('cexpr_var9', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln49', pageContext)}">
	 		<a title="mark as read" id="ln49" class=" nowrap" href="<webratio:Link link="ln49" position="index"/>" >
			mark as read</a>
	</c:if></c:if>
									</td>
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln50', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr_var9', null, pageContext)}">
									<td class="nowrap smallcol">
										 <c:if test="${webratio:evaluateCondition('cexpr_var9', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln50', pageContext)}">
	 		<a title="mark as unread" id="ln50" class=" nowrap" href="<webratio:Link link="ln50" position="index"/>" >
			mark as unread</a>
	</c:if></c:if>
									</td>
</c:if>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu4.scroller.of gt 5}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu4.scroller.current ne pwu4.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu4First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu4First" onclick="return ajaxRequest('<webratio:Link link="pwu4First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4First', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu4First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu4First" onclick="return ajaxRequest('<webratio:Link link="pwu4First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4First', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu4.scroller.current ne pwu4.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu4Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu4Previous" onclick="return ajaxRequest('<webratio:Link link="pwu4Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4Previous', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu4Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu4Previous" onclick="return ajaxRequest('<webratio:Link link="pwu4Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4Previous', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu4.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu4.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu4Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu4Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4Block', sourcePage: 'page8'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu4.scroller.current ne pwu4.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu4Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu4Next" onclick="return ajaxRequest('<webratio:Link link="pwu4Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4Next', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu4Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu4Next" onclick="return ajaxRequest('<webratio:Link link="pwu4Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4Next', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu4.scroller.current ne pwu4.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu4Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu4Last" onclick="return ajaxRequest('<webratio:Link link="pwu4Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4Last', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu4Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu4Last" onclick="return ajaxRequest('<webratio:Link link="pwu4Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4Last', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4Last" position="index"/>">							
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
</c:if>
</div>
</div>
				</div>
				<div class="grid_6 omega agrd_12">
					<div class="wr-ajaxDiv" id="page8_cell_6">
	<div class="wr-ajaxDiv" id="enu3_0">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Search
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu3"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu3"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld6"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld6" class="control-label col-md-2">Process</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld6" styleClass="wr-submitButtons:ln51 form-control " property="sfld6" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld6List" labelProperty="sfld6LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld6"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld7"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld7" class="control-label col-md-2">Status</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld7" styleClass="wr-submitButtons:ln51 form-control " property="sfld7" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld7List" labelProperty="sfld7LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld7"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln51', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln51', pageContext)}">
			<button title="Search" onclick="$('#page8FormBean')[0].target='_self'" class="btn  btn-default " id="button:ln51" name="button:ln51" type="submit" value="Search">
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
					<div class="wr-ajaxDiv" id="page8_cell_12">
	<div class="wr-ajaxDiv" id="pwu3_0">
<c:choose>
<c:when test="${not(empty pwu3) and (pwu3.dataSize gt 0)}">
  <Title style="font-weight:bold">Pending stuff</Title>
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
						             <c:if test="${webratio:isTargetAccessible('pwu3activityInstanceProcessInstanceName', pageContext)}">
	 		<a title="Process" id="pwu3activityInstanceProcessInstanceName" onclick="return ajaxRequest('<webratio:Link link="pwu3activityInstanceProcessInstanceName" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3activityInstanceProcessInstanceName', sourcePage: 'page8'}))" class="  sort" href="<webratio:Link link="pwu3activityInstanceProcessInstanceName" position="index"/>">							
			Process</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu3activityInstanceName', pageContext)}">
	 		<a title="Activity" id="pwu3activityInstanceName" onclick="return ajaxRequest('<webratio:Link link="pwu3activityInstanceName" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3activityInstanceName', sourcePage: 'page8'}))" class="  sort" href="<webratio:Link link="pwu3activityInstanceName" position="index"/>">							
			Activity</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu3activityInstanceStatus', pageContext)}">
	 		<a title="Status" id="pwu3activityInstanceStatus" onclick="return ajaxRequest('<webratio:Link link="pwu3activityInstanceStatus" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3activityInstanceStatus', sourcePage: 'page8'}))" class="  sort" href="<webratio:Link link="pwu3activityInstanceStatus" position="index"/>">							
			Status</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu3activityInstanceReadyTimestamp', pageContext)}">
	 		<a title="Running for" id="pwu3activityInstanceReadyTimestamp" onclick="return ajaxRequest('<webratio:Link link="pwu3activityInstanceReadyTimestamp" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3activityInstanceReadyTimestamp', sourcePage: 'page8'}))" class="  sort" href="<webratio:Link link="pwu3activityInstanceReadyTimestamp" position="index"/>">							
			Running for</a>
	</c:if>
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln41', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr7', null, pageContext)}">
<th scope="col" class="small smallcol"></th> 
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln43', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr8', null, pageContext)}">
<th scope="col" class=" smallcol"></th> 
</c:if>
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu3.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu3.currentIndex eq index}">class="info"</c:if>>	
								<td class="attachment integer">
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln42" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln42" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln42', sourcePage: 'page8'}))">
			</c:if>
										<fmt:formatNumber value="${current.processAttachmentCount}" pattern="${integerPattern}"/>
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" string">
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln42" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln42" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln42', sourcePage: 'page8'}))">
			</c:if>
										<c:out value="${current.processInstanceName}"/>
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" string">
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln42" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln42" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln42', sourcePage: 'page8'}))">
			</c:if>
										<c:out value="${current.name}"/>
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" string">
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln42" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln42" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln42', sourcePage: 'page8'}))">
			</c:if>
										<c:out value="${current.status}"/>
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" timestamp">
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln42" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln42" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln42', sourcePage: 'page8'}))">
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
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
											</a>
			</c:if>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln41', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr7', null, pageContext)}">
							   		<td class="small smallcol">
										 <c:if test="${webratio:evaluateCondition('cexpr7', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln41', pageContext)}">
	 		<a title="resume" id="ln41" class=" small" href="<webratio:Link link="ln41" position="index"/>" >
			resume</a>
	</c:if></c:if>
									</td>
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln43', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr8', null, pageContext)}">
							   		<td class=" smallcol">
										 <c:if test="${webratio:evaluateCondition('cexpr8', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln43', pageContext)}">
	 		<a title="work on" id="ln43" class=" " href="<webratio:Link link="ln43" position="index"/>" >
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
	<c:if test="${pwu3.scroller.of gt 10}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu3.scroller.current ne pwu3.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu3First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu3First" onclick="return ajaxRequest('<webratio:Link link="pwu3First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3First', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu3First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu3First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu3First" onclick="return ajaxRequest('<webratio:Link link="pwu3First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3First', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu3First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu3.scroller.current ne pwu3.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu3Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu3Previous" onclick="return ajaxRequest('<webratio:Link link="pwu3Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3Previous', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu3Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu3Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu3Previous" onclick="return ajaxRequest('<webratio:Link link="pwu3Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3Previous', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu3Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu3.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu3.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu3Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu3Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3Block', sourcePage: 'page8'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu3.scroller.current ne pwu3.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu3Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu3Next" onclick="return ajaxRequest('<webratio:Link link="pwu3Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3Next', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu3Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu3Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu3Next" onclick="return ajaxRequest('<webratio:Link link="pwu3Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3Next', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu3Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu3.scroller.current ne pwu3.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu3Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu3Last" onclick="return ajaxRequest('<webratio:Link link="pwu3Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3Last', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu3Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu3Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu3Last" onclick="return ajaxRequest('<webratio:Link link="pwu3Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3Last', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu3Last" position="index"/>">							
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
  <Title style="font-weight:bold">Pending stuff</Title>
		<div class="alert alert-info empty-message ">
			<bean:message key="NoWorkItemsFound"/>
		</div>
</c:otherwise>
</c:choose>
</div>
</div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page8_cell_24">
	<div class="wr-ajaxDiv" id="page8_grid_1"><c:if test="${webratio:evaluateCondition('cexpr6', null, pageContext)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Work Item Details
		</h2>
	</div>
	<div class="panel-body">
<div class="container_12">
				<div class="grid_6 alpha agrd_12">
					<div class="wr-ajaxDiv" id="page8_cell_25">
	<div class="wr-ajaxDiv" id="dau3_0">
<c:if test="${not(empty dau3) and (dau3.dataSize gt 0)}">
		<div class="">
			<div class="row">
				<label class="header col-md-2">process name</label>
				<div class="value col-md-10"><c:out value="${dau3.data.processName}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">name</label>
				<div class="value col-md-10"><c:out value="${dau3.data.name}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">role</label>
				<div class="value col-md-10"><c:out value="${dau3.data.group}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">status</label>
				<div class="value col-md-10"><c:out value="${dau3.data.status}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">ready since</label>
				<div class="value col-md-10"><c:set var="startedSince" value="${dau3.data.readySince}"/>    
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
<% } %></div>
			</div>
			<div class="row">
				<label class="header col-md-2">active since</label>
				<div class="value col-md-10"><c:set var="startedSince" value="${dau3.data.activeSince}"/>    
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
<% } %></div>
			</div>
			<div class="row">
				<label class="header col-md-2">worked at</label>
				<div class="value col-md-10"><fmt:formatDate value="${dau3.data.workedAt}" pattern="${timestampPattern}"/></div>
			</div>
			<p class="unit-actions">
			<c:if test="${webratio:isTargetAccessible('ln47', pageContext)}">
				 <c:if test="${webratio:isTargetAccessible('ln47', pageContext)}">
	 		<a title="History Diagram" id="ln47" class="btn  btn-default " href="<webratio:Link link="ln47" position="index"/>" target="_blank"  >
			<span class="glyphicon "></span> History Diagram</a>
	</c:if>
			</c:if>
			</p>
		</div>
</c:if>
   </div>
</div>
				</div>
				<div class="grid_6 omega agrd_12">
					<div class="wr-ajaxDiv" id="page8_cell_31">
	<div class="wr-ajaxDiv" id="pu14_0">
<c:if test="${not(empty pu14) and (pu14.dataSize gt 0)}">
 <div class="plain ">
	<div class="plain ProcessUnit">
      	<c:forEach var="current" varStatus="status" items="${pu14.data}">
           <c:set var="index" value="${status.index}"/>    
           <c:set var="type" value="${current.type}"/>
           <c:set var="typePattern" value="${type}Pattern"/>
           <div class="row">
           	<label class="header col-md-3">
       		<c:out value="${current.name}"/>
           	</label>
           	<div class="value col-md-9 ${type}">
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
            </div>
           </div>
        </c:forEach>
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
		<webratio:LinkInfos page="page8"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page8" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page8"/>
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