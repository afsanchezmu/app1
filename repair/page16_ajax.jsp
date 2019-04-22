<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page16"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page16.do${wrAjax ? '#!ajax=true' : ''}" styleId="page16FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page16">
			<![CDATA[
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page16"/>
				<input type="hidden" name="ln116" value="<webratio:Link link="ln116"/>">
				<input type="hidden" name="ln117" value="<webratio:Link link="ln117"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page16"/>]]>
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
		<c:if test="${webratio:isLayoutRefreshed('page16_grid_0', pageContext)}">
			<ControlData control="page16_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page16_cell_0"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page16_cell_13"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page16_cell_0,page16_grid_0', pageContext)}">
			<ControlData control="page16_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="page16_grid_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page16_grid_1,page16_cell_0,page16_grid_0', pageContext)}">
			<ControlData control="page16_grid_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="page16_cell_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page16_cell_1,page16_grid_1,page16_cell_0,page16_grid_0', pageContext)}">
			<ControlData control="page16_cell_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Completed Processes
		</h2>
	</div>
	<div class="panel-body">
		<div class="wr-ajaxDiv" id="enu8_0"></div>
		<div class="wr-ajaxDiv" id="pwu10_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu8_0,page16_cell_1,page16_grid_1,page16_cell_0,page16_grid_0', pageContext)}">
			<ControlData control="enu8_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu8"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu8"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld19"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld19" class="control-label col-md-2">Process</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld19" styleClass="wr-submitButtons:ln117 form-control " property="sfld19" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld19List" labelProperty="sfld19LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld19"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld13_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld13_locale" class="control-label col-md-2">From Date</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld13_locale" styleClass="wr-submitButtons:ln117 form-control " property="fld13_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld13_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld13_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld13_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld13_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld13_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld13_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld14_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld14_locale" class="control-label col-md-2">To Date</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld14_locale" styleClass="wr-submitButtons:ln117 form-control " property="fld14_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld14_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld14_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld14_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld14_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld14_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld14_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln117', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln117', pageContext)}">
			<button title="Search" onclick="$('#page16FormBean')[0].target='_self'" class="btn  btn-default " id="button:ln117" name="button:ln117" type="submit" value="Search">
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
		<c:if test="${webratio:isLayoutRefreshed('pwu10_0,page16_cell_1,page16_grid_1,page16_cell_0,page16_grid_0', pageContext)}">
			<ControlData control="pwu10_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu10) and (pwu10.dataSize gt 0)}">
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
						     	Completed at
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln111', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu10.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu10.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
			<c:if test="${webratio:isTargetAccessible('ln110', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln110" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln110" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln110', sourcePage: 'page16'}))">
			</c:if>
										<c:out value="${current.name}"/>
			<c:if test="${webratio:isTargetAccessible('ln110', pageContext)}">
											</a>
			</c:if>
								</td>
								<td class=" timestamp">
			<c:if test="${webratio:isTargetAccessible('ln110', pageContext)}">
											<a href="<webratio:Link escapeXml="true" link="ln110" position="index"/>" class="" onclick="return ajaxRequest('<webratio:Link link="ln110" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln110', sourcePage: 'page16'}))">
			</c:if>
										<fmt:formatDate value="${current.completedAt}" pattern="${timestampPattern}"/>
			<c:if test="${webratio:isTargetAccessible('ln110', pageContext)}">
											</a>
			</c:if>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln111', pageContext)}">
							   		<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln111', pageContext)}">
	 		<a title="History Diagram" id="ln111" class=" " href="<webratio:Link link="ln111" position="index"/>" target="_blank"  >
			<span class="glyphicon "></span> </a>
	</c:if>
									</td>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu10.scroller.of gt 10}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu10.scroller.current ne pwu10.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu10First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu10First" onclick="return ajaxRequest('<webratio:Link link="pwu10First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu10First', sourcePage: 'page16'}))" class="  scroll" href="<webratio:Link link="pwu10First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu10First', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu10First" onclick="return ajaxRequest('<webratio:Link link="pwu10First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu10First', sourcePage: 'page16'}))" class="  scroll" href="<webratio:Link link="pwu10First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu10.scroller.current ne pwu10.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu10Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu10Previous" onclick="return ajaxRequest('<webratio:Link link="pwu10Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu10Previous', sourcePage: 'page16'}))" class="  scroll" href="<webratio:Link link="pwu10Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu10Previous', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu10Previous" onclick="return ajaxRequest('<webratio:Link link="pwu10Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu10Previous', sourcePage: 'page16'}))" class="  scroll" href="<webratio:Link link="pwu10Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu10.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu10.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu10Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu10Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu10Block', sourcePage: 'page16'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu10.scroller.current ne pwu10.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu10Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu10Next" onclick="return ajaxRequest('<webratio:Link link="pwu10Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu10Next', sourcePage: 'page16'}))" class="  scroll" href="<webratio:Link link="pwu10Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu10Next', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu10Next" onclick="return ajaxRequest('<webratio:Link link="pwu10Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu10Next', sourcePage: 'page16'}))" class="  scroll" href="<webratio:Link link="pwu10Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu10.scroller.current ne pwu10.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu10Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu10Last" onclick="return ajaxRequest('<webratio:Link link="pwu10Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu10Last', sourcePage: 'page16'}))" class="  scroll" href="<webratio:Link link="pwu10Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu10Last', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu10Last" onclick="return ajaxRequest('<webratio:Link link="pwu10Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu10Last', sourcePage: 'page16'}))" class="  scroll" href="<webratio:Link link="pwu10Last" position="index"/>">							
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
			<bean:message key="noProcessInstancesFound"/>
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
		<c:if test="${webratio:isLayoutRefreshed('page16_cell_13,page16_grid_0', pageContext)}">
			<ControlData control="page16_cell_13" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="inu5_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('inu5_0,page16_cell_13,page16_grid_0', pageContext)}">
			<ControlData control="inu5_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty inu5) and (inu5.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Completed Activities
		</h2>
	</div>
	<div class="panel-body">
		<div class="plain ">
			<div class="plain IndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped" id="inu5_0_sortable">
					<thead>
						<tr>
							<th scope="col" class="">Activity</th>
							<th scope="col" class="">Completed at</th>
							<th scope="col" class="">Username</th>
							<th scope="col" class="">Group</th>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${inu5.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr<c:if test="${inu5.currentIndex eq index}"> class="info"</c:if>>	
								<td class=" string">
									<c:out value="${current.activityName}"/>
								</td>
								<td class=" timestamp">
									<fmt:formatDate value="${current.completedAt}" pattern="${timestampPattern}"/>
								</td>
								<td class=" string">
									<c:out value="${current.userName}"/>
								</td>
								<td class=" string">
									<c:out value="${current.group}"/>
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