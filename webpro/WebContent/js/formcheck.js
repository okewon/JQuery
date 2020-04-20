/**
 * 
 */
var datacheck = function() {
	f = document.ff;
	// 입력한 값가져오기 - id,name,pass,email,tel
	idvalue = f.id.value;
	idlen = idvalue.trim().length;
	// 공백
	if (idlen < 1) {
		alert("아이디 입력하세요");
		return false;
	}
	// 아이디 길이 8~12
	if (idlen < 8 || idlen > 12) {
		alert("아이디는 8~12");
		return false;
	}
	// 정규식 : 영문자로 시작 숫자와 조합
	idreg = /^[a-z]+[0-9]+[a-zA-Z0-9]*$/;
	if (!(idreg.test(idvalue))) {
		alert("id형식 오류");
		return false;
	}

	namevalue = f.name.value;
	namelen = namevalue.trim().length;

	if (namelen < 1) {
		alert("이름 입력하세요");
		return false;
	}
	// 이름 길이

	// 이름 형식 - 한글 또는 영문
	namereg = /^[가-힣]+$|^[a-zA-Z]+$/;
	if (namereg.test(namevalue)) {
		regkor = /^[가-힣]+$/;
		regeng = /^[a-zA-Z]+$/;

		if (regkor.test(namevalue)) {
			// 길이 2~5
			if (namelen < 2 || namelen > 5) {
				alert("한글이름 2~5");
				return false;
			}
		} else if (regeng.test(namevalue)) {
			// 길이 5~10
			if (namelen < 5 || namelen > 10) {
				alert("영문이름 5~10");
				return false;
			}
		}
	} else {
		alert("이름 형식 오류");
		return false;
	}

	passvalue = f.pass.value;
	passlen = passvalue.trim().length;

	if (passlen < 1) {
		alert("비밀번호 입력하세요");
		return false;
	}
	// 비밀번호길이 8~15
	if (passlen < 8 || idlen > 15) {
		alert("비밀번호는 8~15");
		return false;
	}
	
	//정규식 - 영문대소문자 특수문자 숫자가 반드시 한글자 이상
	//전방탐색이용
	  passreg = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_+-]).{8,15}$/;


	emailvalue = f.email.value;
	emaillen = emailvalue.trim().length;

	if (emaillen < 1) {
		alert("이메일 입력하세요");
		return false;
	}
	// 이메일 형식~~~~~~@~~~~~~~.com .co.kr
	emailreg = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9]+(\.[a-zA-Z]+){1,2}$/;
	if(!(emailreg.test(emailvalue))){
		alert("이메일 형식오류");
		return false;
	}

	telvalue = f.tel.value;
	tellen = telvalue.trim().length;

	if (tellen < 1) {
		alert("전화번호 입력하세요");
		return false;
	}
	// 전화번호 형식
	telreg = /^\d{3}-\d{4}-\d{4}$/;
	if(!(telreg.test(telvalue))){
		alert("전화번호 형식 오류");
		return false;
	}

	return true;
}
