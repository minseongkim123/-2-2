public  class  main {
	public  static  void  main ( String [] args ) {
		ArrList < 문자열 > S =  새  ArrList < 문자열 > ();
		s . insertLast ( " 사과 " ); s . 인쇄 (); s . insertLast ( " 주황색 " ); s . 인쇄 ();
		s . insertLast ( " 체리 " ); s . 인쇄 (); s . insertLast ( " 배 " ); s . 인쇄 ();
		s . 삽입 ( " 포도 " , 1 ); s . 인쇄 (); s . 삽입 ( " 레몬 " , 4 ); s . 인쇄 ();
		s . insertLast ( " 키위 " ); s . 인쇄 ();		
		s . 삭제 ( 4 ); s . 인쇄 (); s . 삭제 ( 0 ); s . 인쇄 ();
		s . 삭제 ( 0 ); s . 인쇄 (); s . 삭제 ( 3 ); s . 인쇄 ();
		s . 삭제 ( 0 ); s . 인쇄 ();

		시스템 . 아웃 . println ( " 1¹øÂ ° Ç × ¸ñÀº " + s . peek ( 1 ) + " ÀÌ´Ù. " ); 시스템 . 아웃 . println ();

		ArrList < Integer >    t =  new  ArrList < Integer > ();
		t . insertLast ( 100 ); t . insertLast ( 200 ); t . insertLast ( 300 ); t . insertLast ( 400 ); t . 인쇄 ();
		t . 삽입 ( 350 , 3 ); t . 인쇄 ();
		t . 삽입 ( 250 , 2 ); t . 인쇄 ();
		t . insertLast ( 500 ); t . 인쇄 ();
	}
}