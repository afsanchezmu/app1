<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page8"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page8.do${wrAjax ? '#!ajax=true' : ''}" styleId="page8FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page8">
			<![CDATA[
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page8"/>
				<input type="hidden" name="ln51" value="<webratio:Link link="ln51"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page8"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('mpage2_customlocation_0', pageContext)}">
			<ControlData control="mpage2_customlocation_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="mpage2_grid_0"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('mpage2_grid_0,mpage2_customlocation_0', pageContext)}">
			<ControlData control="mpage2_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="mpage2_cell_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('mpage2_cell_0,mpage2_grid_0,mpage2_customlocation_0', pageContext)}">
			<ControlData control="mpage2_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau5_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('dau5_0,mpage2_cell_0,mpage2_grid_0,mpage2_customlocation_0', pageContext)}">
			<ControlData control="dau5_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		 			<a title="Logout" id="ln67"  href="<webratio:Link link="ln67" position="index"/>">
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
		<c:if test="${webratio:isLayoutRefreshed('page8_customlocation_0', pageContext)}">
			<ControlData control="page8_customlocation_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="page8_grid_2"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page8_grid_2,page8_customlocation_0', pageContext)}">
			<ControlData control="page8_grid_2" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="page8_cell_60"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page8_cell_60,page8_grid_2,page8_customlocation_0', pageContext)}">
			<ControlData control="page8_cell_60" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="inu2_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('inu2_0,page8_cell_60,page8_grid_2,page8_customlocation_0', pageContext)}">
			<ControlData control="inu2_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty inu2) and (inu2.dataSize gt 0)}">
	<div class="frame">
	<div class="frame-title">Start a New Process</div>
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
		<c:if test="${webratio:isLayoutRefreshed('page8_grid_0', pageContext)}">
			<ControlData control="page8_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page8_cell_0"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page8_cell_12"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page8_cell_24"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page8_cell_36"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page8_cell_0,page8_grid_0', pageContext)}">
			<ControlData control="page8_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu4_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu4_0,page8_cell_0,page8_grid_0', pageContext)}">
			<ControlData control="pwu4_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
					<c:if test="${pwu4.scroller.of gt 5}">
						<table border="0" cellspacing="1" cellpadding="2">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu4.scroller.current ne pwu4.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu4First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu4First" onclick="return ajaxRequest('<webratio:Link link="pwu4First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4First', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4First" position="index"/>">							
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
							                <c:when test="${pwu4.scroller.current ne pwu4.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu4Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu4Previous" onclick="return ajaxRequest('<webratio:Link link="pwu4Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4Previous', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu4.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu4.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu4.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu4.scroller.current ne pwu4.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu4Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu4Next" onclick="return ajaxRequest('<webratio:Link link="pwu4Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4Next', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4Next" position="index"/>">							
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
					    		            <c:when test="${pwu4.scroller.current ne pwu4.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu4Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu4Last" onclick="return ajaxRequest('<webratio:Link link="pwu4Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4Last', sourcePage: 'page8'}))" class="  scroll" href="<webratio:Link link="pwu4Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
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
									    <c:forEach var="current" varStatus="status" items="${pwu4.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu4.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu4Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu4Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4Block', sourcePage: 'page8'}))">${current}</a>
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
				<!-- instances -->
				<c:forEach var="current" varStatus="status" items="${pwu4.data}">
					<c:set var="index" value="${status.index}"/>
						<tr class="row<c:if test="${pwu4.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> <c:if test="${not(current.read)}">not-</c:if>highlight">	
								   <td class=" value<c:if test="${pwu4.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.message}"/>
								   </td>
			<c:if test="${webratio:isTargetAccessible('ln48', pageContext)}">
									<td class=" value<c:if test="${pwu4.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu4.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:isTargetAccessible('ln48', pageContext)}">
	 		<a title="delete" id="ln48" class="  linkCurrentAlternate" href="<webratio:Link link="ln48" position="index"/>" >
			delete</a>
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln48', pageContext)}">
	 		<a title="delete" id="ln48" class="  linkCurrent" href="<webratio:Link link="ln48" position="index"/>" >
			delete</a>
	</c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:isTargetAccessible('ln48', pageContext)}">
	 		<a title="delete" id="ln48" class="  linkAlternate" href="<webratio:Link link="ln48" position="index"/>" >
			delete</a>
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln48', pageContext)}">
	 		<a title="delete" id="ln48" class="  link" href="<webratio:Link link="ln48" position="index"/>" >
			delete</a>
	</c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln49', pageContext)}">
<c:if test="${not(webratio:evaluateCondition('cexpr_var9', 'index', pageContext))}">
									<td class="nowrap value<c:if test="${pwu4.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu4.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var9', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln49', pageContext)}">
	 		<a title="mark as read" id="ln49" class=" nowrap linkCurrentAlternate" href="<webratio:Link link="ln49" position="index"/>" >
			mark as read</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var9', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln49', pageContext)}">
	 		<a title="mark as read" id="ln49" class=" nowrap linkCurrent" href="<webratio:Link link="ln49" position="index"/>" >
			mark as read</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var9', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln49', pageContext)}">
	 		<a title="mark as read" id="ln49" class=" nowrap linkAlternate" href="<webratio:Link link="ln49" position="index"/>" >
			mark as read</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var9', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln49', pageContext)}">
	 		<a title="mark as read" id="ln49" class=" nowrap link" href="<webratio:Link link="ln49" position="index"/>" >
			mark as read</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln50', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr_var9', 'index', pageContext)}">
									<td class="nowrap value<c:if test="${pwu4.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu4.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr_var9', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln50', pageContext)}">
	 		<a title="mark as unread" id="ln50" class=" nowrap linkCurrentAlternate" href="<webratio:Link link="ln50" position="index"/>" >
			mark as unread</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr_var9', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln50', pageContext)}">
	 		<a title="mark as unread" id="ln50" class=" nowrap linkCurrent" href="<webratio:Link link="ln50" position="index"/>" >
			mark as unread</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr_var9', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln50', pageContext)}">
	 		<a title="mark as unread" id="ln50" class=" nowrap linkAlternate" href="<webratio:Link link="ln50" position="index"/>" >
			mark as unread</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr_var9', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln50', pageContext)}">
	 		<a title="mark as unread" id="ln50" class=" nowrap link" href="<webratio:Link link="ln50" position="index"/>" >
			mark as unread</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
</c:if>
			</c:if>
						</tr>
					</c:forEach>
				</table>
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
		<c:if test="${webratio:isLayoutRefreshed('page8_cell_12,page8_grid_0', pageContext)}">
			<ControlData control="page8_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu3_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu3_0,page8_cell_12,page8_grid_0', pageContext)}">
			<ControlData control="enu3_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${webratio:isLayoutRefreshed('page8_cell_24,page8_grid_0', pageContext)}">
			<ControlData control="page8_cell_24" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu3_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu3_0,page8_cell_24,page8_grid_0', pageContext)}">
			<ControlData control="pwu3_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu3) and (pwu3.dataSize gt 0)}">
	<div class="frame">
	<div class="frame-title">Work Items</div>
	<div class="frame-content">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
					<c:if test="${pwu3.scroller.of gt 10}">
						<table border="0" cellspacing="1" cellpadding="2">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu3.scroller.current ne pwu3.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu3First', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu3First" onclick="return ajaxRequest('<webratio:Link link="pwu3First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3First', sourcePage: 'page8'}))" class=" scroll" href="<webratio:Link link="pwu3First" position="index"/>">							
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
							                <c:when test="${pwu3.scroller.current ne pwu3.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu3Previous', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu3Previous" onclick="return ajaxRequest('<webratio:Link link="pwu3Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3Previous', sourcePage: 'page8'}))" class=" scroll" href="<webratio:Link link="pwu3Previous" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu3.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu3.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu3.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu3.scroller.current ne pwu3.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu3Next', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu3Next" onclick="return ajaxRequest('<webratio:Link link="pwu3Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3Next', sourcePage: 'page8'}))" class=" scroll" href="<webratio:Link link="pwu3Next" position="index"/>">							
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
					    		            <c:when test="${pwu3.scroller.current ne pwu3.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu3Last', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu3Last" onclick="return ajaxRequest('<webratio:Link link="pwu3Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3Last', sourcePage: 'page8'}))" class=" scroll" href="<webratio:Link link="pwu3Last" position="index"/>">							
					<bean:message key="PowerIndex.Last"/></a>
	</c:if>
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
									    <c:forEach var="current" varStatus="status" items="${pwu3.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu3.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu3Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu3Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3Block', sourcePage: 'page8'}))">${current}</a>
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
					        <th nowrap="nowrap" class="attachment header">
						            #
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu3activityInstanceProcessInstanceName', pageContext)}">
		 			<a title="Process" id="pwu3activityInstanceProcessInstanceName" onclick="return ajaxRequest('<webratio:Link link="pwu3activityInstanceProcessInstanceName" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3activityInstanceProcessInstanceName', sourcePage: 'page8'}))" class=" sort" href="<webratio:Link link="pwu3activityInstanceProcessInstanceName" position="index"/>">							
					Process</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu3activityInstanceName', pageContext)}">
		 			<a title="Activity" id="pwu3activityInstanceName" onclick="return ajaxRequest('<webratio:Link link="pwu3activityInstanceName" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3activityInstanceName', sourcePage: 'page8'}))" class=" sort" href="<webratio:Link link="pwu3activityInstanceName" position="index"/>">							
					Activity</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu3activityInstanceStatus', pageContext)}">
		 			<a title="Status" id="pwu3activityInstanceStatus" onclick="return ajaxRequest('<webratio:Link link="pwu3activityInstanceStatus" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3activityInstanceStatus', sourcePage: 'page8'}))" class=" sort" href="<webratio:Link link="pwu3activityInstanceStatus" position="index"/>">							
					Status</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu3activityInstanceReadyTimestamp', pageContext)}">
		 			<a title="Running for" id="pwu3activityInstanceReadyTimestamp" onclick="return ajaxRequest('<webratio:Link link="pwu3activityInstanceReadyTimestamp" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu3activityInstanceReadyTimestamp', sourcePage: 'page8'}))" class=" sort" href="<webratio:Link link="pwu3activityInstanceReadyTimestamp" position="index"/>">							
					Running for</a>
	</c:if>
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln41', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr7', null, pageContext)}">
<th class="small header"></th> 
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln43', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr8', null, pageContext)}">
<th class=" header"></th> 
</c:if>
			</c:if>
						</tr>
						<!-- end header -->
				<!-- instances -->
				<c:forEach var="current" varStatus="status" items="${pwu3.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
						        <td class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln42" position="index"/>" class="link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln42" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln42', sourcePage: 'page8'}))" >
			</c:if>
						            <img src="WRResources/spacer.gif" class="bullet<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" border="0" alt="details"/>					
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
										</a>
			</c:if>
							    </td>
								   <td class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> integer">
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln42" position="index"/>" class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln42" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln42', sourcePage: 'page8'}))" >
			</c:if>
									<fmt:formatNumber value="${current.processAttachmentCount}" pattern="${integerPattern}"/>
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln42" position="index"/>" class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln42" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln42', sourcePage: 'page8'}))" >
			</c:if>
									<c:out value="${current.processInstanceName}"/>
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln42" position="index"/>" class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln42" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln42', sourcePage: 'page8'}))" >
			</c:if>
									<c:out value="${current.name}"/>
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln42" position="index"/>" class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln42" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln42', sourcePage: 'page8'}))" >
			</c:if>
									<c:out value="${current.status}"/>
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln42" position="index"/>" class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln42" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln42', sourcePage: 'page8'}))" >
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
			<c:if test="${webratio:isTargetAccessible('ln42', pageContext)}">
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln41', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr7', 'index', pageContext)}">
									<td class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
							   			<c:choose>
							   				<c:when test="${pwu3.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr7', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln41', pageContext)}">
		 			<a title="resume" id="ln41" class="small linkCurrentAlternate" href="<webratio:Link link="ln41" position="index"/>">
					resume</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr7', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln41', pageContext)}">
		 			<a title="resume" id="ln41" class="small linkCurrent" href="<webratio:Link link="ln41" position="index"/>">
					resume</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr7', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln41', pageContext)}">
		 			<a title="resume" id="ln41" class="small linkAlternate" href="<webratio:Link link="ln41" position="index"/>">
					resume</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr7', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln41', pageContext)}">
		 			<a title="resume" id="ln41" class="small link" href="<webratio:Link link="ln41" position="index"/>">
					resume</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln43', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr8', 'index', pageContext)}">
									<td class=" link<c:if test="${pwu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
							   			<c:choose>
							   				<c:when test="${pwu3.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr8', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln43', pageContext)}">
		 			<a title="work on" id="ln43" class=" linkCurrentAlternate" href="<webratio:Link link="ln43" position="index"/>">
					work on</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr8', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln43', pageContext)}">
		 			<a title="work on" id="ln43" class=" linkCurrent" href="<webratio:Link link="ln43" position="index"/>">
					work on</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr8', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln43', pageContext)}">
		 			<a title="work on" id="ln43" class=" linkAlternate" href="<webratio:Link link="ln43" position="index"/>">
					work on</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr8', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln43', pageContext)}">
		 			<a title="work on" id="ln43" class=" link" href="<webratio:Link link="ln43" position="index"/>">
					work on</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
</c:if>
			</c:if>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
</c:when>
<c:otherwise>
	<div class="frame">
	<div class="frame-title">Work Items</div>
	<div class="frame-content">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<table>
				    <tr>
				      <td><bean:message key="NoWorkItemsFound"/></td>
				    </tr>
				</table>
			</div>
		</div>
	</div>
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
		<c:if test="${webratio:isLayoutRefreshed('page8_cell_36,page8_grid_0', pageContext)}">
			<ControlData control="page8_cell_36" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="page8_grid_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page8_grid_1,page8_cell_36,page8_grid_0', pageContext)}">
			<ControlData control="page8_grid_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><c:if test="${webratio:evaluateCondition('cexpr6', null, pageContext)}">
<div class="frame">
	<div class="frame-title">Work Item Details</div>
	<div class="frame-content">
<div class="container_12">
				<div class="grid_6 alpha agrd_12">
					<div class="wr-ajaxDiv" id="page8_cell_37"></div>
				</div>
				<div class="grid_6 omega agrd_12">
					<div class="wr-ajaxDiv" id="page8_cell_43"></div>
				</div>
					<div class="clear"></div>
</div>
</div>
</div></c:if></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:evaluateCondition('cexpr6', null, pageContext)}">
		<c:if test="${webratio:isLayoutRefreshed('page8_cell_37,page8_grid_1,page8_cell_36,page8_grid_0', pageContext)}">
			<ControlData control="page8_cell_37" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau3_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('dau3_0,page8_cell_37,page8_grid_1,page8_cell_36,page8_grid_0', pageContext)}">
			<ControlData control="dau3_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty dau3) and (dau3.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain DataUnit">
			    <table>
							<tr class="row">
			        		  	<th class=" header">process name</th>
			        		  	<td class=" value string"><c:out value="${dau3.data.processName}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">name</th>
			        		  	<td class=" value string"><c:out value="${dau3.data.name}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">role</th>
			        		  	<td class=" value string"><c:out value="${dau3.data.group}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">status</th>
			        		  	<td class=" value string"><c:out value="${dau3.data.status}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">ready since</th>
			        		  	<td class=" value timestamp"><c:set var="startedSince" value="${dau3.data.readySince}"/>    
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
<% } %></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">active since</th>
			        		  	<td class=" value timestamp"><c:set var="startedSince" value="${dau3.data.activeSince}"/>    
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
<% } %></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">worked at</th>
			        		  	<td class=" value timestamp"><fmt:formatDate value="${dau3.data.workedAt}" pattern="${timestampPattern}"/></td>
			        		</tr>
				  <tr>
				  <td colspan="14">
			           <table>
			               <tr>
			<c:if test="${webratio:isTargetAccessible('ln47', pageContext)}">
			                 <td class="link"> <c:if test="${webratio:isTargetAccessible('ln47', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln47" class=" link" href="<webratio:Link link="ln47" position="index"/>" target="_blank" >
						<img title="History Diagram" alt="History Diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
					<td>
		 			<a title="History Diagram" id="ln47" class=" link" href="<webratio:Link link="ln47" position="index"/>" target="_blank" >
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
		<c:if test="${webratio:isLayoutRefreshed('page8_cell_43,page8_grid_1,page8_cell_36,page8_grid_0', pageContext)}">
			<ControlData control="page8_cell_43" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pu14_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pu14_0,page8_cell_43,page8_grid_1,page8_cell_36,page8_grid_0', pageContext)}">
			<ControlData control="pu14_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty pu14) and (pu14.dataSize gt 0)}">
 <div class="plain ">
	<div class="plain ProcessUnit">
      <table>
	      <c:forEach var="current" varStatus="status" items="${pu14.data}">
	           <c:set var="index" value="${status.index}"/>    
	           <c:set var="type" value="${current.type}"/>
	           <c:set var="typePattern" value="${type}Pattern"/>
	           <tr class="row">
	           	<th class="header">
	           		<c:out value="${current.name}"/>
	           	</th>
	           	<td class="value ${type}">
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
	             </td>
	            </tr>
	        </c:forEach>
		</table>
	</div>
 </div>	
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
		</c:if>
		<![CDATA[
		</html:form>
	]]>
</PageRefresh>