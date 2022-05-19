//joinform_check 함수로 유효성 검사
function joinform_check() {
  //변수에 담아주기
  let uid = document.getElementById("mb_email");
  let pwd = document.getElementById("pw1");
  let repwd = document.getElementById("pw2");
  let uname = document.getElementById("mb_name");
  let nick = document.getElementById("mb_nick");
  let female = document.getElementById("female");
  let male = document.getElementById("male");
  let mobile = document.getElementById("mb_phone");
  let addr = document.getElementById("mb_addr");
  let addr_dt = document.getElementById("mb_addr_dt");
  let big = document.getElementById("big");
  let iot = document.getElementById("iot");
  let ai = document.getElementById("ai");
  let A = document.getElementById("A");
  let B = document.getElementById("B");
  let C = document.getElementById("C");
  let D = document.getElementById("D");

  if (uid.value == "") { //해당 입력값이 없을 경우 같은말: if(!uid.value)
    alert("이메일을 입력하세요.");
    uid.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
    return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
  };

  if (pwd.value == "") {
    alert("비밀번호를 입력하세요.");
    pwd.focus();
    return false;
  };

  //비밀번호 영문자+숫자+특수조합(8~25자리 입력) 정규식
  let pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;

  if (!pwdCheck.test(pwd.value)) {
    alert("비밀번호는 영문,숫자,특수문자 조합으로 8~20자리를 사용해야 합니다.");
    pwd.focus();
    return false;
  };

  if (repwd.value !== pwd.value) {
    alert("비밀번호가 일치하지 않습니다.");
    repwd.focus();
    return false;
  };

  if (uname.value == "") {
    alert("이름을 입력하세요.");
    uname.focus();
    return false;
  };
  
    if (nick.value == "") {
    alert("닉네임을 입력하세요.");
    nick.focus();
    return false;
  };

  if (!female.checked && !male.checked) { //둘다 미체크시
    alert("성별을 선택해 주세요.");
    female.focus();
    return false;
  }

  let reg = /^[0-9]+/g; //숫자만 입력하는 정규식

  if (!reg.test(mobile.value)) {
    alert("전화번호는 숫자만 입력할 수 있습니다.");
    mobile.focus();
    return false;
  }

  if (addr.value == "") {
    alert("주소를 입력하세요.");
    addr.focus();
    return false;
  }
  
  if (addr_dt.value == "") {
    alert("상세주소를 입력하세요.");
    addr_dt.focus();
    return false;
  }
  
  if (!big.selected && !iot.selected && !ai.selected) { //셋다 미선택시
    alert("수강과정을 선택하세요.");
    big.focus(); //big, iot, ai -> 상관없다
    return false;
  }
  
  if (!A.selected && !B.selected && !C.selected && !D.selected) { //넷다 미선택시
    alert("소속반을 선택하세요.");
    A.focus(); //A, B, C, D-> 상관없다
    return false;
  }
  
}