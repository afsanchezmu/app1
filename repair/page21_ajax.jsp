<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page21"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page21.do${wrAjax ? '#!ajax=true' : ''}" styleId="page21FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page21">
			<![CDATA[
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page21"/>
				<input type="hidden" name="ln153" value="<webratio:Link link="ln153"/>">
				<input type="hidden" name="ln154" value="<webratio:Link link="ln154"/>">
				<input type="hidden" name="ln155" value="<webratio:Link link="ln155"/>">
				<input type="hidden" name="ln156" value="<webratio:Link link="ln156"/>">
				<input type="hidden" name="sv4ln132" value="<webratio:Link link="sv4ln132"/>">
					<input type="hidden" name="sv4ln132_sr" value="<webratio:Link link="sv4ln132" selectiveRefresh="true"/>">
				<input type="hidden" name="sv4ln133" value="<webratio:Link link="sv4ln133"/>">
				<input type="hidden" name="sv4ln134" value="<webratio:Link link="sv4ln134"/>">
					<input type="hidden" name="sv4ln134_sr" value="<webratio:Link link="sv4ln134" selectiveRefresh="true"/>">
				<input type="hidden" name="sv4ln135" value="<webratio:Link link="sv4ln135"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page21"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_customlocation_2', pageContext)}">
			<ControlData control="sv4mpage4_customlocation_2" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="sv4mpage4_grid_6"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_grid_6,sv4mpage4_customlocation_2', pageContext)}">
			<ControlData control="sv4mpage4_grid_6" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="sv4mpage4_cell_76"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_cell_76,sv4mpage4_grid_6,sv4mpage4_customlocation_2', pageContext)}">
			<ControlData control="sv4mpage4_cell_76" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="sv4dau11_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4dau11_0,sv4mpage4_cell_76,sv4mpage4_grid_6,sv4mpage4_customlocation_2', pageContext)}">
			<ControlData control="sv4dau11_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4mpage4_customlocation_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="sv4mpage4_grid_2"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4mpage4_grid_2" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="sv4mpage4_cell_49"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4mpage4_cell_49" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="sv4mpage4_grid_3"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_grid_3,sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4mpage4_grid_3" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_50"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_63"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_cell_50,sv4mpage4_grid_3,sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4mpage4_cell_50" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="sv4mpage4_grid_4"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_grid_4,sv4mpage4_cell_50,sv4mpage4_grid_3,sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4mpage4_grid_4" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="sv4mpage4_cell_51"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_cell_51,sv4mpage4_grid_4,sv4mpage4_cell_50,sv4mpage4_grid_3,sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4mpage4_cell_51" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="frame">
	<div class="frame-title">Notes</div>
	<div class="frame-content">
		<div class="wr-ajaxDiv" id="sv4pwu12_0"></div>
		<div class="wr-ajaxDiv" id="sv4enu9_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4pwu12_0,sv4mpage4_cell_51,sv4mpage4_grid_4,sv4mpage4_cell_50,sv4mpage4_grid_3,sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4pwu12_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		 			<a title="delete" id="sv4ln138" onclick="return ajaxRequest('<webratio:Link link="sv4ln138" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4ln138', sourcePage: 'page21'}))" class=" linkCurrent" href="<webratio:Link link="sv4ln138" position="index"/>">							
					delete</a>
	</c:if>
							   				</c:when>
							   				<c:otherwise>
							   					 <c:if test="${webratio:isTargetAccessible('sv4ln138', pageContext)}">
		 			<a title="delete" id="sv4ln138" onclick="return ajaxRequest('<webratio:Link link="sv4ln138" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4ln138', sourcePage: 'page21'}))" class=" link" href="<webratio:Link link="sv4ln138" position="index"/>">							
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
		 			<a title="<bean:message key="PowerIndex.First"/>" id="sv4pwu12First" onclick="return ajaxRequest('<webratio:Link link="sv4pwu12First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu12First', sourcePage: 'page21'}))" class=" scroll" href="<webratio:Link link="sv4pwu12First" position="index"/>">							
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
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="sv4pwu12Previous" onclick="return ajaxRequest('<webratio:Link link="sv4pwu12Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu12Previous', sourcePage: 'page21'}))" class=" scroll" href="<webratio:Link link="sv4pwu12Previous" position="index"/>">							
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
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="sv4pwu12Next" onclick="return ajaxRequest('<webratio:Link link="sv4pwu12Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu12Next', sourcePage: 'page21'}))" class=" scroll" href="<webratio:Link link="sv4pwu12Next" position="index"/>">							
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
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="sv4pwu12Last" onclick="return ajaxRequest('<webratio:Link link="sv4pwu12Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu12Last', sourcePage: 'page21'}))" class=" scroll" href="<webratio:Link link="sv4pwu12Last" position="index"/>">							
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
		<c:if test="${webratio:isLayoutRefreshed('sv4enu9_0,sv4mpage4_cell_51,sv4mpage4_grid_4,sv4mpage4_cell_50,sv4mpage4_grid_3,sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4enu9_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
 			<input title="Write" onclick="return ajaxRequest('page21FormBean', $H({isForm: true, pressedLink: 'button:sv4ln132', selectiveRefresh: true, sourcePage: 'page21'})) " class=" button"  id="button:sv4ln132" name="button:sv4ln132" type="submit" value="Write">
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_cell_63,sv4mpage4_grid_3,sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4mpage4_cell_63" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="sv4mpage4_grid_5"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_grid_5,sv4mpage4_cell_63,sv4mpage4_grid_3,sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4mpage4_grid_5" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="sv4mpage4_cell_64"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_cell_64,sv4mpage4_grid_5,sv4mpage4_cell_63,sv4mpage4_grid_3,sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4mpage4_cell_64" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="frame">
	<div class="frame-title">Attachments</div>
	<div class="frame-content">
		<div class="wr-ajaxDiv" id="sv4pwu11_0"></div>
		<div class="wr-ajaxDiv" id="sv4enu10_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4pwu11_0,sv4mpage4_cell_64,sv4mpage4_grid_5,sv4mpage4_cell_63,sv4mpage4_grid_3,sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4pwu11_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
				<input title="delete" id="sv4ln131" class=" linkCurrent"  type="button" value="delete" onclick=" var c = confirm('<c:out value="${_wr_message}"/>'); if (c) { return ajaxRequest('<webratio:Link link="sv4ln131" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4ln131', sourcePage: 'page21'})) } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; }  return c; ">
	</c:if>
							   				</c:when>
							   				<c:otherwise>
							   					 <c:set var="_wr_message"><bean:message key="confirmAttachmentDeletion"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('sv4ln131', pageContext)}">
				<input title="delete" id="sv4ln131" class=" link"  type="button" value="delete" onclick=" var c = confirm('<c:out value="${_wr_message}"/>'); if (c) { return ajaxRequest('<webratio:Link link="sv4ln131" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4ln131', sourcePage: 'page21'})) } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; }  return c; ">
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
		 			<a title="<bean:message key="PowerIndex.First"/>" id="sv4pwu11First" onclick="return ajaxRequest('<webratio:Link link="sv4pwu11First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu11First', sourcePage: 'page21'}))" class=" scroll" href="<webratio:Link link="sv4pwu11First" position="index"/>">							
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
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="sv4pwu11Previous" onclick="return ajaxRequest('<webratio:Link link="sv4pwu11Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu11Previous', sourcePage: 'page21'}))" class=" scroll" href="<webratio:Link link="sv4pwu11Previous" position="index"/>">							
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
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="sv4pwu11Next" onclick="return ajaxRequest('<webratio:Link link="sv4pwu11Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu11Next', sourcePage: 'page21'}))" class=" scroll" href="<webratio:Link link="sv4pwu11Next" position="index"/>">							
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
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="sv4pwu11Last" onclick="return ajaxRequest('<webratio:Link link="sv4pwu11Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'sv4pwu11Last', sourcePage: 'page21'}))" class=" scroll" href="<webratio:Link link="sv4pwu11Last" position="index"/>">							
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
		<c:if test="${webratio:isLayoutRefreshed('sv4enu10_0,sv4mpage4_cell_64,sv4mpage4_grid_5,sv4mpage4_cell_63,sv4mpage4_grid_3,sv4mpage4_cell_49,sv4mpage4_grid_2,sv4mpage4_customlocation_1', pageContext)}">
			<ControlData control="sv4enu10_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${not(empty page21FormBean.map.sv4fld16_preload)}">
		  <table>
		    <tr>
		      <td>
		        <html:checkbox styleClass="wr-submitButtons:sv4ln134  field" property="sv4fld16_clear" disabled="false"/> clear <a target="blank" href="<webratio:BLOB value="${page21FormBean.map.sv4fld16_preload}"/>">preview</a>
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
 			<input title="Upload" onclick="return ajaxRequest('page21FormBean', $H({isForm: true, pressedLink: 'button:sv4ln134', selectiveRefresh: true, sourcePage: 'page21'})) " class=" button"  id="button:sv4ln134" name="button:sv4ln134" type="submit" value="Upload">
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4mpage4_customlocation_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="sv4mpage4_grid_0"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_grid_0,sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4mpage4_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="sv4mpage4_cell_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_cell_0,sv4mpage4_grid_0,sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4mpage4_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="frame">
	<div class="frame-title">Process Details</div>
	<div class="frame-content">
		<div class="wr-ajaxDiv" id="sv4mpage4_grid_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_grid_1,sv4mpage4_cell_0,sv4mpage4_grid_0,sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4mpage4_grid_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_1"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_13"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_25"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="sv4mpage4_cell_37"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_cell_1,sv4mpage4_grid_1,sv4mpage4_cell_0,sv4mpage4_grid_0,sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4mpage4_cell_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="sv4dau9_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4dau9_0,sv4mpage4_cell_1,sv4mpage4_grid_1,sv4mpage4_cell_0,sv4mpage4_grid_0,sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4dau9_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_cell_13,sv4mpage4_grid_1,sv4mpage4_cell_0,sv4mpage4_grid_0,sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4mpage4_cell_13" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="sv4dau10_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4dau10_0,sv4mpage4_cell_13,sv4mpage4_grid_1,sv4mpage4_cell_0,sv4mpage4_grid_0,sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4dau10_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_cell_25,sv4mpage4_grid_1,sv4mpage4_cell_0,sv4mpage4_grid_0,sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4mpage4_cell_25" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="sv4dau9_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4dau9_1,sv4mpage4_cell_25,sv4mpage4_grid_1,sv4mpage4_cell_0,sv4mpage4_grid_0,sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4dau9_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${webratio:isLayoutRefreshed('sv4mpage4_cell_37,sv4mpage4_grid_1,sv4mpage4_cell_0,sv4mpage4_grid_0,sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4mpage4_cell_37" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="sv4inu6_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('sv4inu6_0,sv4mpage4_cell_37,sv4mpage4_grid_1,sv4mpage4_cell_0,sv4mpage4_grid_0,sv4mpage4_customlocation_0', pageContext)}">
			<ControlData control="sv4inu6_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${webratio:isLayoutRefreshed('page21_grid_0', pageContext)}">
			<ControlData control="page21_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page21_cell_0"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page21_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page21_cell_0,page21_grid_0', pageContext)}">
			<ControlData control="page21_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu16_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu16_0,page21_cell_0,page21_grid_0', pageContext)}">
			<ControlData control="enu16_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="frame">
	<div class="frame-title">RepairFile</div>
	<div class="frame-content">
	 <div class="plain ">
		<div class="plain EntryUnit">
				<table>
					<tr>
						<td colspan="3" class="error">
							<html:errors property="enu16" />
						</td>
					</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Problem abstract
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:text  size="25" styleId="fld29" styleClass="  field" property="fld29" readonly="false"/>
						</td>
								<td class="error"><span class=" error"><html:errors property="fld29"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Computer characteristic
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:textarea styleId="fld30" styleClass=" field" cols="35" rows="8" property="fld30" readonly="false"/>
						</td>
								<td class="error"><span class=" error"><html:errors property="fld30"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Defect description
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:textarea styleId="fld31" styleClass=" field" cols="35" rows="8" property="fld31" readonly="false"/>
						</td>
								<td class="error"><span class=" error"><html:errors property="fld31"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Request date
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<c:out value="${page21FormBean.map.fld32_locale}" /><html:hidden property="fld32_locale"/>
						</td>
								<td class="error"></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Repair price
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:text  size="25" styleId="fld33_locale" styleClass="  field" property="fld33_locale" readonly="false"/>
						</td>
								<td class="error"><span class=" error"><html:errors property="fld33_locale"/></span></td>
					 	</tr>
			<html:hidden property="fld28" styleId="fld28"/>
		  </table>
		</div>
	</div>
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
		<c:if test="${webratio:isLayoutRefreshed('page21_cell_12,page21_grid_0', pageContext)}">
			<ControlData control="page21_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu17_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu17_0,page21_cell_12,page21_grid_0', pageContext)}">
			<ControlData control="enu17_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	 <div class="plain ">
		<div class="plain EntryUnit">
				<table>
					<tr>
						<td colspan="3" class="error">
							<html:errors property="enu17" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln154', pageContext)}">
					  <td> <c:set var="_wr_message"><bean:message key="Confirm Finish"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('ln154', pageContext)}">
			<input title="Finish" onclick=" var c = confirm('<c:out value="${_wr_message}"/>'); if (c) { $('#page21FormBean')[0].target='_self' } else { event.preventDefault ? event.preventDefault() : event.returnValue = false; } return c; " class=" button"  id="button:ln154" name="button:ln154" type="submit" value="Finish">
	</c:if>
 </td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln155', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln155', pageContext)}">
			<input title="Save and Work Later" onclick="$('#page21FormBean')[0].target='_self'" class=" button"  id="button:ln155" name="button:ln155" type="submit" value="Save and Work Later">
	</c:if>
 </td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln156', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln156', pageContext)}">
			<input title="Cancel" onclick="$('#page21FormBean')[0].target='_self'" class=" button"  id="button:ln156" name="button:ln156" type="submit" value="Cancel">
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