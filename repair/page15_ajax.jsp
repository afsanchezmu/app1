<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page15"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page15.do${wrAjax ? '#!ajax=true' : ''}" styleId="page15FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page15">
			<![CDATA[
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page15"/>
				<input type="hidden" name="ln100" value="<webratio:Link link="ln100"/>">
				<input type="hidden" name="ln101" value="<webratio:Link link="ln101"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page15"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('mpage3_customlocation_0', pageContext)}">
			<ControlData control="mpage3_customlocation_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="mpage3_grid_0"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('mpage3_grid_0,mpage3_customlocation_0', pageContext)}">
			<ControlData control="mpage3_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="mpage3_cell_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('mpage3_cell_0,mpage3_grid_0,mpage3_customlocation_0', pageContext)}">
			<ControlData control="mpage3_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau8_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('dau8_0,mpage3_cell_0,mpage3_grid_0,mpage3_customlocation_0', pageContext)}">
			<ControlData control="dau8_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page15_grid_0', pageContext)}">
			<ControlData control="page15_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page15_cell_0"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page15_cell_13"></div>
				</div>
					<div class="clear"></div>
</div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page15_cell_0,page15_grid_0', pageContext)}">
			<ControlData control="page15_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="page15_grid_1"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page15_grid_1,page15_cell_0,page15_grid_0', pageContext)}">
			<ControlData control="page15_grid_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="page15_cell_1"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page15_cell_1,page15_grid_1,page15_cell_0,page15_grid_0', pageContext)}">
			<ControlData control="page15_cell_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Active Items
		</h2>
	</div>
	<div class="panel-body">
		<div class="wr-ajaxDiv" id="enu7_0"></div>
		<div class="wr-ajaxDiv" id="pwu9_0"></div>
	</div>
</div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('enu7_0,page15_cell_1,page15_grid_1,page15_cell_0,page15_grid_0', pageContext)}">
			<ControlData control="enu7_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu7"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu7"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld15"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld15" class="control-label col-md-2">Process</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld15" styleClass="wr-submitButtons:ln101 form-control " property="sfld15" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld15List" labelProperty="sfld15LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld15"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld16"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld16" class="control-label col-md-2">User</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld16" styleClass="wr-submitButtons:ln101 form-control " property="sfld16" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld16List" labelProperty="sfld16LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld16"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld17"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld17" class="control-label col-md-2">Group</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld17" styleClass="wr-submitButtons:ln101 form-control " property="sfld17" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld17List" labelProperty="sfld17LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld17"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld18"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld18" class="control-label col-md-2">Status</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld18" styleClass="wr-submitButtons:ln101 form-control " property="sfld18" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld18List" labelProperty="sfld18LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld18"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld11_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld11_locale" class="control-label col-md-2">From Date</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld11_locale" styleClass="wr-submitButtons:ln101 form-control " property="fld11_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld11_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld11_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld11_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld11_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld11_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld11_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld12_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld12_locale" class="control-label col-md-2">To Date</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld12_locale" styleClass="wr-submitButtons:ln101 form-control " property="fld12_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld12_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld12_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld12_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld12_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld12_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld12_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln101', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln101', pageContext)}">
			<button title="Search" onclick="$('#page15FormBean')[0].target='_self'" class="btn  btn-default " id="button:ln101" name="button:ln101" type="submit" value="Search">
			Search</button>
	</c:if>
			</c:if>
		</div>
	</div></div>
</div>	
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('pwu9_0,page15_cell_1,page15_grid_1,page15_cell_0,page15_grid_0', pageContext)}">
			<ControlData control="pwu9_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu9) and (pwu9.dataSize gt 0)}">
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
						     	Process Active Since
					        </th>
					        <th scope="col" class="">
						     	Activity Name
					        </th>
					        <th scope="col" class="">
						     	Role
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln105', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu9.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu9.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
			<c:if test="${webratio:isTargetAccessible('ln106', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln106" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln106" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln106', sourcePage: 'page15'}))">
			</c:if>
										<c:out value="${current.processInstanceName}"/>
			<c:if test="${webratio:isTargetAccessible('ln106', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" timestamp">
			<c:if test="${webratio:isTargetAccessible('ln106', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln106" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln106" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln106', sourcePage: 'page15'}))">
			</c:if>
										<fmt:formatDate value="${current.processActiveSince}" pattern="${timestampPattern}"/>
			<c:if test="${webratio:isTargetAccessible('ln106', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" string">
			<c:if test="${webratio:isTargetAccessible('ln106', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln106" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln106" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln106', sourcePage: 'page15'}))">
			</c:if>
										<c:out value="${current.name}"/>
			<c:if test="${webratio:isTargetAccessible('ln106', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" string">
			<c:if test="${webratio:isTargetAccessible('ln106', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln106" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln106" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln106', sourcePage: 'page15'}))">
			</c:if>
										<c:out value="${current.group}"/>
			<c:if test="${webratio:isTargetAccessible('ln106', pageContext)}">
											</a>
			</c:if>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln105', pageContext)}">
							   		<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln105', pageContext)}">
	 		<a title="History Diagram" id="ln105" class=" " href="<webratio:Link link="ln105" position="index"/>" target="_blank"  >
			<span class="glyphicon "></span> </a>
	</c:if>
									</td>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu9.scroller.of gt 10}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu9.scroller.current ne pwu9.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu9First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu9First" onclick="return ajaxRequest('<webratio:Link link="pwu9First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9First', sourcePage: 'page15'}))" class="  scroll" href="<webratio:Link link="pwu9First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu9First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu9First" onclick="return ajaxRequest('<webratio:Link link="pwu9First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9First', sourcePage: 'page15'}))" class="  scroll" href="<webratio:Link link="pwu9First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu9.scroller.current ne pwu9.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu9Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu9Previous" onclick="return ajaxRequest('<webratio:Link link="pwu9Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9Previous', sourcePage: 'page15'}))" class="  scroll" href="<webratio:Link link="pwu9Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu9Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu9Previous" onclick="return ajaxRequest('<webratio:Link link="pwu9Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9Previous', sourcePage: 'page15'}))" class="  scroll" href="<webratio:Link link="pwu9Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu9.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu9.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu9Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu9Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9Block', sourcePage: 'page15'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu9.scroller.current ne pwu9.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu9Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu9Next" onclick="return ajaxRequest('<webratio:Link link="pwu9Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9Next', sourcePage: 'page15'}))" class="  scroll" href="<webratio:Link link="pwu9Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu9Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu9Next" onclick="return ajaxRequest('<webratio:Link link="pwu9Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9Next', sourcePage: 'page15'}))" class="  scroll" href="<webratio:Link link="pwu9Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu9.scroller.current ne pwu9.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu9Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu9Last" onclick="return ajaxRequest('<webratio:Link link="pwu9Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9Last', sourcePage: 'page15'}))" class="  scroll" href="<webratio:Link link="pwu9Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu9Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu9Last" onclick="return ajaxRequest('<webratio:Link link="pwu9Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9Last', sourcePage: 'page15'}))" class="  scroll" href="<webratio:Link link="pwu9Last" position="index"/>">							
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
			<bean:message key="noItemsFound"/>
		</div>
</c:otherwise>
</c:choose>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page15_cell_13,page15_grid_0', pageContext)}">
			<ControlData control="page15_cell_13" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau7_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('dau7_0,page15_cell_13,page15_grid_0', pageContext)}">
			<ControlData control="dau7_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty dau7) and (dau7.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Item Details
		</h2>
	</div>
	<div class="panel-body">
		<div class="">
			<div class="row">
				<label class="header col-md-2">Process Instance Name</label>
				<div class="value col-md-10"><c:out value="${dau7.data.processInstanceName}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">Activity Name</label>
				<div class="value col-md-10"><c:out value="${dau7.data.name}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">Role</label>
				<div class="value col-md-10"><c:out value="${dau7.data.group}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">Status</label>
				<div class="value col-md-10"><c:out value="${dau7.data.status}"/></div>
			</div>
			<div class="row">
				<label class="header col-md-2">Ready Since</label>
				<div class="value col-md-10"><c:set var="startedSince" value="${dau7.data.readySince}"/>    
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
				<label class="header col-md-2">Active Since</label>
				<div class="value col-md-10"><c:set var="startedSince" value="${dau7.data.activeSince}"/>    
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
				<label class="header col-md-2">Worked At</label>
				<div class="value col-md-10"><fmt:formatDate value="${dau7.data.workedAt}" pattern="${timestampPattern}"/></div>
			</div>
		</div>
	</div>
</div>     
</c:if>
   </webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<![CDATA[
		</html:form>
	]]>
</PageRefresh>