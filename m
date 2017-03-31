X-GM-THRID: 6403001709178650624
Date: Thu, 30 Mar 2017 18:43:06 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, davem@davemloft.net, kuznet@ms2.inr.ac.ru,
	jmorris@namei.org, yoshfuji@linux-ipv6.org, kaber@trash.net,
	netdev@vger.kernel.org
Message-Id: <9b1310d4-cc8b-4082-916b-26687307f146@googlegroups.com>
In-Reply-To: <1490818609.24891.49.camel@edumazet-glaptop3.roam.corp.google.com>
References: <cover.1490813977.git.rvarsha016@gmail.com>
 <58dc0820.8943620a.67760.546e@mx.google.com>
 <1490818609.24891.49.camel@edumazet-glaptop3.roam.corp.google.com>
Subject: Re: [PATCH 2/2] net: ipv4: Use BIT macro.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_116_717928862.1490924586822"
X-Google-Token: EKro9sYFfFdDyvATAzg0
X-Google-IP: 117.211.102.68

------=_Part_116_717928862.1490924586822
Content-Type: multipart/alternative; 
	boundary="----=_Part_117_1046123384.1490924586822"

------=_Part_117_1046123384.1490924586822
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, March 30, 2017 at 2:20:27 AM UTC+5:30, Eric Dumazet wrote:
>
> On Thu, 2017-03-30 at 00:46 +0530, Varsha Rao wrote: 
> > Replace bitwise left shift by one operations with BIT() macro. This 
> patch 
> > fixes the checkpatch issue. 
> > 
> > Signed-off-by: Varsha Rao <rvars...@gmail.com <javascript:>> 
> > --- 
> >  net/ipv4/tcp_bbr.c | 4 ++-- 
> >  1 file changed, 2 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/net/ipv4/tcp_bbr.c b/net/ipv4/tcp_bbr.c 
> > index 4da4bc1..9f2c869 100644 
> > --- a/net/ipv4/tcp_bbr.c 
> > +++ b/net/ipv4/tcp_bbr.c 
> > @@ -71,10 +71,10 @@ 
> >   * an issue. The upper bound isn't an issue with existing technologies. 
> >   */ 
> >  #define BW_SCALE 24 
> > -#define BW_UNIT (1 << BW_SCALE) 
> > +#define BW_UNIT BIT(BW_SCALE) 
> >   
> >  #define BBR_SCALE 8        /* scaling factor for fractions in BBR (e.g. 
> gains) */ 
> > -#define BBR_UNIT (1 << BBR_SCALE) 
> > +#define BBR_UNIT BIT(BBR_SCALE) 
> >   
> >  /* BBR has the following modes for deciding how fast to send: */ 
> >  enum bbr_mode { 
>
> Well, no.  BIT() is using unsigned long. 
>
> #define BIT(nr)    (1UL << (nr)) 

This change might have unintended effects. 
>
> Maybe checkpatch should be fixed. 
>


Okay, I will revert these changes. When I grep fot definition, I get the 
following.   

arch/arm/mach-davinci/sleep.S:#define BIT(nr)                   (1 << (nr))
include/linux/bitops.h:#define BIT(nr)                  (1UL << (nr))
tools/perf/bench/numa.c:#define BIT(x) (1ul << x)
tools/perf/util/intel-pt-decoder/intel-pt-pkt-decoder.c:#define 
BIT(n)          (1 << (n))
tools/vm/page-types.c:#define BIT(name)         (1ULL << KPF_##name)
 
But why is the definition not uniform if it causes problem in some files on 
usage?

Thanks,
Varsha Rao     

------=_Part_117_1046123384.1490924586822
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, March 30, 2017 at 2:20:27 AM UTC+5:30=
, Eric Dumazet wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Thu, 2=
017-03-30 at 00:46 +0530, Varsha Rao wrote:
<br>&gt; Replace bitwise left shift by one operations with BIT() macro. Thi=
s patch
<br>&gt; fixes the checkpatch issue.
<br>&gt;=20
<br>&gt; Signed-off-by: Varsha Rao &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"HZ7eNrOzBwAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">rvars...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0net/ipv4/tcp_bbr.c | 4 ++--
<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/net/ipv4/tcp_bbr.c b/net/ipv4/tcp_bbr.c
<br>&gt; index 4da4bc1..9f2c869 100644
<br>&gt; --- a/net/ipv4/tcp_bbr.c
<br>&gt; +++ b/net/ipv4/tcp_bbr.c
<br>&gt; @@ -71,10 +71,10 @@
<br>&gt; =C2=A0 * an issue. The upper bound isn&#39;t an issue with existin=
g technologies.
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0#define BW_SCALE 24
<br>&gt; -#define BW_UNIT (1 &lt;&lt; BW_SCALE)
<br>&gt; +#define BW_UNIT BIT(BW_SCALE)
<br>&gt; =C2=A0
<br>&gt; =C2=A0#define BBR_SCALE 8=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0/* scaling factor for fractions in BBR (e.g. gains) */
<br>&gt; -#define BBR_UNIT (1 &lt;&lt; BBR_SCALE)
<br>&gt; +#define BBR_UNIT BIT(BBR_SCALE)
<br>&gt; =C2=A0
<br>&gt; =C2=A0/* BBR has the following modes for deciding how fast to send=
: */
<br>&gt; =C2=A0enum bbr_mode {
<br>
<br>Well, no. =C2=A0BIT() is using unsigned long.
<br>
<br>#define BIT(nr) =C2=A0 =C2=A0(1UL &lt;&lt; (nr))
</blockquote><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-le=
ft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">This change might=
 have unintended effects.
<br>
<br>Maybe checkpatch should be fixed.
<br></blockquote><div><br><br><div>Okay, I will revert these changes. When =
I grep fot definition, I get the following. =C2=A0 <br><br>arch/arm/mach-da=
vinci/sleep.S:#define BIT(nr)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (1 &lt;&lt;=
 (nr))<br>include/linux/bitops.h:#define BIT(nr)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 (1UL &lt;&lt; (nr))<br>tools/perf/bench/numa.c:#define BIT(x) (1ul &lt;&lt=
; x)<br>tools/perf/util/intel-pt-decoder/intel-pt-pkt-decoder.c:#define BIT=
(n)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (1 &lt;&lt; (n))<=
br>tools/vm/page-types.c:#define BIT(name)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 (1ULL &lt;&lt; KPF_##name)<br>=C2=A0<br></div>But why is th=
e definition not uniform if it causes problem in some files on usage?<br><b=
r>Thanks,<br>Varsha Rao=C2=A0 =C2=A0=C2=A0 <br></div></div>
------=_Part_117_1046123384.1490924586822--

------=_Part_116_717928862.1490924586822--

