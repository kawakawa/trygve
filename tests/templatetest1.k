interface AnIterator<T> {
    boolean hasNext() const;
    T next();
}

class StringIterator implements AnIterator<String> {
    public StringIterator(String s) {
        i_ = 0;
        s_ = s.clone;
    }

    public boolean hasNext() const {
        return i_ < s_.length();
    }

    public String next() {
        ++i_;
        return s_.substring(i_-1, i_);
    }

    private int i_;
    private String s_;
}

{
    StringIterator si = new StringIterator("abcdefg");

    while(si.hasNext())
        System.out.println(si.next());

    AnIterator<String> ais = si;
    boolean hn = ais.hasNext();
	 System.out.println(hn)
}

/* GOLD:
0 warnings, 0 errors.
___________________________________________________________
a
b
c
d
e
f
g
false
*/
