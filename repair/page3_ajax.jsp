<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page3"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page3.do${wrAjax ? '#!ajax=true' : ''}" styleId="page3FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page3">
			<![CDATA[
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page3"/>
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page3"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('mpage1_customlocation_0', pageContext)}">
			<ControlData control="mpage1_customlocation_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="mpage1_grid_0"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('mpage1_grid_0,mpage1_customlocation_0', pageContext)}">
			<ControlData control="mpage1_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="mpage1_cell_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('mpage1_cell_0,mpage1_grid_0,mpage1_customlocation_0', pageContext)}">
			<ControlData control="mpage1_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau2_0"></div>
	<div class="wr-ajaxDiv" id="ln35_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('dau2_0,mpage1_cell_0,mpage1_grid_0,mpage1_customlocation_0', pageContext)}">
			<ControlData control="dau2_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${webratio:isLayoutRefreshed('ln35_0,mpage1_cell_0,mpage1_grid_0,mpage1_customlocation_0', pageContext)}">
			<ControlData control="ln35_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><c:if test="${webratio:evaluateCondition('cexpr5', null, pageContext)}"><a title="Home" id="ln35"  href="<webratio:Link link="ln35" position="index"/>">
					Home</a></c:if></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page3_grid_0', pageContext)}">
			<ControlData control="page3_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page3_cell_0"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page3_cell_12"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page3_cell_24"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page3_cell_0,page3_grid_0', pageContext)}">
			<ControlData control="page3_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau1_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('dau1_0,page3_cell_0,page3_grid_0', pageContext)}">
			<ControlData control="dau1_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${webratio:isLayoutRefreshed('page3_cell_12,page3_grid_0', pageContext)}">
			<ControlData control="page3_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu1_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu1_0,page3_cell_12,page3_grid_0', pageContext)}">
			<ControlData control="pwu1_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${webratio:isLayoutRefreshed('page3_cell_24,page3_grid_0', pageContext)}">
			<ControlData control="page3_cell_24" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau1_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('dau1_1,page3_cell_24,page3_grid_0', pageContext)}">
			<ControlData control="dau1_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty dau1) and (dau1.dataSize gt 0)}">
		<div class="">
			<p class="unit-actions">
				 <a title="Back" id="ln8" class="btn  btn-default " href="<webratio:Link link="ln8" position="index"/>" >
			Back</a>
			</p>
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