X-GM-THRID: 6389618895817277440
Date: Wed, 22 Feb 2017 00:45:41 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: singhalsimran0@gmail.com, oleg.drokin@intel.com,
	andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org, lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	joe@perches.com
Message-Id: <83c0c710-931a-4780-94f2-1c02c2cee6c0@googlegroups.com>
In-Reply-To: <1487709610.2853.39.camel@perches.com>
References: <20170221174631.GA22466@singhal-Inspiron-5558>
 <1487709610.2853.39.camel@perches.com>
Subject: Re: [PATCH 5/6] staging: lustre: Using macro DIV_ROUND_UP
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_9123_1611033767.1487753142010"
X-Google-Token: ELWftcUFjNdp9c2yQLU0
X-Google-IP: 14.139.82.6

------=_Part_9123_1611033767.1487753142010
Content-Type: multipart/alternative; 
	boundary="----=_Part_9124_1530594510.1487753142010"

------=_Part_9124_1530594510.1487753142010
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, February 22, 2017 at 2:10:16 AM UTC+5:30, Joe Perches wrote:
>
> On Tue, 2017-02-21 at 23:16 +0530, simran singhal wrote: 
> > The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)). 
> > It clarifies the divisor calculations. This occurence was detected using 
> > the coccinelle script: 
> > 
> > @@ 
> > expression e1; 
> > expression e2; 
> > @@ 
> > ( 
> > - ((e1) + e2 - 1) / (e2) 
> > + DIV_ROUND_UP(e1,e2) 
> > > 
> > 
> > - ((e1) + (e2 - 1)) / (e2) 
> > + DIV_ROUND_UP(e1,e2) 
> > ) 
>
> Coccinelle scripts are great but please 
> inspect the results for appropriate style 
> and simplify the patch where possible. 
>
    
    My bad, I will send v2.
    

> > diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c 
> b/drivers/staging/lustre/lustre/ptlrpc/client.c 
> [] 
> > @@ -3136,8 +3136,7 @@ void ptlrpc_set_bulk_mbits(struct ptlrpc_request 
> *req) 
> >           * that server can infer the number of bulks that were 
> prepared, 
> >           * see LU-1431 
> >           */ 
> > -        req->rq_mbits += ((bd->bd_iov_count + LNET_MAX_IOV - 1) / 
> > -                          LNET_MAX_IOV) - 1; 
> > +        req->rq_mbits += (DIV_ROUND_UP(bd->bd_iov_count, LNET_MAX_IOV)) 
> - 1; 
>
> Unnecessary parentheses. 
>
> > diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c 
> b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c 
> [] 
> > @@ -272,7 +272,7 @@ static unsigned long enc_pools_shrink_scan(struct 
> shrinker *s, 
> >  static inline 
> >  int npages_to_npools(unsigned long npages) 
> >  { 
> > -        return (int)((npages + PAGES_PER_POOL - 1) / PAGES_PER_POOL); 
> > +        return (int)(DIV_ROUND_UP(npages, PAGES_PER_POOL)); 
> >  } 
>
> Here too. 
>
>
------=_Part_9124_1530594510.1487753142010
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, February 22, 2017 at 2:10:16 AM UTC+=
5:30, Joe Perches wrote:<blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue=
, 2017-02-21 at 23:16 +0530, simran singhal wrote:
<br>&gt; The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /=
(d)).
<br>&gt; It clarifies the divisor calculations. This occurence was detected=
 using
<br>&gt; the coccinelle script:
<br>&gt;=20
<br>&gt; @@
<br>&gt; expression e1;
<br>&gt; expression e2;
<br>&gt; @@
<br>&gt; (
<br>&gt; - ((e1) + e2 - 1) / (e2)
<br>&gt; + DIV_ROUND_UP(e1,e2)
<br>&gt; &gt;=20
<br>&gt;=20
<br>&gt; - ((e1) + (e2 - 1)) / (e2)
<br>&gt; + DIV_ROUND_UP(e1,e2)
<br>&gt; )
<br>
<br>Coccinelle scripts are great but please
<br>inspect the results for appropriate style
<br>and simplify the patch where possible.
<br></blockquote><div>=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 My bad, I=
 will send v2.</div><div>=C2=A0 =C2=A0=C2=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;=
padding-left: 1ex;">&gt; diff --git a/drivers/staging/lustre/<wbr>lustre/pt=
lrpc/client.c b/drivers/staging/lustre/<wbr>lustre/ptlrpc/client.c
<br>[]
<br>&gt; @@ -3136,8 +3136,7 @@ void ptlrpc_set_bulk_mbits(struct ptlrpc_req=
uest *req)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * that serv=
er can infer the number of bulks that were prepared,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * see LU-14=
31
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0req-&gt;rq_mbits =
+=3D ((bd-&gt;bd_iov_count + LNET_MAX_IOV - 1) /
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0LNET_MAX_IOV) - 1;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0req-&gt;rq_mbits =
+=3D (DIV_ROUND_UP(bd-&gt;bd_iov_<wbr>count, LNET_MAX_IOV)) - 1;
<br>
<br>Unnecessary parentheses.
<br>
<br>&gt; diff --git a/drivers/staging/lustre/<wbr>lustre/ptlrpc/sec_bulk.c =
b/drivers/staging/lustre/<wbr>lustre/ptlrpc/sec_bulk.c
<br>[]
<br>&gt; @@ -272,7 +272,7 @@ static unsigned long enc_pools_shrink_scan(str=
uct shrinker *s,
<br>&gt; =C2=A0static inline
<br>&gt; =C2=A0int npages_to_npools(unsigned long npages)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return (int)((npa=
ges + PAGES_PER_POOL - 1) / PAGES_PER_POOL);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return (int)(DIV_=
ROUND_UP(npages, PAGES_PER_POOL));
<br>&gt; =C2=A0}
<br>
<br>Here too.
<br>
<br></blockquote></div>
------=_Part_9124_1530594510.1487753142010--

------=_Part_9123_1611033767.1487753142010--

