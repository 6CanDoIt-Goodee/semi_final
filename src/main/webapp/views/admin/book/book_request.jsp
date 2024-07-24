<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 도서 등록</title>
<style>
   body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0; 
}

main {
    display: flex;
    justify-content: space-around;
    margin-top: 20px;
}

#left {
    flex: 1;
    padding: 20px;
}

#right {
    flex: 2;
    padding: 20px;  
    width : 900px;
    align-items: center;
    margin-left : 550px;
}

.book_icon {
    text-align: center;
}

.book {
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

form {
    max-width: 400px;
    margin: 0 auto;
}

label {
    display: block;
    margin-bottom: 8px;
}

input[type="text"],
select {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

hr {
    border: none;
    border-top: 1px solid #ccc;
    margin: 10px 0;
}

input[type="button"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-right: 10px;
}

input[type="button"]:hover {
    background-color: #45a049;
}

input[type="button"]:last-child {
    margin-right: 0;
}

/* Responsive adjustments */
@media screen and (max-width: 768px) {
    main {
        flex-direction: column;
    }

    #right {
        margin-top: 20px;
    }
}
</style>

</head>
<body>
 <%@ include file="../../include/header.jsp" %>
<main> 
    <section id="right">
        <div class="book_icon">
            <div class="book">
                <form action="/book/createEnd" name="book_request_form" method="post">

                    <label for="img_up">이미지 등록:</label>
                    <input type="text" name="img_up" placeholder="이미지url을 입력하세요">
                    <hr>
                    <label for="book_title">도서명: </label>
                    <input type="text" name="book_title" id="book_title" placeholder="도서명을 입력하세요">
                    <hr>
                    <label for="book_author">저자: </label>
                    <input type="text" name="book_author" id="book_author" placeholder="저자를 입력하세요">
                    <hr>
                    <label for="book_publihser">출판사: </label>
                    <input type="text" name="book_publihser" id="book_publihser" placeholder="출판사를 입력하세요">
                    <hr>
                    <label for="book_category">카테고리: </label>
                    <select name="book_category" id="book_category">
                        <option value="0">선택안함</option>
                        <option value="1">총류</option>
                        <option value="2">철학</option>
                        <option value="3">종교</option>
                        <option value="4">사회과학</option>
                        <option value="5">순수과학</option>
                        <option value="6">기술과학</option>
                        <option value="7">예술</option>
                        <option value="8">언어</option>
                        <option value="9">문학</option>
                        <option value="10">역사</option>
                    </select>
                    <hr>
                    <input type="button" value="등록" onclick="book_plus();">
                    <input type="button" value="초기화" onclick="book_reset();">
                </form>
            </div>
        </div>
    </section>
</main>
<script>
function book_plus() {
    const form = document.book_request_form;
    if (!form.img_up.value) {
        alert("이미지주소를 입력하세요");
    } else if (!form.book_title.value) {
        alert("도서명을 입력하세요");
    } else if (!form.book_author.value) {
        alert("저자명을 입력하세요");
    } else if (!form.book_publihser.value) {
        alert("출판사를 입력하세요");
    }else if (form.book_category.value == 0) {
        alert("카테고리를 선택해주세요");
    } 
    else {
        alert("등록되었습니다!");
        form.submit();
    };
}

function book_reset() {
    const form = document.book_edit_form;
    form.img_up.value = '';
    form.book_title.value = '';
    form.book_author.value = '';
    form.book_publisher.value = '';
    form.book_category.selectedIndex = 0;  
}
</script>
</body>
</html>
