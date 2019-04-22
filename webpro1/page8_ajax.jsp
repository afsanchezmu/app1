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
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="page8_grid_1"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page8_grid_1,page8_customlocation_0', pageContext)}">
			<ControlData control="page8_grid_1" type="text/html">
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
		<c:if test="${webratio:isLayoutRefreshed('page8_cell_60,page8_grid_1,page8_customlocation_0', pageContext)}">
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
		<c:if test="${webratio:isLayoutRefreshed('inu2_0,page8_cell_60,page8_grid_1,page8_customlocation_0', pageContext)}">
			<ControlData control="inu2_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty inu2) and (inu2.dataSize gt 0)}">
	<div class="frame">
	<div class="frame-title">New process</div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu3_0,page8_cell_12,page8_grid_0', pageContext)}">
			<ControlData control="pwu3_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu3) and (pwu3.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Ideas en incubacion
		</h2>
	</div>
	<div class="panel-body">
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
	</div>
</div>
</c:when>
<c:otherwise>
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Ideas en incubacion
		</h2>
	</div>
	<div class="panel-body">
		<div class="alert alert-info empty-message ">
			<bean:message key="NoWorkItemsFound"/>
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
		<![CDATA[
		</html:form>
	]]>
</PageRefresh>