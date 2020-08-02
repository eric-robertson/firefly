// Converts current datetime to string
part of firefly;

class UtilTimeText {

	static List<String> _indexToWord = [
		'',
		'one',
		'two',
		'three',
		'four',
		'five',
		'six',
		'seven',
		'eight',
		'nine',
		'ten',
		'eleven',
		'twelve',
		'thirteen',
		'fourteen',
		'fifteen',
		'sixteen',
		'seventeen',
		'eighteen',
		'ninteen',
	];

	static Map<int, String> _tensToWord = {
			2 : 'twenty',
			3 : 'thirty',
			4 : 'forty',
			5 : 'fifty'
	};

	static Map<int, String> _pastToWord = {
		5 : 'five',
		10 : 'ten',
		15 : 'quarter',
		30 : 'half'
	};
	static Map<int, String> _beforeToWord = {
		45 : 'quarter',
		50 : 'ten',
		55 : 'five',
	};

	static Map<int, String> _namedHours = {
		0 : 'midnight',
		12 : 'noon',
	};

	static List<String> getRenderedText ( int h, int m, bool am ) {

		List<String> _ = ["its"];
		h = h % 12;

		if ( _pastToWord.containsKey( m )){
			_.add( _pastToWord[m] );
			_.add('past');
			if ( _namedHours.containsKey( h )) 
				_.add( _namedHours[h] );
			else
				_.add( _indexToWord[h] );
		}

		else if ( _beforeToWord.containsKey( m )){
			_.add( _beforeToWord[m] );
			_.add('before');
			_.add( _indexToWord[(h+1) % 12] );
		}

		else if ( m == 0 ) {
			if ( _namedHours.containsKey( h )) 
				_.add( _namedHours[h] );
			else
				_.add( _indexToWord[h] );
		}

		else {
			_.add( _indexToWord[h] );
			if ( m < 10  ){
				_.add('o\'');
				_.add(_indexToWord[m]);
			}
			else if ( m < 20 )
				_.add(_indexToWord[m]);
			else {
				_.add(_tensToWord[ (m ~/ 10) ]);
				_.add(_indexToWord[ m % 10 ]);
			}
		}

		if ( am ) _.add('AM');
		else _.add('PM');

		return _;
	}

	String getRenderedHour ( int h, bool short) {
		if ( h == 0 && short ) return 'midnight';
		if ( h == 12 && short ) return 'noon';
		var _h = h > 12 ? h - 12 : h;
		if ( _h == 1 ) return 'one';
		if ( _h == 2 ) return 'two';
		if ( _h == 3 ) return 'three';
		if ( _h == 4 ) return 'four';
		if ( _h == 5 ) return 'five';
		if ( _h == 6 ) return 'six';
		if ( _h == 7 ) return 'seven';
		if ( _h == 8 ) return 'eight';
		if ( _h == 9 ) return 'nine';
		if ( _h == 10 ) return 'ten';
		if ( _h == 12 ) return 'twelve';
		return 'eleven';
	}
	String getRenderedMinute ( int _m ) {
		var m = _m % 10;
		if ( m == 1 ) return 'one';
		if ( m == 2 ) return 'two';
		if ( m == 3 ) return 'three';
		if ( m == 4 ) return 'four';
		if ( m == 5 ) return 'five';
		if ( m == 6 ) return 'six';
		if ( m == 7 ) return 'seven';
		if ( m == 8 ) return 'eight';
		if ( m == 9 ) return 'nine';
		return '';
	}


}