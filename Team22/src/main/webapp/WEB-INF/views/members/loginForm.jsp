<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<html>


<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/login.css" />
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   


 
</script>
    
</head>
<body>

  <!-- header -->
    <header></header>

    <!-- sign-in -->
    <div class="sign-in">
      <form
        class="sign-in__wrap"
        id="join"
        action="/members/login"
        method="post"
        name="joinform"
      >
        <h2 class="sign-in__title">�α���</h2>

        <!-- id -->
        <div class="id-form__wrap">
          <label for="id">���̵�</label>
          <br />
          <div class="id-form">
            <input
              type="text"
              id="id"
              name="member_id"
              class="id-form__input"
              placeholder="���̵�"
              value="${not empty param.member_id ? param.member_id : ''}"
              required=""
              minlength="4"
              maxlength="12"
            />
          </div>
        </div>

        <!-- password -->
        <div class="password-form__wrap form--margin">
          <label for="pwd">��й�ȣ</label>
          <br />
          <input
            type="password"
            id="pwd"
            name="member_pass"
            class="ps-form__input form--margin-top"
            placeholder="��й�ȣ"
            required=""
          />
        </div>

        <!-- btn -->
        <button type="submit" class="btn__wrap btn-default">
          <p class="sign-in__btn">�α���</p>
        </button>
        
        <c:if test="${not empty errorMessage}">
    <script>
    	alert("${errorMessage}");
    </script>
		</c:if>
        

        <!-- sign-in-info__list -->
        <ul class="sign-in-info__list">
          <div>
            <li>
              <a href="/members/insert">ȸ������</a>
            </li>
          </div>
          <div class="forgot-id-ps__list">
            <li>
              <a id="find_id_btn" href="/members/findIdView">���̵� ã��</a>
            </li>
            <li>
              <a href="/members/findPassword">��й�ȣ ã��</a>
            </li>
          </div>
        </ul>

      </form>
    

</body>
</html>