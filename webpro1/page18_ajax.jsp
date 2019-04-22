<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page18"/>
<PageRefresh>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page18"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page18_grid_0', pageContext)}">
			<ControlData control="page18_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page18_cell_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page18_cell_0,page18_grid_0', pageContext)}">
			<ControlData control="page18_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pdu4_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pdu4_0,page18_cell_0,page18_grid_0', pageContext)}">
			<ControlData control="pdu4_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty pdu4) and (pdu4.dataSize gt 0)}">
    <div class="diagram-title" style="width:${pdu4.width}px">
      <c:out value="${pdu4.processName}"/>
	</div>
	<div class="plain ">
		<div class="ProcessDiagramUnit" style="position:relative; width:${pdu4.width}px; height:${pdu4.height}px; z-index:1">
          <c:if test="${not(empty pdu4.data)}">
          <c:forEach var="current" varStatus="status" items="${pdu4.data}">
		     <c:set var="index" value="${status.index}"/>
             <c:if test="${webratio:evaluateCondition('cexpr_var15', 'index', pageContext)||(not(empty current.parentProcessInstanceOid))||(not(empty current.subProcessInstanceOids))||(not(empty current.parentProcesses))||(not(empty current.subProcesses))}">
              <div id="${current.uuid}" class="diagram-popup-div" style="position:absolute; top:${current.y}px; left:${current.x2 - 10}px; z-index:2; display:none;" onmouseover="jQuery(this).show()" onmouseout="jQuery(this).hide()">
               <table class="diagram-popup-table">
			<c:if test="${webratio:isTargetAccessible('ln94', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr_var15', 'index', pageContext)}">
<tr><td nowrap="nowrap"> <c:if test="${webratio:evaluateCondition('cexpr_var15', 'index', pageContext)}"><c:set var="_wr_message"><bean:message key="confirmRollback"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('ln94', pageContext)}">
		 			<a title="rollback" id="ln94" class=" diagram-link" href="<webratio:Link link="ln94" position="index"/>" onclick="if (confirm('<c:out value="${_wr_message}"/>')) { return true; } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; return false; }">
					rollback</a>
	</c:if></c:if>
 </td></tr> 
</c:if>
			</c:if>
			   <c:choose>
                  <c:when test="${not(empty current.parentProcessInstanceOid)}">
                      <tr>
                        <td nowrap="nowrap"><img src="Resources/parent_level.png"/></td>
                        <td nowrap="nowrap"><a class="diagram-link" href="<webratio:Link escapeXml="true" link="pdu4parentLevel" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="pdu4parentLevel" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pdu4parentLevel', sourcePage: 'page18'}))"><c:out value="${current.parentProcessInstanceName}"/></a></td>
                      </tr>
                  </c:when>
	              <c:when test="${not(empty current.parentProcesses)}">
	                  <c:forEach var="process" varStatus="status2" items="${current.parentProcesses}">
		                <c:set var="index2" value="${status2.index}"/>
		                <tr>
		                  <td nowrap="nowrap"><img src="Resources/parent_level.png"/></td>
		                  <td nowrap="nowrap"><a class="diagram-link" href="<webratio:Link escapeXml="true" link="pdu4parentLevel" position="index,index2"/>" onclick="return ajaxRequest('<webratio:Link link="pdu4parentLevel" position="index,index2" selectiveRefresh="true"/>', $H({pressedLink: 'pdu4parentLevel', sourcePage: 'page18'}))"><c:out value="${process.model.name}"/></a></td>
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
		                  <td nowrap="nowrap"><a class="diagram-link" href="<webratio:Link escapeXml="true" link="pdu4subLevel" position="index,index2"/>" onclick="return ajaxRequest('<webratio:Link link="pdu4subLevel" position="index,index2" selectiveRefresh="true"/>', $H({pressedLink: 'pdu4subLevel', sourcePage: 'page18'}))"><c:out value="${current.subProcessInstanceNames[index2]}"/></a></td>
		               </tr>
		             </c:forEach>   
			      </c:when>
	              <c:when test="${not(empty current.subProcesses)}">
	                 <c:forEach var="process" varStatus="status2" items="${current.subProcesses}">
		               <c:set var="index2" value="${status2.index}"/>
		               <tr>
		                 <td nowrap="nowrap"><img src="Resources/sub_level.png"/></td>
		                 <td nowrap="nowrap"><a class="diagram-link" href="<webratio:Link escapeXml="true" link="pdu4subLevel" position="index,index2"/>" onclick="return ajaxRequest('<webratio:Link link="pdu4subLevel" position="index,index2" selectiveRefresh="true"/>', $H({pressedLink: 'pdu4subLevel', sourcePage: 'page18'}))"><c:out value="${process.model.name}"/></a></td>
		               </tr>
		             </c:forEach> 
	              </c:when> 
	           </c:choose>
			   </table>
			 </div>
			 </c:if> 
          </c:forEach>
          </c:if>
          <img src="<webratio:BLOB value="${pdu4.diagramFile}"/>" usemap="#diagramMap" width="${pdu4.width}" height="${pdu4.height}" border="0"/>
          <map name="diagramMap">
            <c:forEach var="current" varStatus="status" items="${pdu4.data}">
			  <c:set var="index" value="${status.index}"/>
              <area shape="rect" coords="${current.coords}" onmouseover="jQuery(document.getElementById('${current.uuid}')).show()" onmouseout="jQuery(document.getElementById('${current.uuid}')).hide()" />
            </c:forEach>
          </map>       
      </div>
    </div>
    <div class="diagram-bottom" style="width:${pdu4.width}px"></div>
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
</PageRefresh>