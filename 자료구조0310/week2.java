import  java.util.NoSuchElementException ;
공용  클래스  ArrList <E> {
	개인   E a [];     // 리스트의 항목들을 배열
    private   int 크기;  // 리스트의 항목 수

    공공   ArrList () { // 생성자
        a = ( E []) 새  개체 [ 1 ];  // 최초로 1 개의 원소를 가진 배열 생성
        크기 =  0 ;                 // 항목 수를 0으로 초기화
    }
    public  boolean  isEmpty () { return size ==  0 ;} // 리스트가 비어 있으면 true 리턴

    public  void  insertLast ( E  newItem ) {	 // 가장 새로운 항목 삽입              
        if (size == a . length)   	 // 배열에 빈 공간이 배열
        	resize ( 2 * a . 길이);  	// 배열 크기 2 배로 확장
         a [size ++ ] = newItem;    	// 새 항목 삽입
    }

    public  void  insert ( E  newItem , int  k ) { // 새 항목을 k-1 번 ??? 항목 다음에 삽입
    	if (size == a . length)   		    // 배열에 빈 공간이 배열
    		resize ( 2 * a . 길이);			   // 배열 크기 2 배로 확장
    	위한 ( INT 난 = 크기 - 1 ] I > = K가 나는 - ) A는 [내가 + 1 ] = A [I];  // 한 칸씩 뒤로 이동
    	a [k] = newItem;
    	크기 ++ ;
    }

    public  E  delete ( int  k ) {   // k 번째 항목 삭제
		if (isEmpty ()) throw  new  NoSuchElementException (); // 언더 플로 경우에 프로그램 정지
		E 항목 = a [k];
		for ( int i = k; i < size; i ++ ) a [i] = a [i + 1 ];  // 한 칸씩 앞으로 이동
		크기 - ;
		if (size >  0  && size == a . length / 4 ) // 배열에 항목들이 1/4 만 차지한다면
			resize (a . length / 2 ); 			// 배열을 1/2 크기로 축소
		반품 품목;
    }

    public  E  peek ( int  k ) {   // k 번째 항목을 리턴, 읽기만한다.
  		if (isEmpty ()) throw  new  NoSuchElementException (); // 언더 플로 경우에 프로그램 정지
  		반환 a [k];
      }

    private  void  resize ( int  newSize ) {		 // 배열 크기 조절
		개체 [] t =  새  개체 [newSize];   // newSize 크기의 새로운 배열 t 생성
		for ( int i =  0 ; i < size; i ++ )
			t [i] = a [i];                    // 배열 s를 배열 t로 복사
		a = ( E []) t;                        // 배열 t를 배열 s로
	}

	public  void  print () { // 배열의 항목들을 출력
		if (isEmpty ())
			시스템 . 아웃 . print ( " 배열이 비어 있음. " );      
		그밖에
			for ( int i =  0 ; i < a . length; i ++ )	 System . 아웃 . print (a [i] + " \ t  " );
		시스템 . 아웃 . println ();
	}
}