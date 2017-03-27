X-GM-THRID: 6401831328540524544
Date: Sun, 26 Mar 2017 19:34:21 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, mawilcox@microsoft.com
Message-Id: <95a4828b-14f0-4f5d-9f06-9ccfeb39ea2b@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703261741060.2204@hadrien>
References: <cover.1490542214.git.rvarsha016@gmail.com> <58d7dfaa.c65b620a.68c66.766e@mx.google.com>
 <alpine.DEB.2.20.1703261741060.2204@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 2/3] kernel: pid: Replace unsigned
 with unsigned int.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3678_829240756.1490582061099"
X-Google-Token: EK304cYFOW3lPwl-6Io0
X-Google-IP: 2405:204:5181:ce92:a4e3:114c:b305:cb39

------=_Part_3678_829240756.1490582061099
Content-Type: multipart/alternative; 
	boundary="----=_Part_3679_622843073.1490582061099"

------=_Part_3679_622843073.1490582061099
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



>
>
> On Sun, 26 Mar 2017, Varsha Rao wrote: 
>
> > Replace unsigned with unsigned int, to fix the checkpatch issue. 
> > 
> > Signed-off-by: Varsha Rao <rvars...@gmail.com <javascript:>> 
> > --- 
> >  kernel/pid.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/kernel/pid.c b/kernel/pid.c 
> > index 0b0aad4..c022239 100644 
> > --- a/kernel/pid.c 
> > +++ b/kernel/pid.c 
> > @@ -125,7 +125,7 @@ static int pid_before(int base, int a, int b) 
> >           * (a - base + MAXUINT) % MAXUINT < (b - base + MAXUINT) % 
> MAXUINT 
> >           * and that mapping orders 'a' and 'b' with respect to 'base'. 
> >           */ 
> > -        return (unsigned)(a - base) < (unsigned)(b - base); 
> > +        return (unsigned int)(a - base) < (unsigned int)(b - base); 
> >  } 
>
> Unrelatedly, it looks like bool would be a more natural return type. 
>
  
    I will change the return type to bool. Also It is called only once in 
do while condition.
    I will send new patch for it.
    
    Regards,
    Varsha Rao
 

> julia 
>
>
------=_Part_3679_622843073.1490582061099
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 26 Mar 2017, Varsha Rao wrote:
<br>
<br>&gt; Replace unsigned with unsigned int, to fix the checkpatch issue.
<br>&gt;
<br>&gt; Signed-off-by: Varsha Rao &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"2OhZqxq3BgAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">rvars...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0kernel/pid.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/kernel/pid.c b/kernel/pid.c
<br>&gt; index 0b0aad4..c022239 100644
<br>&gt; --- a/kernel/pid.c
<br>&gt; +++ b/kernel/pid.c
<br>&gt; @@ -125,7 +125,7 @@ static int pid_before(int base, int a, int b)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * (a - base=
 + MAXUINT) % MAXUINT &lt; (b - base + MAXUINT) % MAXUINT
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * and that =
mapping orders &#39;a&#39; and &#39;b&#39; with respect to &#39;base&#39;.
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return (unsigned)=
(a - base) &lt; (unsigned)(b - base);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return (unsigned =
int)(a - base) &lt; (unsigned int)(b - base);
<br>&gt; =C2=A0}
<br>
<br>Unrelatedly, it looks like bool would be a more natural return type.
<br></blockquote><div>=C2=A0 <br>=C2=A0 =C2=A0 I will change the return typ=
e to bool. Also It is called only once in do while condition.<br>=C2=A0=C2=
=A0=C2=A0 I will send new patch for it.<br>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=
=A0=C2=A0 Regards,<br>=C2=A0=C2=A0=C2=A0 Varsha Rao<br></div><div>=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;=
border-left: 1px #ccc solid;padding-left: 1ex;">julia
<br>
<br></blockquote>
------=_Part_3679_622843073.1490582061099--

------=_Part_3678_829240756.1490582061099--

