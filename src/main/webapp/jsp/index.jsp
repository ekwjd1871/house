<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>집을자바</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/css/index.css">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/">HOME</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#">ABOUT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">CONTACT 070-234-2284</a>
                </li>
            </ul>
        </div>
    </nav>

    <section style="background-color:#ff9f31;">
<%--        <div style="background-color:#ffcc00; height:350px;">--%>
        <div style="height:350px;">
            <div class="row">
                <div style="position:relative; width:100%;" class="col">
                    <img style="position:absolute ; left: 35%; top: 0px; width:25%; height:385px;" src="/여자.png" alt="">
                </div>
            </div>

            <div class="row">
                <div class="col-8" style="position:relative;width:100%;">
                    <h4 style="position:absolute; margin-top:80px; margin-left:40px; font-family: 'Do Hyeon', sans-serif; font-size:70px; color:white"><em>#진주시</em></h4>
                    <h4 style="position:absolute; margin-top:80px; margin-left:290px; font-family: 'Do Hyeon', sans-serif; font-size:70px; color:white"><em>#원룸</em> <br><em> 구할 때</br></em></h4>
                </div>
                <div class="col-4" style="position:relative; width:100%;">
                    <h4 style="position:absolute; margin-top:60px; margin-left:-10px; font-family: 'Do Hyeon', sans-serif; font-size:100px; color:white">·</h4>
                    <h4 style="position:absolute; margin-top:130px; margin-left:-50px; font-family: 'Do Hyeon', sans-serif; font-size:100px; color:white"><em>집</em></h4>
                    <h4 style="position:absolute; margin-top:45px; margin-left:95px; font-family: 'Do Hyeon', sans-serif; font-size:100px; color:white">·</h4>
                    <h4 style="position:absolute; margin-top:110px; margin-left:50px; font-family: 'Do Hyeon', sans-serif; font-size:100px; color:white"><em>을</em></h4>
                    <h4 style="position:absolute; margin-top:60px; margin-left:190px; font-family: 'Do Hyeon', sans-serif; font-size:100px; color:white">·</h4>
                    <h4 style="position:absolute; margin-top:130px; margin-left:150px; font-family: 'Do Hyeon', sans-serif; font-size:100px; color:white"><em>자</em></h4>
                    <h4 style="position:absolute; margin-top:45px; margin-left:290px; font-family: 'Do Hyeon', sans-serif; font-size:100px; color:white">·</h4>
                    <h4 style="position:absolute; margin-top:110px; margin-left:250px; font-family: 'Do Hyeon', sans-serif; font-size:100px; color:white"><em>바</em></h4>
                    <!-- <h4 style="position:absolute; margin-top:170px; margin-left:30px;">TEXT HERE</h4>-->
                </div>
            </div>
        </div>
        <div class="row" style="max-width: 90%; margin: 0 auto;" >
<%--            <div class="col-3 rounded-left" style="background-color:#ffcc00">--%>
            <div class="col-3 rounded-left">
            </div>

<%--            <div class="col-6" style="background-color:#ffcc00">--%>
            <div class="col-6">
                <div class="card-body">
                    <form class="form-group" action="/" method="GET" style="margin-left: 10%;">
                        <div class="input-group mb-3" style="width: 80%;">
                            <input id="name" type="text" name="name" class="form-control" aria-label="Sizing example input" placeholder="건물명 입력하세요!" aria-describedby="inputGroup-sizing-default" style="height: 45px;">
                            <div class="input-group-prepend" style="margin-left: 2%">
                                <button type="submit" class="btn btn-light"><a>Search</a></button>
                            </div>
                        </div>

                            <button class="btn btn-light">
                                <a id="option" class="" href="#collapseExample" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample" style="text-decoration:none">
                                    검색옵션
                                </a>
                            </button>

                        <div class="collapse" id="collapseExample">
                            <div class="d-flex bd-highlight" style="margin:3% 0 0 7%">
                                <div class="p-0 bd-highlight" style="float:left;">
                                    <div style="width: 100%;">
                                        <select id="type" name="type" class="form-control" style="width:200px; float:left; margin-left:24px;margin-right:38px;">
                                            <option id="type_basic" value="">타입</option>
                                            <option id="월세" value="월세">월세</option>
                                            <option id="전세" value="전세">전세</option>
                                            <option id="반전세" value="반전세">반전세</option>
                                        </select>

                                        <select id="structure" name="structure" class="form-control" style="width:200px;">
                                            <option id="structure_basic" value="">구조</option>
                                            <option id="원룸" value="원룸">원룸형</option>
                                            <option id="투룸" value="투룸">투룸형</option>
                                            <option id="쓰리룸" value="쓰리룸">쓰리룸형</option>
                                            <option id="분리형원룸" value="분리형원룸">분리형</option>
                                            <option id="발코니원룸" value="발코니원룸">발코니원룸형</option>
                                        </select>
                                    </div>
                                    <br>

                                    <div class="p-0 bd-highlight">
                                        <div class="custom-control">
                                            <label for="Name" style="margin-right:10px; font-family: 'Noto Sans KR', sans-serif;">전세/보증금</label>
                                            <input type="text" id="minDeposit" name="minDeposit" class="form-control" aria-label="Sizing example input" placeholder="원 이상" aria-describedby="inputGroup-sizing-default" id="customCheck2" style="width:157px;text-align:right;display:inline-block;"><!--<span>이상</span>-->
                                            <span>&nbsp;~&nbsp;</span>
                                            <input type="text" id="maxDeposit" name="maxDeposit" class="form-control" aria-label="Sizing example input" placeholder="원 이하" aria-describedby="inputGroup-sizing-default" id="customCheck3" style="width:157px;text-align:right;display:inline-block;"><!--<span>이하</span>-->
                                        </div>
                                    </div>
                                    <br>

                                    <div class="p-0 bd-highlight">
                                        <div class="custom-control">
                                            <label for="Name" style="margin-right:60px; font-family: 'Noto Sans KR', sans-serif;">월세</label>
                                            <input type="text" id="minMonthlyRent" name="minMonthlyRent" class="form-control" aria-label="Sizing example input" placeholder="원 이상" aria-describedby="inputGroup-sizing-default" id="customCheck4" style="width:157px;text-align:right;display:inline-block;" onKeyup="numberWithCommas(this);" onChange="numberWithCommas(this);"><!--<span>이상</span>-->
                                            <span>&nbsp;~&nbsp;</span>
                                            <input type="text" id="maxMonthlyRent" name="maxMonthlyRent" class="form-control" aria-label="Sizing example input" placeholder="원 이하" aria-describedby="inputGroup-sizing-default" id="customCheck4" style="width:157px;text-align:right;display:inline-block" onKeyup="numberWithCommas(this);" onChange="numberWithCommas(this);"><!--<span>이상</span>-->
                                        </div>
                                    </div>
                                </div>
                                <div style="margin: 16.9% 0% 0 2%;">
                                    <button type="button" onclick="formReset()" class="btn btn-light"><a href="#">초기화</a></button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
<%--            <div class="col-3 rounded-right" style="background-color:#ffcc00">--%>
            <div class="col-3 rounded-right">

            </div>
        </div>
    </section>

    <div class="row" style="margin-top:15px;">
        <div class="col-1">

        </div>
        <div class="col-10">
            <table class="table table-striped">
                <thead>
                    <tr style="text-align: center;">
                        <th scope="col">#</th>
                        <th scope="col">건물명</th>
                        <th scope="col">주소</th>
                        <th scope="col">타입</th>
                        <th scope="col">보증금/전세</th>
                        <th scope="col">월세</th>
                        <th scope="col">구조</th>
                    </tr>
                </thead>

                <tbody style="text-align: center;">
                <c:choose>
                    <c:when test="${!empty houseList}">
                        <c:forEach var="house" items="${houseList}" varStatus="status">
                            <tr class="button" onclick="viewHouse(${house.houseId})" onmouseover="this.style.background='#A9E2F3'; this.style.cursor='pointer'" onmouseout="this.style.background='#00ff0000'">
                                <th scope="row" width="5%">${status.count}</th>
                                <td width="10%">${house.name}</td>
                                <td width="10%">${house.address}</td>
                                <td width="10%">${house.type}</>
                                <td width="10%">${house.deposit}</>
                                <td width="10%">${house.monthlyRent}</>
                                <td width="10%">${house.structure}</>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                            <tr>
                                <td colspan="7">
                                    <h2>
                                        조건에 맞는 데이터가 없습니다.
                                    </h2>
                                </td>
                            </tr>
                    </c:otherwise>
                </c:choose>


                </tbody>
            </table>
        </div>

        <!-- pagination{s} -->
        <div id="paginationBox" style="margin: 1% 0 0 43%;">
            <ul class="pagination">

            <c:if test="${pagination.prev}">
                <li class="page-item">
                    <a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">
                        Previous
                    </a>
                </li>
            </c:if>

            <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
                <li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
                    <a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
                        ${idx}
                    </a>
                </li>
            </c:forEach>

            <c:if test="${pagination.next}">
                <li class="page-item">
                    <a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')">
                        Next
                    </a>
                </li>
            </c:if>
            </ul>
        </div>
        <!-- pagination{e} -->
    </div>

    <!-- Popup LayOut  -->
    <div id="popup1" class="overlay"></div>

</body>
</html>


<script>
    <c:if test="${isFilter}">
        $('.collapse').attr("class", "collapse show");
        $('#name').text("${filter.name}");
        $('#name').val("${filter.name}");

        <c:if test="${!empty filter.structure}">
            $('#${filter.structure}').attr("selected", "selected");
        </c:if>

        <c:if test="${!empty filter.minDeposit}">
            $('#minDeposit').val(${filter.minDeposit});
        </c:if>

        <c:if test="${!empty filter.maxDeposit && filter.maxDeposit ne 10000000}">
            $('#maxDeposit').val(${filter.maxDeposit});
        </c:if>

        <c:if test="${!empty filter.minMonthlyRent}">
            $('#minMonthlyRent').val(${filter.minMonthlyRent});
        </c:if>

        <c:if test="${!empty filter.maxMonthlyRent && filter.maxMonthlyRent ne 10000000}">
            $('#maxMonthlyRent').val(${filter.maxMonthlyRent});
        </c:if>

        <c:if test="${!empty filter.type}">
            $('#${filter.type}').attr("selected", "selected");
        </c:if>
    </c:if>


    //이전 버튼 이벤트
    function fn_prev(page, range, rangeSize) {
        var page = ((range - 2) * rangeSize) + 1;
        var range = range - 1;
        var url = "${pageContext.request.contextPath}/";

        url += "?page=" + page;
        url += "&range=" + range;
        url += "&name=" + "${pageContext.request.getParameter("name")}";
        url += "&type=" + "${pageContext.request.getParameter("type")}";
        url += "&structure=" + "${pageContext.request.getParameter("structure")}";
        url += "&minDeposit=" + "${pageContext.request.getParameter("minDeposit")}";
        url += "&maxDeposit=" + "${pageContext.request.getParameter("maxDeposit")}";
        url += "&minMonthlyRent=" + "${pageContext.request.getParameter("minMonthlyRent")}";
        url += "&maxMonthlyRent=" + "${pageContext.request.getParameter("maxMonthlyRent")}";

        location.href = url;
    }

    //페이지 번호 클릭
    function fn_pagination(page, range, rangeSize, searchType, keyword) {
        var url = "${pageContext.request.contextPath}";

        url += "?page=" + page;
        url += "&range=" + range;
        url += "&name=" + "${pageContext.request.getParameter("name")}";
        url += "&type=" + "${pageContext.request.getParameter("type")}";
        url += "&structure=" + "${pageContext.request.getParameter("structure")}";
        url += "&minDeposit=" + "${pageContext.request.getParameter("minDeposit")}";
        url += "&maxDeposit=" + "${pageContext.request.getParameter("maxDeposit")}";
        url += "&minMonthlyRent=" + "${pageContext.request.getParameter("minMonthlyRent")}";
        url += "&maxMonthlyRent=" + "${pageContext.request.getParameter("maxMonthlyRent")}";

        location.href = url;
    }

    //다음 버튼 이벤트
    function fn_next(page, range, rangeSize) {
        var page = parseInt((range * rangeSize)) + 1;
        var range = parseInt(range) + 1;
        var url = "${pageContext.request.contextPath}/";
        console.log("page : ", page);
        console.log("range : ", range);

        url += "?page=" + page;
        url += "&range=" + range;
        url += "&name=" + "${pageContext.request.getParameter("name")}";
        url += "&type=" + "${pageContext.request.getParameter("type")}";
        url += "&structure=" + "${pageContext.request.getParameter("structure")}";
        url += "&minDeposit=" + "${pageContext.request.getParameter("minDeposit")}";
        url += "&maxDeposit=" + "${pageContext.request.getParameter("maxDeposit")}";
        url += "&minMonthlyRent=" + "${pageContext.request.getParameter("minMonthlyRent")}";
        url += "&maxMonthlyRent=" + "${pageContext.request.getParameter("maxMonthlyRent")}";

        location.href = url;
    }

    function popup(url, w, h, name, option) {
        var pozX, pozY;
        var sw = screen.availWidth;
        var sh = screen.availHeight;
        var scroll = 0;
        if (option == 'scroll') {
            scroll = 1;
        }
        pozX = (sw - w) / 2;
        pozY = (sh - h) / 2;
        window.open(url, name, "location=0,status=0,scrollbars=" + scroll + ",resizable=1,width=" + w + ",height=" + h +
            ",left=" + pozX + ",top=" + pozY);

    }

    //여기는 전세월세 바뀌면 실행되는 이벤트
    function changeType(){
        console.log($("#TYPE option:selected").val());
    }

    function numberWithCommas(x) {

        //var str = x.slice(0, -1);
        var money = x.value;
        console.log("?", money.toLocaleString());

        var deleteComma = x.value.replace(/\,/g, "");

        x.value= inputNumberWithComma(inputNumberRemoveComma(x.value));

        // var i = x.value.replace(/[^0-9]/g,'');   // 입력값이 숫자가 아니면 공백
        //j = i.replace(/,/g,'');        // ,값 공백처리
        //x.value = j.replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원";
    }

    function inputNumberWithComma(str){
        str = String(str);
        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
    }

    function inputNumberRemoveComma(str){
        str = String(str);
        return str.replace(/[^\d]+/g, "");
    }

    function inputNumberWithComma(str){
        str = String(str);
        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
    }

    function inputNumberRemoveComma(str){
        str = String(str);
        return str.replace(/[^\d]+/g, "");
    }

    function viewHouse(id) {
        console.log("id : ", id);
        $.ajax({
            type: 'GET',
            url: '/house/' + id,
            dataType : 'json',
            success: function (item) {
                console.log("house : ", item.house);
                console.log("option : ", item.option);
                var str = '';
                str+="<div class='popup'>";
                str+="<div class='popup-header'>";
                str+="<h2 class='txt'>" + item.house.name + " </h2>";
                str+="<p class='txt'>" + item.house.address + "</p>";
                str+="<div id='map_canvas' class='embed-container'></div>";
                str+="</div>";
                str+="<div class='popup-body\'>";
                str+="<a class='close' href='#'>&times;</a>";
                str+="<div class='content'>";
                str+="<div class='content-left'>";
                str+="<p>" + item.house.type + "<p>";
                str+="<p>옵션 : </p>";
                str+="</div>";
                str+="<div class='content-right'>";
                str+="<p>" + item.house.deposit + "/" + item.house.monthlyRent + " " + item.house.structure + "</p>";
                str+="<p>" + item.option + "</p>";
                str+="</div>";
                str+="</div>";
                str+="</div>";
                str+="</div>";

                $("#popup1").html(str);

                var myLatlng = new google.maps.LatLng(item.house.latlngX, item.house.latlngY); // 좌표값

                var mapOptions = {
                    zoom: 18, // 지도 확대레벨 조정
                    center: myLatlng,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);

                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: map.name // 마커에 마우스를 올렸을때 간략하게 표기될 설명글
                });

                location.href='#popup1';
            }
        });
    }

    function formReset() {
        $('.form-group').each(function(){
            this.reset();
        });
        $('#type_basic').attr("selected", "selected");
        $('#structure_basic').attr("selected", "selected");
    }
</script>

<!-- Optional JavaScript -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBRxlb4rhy3YKZIs80Ikjqs0OiiN3lQFc4"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--%>
