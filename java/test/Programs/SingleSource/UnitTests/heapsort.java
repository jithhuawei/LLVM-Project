public class heapsort {

    public static final long IM = 139968;
    public static final long IA =   3877;
    public static final long IC =  29573;

    public static void main(String args[]) {
        int N = 100000;
        double []ary = new double[N+1];
        for (int i=1; i<=N; i++) {
            ary[i] = gen_random(1);
        }
        heapsort(N, ary);
        Test.println(ary[N]);
    }

    public static long last = 42;
    public static double gen_random(double max) {
        return( max * (last = (last * IA + IC) % IM) / IM );
    }

    public static void heapsort(int n, double ra[]) {
        int l, j, ir, i;
        double rra;

        l = (n >> 1) + 1;
        ir = n;
        for (;;) {
            if (l > 1) {
                rra = ra[--l];
            } else {
                rra = ra[ir];
                ra[ir] = ra[1];
                if (--ir == 1) {
                    ra[1] = rra;
                    return;
                }
            }
            i = l;
            j = l << 1;
            while (j <= ir) {
                if (j < ir && ra[j] < ra[j+1]) { ++j; }
                if (rra < ra[j]) {
                    ra[i] = ra[j];
                    j += (i = j);
                } else {
                    j = ir + 1;
                }
            }
            ra[i] = rra;
        }
    }
}
