<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form method="get" action="<%=request.getContextPath()%>/ServletProjetos" id="projeto" name="contactForm" class="contactForm">
					<input type="hidden" name="acao" value="alternarRankingProjetos" type="hidden">
					<input name="id_projeto" id="id_projeto" type="hidden">
					<div class="modal-body">
						<select name="ranking_projeto" class="form-control" id="sel1">
							<c:choose>
								<c:when test="${option1}">
									<option id="option1" value="1">Ranking 1 (em utilização)</option>
								</c:when>
								<c:otherwise>
									<option id="option1" value="1">Ranking 1</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${option2}">
									<option id="option2" value="2">Ranking 2 (em utilização)</option>
								</c:when>
								<c:otherwise>
									<option id="option2" value="2">Ranking 2</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${option3}">
									<option id="option3" value="3">Ranking 3 (em utilização)</option>
								</c:when>
								<c:otherwise>
									<option id="option3" value="3">Ranking 3</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${option4}">
									<option id="option4" value="4">Ranking 4 (em utilização)</option>
								</c:when>
								<c:otherwise>
									<option id="option4" value="4">Ranking 4</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${option5}">
									<option id="option5" value="5">Ranking 5 (em utilização)</option>
								</c:when>
								<c:otherwise>
									<option id="option5" value="5">Ranking 5</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${option6}">
									<option id="option6" value="6">Ranking 6 (em utilização)</option>
								</c:when>
								<c:otherwise>
									<option id="option6" value="6">Ranking 6</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${option7}">
									<option id="option7" value="7">Ranking 7 (em utilização)</option>
								</c:when>
								<c:otherwise>
									<option id="option7" value="7">Ranking 7</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${option8}">
									<option id="option8" value="8">Ranking 8 (em utilização)</option>
								</c:when>
								<c:otherwise>
									<option id="option8" value="8">Ranking 8</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${option9}">
									<option id="option9" value="9">Ranking 9 (em utilização)</option>
								</c:when>
								<c:otherwise>
									<option id="option9" value="9">Ranking 9</option>
								</c:otherwise>
							</c:choose>
						</select>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save changes</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	