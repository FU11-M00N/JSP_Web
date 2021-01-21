<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
<script type="text/javascript">
	function logout(){
	     var frm=document.login;
	     frm.method="post";
	     frm.action="./logoutCtl.jsp";
	     frm.submit();  
	}
</script>
<script language='javascript'>
     var cnt = new Array();
     cnt[0] = new Array('전지역');
     cnt[1] = new Array('선택','종로구','광진구','강북구', '은평구');
     cnt[2] = new Array('선택','부산중구','부산동구','부산진구','기장군');
     cnt[3] = new Array('선택','대구중구','대구북구','수성구','달서구');
     cnt[4] = new Array('선택','인천충구','인천동구','연수구','인천서구');
     cnt[5] = new Array('선택','광주동구','광주서구','광주남구','광주북구');
     cnt[6] = new Array('선택','대전동구','대전중구','대전서구','유성구');
     cnt[7] = new Array('선택','울산중구','울산남구','울산동구','울주군');
     cnt[8] = new Array('선택','수원시','성남시','안산시','광주시');
     cnt[9] = new Array('선택','춘천시','강릉시','속초시','정선군');
     cnt[10] = new Array('선택','청주시','충주시','제천시','단양군');
     cnt[11] = new Array('선택','천안시','보령시','아산시','논산시');
     cnt[12] = new Array('선택','전주시','군산시','익산시','정읍시','남원시','김제시','완주군','진안군','무주군','장수군','임실군','순창군','고창군','부안군');
     cnt[13] = new Array('선택','여수시','순천시','담양군','해남군');
     cnt[14] = new Array('선택','포항시','경주시','구미시','청도군');
     cnt[15] = new Array('선택','진주시','거제시','양산시','남해군');
     cnt[16] = new Array('선택','제주시','서귀포시');
     
     function change(add) {
     sel=document.form.county
       for (i=sel.length-1; i>=0; i--){
         sel.options[i] = null
         }
       for (i=0; i < cnt[add].length;i++){                     
         sel.options[i] = new Option(cnt[add][i], cnt[add][i]);
       }
     }
</script>
<script>
	var Entry = new Array();
	Entry[0] = "http://localhost:8080/TeamProject/seoul/naksan.jsp";
	Entry[1] = "http://localhost:8080/TeamProject/seoul/bukchonhanok.jsp";
	Entry[2] = "http://localhost:8080/TeamProject/seoul/chungdamdaegyo.jsp";
	Entry[3] = "http://localhost:8080/TeamProject/seoul/thuksumriver.jsp";
	Entry[4] = "http://localhost:8080/TeamProject/seoul/dreamforest.jsp";
	Entry[5] = "http://localhost:8080/TeamProject/seoul/minjumyo.jsp";
	Entry[6] = "http://localhost:8080/TeamProject/seoul/jingwansa.jsp";
	Entry[7] = "http://localhost:8080/TeamProject/seoul/bulgwangchun.jsp";
	Entry[8] = "http://localhost:8080/TeamProject/busan/bookload.jsp";
	Entry[9] = "http://localhost:8080/TeamProject/busan/intmarket.jsp";
	Entry[10] = "http://localhost:8080/TeamProject/busan/ebaguload.jsp";
	Entry[11] = "http://localhost:8080/TeamProject/busan/flowermarket.jsp";
	Entry[12] = "http://localhost:8080/TeamProject/busan/seomeon1st.jsp";
	Entry[13] = "http://localhost:8080/TeamProject/busan/seomeonmarket.jsp";
	Entry[14] = "http://localhost:8080/TeamProject/busan/newworldmarket.jsp";
	Entry[15] = "http://localhost:8080/TeamProject/busan/juksungsungdang.jsp";
	Entry[16] = "http://localhost:8080/TeamProject/daegu/dalseongpark.jsp";
	Entry[17] = "http://localhost:8080/TeamProject/daegu/gwandukjung.jsp";
	Entry[18] = "http://localhost:8080/TeamProject/daegu/gyeongbukart.jsp";
	Entry[19] = "http://localhost:8080/TeamProject/daegu/hajungdo.jsp";
	Entry[20] = "http://localhost:8080/TeamProject/daegu/susungmot.jsp";
	Entry[21] = "http://localhost:8080/TeamProject/daegu/nobyeunsajic.jsp";
	Entry[22] = "http://localhost:8080/TeamProject/daegu/eworld.jsp";
	Entry[23] = "http://localhost:8080/TeamProject/daegu/hosanpark.jsp";
	Entry[24] = "http://localhost:8080/TeamProject/incheon/chinatown.jsp";
	Entry[25] = "http://localhost:8080/TeamProject/incheon/wolmido.jsp";
	Entry[26] = "http://localhost:8080/TeamProject/incheon/alwaysbluepark.jsp";
	Entry[27] = "http://localhost:8080/TeamProject/incheon/whadojinpark.jsp";
	Entry[28] = "http://localhost:8080/TeamProject/incheon/centralpark.jsp";
	Entry[29] = "http://localhost:8080/TeamProject/incheon/songdohanok.jsp";
	Entry[30] = "http://localhost:8080/TeamProject/incheon/intbiomuseum.jsp";
	Entry[31] = "http://localhost:8080/TeamProject/incheon/sinseokpark.jsp";
	Entry[32] = "http://localhost:8080/TeamProject/gwangju/munbinjungsa.jsp";
	Entry[33] = "http://localhost:8080/TeamProject/gwangju/jeungsimsa.jsp";
	Entry[34] = "http://localhost:8080/TeamProject/gwangju/independent.jsp";
	Entry[35] = "http://localhost:8080/TeamProject/gwangju/citymuseum.jsp";
	Entry[36] = "http://localhost:8080/TeamProject/gwangju/jisanjae.jsp";
	Entry[37] = "http://localhost:8080/TeamProject/gwangju/penguintown.jsp";
	Entry[38] = "http://localhost:8080/TeamProject/gwangju/wangbudlegun.jsp";
	Entry[39] = "http://localhost:8080/TeamProject/gwangju/familyland.jsp";
	Entry[40] = "http://localhost:8080/TeamProject/daejeon/daejeonmarket.jsp";
	Entry[41] = "http://localhost:8080/TeamProject/daejeon/woampark.jsp";
	Entry[42] = "http://localhost:8080/TeamProject/daejeon/songhaksa.jsp";
	Entry[43] = "http://localhost:8080/TeamProject/daejeon/daejeonmuseum.jsp";
	Entry[44] = "http://localhost:8080/TeamProject/daejeon/chunghyosa.jsp";
	Entry[45] = "http://localhost:8080/TeamProject/daejeon/developmuseum.jsp";
	Entry[46] = "http://localhost:8080/TeamProject/daejeon/inthyunchungwon.jsp";
	Entry[47] = "http://localhost:8080/TeamProject/daejeon/chunmyeonggak.jsp";
	Entry[48] = "http://localhost:8080/TeamProject/ulsan/ulsanmarket.jsp";
	Entry[49] = "http://localhost:8080/TeamProject/ulsan/taewhapark.jsp";
	Entry[50] = "http://localhost:8080/TeamProject/ulsan/jangsungpotown.jsp";
	Entry[51] = "http://localhost:8080/TeamProject/ulsan/ulsanculturepark.jsp";
	Entry[52] = "http://localhost:8080/TeamProject/ulsan/sledo.jsp";
	Entry[53] = "http://localhost:8080/TeamProject/ulsan/sungbaoro.jsp";
	Entry[54] = "http://localhost:8080/TeamProject/ulsan/ganjeolgoat.jsp";
	Entry[55] = "http://localhost:8080/TeamProject/ulsan/onggimuseum.jsp";
	Entry[56] = "http://localhost:8080/TeamProject/gyeongbuk/homigoat.jsp";
	Entry[57] = "http://localhost:8080/TeamProject/gyeongbuk/janggitower.jsp";
	Entry[58] = "http://localhost:8080/TeamProject/gyeongbuk/anapji.jsp";
	Entry[59] = "http://localhost:8080/TeamProject/gyeongbuk/songdaemal.jsp";
	Entry[60] = "http://localhost:8080/TeamProject/gyeongbuk/chaemijeong.jsp";
	Entry[61] = "http://localhost:8080/TeamProject/gyeongbuk/dongrakpark.jsp";
	Entry[62] = "http://localhost:8080/TeamProject/gyeongbuk/probance.jsp";
	Entry[63] = "http://localhost:8080/TeamProject/gyeongbuk/wineternal.jsp";
	Entry[64] = "http://localhost:8080/TeamProject/gyeongnam/jinjutower.jsp";
	Entry[65] = "http://localhost:8080/TeamProject/gyeongnam/gyeongnamtree.jsp";
	Entry[66] = "http://localhost:8080/TeamProject/gyeongnam/jangseungpo.jsp";
	Entry[67] = "http://localhost:8080/TeamProject/gyeongnam/geoga.jsp";
	Entry[68] = "http://localhost:8080/TeamProject/gyeongnam/wondong.jsp";
	Entry[69] = "http://localhost:8080/TeamProject/gyeongnam/chunchupark.jsp";
	Entry[70] = "http://localhost:8080/TeamProject/gyeongnam/germanytown.jsp";
	Entry[71] = "http://localhost:8080/TeamProject/gyeongnam/usatown.jsp";
	Entry[72] = "http://localhost:8080/TeamProject/gyeonggi/seojangdae.jsp";
	Entry[73] = "http://localhost:8080/TeamProject/gyeonggi/jangan.jsp";
	Entry[74] = "http://localhost:8080/TeamProject/gyeonggi/cherryblossoms.jsp";
	Entry[75] = "http://localhost:8080/TeamProject/gyeonggi/artmuseum.jsp";
	Entry[76] = "http://localhost:8080/TeamProject/gyeonggi/star.jsp";
	Entry[77] = "http://localhost:8080/TeamProject/gyeonggi/glass.jsp";
	Entry[78] = "http://localhost:8080/TeamProject/gyeonggi/gukcheongsa.jsp";
	Entry[79] = "http://localhost:8080/TeamProject/gyeonggi/namhansanseong.jsp";
	Entry[80] = "http://localhost:8080/TeamProject/gangwondo/namiseom.jsp";
	Entry[81] = "http://localhost:8080/TeamProject/gangwondo/chuncheonmuseum.jsp";
	Entry[82] = "http://localhost:8080/TeamProject/gangwondo/gangneungport.jsp";
	Entry[83] = "http://localhost:8080/TeamProject/gangwondo/gyeongpoholake.jsp";
	Entry[84] = "http://localhost:8080/TeamProject/gangwondo/dongmyeongport.jsp";
	Entry[85] = "http://localhost:8080/TeamProject/gangwondo/expo.jsp";
	Entry[86] = "http://localhost:8080/TeamProject/gangwondo/hwaam.jsp";
	Entry[87] = "http://localhost:8080/TeamProject/gangwondo/jeongamsa.jsp";
	Entry[88] = "http://localhost:8080/TeamProject/chungcheongbukdo/buddhism.jsp";
	Entry[89] = "http://localhost:8080/TeamProject/chungcheongbukdo/baldhead.jsp";
	Entry[90] = "http://localhost:8080/TeamProject/chungcheongbukdo/alcohol.jsp";
	Entry[91] = "http://localhost:8080/TeamProject/chungcheongbukdo/mokgyeferry.jsp";
	Entry[92] = "http://localhost:8080/TeamProject/chungcheongbukdo/uirimji.jsp";
	Entry[93] = "http://localhost:8080/TeamProject/chungcheongbukdo/baeron.jsp";
	Entry[94] = "http://localhost:8080/TeamProject/chungcheongbukdo/aptitude.jsp";
	Entry[95] = "http://localhost:8080/TeamProject/chungcheongbukdo/jeokseong.jsp";
	Entry[96] = "http://localhost:8080/TeamProject/chungcheongnamdo/heukseong.jsp";
	Entry[97] = "http://localhost:8080/TeamProject/chungcheongnamdo/independence.jsp";
	Entry[98] = "http://localhost:8080/TeamProject/chungcheongnamdo/coal.jsp";
	Entry[99] = "http://localhost:8080/TeamProject/chungcheongnamdo/suyeongseong.jsp";
	Entry[100] = "http://localhost:8080/TeamProject/chungcheongnamdo/hyeonchungsa.jsp";
	Entry[101] = "http://localhost:8080/TeamProject/chungcheongnamdo/onyang.jsp";
	Entry[102] = "http://localhost:8080/TeamProject/chungcheongnamdo/myungjae.jsp";
	Entry[103] = "http://localhost:8080/TeamProject/chungcheongnamdo/gwanchok.jsp";
	Entry[104] = "http://localhost:8080/TeamProject/northjeolla/hanok.jsp";
	Entry[105] = "http://localhost:8080/TeamProject/northjeolla/zoo.jsp";
	Entry[106] = "http://localhost:8080/TeamProject/northjeolla/jamanmural.jsp";
	Entry[107] = "http://localhost:8080/TeamProject/northjeolla/sunyudo.jsp";
	Entry[108] = "http://localhost:8080/TeamProject/northjeolla/railroad.jsp";
	Entry[109] = "http://localhost:8080/TeamProject/northjeolla/grassland.jsp";
	Entry[110] = "http://localhost:8080/TeamProject/northjeolla/maitreya.jsp";
	Entry[111] = "http://localhost:8080/TeamProject/northjeolla/prison.jsp";
	Entry[112] = "http://localhost:8080/TeamProject/northjeolla/jewelry.jsp";
	Entry[113] = "http://localhost:8080/TeamProject/northjeolla/naejangsan.jsp";
	Entry[114] = "http://localhost:8080/TeamProject/northjeolla/gujeolcho.jsp";
	Entry[115] = "http://localhost:8080/TeamProject/northjeolla/joseon.jsp";
	Entry[116] = "http://localhost:8080/TeamProject/northjeolla/gwanghalluwon.jsp";
	Entry[117] = "http://localhost:8080/TeamProject/northjeolla/snake.jsp";
	Entry[118] = "http://localhost:8080/TeamProject/northjeolla/choonhyang.jsp";
	Entry[119] = "http://localhost:8080/TeamProject/northjeolla/geumsansa.jsp";
	Entry[120] = "http://localhost:8080/TeamProject/northjeolla/byeokgolje.jsp";
	Entry[121] = "http://localhost:8080/TeamProject/northjeolla/seongsan.jsp";
	Entry[122] = "http://localhost:8080/TeamProject/northjeolla/natural.jsp";
	Entry[123] = "http://localhost:8080/TeamProject/northjeolla/daedunsan.jsp";
	Entry[124] = "http://localhost:8080/TeamProject/northjeolla/arboretum.jsp";
	Entry[125] = "http://localhost:8080/TeamProject/northjeolla/maishan.jsp";
	Entry[126] = "http://localhost:8080/TeamProject/northjeolla/unilam.jsp";
	Entry[127] = "http://localhost:8080/TeamProject/northjeolla/yongdamho.jsp";
	Entry[128] = "http://localhost:8080/TeamProject/northjeolla/deokyusan.jsp";
	Entry[129] = "http://localhost:8080/TeamProject/northjeolla/bandiland.jsp";
	Entry[130] = "http://localhost:8080/TeamProject/northjeolla/guchondong.jsp";
	Entry[131] = "http://localhost:8080/TeamProject/northjeolla/jangansan.jsp";
	Entry[132] = "http://localhost:8080/TeamProject/northjeolla/banghwa.jsp";
	Entry[133] = "http://localhost:8080/TeamProject/northjeolla/nongae.jsp";
	Entry[134] = "http://localhost:8080/TeamProject/northjeolla/okjeongholake.jsp";
	Entry[135] = "http://localhost:8080/TeamProject/northjeolla/guksabong.jsp";
	Entry[136] = "http://localhost:8080/TeamProject/northjeolla/cheese.jsp";
	Entry[137] = "http://localhost:8080/TeamProject/northjeolla/gangcheon.jsp";
	Entry[138] = "http://localhost:8080/TeamProject/northjeolla/gangcheonsa.jsp";
	Entry[139] = "http://localhost:8080/TeamProject/northjeolla/gochujang.jsp";
	Entry[140] = "http://localhost:8080/TeamProject/northjeolla/eupseong.jsp";
	Entry[141] = "http://localhost:8080/TeamProject/northjeolla/barley.jsp";
	Entry[142] = "http://localhost:8080/TeamProject/northjeolla/seonunsa.jsp";
	Entry[143] = "http://localhost:8080/TeamProject/northjeolla/aqua.jsp";
	Entry[144] = "http://localhost:8080/TeamProject/northjeolla/beach.jsp";
	Entry[145] = "http://localhost:8080/TeamProject/northjeolla/chaeseokgang.jsp";
	Entry[146] = "http://localhost:8080/TeamProject/jeollanamdo/yeosuhang.jsp";
	Entry[147] = "http://localhost:8080/TeamProject/jeollanamdo/dolsan.jsp";
	Entry[148] = "http://localhost:8080/TeamProject/jeollanamdo/drama.jsp";
	Entry[149] = "http://localhost:8080/TeamProject/jeollanamdo/ecologicalpark.jsp";
	Entry[150] = "http://localhost:8080/TeamProject/jeollanamdo/jungnogwon.jsp";
	Entry[151] = "http://localhost:8080/TeamProject/jeollanamdo/chushengchang.jsp";
	Entry[152] = "http://localhost:8080/TeamProject/jeollanamdo/gosan.jsp";
	Entry[153] = "http://localhost:8080/TeamProject/jeju/manjanggul.jsp";
	Entry[154] = "http://localhost:8080/TeamProject/jeju/kwakjibeach.jsp";
	Entry[155] = "http://localhost:8080/TeamProject/jeju/andeok.jsp";
	Entry[156] = "http://localhost:8080/TeamProject/jeju/hellokitty.jsp";
	
	
	// 서울
	var jongno = new Array();
	jongno[0] = "http://localhost:8080/TeamProject/seoul/naksan.jsp";
	jongno[1] = "http://localhost:8080/TeamProject/seoul/bukchonhanok.jsp";
	var gwangjin = new Array();
	gwangjin[0] = "http://localhost:8080/TeamProject/seoul/chungdamdaegyo.jsp";
	gwangjin[1] = "http://localhost:8080/TeamProject/seoul/thuksumriver.jsp";
	var gangbuk = new Array();
	gangbuk[0] = "http://localhost:8080/TeamProject/seoul/dreamforest.jsp";
	gangbuk[1] = "http://localhost:8080/TeamProject/seoul/minjumyo.jsp";
	var eunpyung = new Array();
	eunpyung[0] = "http://localhost:8080/TeamProject/seoul/jingwansa.jsp";
	eunpyung[1] = "http://localhost:8080/TeamProject/seoul/bulgwangchun.jsp";
	
	// 부산
	var busanjunggu = new Array();
	busanjunggu[0] = "http://localhost:8080/TeamProject/busan/bookload.jsp";
	busanjunggu[1] = "http://localhost:8080/TeamProject/busan/intmarket.jsp";
	var busandonggu = new Array();
	busandonggu[0] = "http://localhost:8080/TeamProject/busan/ebaguload.jsp";
	busandonggu[1] = "http://localhost:8080/TeamProject/busan/flowermarket.jsp";
	var busanjingu = new Array();
	busanjingu[0] = "http://localhost:8080/TeamProject/busan/seomeon1st.jsp";
	busanjingu[1] = "http://localhost:8080/TeamProject/busan/seomeonmarket.jsp";
	var busangijanggun = new Array();
	busangijanggun[0] = "http://localhost:8080/TeamProject/busan/newworldmarket.jsp";
	busangijanggun[1] = "http://localhost:8080/TeamProject/busan/juksungsungdang.jsp";
	
	// 대구
	var daegujunggu = new Array();
	daegujunggu[0] = "http://localhost:8080/TeamProject/daegu/dalseongpark.jsp";
	daegujunggu[1] = "http://localhost:8080/TeamProject/daegu/gwandukjung.jsp";
	var daegubukgu = new Array();
	daegubukgu[0] = "http://localhost:8080/TeamProject/daegu/gyeongbukart.jsp";
	daegubukgu[1] = "http://localhost:8080/TeamProject/daegu/hajungdo.jsp";
	var daegususunggu = new Array();
	daegususunggu[0] = "http://localhost:8080/TeamProject/daegu/susungmot.jsp";
	daegususunggu[1] = "http://localhost:8080/TeamProject/daegu/nobyeunsajic.jsp";
	var daegudalseogu = new Array();
	daegudalseogu[0] = "http://localhost:8080/TeamProject/daegu/eworld.jsp";
	daegudalseogu[1] = "http://localhost:8080/TeamProject/daegu/hosanpark.jsp";
	
	// 인천
	var incheonjunggu = new Array();
	incheonjunggu[0] = "http://localhost:8080/TeamProject/incheon/chinatown.jsp";
	incheonjunggu[1] = "http://localhost:8080/TeamProject/incheon/wolmido.jsp";
	var incheondonggu = new Array();
	incheondonggu[0] = "http://localhost:8080/TeamProject/incheon/alwaysbluepark.jsp";
	incheondonggu[1] = "http://localhost:8080/TeamProject/incheon/whadojinpark.jsp";
	var incheonysgu = new Array();
	incheonysgu[0] = "http://localhost:8080/TeamProject/incheon/centralpark.jsp";
	incheonysgu[1] = "http://localhost:8080/TeamProject/incheon/songdohanok.jsp";
	var incheonseogu = new Array();
	incheonseogu[0] = "http://localhost:8080/TeamProject/incheon/intbiomuseum.jsp";
	incheonseogu[1] = "http://localhost:8080/TeamProject/incheon/sinseokpark.jsp";
	
	// 광주
	var gwangjudonggu = new Array();
	gwangjudonggu[0] = "http://localhost:8080/TeamProject/gwangju/munbinjungsa.jsp";
	gwangjudonggu[1] = "http://localhost:8080/TeamProject/gwangju/jeungsimsa.jsp";
	var gwangjuseogu = new Array();
	gwangjuseogu[0] = "http://localhost:8080/TeamProject/gwangju/independent.jsp";
	gwangjuseogu[1] = "http://localhost:8080/TeamProject/gwangju/citymuseum.jsp";
	var gwangjunamgu = new Array();
	gwangjunamgu[0] = "http://localhost:8080/TeamProject/gwangju/jisanjae.jsp";
	gwangjunamgu[1] = "http://localhost:8080/TeamProject/gwangju/penguintown.jsp";
	var gwangjubukgu = new Array();
	gwangjubukgu[0] = "http://localhost:8080/TeamProject/gwangju/wangbudlegun.jsp";
	gwangjubukgu[1] = "http://localhost:8080/TeamProject/gwangju/familyland.jsp";
	
	// 대전
	var daejeondonggu = new Array();
	daejeondonggu[0] = "http://localhost:8080/TeamProject/daejeon/daejeonmarket.jsp";
	daejeondonggu[1] = "http://localhost:8080/TeamProject/daejeon/woampark.jsp";
	var daejeonjunggu = new Array();
	daejeonjunggu[0] = "http://localhost:8080/TeamProject/daejeon/songhaksa.jsp";
	daejeonjunggu[1] = "http://localhost:8080/TeamProject/daejeon/daejeonmuseum.jsp";
	var daejeonseogu = new Array();
	daejeonseogu[0] = "http://localhost:8080/TeamProject/daejeon/chunghyosa.jsp";
	daejeonseogu[1] = "http://localhost:8080/TeamProject/daejeon/developmuseum.jsp";
	var daejeonysgu = new Array();
	daejeonysgu[0] = "http://localhost:8080/TeamProject/daejeon/inthyunchungwon.jsp";
	daejeonysgu[1] = "http://localhost:8080/TeamProject/daejeon/chunmyeonggak.jsp";
	
	// 울산
	var ulsanjunggu = new Array();
	ulsanjunggu[0] = "http://localhost:8080/TeamProject/ulsan/ulsanmarket.jsp";
	ulsanjunggu[1] = "http://localhost:8080/TeamProject/ulsan/taewhapark.jsp";
	var ulsannamgu = new Array();
	ulsannamgu[0] = "http://localhost:8080/TeamProject/ulsan/jangsungpotown.jsp";
	ulsannamgu[1] = "http://localhost:8080/TeamProject/ulsan/ulsanculturepark.jsp";
	var ulsandonggu = new Array();
	ulsandonggu[0] = "http://localhost:8080/TeamProject/ulsan/sledo.jsp";
	ulsandonggu[1] = "http://localhost:8080/TeamProject/ulsan/sungbaoro.jsp";
	var ulsanuljugun = new Array();
	ulsanuljugun[0] = "http://localhost:8080/TeamProject/ulsan/ganjeolgoat.jsp";
	ulsanuljugun[1] = "http://localhost:8080/TeamProject/ulsan/onggimuseum.jsp";
	
	// 경상북도
	var pohang = new Array();
	pohang[0] = "http://localhost:8080/TeamProject/gyeongbuk/homigoat.jsp";
	pohang[1] = "http://localhost:8080/TeamProject/gyeongbuk/janggitower.jsp";
	var kyungju = new Array();
	kyungju[0] = "http://localhost:8080/TeamProject/gyeongbuk/anapji.jsp";
	kyungju[1] = "http://localhost:8080/TeamProject/gyeongbuk/songdaemal.jsp";
	var gumi = new Array();
	gumi[0] = "http://localhost:8080/TeamProject/gyeongbuk/chaemijeong.jsp";
	gumi[1] = "http://localhost:8080/TeamProject/gyeongbuk/dongrakpark.jsp";
	var chungdo = new Array();
	chungdo[0] = "http://localhost:8080/TeamProject/gyeongbuk/probance.jsp";
	chungdo[1] = "http://localhost:8080/TeamProject/gyeongbuk/wineternal.jsp";
	
	// 경상남도
	var jinju = new Array();
	jinju[0] = "http://localhost:8080/TeamProject/gyeongnam/jinjutower.jsp";
	jinju[1] = "http://localhost:8080/TeamProject/gyeongnam/gyeongnamtree.jsp";
	var geojae = new Array();
	geojae[0] = "http://localhost:8080/TeamProject/gyeongnam/jangseungpo.jsp";
	geojae[1] = "http://localhost:8080/TeamProject/gyeongnam/geoga.jsp";
	var yangsan = new Array();
	yangsan[0] = "http://localhost:8080/TeamProject/gyeongnam/wondong.jsp";
	yangsan[1] = "http://localhost:8080/TeamProject/gyeongnam/chunchupark.jsp";
	var namhae = new Array();
	namhae[0] = "http://localhost:8080/TeamProject/gyeongnam/germanytown.jsp";
	namhae[1] = "http://localhost:8080/TeamProject/gyeongnam/usatown.jsp";
	
	// 경기도
	var suwon = new Array();
	suwon[0] = "http://localhost:8080/TeamProject/gyeonggi/seojangdae.jsp";
	suwon[1] = "http://localhost:8080/TeamProject/gyeonggi/jangan.jsp";
	var sungnam = new Array();
	sungnam[0] = "http://localhost:8080/TeamProject/gyeonggi/cherryblossoms.jsp";
	sungnam[1] = "http://localhost:8080/TeamProject/gyeonggi/artmuseum.jsp";
	var ansan = new Array();
	ansan[0] = "http://localhost:8080/TeamProject/gyeonggi/star.jsp";
	ansan[1] = "http://localhost:8080/TeamProject/gyeonggi/glass.jsp";
	var gwangju = new Array();
	gwangju[0] = "http://localhost:8080/TeamProject/gyeonggi/gukcheongsa.jsp";
	gwangju[1] = "http://localhost:8080/TeamProject/gyeonggi/namhansanseong.jsp";
	
	// 강원도
	var chuncheon = new Array();
	chuncheon[0] = "http://localhost:8080/TeamProject/gangwondo/namiseom.jsp";
	chuncheon[1] = "http://localhost:8080/TeamProject/gangwondo/chuncheonmuseum.jsp";
	var gangneung = new Array();
	gangneung[0] = "http://localhost:8080/TeamProject/gangwondo/gangneungport.jsp";
	gangneung[1] = "http://localhost:8080/TeamProject/gangwondo/gyeongpoholake.jsp";
	var sokcho = new Array();
	sokcho[0] = "http://localhost:8080/TeamProject/gangwondo/dongmyeongport.jsp";
	sokcho[1] = "http://localhost:8080/TeamProject/gangwondo/expo.jsp";
	var jeongseon = new Array();
	jeongseon[0] = "http://localhost:8080/TeamProject/gangwondo/hwaam.jsp";
	jeongseon[1] = "http://localhost:8080/TeamProject/gangwondo/jeongamsa.jsp";
	
	// 충청북도
	var cheongju = new Array();
	cheongju[0] = "http://localhost:8080/TeamProject/chungcheongbukdo/buddhism.jsp";
	cheongju[1] = "http://localhost:8080/TeamProject/chungcheongbukdo/baldhead.jsp";
	var chungju = new Array();
	chungju[0] = "http://localhost:8080/TeamProject/chungcheongbukdo/alcohol.jsp";
	chungju[1] = "http://localhost:8080/TeamProject/chungcheongbukdo/mokgyeferry.jsp";
	var jecheon = new Array();
	jecheon[0] = "http://localhost:8080/TeamProject/chungcheongbukdo/uirimji.jsp";
	jecheon[1] = "http://localhost:8080/TeamProject/chungcheongbukdo/baeron.jsp";
	var danyang = new Array();
	danyang[0] = "http://localhost:8080/TeamProject/chungcheongbukdo/aptitude.jsp";
	danyang[1] = "http://localhost:8080/TeamProject/chungcheongbukdo/jeokseong.jsp";
	
	// 충청남도
	var cheonan = new Array();
	cheonan[0] = "http://localhost:8080/TeamProject/chungcheongnamdo/heukseong.jsp";
	cheonan[1] = "http://localhost:8080/TeamProject/chungcheongnamdo/independence.jsp";
	var boryeong = new Array();
	boryeong[0] = "http://localhost:8080/TeamProject/chungcheongnamdo/coal.jsp";
	boryeong[1] = "http://localhost:8080/TeamProject/chungcheongnamdo/suyeongseong.jsp";
	var asan = new Array();
	asan[0] = "http://localhost:8080/TeamProject/chungcheongnamdo/hyeonchungsa.jsp";
	asan[1] = "http://localhost:8080/TeamProject/chungcheongnamdo/onyang.jsp";
	var nonsan = new Array();
	nonsan[0] = "http://localhost:8080/TeamProject/chungcheongnamdo/myungjae.jsp";
	nonsan[1] = "http://localhost:8080/TeamProject/chungcheongnamdo/gwanchok.jsp";
	
	// 전라북도
	var jeonju = new Array();
	jeonju[0] = "http://localhost:8080/TeamProject/northjeolla/hanok.jsp";
	jeonju[1] = "http://localhost:8080/TeamProject/northjeolla/zoo.jsp";
	jeonju[2] = "http://localhost:8080/TeamProject/northjeolla/jamanmural.jsp";
	var gunsan = new Array();
	gunsan[0] = "http://localhost:8080/TeamProject/northjeolla/sunyudo.jsp";
	gunsan[1] = "http://localhost:8080/TeamProject/northjeolla/railroad.jsp";
	gunsan[2] = "http://localhost:8080/TeamProject/northjeolla/grassland.jsp";
	var iksan = new Array();
	iksan[0] = "http://localhost:8080/TeamProject/northjeolla/maitreya.jsp";
	iksan[1] = "http://localhost:8080/TeamProject/northjeolla/prison.jsp";
	iksan[2] = "http://localhost:8080/TeamProject/northjeolla/jewelry.jsp";
	var jeongeup = new Array();
	jeongeup[0] = "http://localhost:8080/TeamProject/northjeolla/naejangsan.jsp";
	jeongeup[1] = "http://localhost:8080/TeamProject/northjeolla/gujeolcho.jsp";
	jeongeup[2] = "http://localhost:8080/TeamProject/northjeolla/joseon.jsp";
	var namwon = new Array();
	namwon[0] = "http://localhost:8080/TeamProject/northjeolla/gwanghalluwon.jsp";
	namwon[1] = "http://localhost:8080/TeamProject/northjeolla/snake.jsp";
	namwon[2] = "http://localhost:8080/TeamProject/northjeolla/choonhyang.jsp";
	var gimje = new Array();
	gimje[0] = "http://localhost:8080/TeamProject/northjeolla/geumsansa.jsp";
	gimje[1] = "http://localhost:8080/TeamProject/northjeolla/byeokgolje.jsp";
	gimje[2] = "http://localhost:8080/TeamProject/northjeolla/seongsan.jsp";
	var wanju = new Array();
	wanju[0] = "http://localhost:8080/TeamProject/northjeolla/natural.jsp";
	wanju[1] = "http://localhost:8080/TeamProject/northjeolla/daedunsan.jsp";
	wanju[2] = "http://localhost:8080/TeamProject/northjeolla/arboretum.jsp";
	var jinan = new Array();
	jinan[0] = "http://localhost:8080/TeamProject/northjeolla/maishan.jsp";
	jinan[1] = "http://localhost:8080/TeamProject/northjeolla/unilam.jsp";
	jinan[2] = "http://localhost:8080/TeamProject/northjeolla/yongdamho.jsp";
	var muju = new Array();
	muju[0] = "http://localhost:8080/TeamProject/northjeolla/deokyusan.jsp";
	muju[1] = "http://localhost:8080/TeamProject/northjeolla/bandiland.jsp";
	muju[2] = "http://localhost:8080/TeamProject/northjeolla/guchondong.jsp";
	var jangsu = new Array();
	jangsu[0] = "http://localhost:8080/TeamProject/northjeolla/jangansan.jsp";
	jangsu[1] = "http://localhost:8080/TeamProject/northjeolla/banghwa.jsp";
	jangsu[2] = "http://localhost:8080/TeamProject/northjeolla/nongae.jsp";
	var imsil = new Array();
	imsil[0] = "http://localhost:8080/TeamProject/northjeolla/okjeongholake.jsp";
	imsil[1] = "http://localhost:8080/TeamProject/northjeolla/guksabong.jsp";
	imsil[2] = "http://localhost:8080/TeamProject/northjeolla/cheese.jsp";
	var sunchang = new Array();
	sunchang[0] = "http://localhost:8080/TeamProject/northjeolla/gangcheon.jsp";
	sunchang[1] = "http://localhost:8080/TeamProject/northjeolla/gangcheonsa.jsp";
	sunchang[2] = "http://localhost:8080/TeamProject/northjeolla/gochujang.jsp";
	var gochang = new Array();
	gochang[0] = "http://localhost:8080/TeamProject/northjeolla/eupseong.jsp";
	gochang[1] = "http://localhost:8080/TeamProject/northjeolla/barley.jsp";
	gochang[2] = "http://localhost:8080/TeamProject/northjeolla/seonunsa.jsp";
	var buan = new Array();
	buan[0] = "http://localhost:8080/TeamProject/northjeolla/aqua.jsp";
	buan[1] = "http://localhost:8080/TeamProject/northjeolla/beach.jsp";
	buan[2] = "http://localhost:8080/TeamProject/northjeolla/chaeseokgang.jsp";
	
	// 전라남도
	var yeosu = new Array();
	yeosu[0] = "http://localhost:8080/TeamProject/jeollanamdo/yeosuhang.jsp";
	yeosu[1] = "http://localhost:8080/TeamProject/jeollanamdo/dolsan.jsp";
	var suncheon = new Array();
	suncheon[0] = "http://localhost:8080/TeamProject/jeollanamdo/drama.jsp";
	suncheon[1] = "http://localhost:8080/TeamProject/jeollanamdo/ecologicalpark.jsp";
	var damyang = new Array();
	damyang[0] = "http://localhost:8080/TeamProject/jeollanamdo/jungnogwon.jsp";
	damyang[1] = "http://localhost:8080/TeamProject/jeollanamdo/chushengchang.jsp";
	var haenam = new Array();
	haenam[0] = "http://localhost:8080/TeamProject/jeollanamdo/gosan.jsp";
	haenam[1] = "http://localhost:8080/TeamProject/jeollanamdo/hyangkyo.jsp";
	
	// 제주도
	var jeju = new Array();
	jeju[0] = "http://localhost:8080/TeamProject/jeju/manjanggul.jsp";
	jeju[1] = "http://localhost:8080/TeamProject/jeju/kwakjibeach.jsp";
	var seogwipo = new Array();
	seogwipo[0] = "http://localhost:8080/TeamProject/jeju/andeok.jsp";
	seogwipo[1] = "http://localhost:8080/TeamProject/jeju/hellokitty.jsp";
	
	function random(){ 
		var frm = document.form;
		 if(frm.area.value == '전체' && frm.county.value == '전지역'){        		  <!-- 전지역 --> 
	 		 window.location = Entry[Math.floor(Math.random() * Entry.length)];
	 	  }else if(frm.area.value == '서울' && frm.county.value == '종로구'){        <!-- 서울시작 --> 
	 		 window.location = jongno[Math.floor(Math.random() * jongno.length)];
	 	  }else if(frm.area.value == '서울' && frm.county.value == '광진구'){
	 		 window.location = gwangjin[Math.floor(Math.random() * gwangjin.length)];
	 	  }else if(frm.area.value == '서울' && frm.county.value == '강북구'){
	 		 window.location = gangbuk[Math.floor(Math.random() * gangbuk.length)];
	 	  }else if(frm.area.value == '서울' && frm.county.value == '은평구'){
	 		 window.location = eunpyung[Math.floor(Math.random() * eunpyung.length)];
	 	  }else if(frm.area.value == '부산' && frm.county.value == '부산중구'){       <!-- 부산시작 --> 
	 		 window.location = busanjunggu[Math.floor(Math.random() * busanjunggu.length)];
	 	  }else if(frm.area.value == '부산' && frm.county.value == '부산동구'){
	 		 window.location = busandonggu[Math.floor(Math.random() * busandonggu.length)];
	 	  }else if(frm.area.value == '부산' && frm.county.value == '부산진구'){
	 		 window.location = busanjingu[Math.floor(Math.random() * busanjingu.length)];
	 	  }else if(frm.area.value == '부산' && frm.county.value == '기장군'){
	 		 window.location = busangijanggun[Math.floor(Math.random() * busangijanggun.length)]; 
	 	  }else if(frm.area.value == '대구' && frm.county.value == '대구중구'){       <!-- 대구시작 -->
	 		 window.location = daegujunggu[Math.floor(Math.random() * daegujunggu.length)];
	 	  }else if(frm.area.value == '대구' && frm.county.value == '대구북구'){
	 		 window.location = daegubukgu[Math.floor(Math.random() * daegubukgu.length)];
	 	  }else if(frm.area.value == '대구' && frm.county.value == '수성구'){
	 		 window.location = daegususunggu[Math.floor(Math.random() * daegususunggu.length)];
	 	  }else if(frm.area.value == '대구' && frm.county.value == '달서구'){
	 		 window.location = daegudalseogu[Math.floor(Math.random() * daegudalseogu.length)];
	 	  }else if(frm.area.value == '인천' && frm.county.value == '인천중구'){       <!-- 인천시작 -->
	 		 window.location = incheonjunggu[Math.floor(Math.random() * incheonjunggu.length)];
	 	  }else if(frm.area.value == '인천' && frm.county.value == '인천동구'){
	 		 window.location = incheondonggu[Math.floor(Math.random() * incheondonggu.length)];
	 	  }else if(frm.area.value == '인천' && frm.county.value == '연수구'){
	 		 window.location = incheonysgu[Math.floor(Math.random() * incheonysgu.length)]; 
	 	  }else if(frm.area.value == '인천' && frm.county.value == '인천서구'){
	 		 window.location = incheonseogu[Math.floor(Math.random() * incheonseogu.length)];
	 	  }else if(frm.area.value == '광주' && frm.county.value == '광주동구'){		   <!-- 광주시작 -->
	 		 window.location = gwangjudonggu[Math.floor(Math.random() * gwangjudonggu.length)];
	 	  }else if(frm.area.value == '광주' && frm.county.value == '광주서구'){
	 		 window.location = gwangjuseogu[Math.floor(Math.random() * gwangjuseogu.length)];
	 	  }else if(frm.area.value == '광주' && frm.county.value == '광주남구'){
	 		 window.location = gwangjunamgu[Math.floor(Math.random() * gwangjunamgu.length)];
	 	  }else if(frm.area.value == '광주' && frm.county.value == '광주북구'){
	 		 window.location = gwangjubukgu[Math.floor(Math.random() * gwangjubukgu.length)];
	 	  }else if(frm.area.value == '대전' && frm.county.value == '대전동구'){		   <!-- 대전시작 -->
	 		 window.location = daejeondonggu[Math.floor(Math.random() * daejeondonggu.length)];
	 	  }else if(frm.area.value == '대전' && frm.county.value == '대전중구'){
	 		 window.location = daejeonjunggu[Math.floor(Math.random() * daejeonjunggu.length)];
	 	  }else if(frm.area.value == '대전' && frm.county.value == '대전서구'){
	 		 window.location = daejeonseogu[Math.floor(Math.random() * daejeonseogu.length)];
	 	  }else if(frm.area.value == '대전' && frm.county.value == '유성구'){
	 		 window.location = daejeonysgu[Math.floor(Math.random() * daejeonysgu.length)];
	 	  }else if(frm.area.value == '울산' && frm.county.value == '울산중구'){		   <!-- 울산시작 -->
	 		 window.location = ulsanjunggu[Math.floor(Math.random() * ulsanjunggu.length)];
	 	  }else if(frm.area.value == '울산' && frm.county.value == '울산남구'){
	 		 window.location = ulsannamgu[Math.floor(Math.random() * ulsannamgu.length)];
	 	  }else if(frm.area.value == '울산' && frm.county.value == '울산동구'){
	 		 window.location = ulsandonggu[Math.floor(Math.random() * ulsandonggu.length)];
	 	  }else if(frm.area.value == '울산' && frm.county.value == '울주군'){
	 		 window.location = ulsanuljugun[Math.floor(Math.random() * ulsanuljugun.length)];
	 	  }else if(frm.area.value == '경기' && frm.county.value == '수원시'){		   <!-- 경기도시작 -->	 
	 		 window.location = suwon[Math.floor(Math.random() * suwon.length)];
	 	  }else if(frm.area.value == '경기' && frm.county.value == '성남시'){
	 		 window.location = sungnam[Math.floor(Math.random() * sungnam.length)];
	 	  }else if(frm.area.value == '경기' && frm.county.value == '안산시'){
	 		 window.location = ansan[Math.floor(Math.random() * ansan.length)];
	 	  }else if(frm.area.value == '경기' && frm.county.value == '광주시'){
	 		 window.location = gwangju[Math.floor(Math.random() * gwangju.length)];
	 	  }else if(frm.area.value == '강원' && frm.county.value == '춘천시'){		   <!-- 강원시작 -->	 
	 		 window.location = chuncheon[Math.floor(Math.random() * chuncheon.length)];
	 	  }else if(frm.area.value == '강원' && frm.county.value == '강릉시'){
	 		 window.location = gangneung[Math.floor(Math.random() * gangneung.length)];
	 	  }else if(frm.area.value == '강원' && frm.county.value == '속초시'){
	 		 window.location = sokcho[Math.floor(Math.random() * sokcho.length)];
	 	  }else if(frm.area.value == '강원' && frm.county.value == '정선군'){
	 		 window.location = jeongseon[Math.floor(Math.random() * jeongseon.length)];
	 	  }else if(frm.area.value == '충북' && frm.county.value == '청주시'){		   <!-- 충북시작 -->	 
	 		 window.location = cheongju[Math.floor(Math.random() * cheongju.length)];
	 	  }else if(frm.area.value == '충북' && frm.county.value == '충주시'){
	 		 window.location = chungju[Math.floor(Math.random() * chungju.length)];
	 	  }else if(frm.area.value == '충북' && frm.county.value == '제천시'){
	 		 window.location = jecheon[Math.floor(Math.random() * jecheon.length)];
	 	  }else if(frm.area.value == '충북' && frm.county.value == '단양군'){
	 		 window.location = danyang[Math.floor(Math.random() * danyang.length)];
	 	  }else if(frm.area.value == '충남' && frm.county.value == '천안시'){		   <!-- 충남시작 -->	 
	 		 window.location = cheonan[Math.floor(Math.random() * cheonan.length)];
	 	  }else if(frm.area.value == '충남' && frm.county.value == '보령시'){
	 		 window.location = boryeong[Math.floor(Math.random() * boryeong.length)];
	 	  }else if(frm.area.value == '충남' && frm.county.value == '아산시'){
	 		 window.location = asan[Math.floor(Math.random() * asan.length)];
	 	  }else if(frm.area.value == '충남' && frm.county.value == '논산시'){
	 		 window.location = nonsan[Math.floor(Math.random() * nonsan.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '전주시'){		   <!-- 전북시작 -->	 
	 		 window.location = jeonju[Math.floor(Math.random() * jeonju.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '군산시'){
	 		 window.location = gunsan[Math.floor(Math.random() * gunsan.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '익산시'){
	 		 window.location = iksan[Math.floor(Math.random() * iksan.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '정읍시'){
	 		 window.location = jeongeup[Math.floor(Math.random() * jeongeup.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '남원시'){
	 		 window.location = namwon[Math.floor(Math.random() * namwon.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '김제시'){
	 		 window.location = gimje[Math.floor(Math.random() * gimje.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '완주군'){
	 		 window.location = wanju[Math.floor(Math.random() * wanju.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '진안군'){
	 		 window.location = jinan[Math.floor(Math.random() * jinan.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '무주군'){
	 		 window.location = muju[Math.floor(Math.random() * muju.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '장수군'){
	 		 window.location = jangsu[Math.floor(Math.random() * jangsu.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '임실군'){
	 		 window.location = imsil[Math.floor(Math.random() * imsil.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '순창군'){
	 		 window.location = sunchang[Math.floor(Math.random() * sunchang.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '고창군'){
	 		 window.location = gochang[Math.floor(Math.random() * gochang.length)];
	 	  }else if(frm.area.value == '전북' && frm.county.value == '부안군'){
	 		 window.location = buan[Math.floor(Math.random() * buan.length)];
	 	  }else if(frm.area.value == '전남' && frm.county.value == '여수시'){		   <!-- 전남시작 -->	 
	 		 window.location = yeosu[Math.floor(Math.random() * yeosu.length)];
	 	  }else if(frm.area.value == '전남' && frm.county.value == '순천시'){
	 		 window.location = suncheon[Math.floor(Math.random() * suncheon.length)];
	 	  }else if(frm.area.value == '전남' && frm.county.value == '담양군'){
	 		 window.location = damyang[Math.floor(Math.random() * damyang.length)];
	 	  }else if(frm.area.value == '전남' && frm.county.value == '해남군'){
	 		 window.location = haenam[Math.floor(Math.random() * haenam.length)];
	 	  }else if(frm.area.value == '경북' && frm.county.value == '포항시'){		   <!-- 경북시작 -->	 
	 		 window.location = pohang[Math.floor(Math.random() * pohang.length)];
	 	  }else if(frm.area.value == '경북' && frm.county.value == '경주시'){
	 		 window.location = kyungju[Math.floor(Math.random() * kyungju.length)];
	 	  }else if(frm.area.value == '경북' && frm.county.value == '구미시'){
	 		 window.location = gumi[Math.floor(Math.random() * gumi.length)];
	 	  }else if(frm.area.value == '경북' && frm.county.value == '청도군'){
	 		 window.location = chungdo[Math.floor(Math.random() * chungdo.length)];
	 	  }else if(frm.area.value == '경남' && frm.county.value == '진주시'){		   <!-- 경남시작 -->	 
	 		 window.location = jinju[Math.floor(Math.random() * jinju.length)];
	 	  }else if(frm.area.value == '경남' && frm.county.value == '거제시'){
	 		 window.location = geojae[Math.floor(Math.random() * geojae.length)];
	 	  }else if(frm.area.value == '경남' && frm.county.value == '양산시'){
	 		 window.location = yangsan[Math.floor(Math.random() * yangsan.length)];
	 	  }else if(frm.area.value == '경남' && frm.county.value == '남해군'){
	 		 window.location = namhae[Math.floor(Math.random() * namhae.length)];
	 	  }else if(frm.area.value == '제주' && frm.county.value == '제주시'){		   <!-- 제주도시작 -->	 
	 		 window.location = jeju[Math.floor(Math.random() * jeju.length)];
	 	  }else if(frm.area.value == '제주' && frm.county.value == '서귀포시'){
	 		 window.location = seogwipo[Math.floor(Math.random() * seogwipo.length)];
	 	  }
	}
</script>
<style type="text/css">
		.button {
			background-color: pink;
		 	border: none;
		  	color: white;
			padding: 6px 10px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 15px;
			font-family: Hanna, sans-serif;
		}
		.p1 {
			color: pink;
			font-size: 50px;
			font-family: Hanna, sans-serif;
		}
		.p2 {
			color: pink;
			font-size: 15px;
		}
		.land {
			fill: white;
			fill-opacity: 1;
			stroke:pink;
			stroke-opacity: 1;
			stroke-width: 2;
		}
		.land:hover {
			fill: pink;
		}
		.TEXT {
			fill: black;
			font-size: 10;
			font-family: Hanna, sans-serif;
			text-anchor: middle;
			alignment-baseline: middle;
		}
		.list {
			list-style-type: none;
			text-align: right;
			padding: 5px 0;
			padding-bottom: 8px;
			border-bottom: 2px solid pink;
		}
		.list2 {
			list-style-type: none;
			text-align: center;
			padding: 5px 0;
			border-bottom: 2px solid pink;
		}
		.list3 {
			list-style-type: none;
			text-align: center;
			padding: 5px 0;
		}
		.list4 {
			list-style-type: none;
			text-align: right;
			padding: 5px 0;
			padding-bottom: 3px;
			border-bottom: 2px solid pink;
		}
		.login, .joinus {
			display : inline;
			text-align: right;
			letter-spacing : 3px;
			font-family: Hanna, sans-serif;
			text-transform : uppercase;
			color: pink;
		}
		.aa {
		color: pink;
		text-decoration: none;
		}
		.board2 {
			font-family: Hanna, sans-serif;
		}
		.full {
			width: 60%;
			padding: 5px;
			height: 100%;
			float: left;
		}
		.board {
			color: pink;
			display : inline;
			letter-spacing : 3px;
			text-transform : uppercase;
			border: 2px solid pink;
			padding: 10px;
			margin-top: 30px;
			width: 15%;
			float: left;
			text-align: center;
		}
		.board3 {
			color: pink;
			text-transform : uppercase;
			border: 2px solid pink;
			text-align: center;
		}
		.select {
			width: 100px;
			padding: .2em .2em;
			border: 1px solid #999;
			font-family: inherit;
			border-radius: 0px;
			-webkit-appearance: none;
			-moz-appearance: none;
			appearance: none;
		}
		.board2 a{
			color: pink;
			text-decoration: none;
		}
</style>
</head>
<body>
		<%
      		 if (session.getAttribute("id") == null) {
      	%>
	<form name="login">
	<div class="p1">
		<a href="main.jsp" class="aa">길나들이</a>
		<p class="p2">A moment Walking the Flower road</p>
		</div>
		<div>
	<div>
		<ul class="list">
			<li class="login"><a href="login.jsp" class="aa">Login</a></li>
			<li class="login">│</li>
			<li class="joinus"><a href="SignUp.jsp" class="aa">Join us</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></a></li><br>
			</ul>
			<ul class="line">
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=2">여행지 추천</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=3">후기 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=4">자유 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list3">
				<br><br>
				<li class="board2"><a href="random.jsp" class="aa">랜덤 추천 여행</a></li>
				<br><br>
			</ul>
		</div>
		</ul>
		</form>
		<% 
		}else if (session.getAttribute("flag").equals("1")){
      	%>
      	<form name="login">
      	<div class="p1">
		<a href="main.jsp" class="aa">길나들이</a>
		<p class="p2">A moment Walking the Flower road</p>
		</div>
		<div>
		<ul class="list4">
			<li class="login"><%=session.getAttribute("nickname") %>님</li>
			<li class="login"><input type="submit" onClick="logout()" class="button" value="로그아웃"></li>
			<li class="login">│</li>
			<li class="joinus"><a href="adminmain.jsp" class="aa">Admin Page</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></a></li><br>
			</ul>
			<ul class="line">
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=2">여행지 추천</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=3">후기 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=4">자유 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list3">
				<br><br>
				<li class="board2"><a href="random.jsp" class="aa">랜덤 추천 여행</a></li>
				<br><br>
			</ul>
		</div>
		</ul>
		</form>
		<% 
		}else if (session.getAttribute("id") != null){
      	%>
      	<form name="login">
      	<div class="p1">
		<a href="main.jsp" class="aa">길나들이</a>
		<p class="p2">A moment Walking the Flower road</p>
		</div>
		<div>
		<ul class="list4">
			<li class="login"><%=session.getAttribute("nickname") %>님</li>
			<li class="login"><input type="submit" onClick="logout()" class="button" value="로그아웃"></li>
			<li class="login">│</li>
			<li class="joinus"><a href="mypagemain.jsp" class="aa">My Page</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></a></li><br>
			</ul>
			<ul class="line">
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=2">여행지 추천</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=3">후기 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=4">자유 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list3">
				<br><br>
				<li class="board2"><a href="random.jsp" class="aa">랜덤 추천 여행</a></li>
				<br><br>
			</ul>
		</div>
		</ul>
		</form>
      		
			<%
      			}
			%>
	</div>
		<div class="full">
		<form name=form method=post> 
			<table class="board3">
				<tr>
					<th>&nbsp 지역 선택 &nbsp&nbsp</th>
				   <td>
                   <select name='area' onchange="change(this.selectedIndex);"  class=select >
                       <option value='전체'>전체</option>
                       <option value='서울'>서울</option>
                       <option value='부산'>부산</option>
                       <option value='대구'>대구</option>
                       <option value='인천'>인천</option>
                       <option value='광주'>광주</option>
                       <option value='대전'>대전</option>
                       <option value='울산'>울산</option>
                       <option value='경기'>경기</option>
                       <option value='강원'>강원</option>
                       <option value='충북'>충북</option>
                       <option value='충남'>충남</option>
                       <option value='전북'>전북</option>
                       <option value='전남'>전남</option>
                       <option value='경북'>경북</option>
                       <option value='경남'>경남</option>
                       <option value='제주'>제주</option>
                    </select></td>  
                    <td>                            
                    <select name='county'  class=select>
                       <option value='전지역'>전지역</option>
                    </select></td>             
                    <td>
                   &nbsp&nbsp<input type="button" class="button" onClick="random()" value="검색">&nbsp
                    </td>
                </tr>
              </table>
		</form> 
		</div>
</body>
</html>