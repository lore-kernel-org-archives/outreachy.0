X-GM-THRID: 6263750571303370752
X-Received: by 10.140.27.180 with SMTP id 49mr15950511qgx.19.1458397619952;
        Sat, 19 Mar 2016 07:26:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.29.5 with SMTP id f5ls414349igh.30.canary; Sat, 19 Mar 2016
 07:26:59 -0700 (PDT)
X-Received: by 10.66.102.106 with SMTP id fn10mr15512547pab.36.1458397619388;
        Sat, 19 Mar 2016 07:26:59 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-ob0-x242.google.com (mail-ob0-x242.google.com. [2607:f8b0:4003:c01::242])
        by gmr-mx.google.com with ESMTPS id ei9si5663426igc.2.2016.03.19.07.26.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 07:26:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) client-ip=2607:f8b0:4003:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x242.google.com with SMTP id e7so10893873obv.2
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 07:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to;
        bh=BEetkb5Pdn1cmRGybv4fgFJVAKnq31DvaOKmTS39zkU=;
        b=gqumyQQYxKsWzPZVMrzlVO6w+XKC1PNHWlz8oYEfVAmUR4OyoGxKXpl9X6+c1XCjfh
         VWYselYQaSVK1dDwtH33yQ9pvIb4tZHQ4os3X0DNtEG7dXz+IfXQ9r27b705vJej9RWl
         lvBpO3Oxp8+ZXdbCz5vSTGJywrsi9Gr8BNCkQLGyH378F5vGrj6JmN1cjdawlnHO300W
         n1YYipxXZGRpo4BdF9op/z96lKbiIb/L8Qk8WTBTFZfJBAMfduJGjFk1uX2syyPVoj2e
         323+R4NE61DZsauumhlj/ibfL6OatQqoEwDFKpbedsW+VwmWpP92tZZp8014XIfmMwdL
         nbVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to;
        bh=BEetkb5Pdn1cmRGybv4fgFJVAKnq31DvaOKmTS39zkU=;
        b=caFft65BXZF1F+BmhNRt3K42DTFu16GhSH4zsqjflpLkjHLbmA3VOljfwM2LhA8cnD
         ckUZkvVULZqKcXd2I5TGFFDNsQ0khDwZ+qkXv7YCI6JIbSd7lNkGKCW9qtNjdONK+fDs
         PvoVx4ZAS0p9sKZOgU2yJp6jBruYSMZwZ2CijpVWAObodcdrVhqwSl2yRWV7ZYrhBqbo
         64W5JnYaQnkvUXVCEB2hYw5771gkXMONgZbHxY5IQkXV3AI0IlAimcBqVW/+uQuMrDFU
         O8bmGC/DMsloLshoS7BoL8Q38LAkvjrtS7G/FkjjpU6wcLNfW/Puxu21VTDiqRkpw8uG
         ObGw==
X-Gm-Message-State: AD7BkJJFAw7tULNGH9LPuTNG1rqf1CjfWSPKixMHymK/+n64dYEzXOPjKbRT2ZKDgauuJA21OqbXRe9ScQsjbQ==
MIME-Version: 1.0
X-Received: by 10.60.116.35 with SMTP id jt3mr13728375oeb.79.1458397619134;
 Sat, 19 Mar 2016 07:26:59 -0700 (PDT)
Received: by 10.157.63.101 with HTTP; Sat, 19 Mar 2016 07:26:59 -0700 (PDT)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.02.1603191457270.2072@localhost6.localdomain6>
References: <cover.1458367377.git.bankarsandhya512@gmail.com>
	<6a66bd13896f6f5e6ff2873e697fbc72af8c8185.1458367377.git.bankarsandhya512@gmail.com>
	<alpine.DEB.2.02.1603191457270.2072@localhost6.localdomain6>
Date: Sat, 19 Mar 2016 19:56:59 +0530
Message-ID: <CAA3ASzk7TjnS9o6AV6B87HSyALdk6h8BWQqZ08YSvwhKAnKjJg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rdma: Remove & from
 function name.
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e0117704907a770052e67a831

--089e0117704907a770052e67a831
Content-Type: text/plain; charset=UTF-8

Hello,
I have run the following cocci scripts,

############################################
//
//  Remove exceptional & on function name
//
// Target: Linux
// Copyright:  2012 - LIP6/INRIA
// License:  Licensed under ISC. See LICENSE or
http://www.isc.org/software/license
// Author: Julia Lawall <Julia.Lawall@lip6.fr>
// URL: http://coccinelle.lip6.fr/
// URL: http://coccinellery.org/

@script:python@
@@

with_and = 0
without_and = 0

@r@
identifier f;
@@

f(...) { ... }

@addr1@
identifier r.f;
position pa;
@@

 &f@pa

@script:python@
p << addr1.pa;
@@

with_and = with_and + 1

@r1@
identifier r.f;
position p;
declarer name  EXPORT_SYMBOL;
@@

(
EXPORT_SYMBOL(f@p);
|
module_init(f@p);
|
module_exit(f@p);
|
f@p(...)
)

@noaddr1@
identifier r.f;
position pn != r1.p;
@@

(
  &f
|
 f@pn
)

@script:python@
p << noaddr1.pn;
@@

without_and = without_and + 1

@script:python@
@@

choose_without_and = False
#if (with_and * 25 < without_and):
#  choose_without_and = True
if (with_and == 1 and without_and > 9):
  choose_without_and = True

choose_with_and = False
#if (without_and * 25 < with_and):
#  choose_with_and = True
if (without_and == 1 and with_and > 9):
  choose_with_and = True

@script:python@
p << addr1.pa;
f << r.f;
@@

if (choose_with_and or not choose_without_and):
  cocci.include_match(False)

@script:python@
p << noaddr1.pn;
f << r.f;
@@

if (choose_without_and or not choose_with_and):
  cocci.include_match(False)

@@
identifier f;
position addr1.pa;
position noaddr1.pn;
@@

(
- &f@pa
+ f
|
- f@pn
+ &f
)
#############################################################################################

The cocci file reported above change only. should i remove in other case
also as these are function names?

On Sat, Mar 19, 2016 at 7:27 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Sat, 19 Mar 2016, Sandhya Bankar wrote:
>
> > Remove & from function name.
> >
> > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > ---
> >  drivers/staging/rdma/hfi1/verbs.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rdma/hfi1/verbs.c
> b/drivers/staging/rdma/hfi1/verbs.c
> > index 1761686..ece62b7 100644
> > --- a/drivers/staging/rdma/hfi1/verbs.c
> > +++ b/drivers/staging/rdma/hfi1/verbs.c
> > @@ -261,7 +261,7 @@ static const opcode_handler opcode_handler_tbl[256]
> = {
> >       [IB_OPCODE_UD_SEND_ONLY]                      = &hfi1_ud_rcv,
> >       [IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE]       = &hfi1_ud_rcv,
> >       /* CNP */
> > -     [IB_OPCODE_CNP]                               = &hfi1_cnp_rcv
> > +     [IB_OPCODE_CNP]                               = hfi1_cnp_rcv
>
> Why not make the change in the other cases?
>
> julia
>
> >  };
> >
> >  /*
> > --
> > 1.8.3.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/6a66bd13896f6f5e6ff2873e697fbc72af8c8185.1458367377.git.bankarsandhya512%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--089e0117704907a770052e67a831
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br></div>I have run the following cocci s=
cripts,<br><br>############################################<br>//<br>//=C2=
=A0 Remove exceptional &amp; on function name<br>//<br>// Target: Linux<br>=
// Copyright:=C2=A0 2012 - LIP6/INRIA<br>// License:=C2=A0 Licensed under I=
SC. See LICENSE or <a href=3D"http://www.isc.org/software/license">http://w=
ww.isc.org/software/license</a><br>// Author: Julia Lawall &lt;<a href=3D"m=
ailto:Julia.Lawall@lip6.fr">Julia.Lawall@lip6.fr</a>&gt;<br>// URL: <a href=
=3D"http://coccinelle.lip6.fr/">http://coccinelle.lip6.fr/</a> <br>// URL: =
<a href=3D"http://coccinellery.org/">http://coccinellery.org/</a> <br><br>@=
script:python@<br>@@<br><br>with_and =3D 0<br>without_and =3D 0<br><br>@r@<=
br>identifier f;<br>@@<br><br>f(...) { ... }<br><br>@addr1@<br>identifier r=
.f;<br>position pa;<br>@@<br><br>=C2=A0&amp;f@pa<br><br>@script:python@<br>=
p &lt;&lt; <a href=3D"http://addr1.pa">addr1.pa</a>;<br>@@<br><br>with_and =
=3D with_and + 1<br><br>@r1@<br>identifier r.f;<br>position p;<br>declarer =
name=C2=A0 EXPORT_SYMBOL;<br>@@<br><br>(<br>EXPORT_SYMBOL(f@p);<br>|<br>mod=
ule_init(f@p);<br>|<br>module_exit(f@p);<br>|<br>f@p(...)<br>)<br><br>@noad=
dr1@<br>identifier r.f;<br>position pn !=3D r1.p;<br>@@<br><br>(<br>=C2=A0 =
&amp;f<br>|<br>=C2=A0f@pn<br>)<br><br>@script:python@<br>p &lt;&lt; <a href=
=3D"http://noaddr1.pn">noaddr1.pn</a>;<br>@@<br><br>without_and =3D without=
_and + 1<br><br>@script:python@<br>@@<br><br>choose_without_and =3D False<b=
r>#if (with_and * 25 &lt; without_and):<br>#=C2=A0 choose_without_and =3D T=
rue<br>if (with_and =3D=3D 1 and without_and &gt; 9):<br>=C2=A0 choose_with=
out_and =3D True<br><br>choose_with_and =3D False<br>#if (without_and * 25 =
&lt; with_and):<br>#=C2=A0 choose_with_and =3D True<br>if (without_and =3D=
=3D 1 and with_and &gt; 9):<br>=C2=A0 choose_with_and =3D True<br><br>@scri=
pt:python@<br>p &lt;&lt; <a href=3D"http://addr1.pa">addr1.pa</a>;<br>f &lt=
;&lt; r.f;<br>@@<br><br>if (choose_with_and or not choose_without_and):<br>=
=C2=A0 cocci.include_match(False)<br><br>@script:python@<br>p &lt;&lt; <a h=
ref=3D"http://noaddr1.pn">noaddr1.pn</a>;<br>f &lt;&lt; r.f;<br>@@<br><br>i=
f (choose_without_and or not choose_with_and):<br>=C2=A0 cocci.include_matc=
h(False)<br><br>@@<br>identifier f;<br>position <a href=3D"http://addr1.pa"=
>addr1.pa</a>;<br>position <a href=3D"http://noaddr1.pn">noaddr1.pn</a>;<br=
>@@<br><br>(<br>- &amp;f@pa<br>+ f<br>|<br>- f@pn<br>+ &amp;f<br>)<br>#####=
###########################################################################=
#############<br><br></div><div>The cocci file reported above change only. =
should i remove in other case also as these are function names?<br></div></=
div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Mar 1=
9, 2016 at 7:27 PM, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:ju=
lia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Sat, 19 Mar 201=
6, Sandhya Bankar wrote:<br>
<br>
&gt; Remove &amp; from function name.<br>
&gt;<br>
&gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhya512@g=
mail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rdma/hfi1/verbs.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rdma/hfi1/verbs.c b/drivers/staging/rdma/=
hfi1/verbs.c<br>
&gt; index 1761686..ece62b7 100644<br>
&gt; --- a/drivers/staging/rdma/hfi1/verbs.c<br>
&gt; +++ b/drivers/staging/rdma/hfi1/verbs.c<br>
&gt; @@ -261,7 +261,7 @@ static const opcode_handler opcode_handler_tbl[256=
] =3D {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0[IB_OPCODE_UD_SEND_ONLY]=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &amp;hfi1_ud_r=
cv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0[IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE]=C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &amp;hfi1_ud_rcv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* CNP */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0[IB_OPCODE_CNP]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &amp;hfi1_cnp_rcv<br>
&gt; +=C2=A0 =C2=A0 =C2=A0[IB_OPCODE_CNP]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D hfi1_cnp_rcv<br>
<br>
</span>Why not make the change in the other cases?<br>
<br>
julia<br>
<br>
&gt;=C2=A0 };<br>
&gt;<br>
&gt;=C2=A0 /*<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; 1.8.3.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/6a66bd13896f6f5e6ff2873e697fbc72af8c8185.1=
458367377.git.bankarsandhya512%40gmail.com" rel=3D"noreferrer" target=3D"_b=
lank">https://groups.google.com/d/msgid/outreachy-kernel/6a66bd13896f6f5e6f=
f2873e697fbc72af8c8185.1458367377.git.bankarsandhya512%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--089e0117704907a770052e67a831--

