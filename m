X-GM-THRID: 9252100898816
X-Received: by 10.236.229.233 with SMTP id h99mr87257544yhq.42.1426872458883;
        Fri, 20 Mar 2015 10:27:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.163.19 with SMTP id m19ls1248274ioe.59.gmail; Fri, 20 Mar
 2015 10:27:38 -0700 (PDT)
X-Received: by 10.42.83.209 with SMTP id i17mr4764940icl.32.1426872458505;
        Fri, 20 Mar 2015 10:27:38 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-yk0-x22f.google.com (mail-yk0-x22f.google.com. [2607:f8b0:4002:c07::22f])
        by gmr-mx.google.com with ESMTPS id k10si356440yho.2.2015.03.20.10.27.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 10:27:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:4002:c07::22f as permitted sender) client-ip=2607:f8b0:4002:c07::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:4002:c07::22f as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yk0-x22f.google.com with SMTP id c206so45650152ykf.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 10:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-type;
        bh=qFi+xIU73j76BU9Ht/EPBMrZl9h3mAxZmz2lnrNVrCM=;
        b=HqpHy5JEdXAiCO9JYZTK4Y/T58OqtTKkXBd1+vj+ViTNsM7DMSVtECuXM+0rP9tIxc
         Ol+fkUAEdRbS+yVUmhGmuIK9byiy34ezewyEV8PHmm5C60+GDuFoogGslshxg+4l0yNF
         yjUZOHIpYfc6lcwLo71Src4LHViE7VeG9gHkgzrjuO7cLYU9pmV8CAi1RB5rKsNUtopp
         +kD/rCYBZ3V12csMgvAOHID2lkxkKDfgbw0+0xorZyQi4HMdQvZhznzQkZKkcN6jvtCN
         Us8junuk3QfkiWIiJTe6lMANrLVAZn5k562+g0PHKMELcD5ET84DGnZCjF5ujIi6Knez
         Vgpg==
X-Received: by 10.52.243.41 with SMTP id wv9mr86354573vdc.20.1426872458336;
 Fri, 20 Mar 2015 10:27:38 -0700 (PDT)
MIME-Version: 1.0
References: <1426856679-1443-1-git-send-email-somyaanand214@gmail.com>
 <1426856679-1443-2-git-send-email-somyaanand214@gmail.com> <alpine.DEB.2.10.1503201537160.2987@hadrien>
In-Reply-To: <alpine.DEB.2.10.1503201537160.2987@hadrien>
From: Somya Anand <somyaanand214@gmail.com>
Date: Fri, 20 Mar 2015 17:27:37 +0000
Message-ID: <CANPzvBB2zjQxD7+aOdB0qx4VX5jB7zK3wSNtnTD_SNvYeEhwXg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: Convert macro
 class_export_rpc_dec into static inline function
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1134013804de630511bba21c

--001a1134013804de630511bba21c
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 20, 2015 at 8:09 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Fri, 20 Mar 2015, Somya Anand wrote:
>
> > Static inline function are generally preferred over macros because
> > static inline functions have types and return values. But in order
> > to change a macro into static inline function we have to check the
> > calling sites of the macro and ensuring that the types of arguments
> > in each case is same and also ensure that macro always returns same
> > type.
>
> This is a nice effort to explain things, but I think that it is too much
> for a commit message.  Just explain concisely what was done and why.  Ie,
> you have changed the macro to a function, and you have checked that the
> type you have chosen for the parameter is compatible with the types of the
> arguments at all of the call sites. The kind of explanation you have here
> could be better for a cover letter.
>

 Thank you for pointing it out. I will do the necessary changes to make it
 concise and add further description in a cover letter.

 Thanks
 --
 somya

>
> julia
>
> > This patch converts the macro class_export_rpc_dec into static inline
> > function. To do so, we have used the following coccinelle script to
> > ensure the above mentioned requirements for this change.
> >
> > Since this macro does not return anything, so coccinelle script can be
> > simplified to avoid return type checks.
> >
> > @initialize:python@
> > @@
> > list = []
> >
> > @rule1@
> > type T;
> > T e;
> > expression list[n] es;
> > @@
> > class_export_rpc_dec(es,e,...);
> >
> > @script:python rule2@
> > e << rule1.e;
> > T << rule1.T;
> > @@
> > list.append(T)
> >
> > @finalize:python@
> > @@
> > possible = True
> > for t in list:
> >     if t != list[0]:
> >             possible = False
> >
> > if possible:
> >     print 'This patch is possible. Argument type:', list[0]
> > else:
> >     print 'This patch is not possible'
> >
> > Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/include/obd_class.h | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/include/obd_class.h
> b/drivers/staging/lustre/lustre/include/obd_class.h
> > index 9f528d4..3565660 100644
> > --- a/drivers/staging/lustre/lustre/include/obd_class.h
> > +++ b/drivers/staging/lustre/lustre/include/obd_class.h
> > @@ -229,13 +229,13 @@ static inline void class_export_rpc_inc(struct
> obd_export *exp)
> >              (exp), atomic_read(&(exp)->exp_rpc_count));
> >  }
> >
> > -#define class_export_rpc_dec(exp)                                   \
> > -({                                                                 \
> > -     LASSERT_ATOMIC_POS(&exp->exp_rpc_count);                        \
> > -     atomic_dec(&(exp)->exp_rpc_count);                        \
> > -     CDEBUG(D_INFO, "RPC PUTting export %p : new rpc_count %d\n",    \
> > -            (exp), atomic_read(&(exp)->exp_rpc_count));        \
> > -})
> > +static inline void class_export_rpc_dec(struct obd_export *exp)
> > +{
> > +     LASSERT_ATOMIC_POS(&exp->exp_rpc_count);
> > +     atomic_dec(&(exp)->exp_rpc_count);
> > +     CDEBUG(D_INFO, "RPC PUTting export %p : new rpc_count %d\n",
> > +            (exp), atomic_read(&(exp)->exp_rpc_count));
> > +}
> >
> >  #define class_export_lock_get(exp, lock)                             \
> >  ({                                                                 \
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/1426856679-1443-2-git-send-
> email-somyaanand214%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a1134013804de630511bba21c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote">On Fri, Mar 20, 2015 at=
 8:09 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.law=
all@lip6.fr</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Fri, 20 Mar=
 2015, Somya Anand wrote:<br>
<br>
&gt; Static inline function are generally preferred over macros because<br>
&gt; static inline functions have types and return values. But in order<br>
&gt; to change a macro into static inline function we have to check the<br>
&gt; calling sites of the macro and ensuring that the types of arguments<br=
>
&gt; in each case is same and also ensure that macro always returns same<br=
>
&gt; type.<br>
<br>
This is a nice effort to explain things, but I think that it is too much<br=
>
for a commit message.=C2=A0 Just explain concisely what was done and why.=
=C2=A0 Ie,<br>
you have changed the macro to a function, and you have checked that the<br>
type you have chosen for the parameter is compatible with the types of the<=
br>
arguments at all of the call sites. The kind of explanation you have here<b=
r>
could be better for a cover letter.<br></blockquote><div><br></div><div>=C2=
=A0Thank you for pointing it out. I will do the necessary changes to make i=
t =C2=A0concise and add further description in a cover letter.</div><div><b=
r></div><div>=C2=A0Thanks</div><div>=C2=A0--</div><div>=C2=A0somya=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<br>
&gt; This patch converts the macro class_export_rpc_dec into static inline<=
br>
&gt; function. To do so, we have used the following coccinelle script to<br=
>
&gt; ensure the above mentioned requirements for this change.<br>
&gt;<br>
&gt; Since this macro does not return anything, so coccinelle script can be=
<br>
&gt; simplified to avoid return type checks.<br>
&gt;<br>
&gt; @initialize:python@<br>
&gt; @@<br>
&gt; list =3D []<br>
&gt;<br>
&gt; @rule1@<br>
&gt; type T;<br>
&gt; T e;<br>
&gt; expression list[n] es;<br>
&gt; @@<br>
&gt; class_export_rpc_dec(es,e,...)<u></u>;<br>
&gt;<br>
&gt; @script:python rule2@<br>
&gt; e &lt;&lt; rule1.e;<br>
&gt; T &lt;&lt; rule1.T;<br>
&gt; @@<br>
&gt; list.append(T)<br>
&gt;<br>
&gt; @finalize:python@<br>
&gt; @@<br>
&gt; possible =3D True<br>
&gt; for t in list:<br>
&gt;=C2=A0 =C2=A0 =C2=A0if t !=3D list[0]:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0possible =3D False<br>
&gt;<br>
&gt; if possible:<br>
&gt;=C2=A0 =C2=A0 =C2=A0print &#39;This patch is possible. Argument type:&#=
39;, list[0]<br>
&gt; else:<br>
&gt;=C2=A0 =C2=A0 =C2=A0print &#39;This patch is not possible&#39;<br>
&gt;<br>
&gt; Signed-off-by: Somya Anand &lt;<a href=3D"mailto:somyaanand214@gmail.c=
om" target=3D"_blank">somyaanand214@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/<u></u>include/obd_class.h | 14 ++=
+++++-------<br>
&gt;=C2=A0 1 file changed, 7 insertions(+), 7 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/<u></u>lustre/include/obd_class.h =
b/drivers/staging/lustre/<u></u>lustre/include/obd_class.h<br>
&gt; index 9f528d4..3565660 100644<br>
&gt; --- a/drivers/staging/lustre/<u></u>lustre/include/obd_class.h<br>
&gt; +++ b/drivers/staging/lustre/<u></u>lustre/include/obd_class.h<br>
&gt; @@ -229,13 +229,13 @@ static inline void class_export_rpc_inc(struct o=
bd_export *exp)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (exp), atomic_read(&am=
p;(exp)-&gt;exp_rpc_<u></u>count));<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt; -#define class_export_rpc_dec(exp)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0\<br>
&gt; -({=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0LASSERT_ATOMIC_POS(&amp;exp-&gt;exp_<u></u>rpc_co=
unt);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0atomic_dec(&amp;(exp)-&gt;exp_rpc_<u></u>count);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0CDEBUG(D_INFO, &quot;RPC PUTting export %p : new =
rpc_count %d\n&quot;,=C2=A0 =C2=A0 \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (exp), atomic_read(&amp;(ex=
p)-&gt;exp_rpc_<u></u>count));=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; -})<br>
&gt; +static inline void class_export_rpc_dec(struct obd_export *exp)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0LASSERT_ATOMIC_POS(&amp;exp-&gt;exp_<u></u>rpc_co=
unt);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0atomic_dec(&amp;(exp)-&gt;exp_rpc_<u></u>count);<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0CDEBUG(D_INFO, &quot;RPC PUTting export %p : new =
rpc_count %d\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (exp), atomic_read(&amp;(ex=
p)-&gt;exp_rpc_<u></u>count));<br>
&gt; +}<br>
&gt;<br>
&gt;=C2=A0 #define class_export_lock_get(exp, lock)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0\<br>
&gt;=C2=A0 ({=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@<u></u>googlegroups.com=
</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.<u></u>=
com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1426856679-1443-2-git-send-email-somyaanan=
d214%40gmail.com" target=3D"_blank">https://groups.google.com/d/<u></u>msgi=
d/outreachy-kernel/<u></u>1426856679-1443-2-git-send-<u></u>email-somyaanan=
d214%40gmail.<u></u>com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/<u></u>optout</a>.<br>
&gt;<br>
</blockquote></div></div>

--001a1134013804de630511bba21c--

