<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page2"/>
<PageRefresh>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page2"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page2_grid_0', pageContext)}">
			<ControlData control="page2_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page2_cell_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page2_cell_0,page2_grid_0', pageContext)}">
			<ControlData control="page2_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="hinu1_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('hinu1_0,page2_cell_0,page2_grid_0', pageContext)}">
			<ControlData control="hinu1_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty hinu1) and (hinu1.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain HierarchicalIndexUnit">
                <div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped">
					<thead>
						<tr>
					        <th scope="col" class="">
						     	groupName
					        </th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="level1current" varStatus="level1status" items="${hinu1.data}">
						<c:set var="level1" value="${level1status.index}" />
						<tr <c:if test="${hinu1.currentIndex eq level1}">class="info"</c:if>>
								<td class=" string">
											<a href="<webratio:Link escapeXml="true" link="ln6" position="level1"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln6" position="level1"/>', $H({pressedLink: 'ln6', sourcePage: 'page2'}))">
										<c:out value="${level1current.groupName}"/>
											</a>
								</td>
						</tr>
							<c:if test="${not empty(level1current.hiulvl1data)}">
							<tr>
								<td colspan="1">
      			<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped">
					<thead>
						<tr>
					        <th scope="col" class="">
						     	userName
					        </th>
						</tr>
					</thead>
					<tbody>
				      <c:forEach items="${level1current.hiulvl1data}" var="level2current" varStatus="level2status">
					   	   <c:set var="level2" value="${level2status.index}" />
						   <tr>
							   	 <td class=" value string">
										  <a href="<webratio:Link escapeXml="true" link="ln5" position="level1,level2"/>" class=""  onclick="return ajaxRequest('<webratio:Link link="ln5" position="level1,level2"/>', $H({pressedLink: 'ln5', sourcePage: 'page2'}))">
										  <c:out value="${level2current.userName}"/>
										  </a>
								 </td>
						  </tr>
					</c:forEach>
				</tbody>
			</table>
			</div>	
</td>
							</tr>
							</c:if>
					</c:forEach>
					</tbody>
				</table>
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
</PageRefresh>