<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page1"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page1.do${wrAjax ? '#!ajax=true' : ''}" styleId="page1FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page1">
			<![CDATA[
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page1"/>
				<input type="hidden" name="ln2" value="<webratio:Link link="ln2"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page1"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page1_grid_0', pageContext)}">
			<ControlData control="page1_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page1_cell_0"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page1_cell_12"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page1_cell_25"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page1_cell_0,page1_grid_0', pageContext)}">
			<ControlData control="page1_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="mssu2_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('mssu2_0,page1_cell_0,page1_grid_0', pageContext)}">
			<ControlData control="mssu2_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><c:if test="${webratio:evaluateCondition('cexpr1', null, pageContext)}">
<c:if test="${not(empty mssu2) and (mssu2.dataSize gt 0)}">
	<div class="alert alert-info ">
		<c:forEach var="current" varStatus="status" items="${mssu2.data}">
			<c:set var="index" value="${status.index}"/>
			<p>
					<bean:message key="${current}"/>
				</p>
		</c:forEach>
	</div>
</c:if>
</c:if></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page1_cell_12,page1_grid_0', pageContext)}">
			<ControlData control="page1_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="page1_grid_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page1_grid_1,page1_cell_12,page1_grid_0', pageContext)}">
			<ControlData control="page1_grid_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="page1_cell_13"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page1_cell_13,page1_grid_1,page1_cell_12,page1_grid_0', pageContext)}">
			<ControlData control="page1_cell_13" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Login
		</h2>
	</div>
	<div class="panel-body">
		<div class="wr-ajaxDiv" id="mssu1_0"></div>
		<div class="wr-ajaxDiv" id="enu1_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('mssu1_0,page1_cell_13,page1_grid_1,page1_cell_12,page1_grid_0', pageContext)}">
			<ControlData control="mssu1_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty mssu1) and (mssu1.dataSize gt 0)}">
	<div class="alert alert-info ">
		<c:forEach var="current" varStatus="status" items="${mssu1.data}">
			<c:set var="index" value="${status.index}"/>
			<p>
					<bean:message key="${current}"/>
				</p>
		</c:forEach>
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
		<c:if test="${webratio:isLayoutRefreshed('enu1_0,page1_cell_13,page1_grid_1,page1_cell_12,page1_grid_0', pageContext)}">
			<ControlData control="enu1_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu1"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu1"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="fld1"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld1" class="control-label col-md-2">Username:</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld1" styleClass="wr-submitButtons:ln2  form-control " property="fld1" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld1"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld2"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld2" class="control-label col-md-2">Password:</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld2" styleClass="wr-submitButtons:ln2  form-control " property="fld2" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld2"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
					 <button title="Login" onclick="$('#page1FormBean')[0].target='_self'" class="btn  btn-default " id="button:ln2" name="button:ln2" type="submit" value="Login">
			Login</button>
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
		<c:if test="${webratio:isLayoutRefreshed('page1_cell_25,page1_grid_0', pageContext)}">
			<ControlData control="page1_cell_25" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="inu1_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('inu1_0,page1_cell_25,page1_grid_0', pageContext)}">
			<ControlData control="inu1_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty inu1) and (inu1.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Demo Users
		</h2>
	</div>
	<div class="panel-body">
		<div class="plain ">
			<div class="plain IndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped" id="inu1_0_sortable">
					<thead>
						<tr>
							<th scope="col" class="">Username</th>
							<th scope="col" class="">Group</th>
						   		<th scope="col" class="smallcol "></th>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${inu1.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr<c:if test="${inu1.currentIndex eq index}"> class="info"</c:if>>	
								<td class=" string">
									<c:out value="${current.userName}"/>
								</td>
								<td class=" string">
									<c:out value="${current.group}"/>
								</td>
										<td class=" smallcol">
											 <a title="select" id="ln1" onclick="return ajaxRequest('<webratio:Link link="ln1" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln1', sourcePage: 'page1'}))" class=" " href="<webratio:Link link="ln1" position="index"/>">							
			select</a>
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