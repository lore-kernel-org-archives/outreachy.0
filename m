X-GM-THRID: 6263750571303370752
X-Received: by 10.140.181.198 with SMTP id c189mr19741470qha.24.1458489301660;
        Sun, 20 Mar 2016 08:55:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.13 with SMTP id z13ls2883011qge.36.gmail; Sun, 20 Mar
 2016 08:55:01 -0700 (PDT)
X-Received: by 10.31.165.1 with SMTP id o1mr19688083vke.12.1458489301211;
        Sun, 20 Mar 2016 08:55:01 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-oi0-x243.google.com (mail-oi0-x243.google.com. [2607:f8b0:4003:c06::243])
        by gmr-mx.google.com with ESMTPS id bc4si12584603igb.3.2016.03.20.08.55.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 08:55:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::243 as permitted sender) client-ip=2607:f8b0:4003:c06::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x243.google.com with SMTP id n20so790576oig.3
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 08:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to;
        bh=THNWEp0j2xCw+O+/ZJqeyGe1CdJ/6BVs69P+ZLi/Ifg=;
        b=R5Do4XIAXyQ8eXBb3tcfvhxEARDY/NP7yaBah1JPQoSl/3NFZv88LXpTRTpVnAaNFG
         kYxHwXr8B4t8l5W5fDWC8dqa/I+rJ3P7Hn14kJOC6n+Tky6oQliqDKzUjarUxRFKK2Sf
         RK3OBdcEk730HskKK/M36+rKJQOH3UsKxdQ1VZKk20R5sBTDU3zw0B2omvMhoaaaKC5t
         XN0qrT4wDFLSTEqrIHoVAK9FhgxkRZoUfJ3NMS7RnoACVjaPqETlbrRTEyywuGWSctsA
         G1kLgK6SSsL80aRpH26WsmthxiysCcL3qC97H0i4icFpGurQH2UIBsStxDjyTY4xnTlJ
         GZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to;
        bh=THNWEp0j2xCw+O+/ZJqeyGe1CdJ/6BVs69P+ZLi/Ifg=;
        b=U0IJk+b+Ic09hQVp05RY6uVjNm8OFZgThqViCFOa6mE5nNawIbVVEeM4kjDfIl/w5W
         wK60H7tGjZptysKeP8JZdiVFuMWIDdo7hTAd4S0+3qNWTh481fIN/fmz5UJqNrQpoAKW
         e1F1stiyDUt/fHsVArUx/lWEGbFNRQm8yPvwsksp2FA0qhMG0Y8RLP7/7C977wce8iif
         T9u/ubLTJnhJYAIlfzjE+EeoZGoSSwRgpFBP7GcnbCxfqz3CEWZHyyO1vn7qS54/tVMc
         kY79gQxFeeHr0lH7sexE1VX+RVslWW0tf/i62FS03CNEvmDVeJxVspfECmYwNpgAthtU
         vVLg==
X-Gm-Message-State: AD7BkJLnhFgbwOIBcC66rY6dsZK4XjwWjxxESSuP7B0QUbOTIGth+iP87p9x+Jcz6Hj5xgKXxKbE09gehR3Hwg==
MIME-Version: 1.0
X-Received: by 10.202.83.210 with SMTP id h201mr14819530oib.128.1458489300979;
 Sun, 20 Mar 2016 08:55:00 -0700 (PDT)
Received: by 10.157.63.101 with HTTP; Sun, 20 Mar 2016 08:55:00 -0700 (PDT)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <CA+5yK5GCGrNMq5ciLNhWf+JTKBgvVA6NhmzD04Oj5efy7qWpxA@mail.gmail.com>
References: <cover.1458367377.git.bankarsandhya512@gmail.com>
	<6a66bd13896f6f5e6ff2873e697fbc72af8c8185.1458367377.git.bankarsandhya512@gmail.com>
	<alpine.DEB.2.02.1603191457270.2072@localhost6.localdomain6>
	<CAA3ASzk7TjnS9o6AV6B87HSyALdk6h8BWQqZ08YSvwhKAnKjJg@mail.gmail.com>
	<CA+5yK5GCGrNMq5ciLNhWf+JTKBgvVA6NhmzD04Oj5efy7qWpxA@mail.gmail.com>
Date: Sun, 20 Mar 2016 21:25:00 +0530
Message-ID: <CAA3ASz=qorUDcX0=T+3X4j22_rO3Snax=b90qxVi32j786vAbQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rdma: Remove & from
 function name.
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113d1e56b198c8052e7d003a

--001a113d1e56b198c8052e7d003a
Content-Type: text/plain; charset=UTF-8

Thanks for the suggestion Amitoj.
I have run spatch with suggested option but i have not got  any output
since 15-16 hours.
Is it expected ?

Julia,
   Should i change all & from function name? however the cocci file have
not detected these.



Thanks,
Sandhya

On Sat, Mar 19, 2016 at 8:24 PM, Amitoj Kaur Chawla <amitoj1606@gmail.com>
wrote:

> On Sat, Mar 19, 2016 at 7:56 PM, sandhya bankar
> <bankarsandhya512@gmail.com> wrote:
> > Hello,
> > I have run the following cocci scripts,
> >
> > ############################################
> > //
> > //  Remove exceptional & on function name
> > //
> > // Target: Linux
> > // Copyright:  2012 - LIP6/INRIA
> > // License:  Licensed under ISC. See LICENSE or
> > http://www.isc.org/software/license
> > // Author: Julia Lawall <Julia.Lawall@lip6.fr>
> > // URL: http://coccinelle.lip6.fr/
> > // URL: http://coccinellery.org/
> >
> > @script:python@
> > @@
> >
> > with_and = 0
> > without_and = 0
> >
> > @r@
> > identifier f;
> > @@
> >
> > f(...) { ... }
> >
> > @addr1@
> > identifier r.f;
> > position pa;
> > @@
> >
> >  &f@pa
> >
> > @script:python@
> > p << addr1.pa;
> > @@
> >
> > with_and = with_and + 1
> >
> > @r1@
> > identifier r.f;
> > position p;
> > declarer name  EXPORT_SYMBOL;
> > @@
> >
> > (
> > EXPORT_SYMBOL(f@p);
> > |
> > module_init(f@p);
> > |
> > module_exit(f@p);
> > |
> > f@p(...)
> > )
> >
> > @noaddr1@
> > identifier r.f;
> > position pn != r1.p;
> > @@
> >
> > (
> >   &f
> > |
> >  f@pn
> > )
> >
> > @script:python@
> > p << noaddr1.pn;
> > @@
> >
> > without_and = without_and + 1
> >
> > @script:python@
> > @@
> >
> > choose_without_and = False
> > #if (with_and * 25 < without_and):
> > #  choose_without_and = True
> > if (with_and == 1 and without_and > 9):
> >   choose_without_and = True
> >
> > choose_with_and = False
> > #if (without_and * 25 < with_and):
> > #  choose_with_and = True
> > if (without_and == 1 and with_and > 9):
> >   choose_with_and = True
> >
> > @script:python@
> > p << addr1.pa;
> > f << r.f;
> > @@
> >
> > if (choose_with_and or not choose_without_and):
> >   cocci.include_match(False)
> >
> > @script:python@
> > p << noaddr1.pn;
> > f << r.f;
> > @@
> >
> > if (choose_without_and or not choose_with_and):
> >   cocci.include_match(False)
> >
> > @@
> > identifier f;
> > position addr1.pa;
> > position noaddr1.pn;
> > @@
> >
> > (
> > - &f@pa
> > + f
> > |
> > - f@pn
> > + &f
> > )
> >
> #############################################################################################
> >
> > The cocci file reported above change only. should i remove in other case
> > also as these are function names?
> >
> Try running this with --recursive-includes option added in your spatch
> command:
>
> // <smpl>
> @r@
> identifier f;
> @@
> f(...) { ... }
> @@
> identifier r.f;
> @@
> - &f
> + f
>
> @m@
> type T;
> identifier f;
> @@
> T f(...);
> @@
> identifier m.f;
> @@
> - &f
> + f
> // </smpl>
>
> Also, maybe try it only for staging/rdma at first since
> --recursive-includes may take quite some time.
>
> I ran into the same issue and with Julia's help, this was the solution
> I found. Hope it works for you.
>
>
> Amitoj
>

--001a113d1e56b198c8052e7d003a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Thanks for the suggestion Amitoj.<br><=
/div>I have run spatch with suggested option but i have not got=C2=A0 any o=
utput since 15-16 hours.<br></div>Is it expected ?<br><br></div><div>Julia,=
<br></div><div>=C2=A0=C2=A0 Should i change all &amp; from function name? h=
owever the cocci file have not detected these.<br></div><div><br><br><br></=
div>Thanks,<br></div>Sandhya<br></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Sat, Mar 19, 2016 at 8:24 PM, Amitoj Kaur Chawla <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:amitoj1606@gmail.com" target=3D"_blan=
k">amitoj1606@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div class=3D"HOEnZb"><div class=3D"h5">On Sat, Mar 19, 2016 at 7:56 P=
M, sandhya bankar<br>
&lt;<a href=3D"mailto:bankarsandhya512@gmail.com">bankarsandhya512@gmail.co=
m</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt; I have run the following cocci scripts,<br>
&gt;<br>
&gt; ############################################<br>
&gt; //<br>
&gt; //=C2=A0 Remove exceptional &amp; on function name<br>
&gt; //<br>
&gt; // Target: Linux<br>
&gt; // Copyright:=C2=A0 2012 - LIP6/INRIA<br>
&gt; // License:=C2=A0 Licensed under ISC. See LICENSE or<br>
&gt; <a href=3D"http://www.isc.org/software/license" rel=3D"noreferrer" tar=
get=3D"_blank">http://www.isc.org/software/license</a><br>
&gt; // Author: Julia Lawall &lt;<a href=3D"mailto:Julia.Lawall@lip6.fr">Ju=
lia.Lawall@lip6.fr</a>&gt;<br>
&gt; // URL: <a href=3D"http://coccinelle.lip6.fr/" rel=3D"noreferrer" targ=
et=3D"_blank">http://coccinelle.lip6.fr/</a><br>
&gt; // URL: <a href=3D"http://coccinellery.org/" rel=3D"noreferrer" target=
=3D"_blank">http://coccinellery.org/</a><br>
&gt;<br>
&gt; @script:python@<br>
&gt; @@<br>
&gt;<br>
&gt; with_and =3D 0<br>
&gt; without_and =3D 0<br>
&gt;<br>
&gt; @r@<br>
&gt; identifier f;<br>
&gt; @@<br>
&gt;<br>
&gt; f(...) { ... }<br>
&gt;<br>
&gt; @addr1@<br>
&gt; identifier r.f;<br>
&gt; position pa;<br>
&gt; @@<br>
&gt;<br>
&gt;=C2=A0 &amp;f@pa<br>
&gt;<br>
&gt; @script:python@<br>
&gt; p &lt;&lt; <a href=3D"http://addr1.pa" rel=3D"noreferrer" target=3D"_b=
lank">addr1.pa</a>;<br>
&gt; @@<br>
&gt;<br>
&gt; with_and =3D with_and + 1<br>
&gt;<br>
&gt; @r1@<br>
&gt; identifier r.f;<br>
&gt; position p;<br>
&gt; declarer name=C2=A0 EXPORT_SYMBOL;<br>
&gt; @@<br>
&gt;<br>
&gt; (<br>
&gt; EXPORT_SYMBOL(f@p);<br>
&gt; |<br>
&gt; module_init(f@p);<br>
&gt; |<br>
&gt; module_exit(f@p);<br>
&gt; |<br>
&gt; f@p(...)<br>
&gt; )<br>
&gt;<br>
&gt; @noaddr1@<br>
&gt; identifier r.f;<br>
&gt; position pn !=3D r1.p;<br>
&gt; @@<br>
&gt;<br>
&gt; (<br>
&gt;=C2=A0 =C2=A0&amp;f<br>
&gt; |<br>
&gt;=C2=A0 f@pn<br>
&gt; )<br>
&gt;<br>
&gt; @script:python@<br>
&gt; p &lt;&lt; <a href=3D"http://noaddr1.pn" rel=3D"noreferrer" target=3D"=
_blank">noaddr1.pn</a>;<br>
&gt; @@<br>
&gt;<br>
&gt; without_and =3D without_and + 1<br>
&gt;<br>
&gt; @script:python@<br>
&gt; @@<br>
&gt;<br>
&gt; choose_without_and =3D False<br>
&gt; #if (with_and * 25 &lt; without_and):<br>
&gt; #=C2=A0 choose_without_and =3D True<br>
&gt; if (with_and =3D=3D 1 and without_and &gt; 9):<br>
&gt;=C2=A0 =C2=A0choose_without_and =3D True<br>
&gt;<br>
&gt; choose_with_and =3D False<br>
&gt; #if (without_and * 25 &lt; with_and):<br>
&gt; #=C2=A0 choose_with_and =3D True<br>
&gt; if (without_and =3D=3D 1 and with_and &gt; 9):<br>
&gt;=C2=A0 =C2=A0choose_with_and =3D True<br>
&gt;<br>
&gt; @script:python@<br>
&gt; p &lt;&lt; <a href=3D"http://addr1.pa" rel=3D"noreferrer" target=3D"_b=
lank">addr1.pa</a>;<br>
&gt; f &lt;&lt; r.f;<br>
&gt; @@<br>
&gt;<br>
&gt; if (choose_with_and or not choose_without_and):<br>
&gt;=C2=A0 =C2=A0cocci.include_match(False)<br>
&gt;<br>
&gt; @script:python@<br>
&gt; p &lt;&lt; <a href=3D"http://noaddr1.pn" rel=3D"noreferrer" target=3D"=
_blank">noaddr1.pn</a>;<br>
&gt; f &lt;&lt; r.f;<br>
&gt; @@<br>
&gt;<br>
&gt; if (choose_without_and or not choose_with_and):<br>
&gt;=C2=A0 =C2=A0cocci.include_match(False)<br>
&gt;<br>
&gt; @@<br>
&gt; identifier f;<br>
&gt; position <a href=3D"http://addr1.pa" rel=3D"noreferrer" target=3D"_bla=
nk">addr1.pa</a>;<br>
&gt; position <a href=3D"http://noaddr1.pn" rel=3D"noreferrer" target=3D"_b=
lank">noaddr1.pn</a>;<br>
&gt; @@<br>
&gt;<br>
&gt; (<br>
&gt; - &amp;f@pa<br>
&gt; + f<br>
&gt; |<br>
&gt; - f@pn<br>
&gt; + &amp;f<br>
&gt; )<br>
&gt; ######################################################################=
#######################<br>
&gt;<br>
&gt; The cocci file reported above change only. should i remove in other ca=
se<br>
&gt; also as these are function names?<br>
&gt;<br>
</div></div>Try running this with --recursive-includes option added in your=
 spatch command:<br>
<br>
// &lt;smpl&gt;<br>
<span class=3D"">@r@<br>
identifier f;<br>
@@<br>
f(...) { ... }<br>
</span>@@<br>
identifier r.f;<br>
@@<br>
- &amp;f<br>
+ f<br>
<br>
@m@<br>
type T;<br>
identifier f;<br>
@@<br>
T f(...);<br>
@@<br>
identifier m.f;<br>
@@<br>
- &amp;f<br>
+ f<br>
// &lt;/smpl&gt;<br>
<br>
Also, maybe try it only for staging/rdma at first since<br>
--recursive-includes may take quite some time.<br>
<br>
I ran into the same issue and with Julia&#39;s help, this was the solution<=
br>
I found. Hope it works for you.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
Amitoj<br>
</font></span></blockquote></div><br></div>

--001a113d1e56b198c8052e7d003a--

