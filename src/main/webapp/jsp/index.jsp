<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
    <script>
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
    </script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean" rel="stylesheet">

    <title>집을자바</title>
</head>

<style>
    .nav-link{font-family: 'Do Hyeon', sans-serif;}
    .navbar-brand{font-family: 'Do Hyeon', sans-serif;}
    .container
    {
    <!--  width:100%;
    height:385px; -->
        background-color:  white;
        margin-top: 15px;
    }
</style>
<body>

<!--  <div class="container">
  <div style=" margin-left:50px;"> -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">HOME</a>
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
<!-- <section style="position:absoulute; margin-top:1000px; color:#FFBF00">
Section

</section> -->

<div class="row" style="">
    <div style="position:relative; width:100%;" class="col">
        <img style="position:absolute ; left: 490px; top: 0px; width:25%; height:385px;" src="C:\Users\Elodie\Desktop\디비\여자.png" alt="">
    </div>
</div>
<div class="row">
    <div class="col-8" style="position:relative;width:100%;">
        <h4 style="position:absolute; margin-top:80px; margin-left:40px; font-family: 'Do Hyeon', sans-serif; font-size:70px; color:#FFBF00"><em>#진주시</em></h4>
        <h4 style="position:absolute; margin-top:80px; margin-left:290px; font-family: 'Do Hyeon', sans-serif; font-size:70px; color:#FFBF00"><em>#원룸</em> <br><em> 구할 때</br></em></h4>
        <!--<h4 style="position:absolute; margin-top:200px; margin-left:180px;">TEXT HERE</h4>-->
    </div>
    <div class="col-4" style="position:relative;width:100%;">
        <h4 style="position:absolute; margin-top:60px; margin-left:-30px;font-family: 'Do Hyeon', sans-serif; font-size:100px; color:#FFBF00">·</h4>
        <h4 style="position:absolute; margin-top:130px; margin-left:-50px;font-family: 'Do Hyeon', sans-serif; font-size:100px; color:#FFBF00">집</h4>
        <h4 style="position:absolute; margin-top:45px; margin-left:75px;font-family: 'Do Hyeon', sans-serif; font-size:100px; color:#FFBF00">·</h4>
        <h4 style="position:absolute; margin-top:110px; margin-left:50px;font-family: 'Do Hyeon', sans-serif; font-size:100px; color:#FFBF00">을</h4>
        <h4 style="position:absolute; margin-top:60px; margin-left:170px;font-family: 'Do Hyeon', sans-serif; font-size:100px; color:#FFBF00">·</h4>
        <h4 style="position:absolute; margin-top:130px; margin-left:150px;font-family: 'Do Hyeon', sans-serif; font-size:100px; color:#FFBF00">자</h4>
        <h4 style="position:absolute; margin-top:45px; margin-left:270px;font-family: 'Do Hyeon', sans-serif; font-size:100px; color:#FFBF00">·</h4>
        <h4 style="position:absolute; margin-top:110px; margin-left:250px;font-family: 'Do Hyeon', sans-serif; font-size:100px; color:#FFBF00">바</h4>

        <!-- <h4 style="position:absolute; margin-top:170px; margin-left:30px;">TEXT HERE</h4>-->
    </div>
</div>

<div class="row" style="margin-top:350px;">
    <div class="col-3 rounded-left" style="background-color:rgba(0,0,0,0.2)"></div>
    <div class="col-6" style="background-color:rgba(0, 0, 0,0.2)">

        <div class="card-body">
            <form class="" action="" method="post">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" aria-label="Sizing example input" placeholder="검색어를 입력하세요.." aria-describedby="inputGroup-sizing-default">
                    <div class="input-group-prepend">
                        <button type="button" class="btn btn-secondary rounded">Search</button>
                    </div>
                </div>
            </form>
            <p><a class="" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample  "style="text-decoration:none">검색옵션</a></p>
            <div class="collapse" id="collapseExample">

                <div class="d-flex bd-highlight">
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1 ">번호</label>
                        </div>
                    </div>
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                            <label class="custom-control-label" for="customCheck2">에어컨</label>
                        </div>
                    </div>
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                            <label class="custom-control-label" for="customCheck3">냉장고</label>
                        </div>
                    </div>
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck4">
                            <label class="custom-control-label" for="customCheck4">세탁기</label>
                        </div>
                    </div>
                </div>

                <div class="d-flex bd-highlight">
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck5">
                            <label class="custom-control-label" for="customCheck5">가스레인지</label>
                        </div>
                    </div>
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck6">
                            <label class="custom-control-label" for="customCheck6">전자레인지</label>
                        </div>
                    </div>
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck7">
                            <label class="custom-control-label" for="customCheck7">책상</label>
                        </div>
                    </div>
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck8">
                            <label class="custom-control-label" for="customCheck8">침대</label>
                        </div>
                    </div>
                </div>

                <div class="d-flex bd-highlight">
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck9">
                            <label class="custom-control-label" for="customCheck9">옷장</label>
                        </div>
                    </div>
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck10">
                            <label class="custom-control-label" for="customCheck10">신발장</label>
                        </div>
                    </div>
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck11">
                            <label class="custom-control-label" for="customCheck11">싱크대</label>
                        </div>
                    </div>
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck12">
                            <label class="custom-control-label" for="customCheck12">인터넷</label>
                        </div>
                    </div>
                </div>

                <div class="d-flex bd-highlight">
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck13">
                            <label class="custom-control-label" for="customCheck13">TV</label>
                        </div>
                    </div>
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck14">
                            <label class="custom-control-label" for="customCheck14">엘리베이터</label>
                        </div>
                    </div>
                    <div class="p-2 flex-fill bd-highlight">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck15">
                            <label class="custom-control-label" for="customCheck15">주차</label>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="col-3 rounded-right" style="background-color:rgba(0, 0, 0,0.2)"></div>
</div>

<div class="row" style="margin-top:15px;">
    <div class="col-1"></div>
    <div class="col-10">
        <table class="table table-striped">
            <thead>
            <tr style="text-align: center;">
                <th scope="col">#</th>
                <th scope="col">원룸명</th>
                <th scope="col">주소</th>
                <th scope="col">타입</th>
                <th scope="col">보증금/전세</th>
                <th scope="col">월세</th>
                <th scope="col">구조</th>
            </tr>
            </thead>
            <tbody style="text-align: center;">
            <c:forEach var="house" items="${houseList}" varStatus="status">
                <tr>
                    <th scope="row" width="5%">${house.houseId}</th>
                    <td width="10%">${house.name}</td>
                    <td width="10%">
                        <a href="#" style="text-decoration:none" onclick="popup(this.href,400,500,'팝업1','scroll'); return false;">
                            ${house.address}
                        </a>
                    </td>
                    <td width="10%">${house.type}</>
                    <td width="10%">${house.deposit}</>
                    <td width="10%">${house.monthlyRent}</>
                    <td width="10%">${house.structure}</>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <!-- pagination{s} -->
    <div id="paginationBox" style="margin: 1% 0 0 43%;">
        <ul class="pagination">
            <c:if test="${pagination.prev}">
                <li class="page-item">
                    <a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a>
                </li>
            </c:if>
            <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
                <li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
                    <a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">${idx}</a>
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

</div>
<!-- Optional JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script>
    //이전 버튼 이벤트
    function fn_prev(page, range, rangeSize) {
        var page = ((range - 2) * rangeSize) + 1;
        var range = range - 1;
        var url = "${pageContext.request.contextPath}/";

        url = url + "?page=" + page;
        url = url + "&range=" + range;
        location.href = url;
    }

    //페이지 번호 클릭
    function fn_pagination(page, range, rangeSize, searchType, keyword) {
        var url = "${pageContext.request.contextPath}/";
        url = url + "?page=" + page;
        url = url + "&range=" + range;

        location.href = url;
    }

    //다음 버튼 이벤트
    function fn_next(page, range, rangeSize) {
        var page = parseInt((range * rangeSize)) + 1;
        var range = parseInt(range) + 1;
        var url = "${pageContext.request.contextPath}/";
        console.log("page : ", page);
        console.log("range : ", range);

        url = url + "?page=" + page;
        url = url + "&range=" + range;
        location.href = url;
    }
</script>
</body>
</html>

