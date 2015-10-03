X-GM-THRID: 6201124442892926976
X-Received: by 10.31.162.16 with SMTP id l16mr17020972vke.5.1443872950024;
        Sat, 03 Oct 2015 04:49:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.230 with SMTP id l93ls1863524qgd.87.gmail; Sat, 03 Oct
 2015 04:49:09 -0700 (PDT)
X-Received: by 10.13.249.198 with SMTP id j189mr16852960ywf.27.1443872949362;
        Sat, 03 Oct 2015 04:49:09 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-io0-x22c.google.com (mail-io0-x22c.google.com. [2607:f8b0:4001:c06::22c])
        by gmr-mx.google.com with ESMTPS id a11si291367igv.3.2015.10.03.04.49.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 04:49:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) client-ip=2607:f8b0:4001:c06::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22c.google.com with SMTP id z6so144658184ioi.2
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 04:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=tiOkeIbdxRQZAE/NVMcoBh9qhCBVWFbWh6cNQ9OKPro=;
        b=uF0lCJn2FNIgSNp4nb7lf9PWYDfVMq8KH28QWMrWq/th4Qo+b+/fuL1rTHlTrISLMP
         fnS7ne8LA0wVFlGVj/lHdWq5zszS2fSG76YTMtNWicHnmytk+Gjoom0NkBGpTSUuovZd
         bS5hYJpEiK+7SZTOmuShC3xepxzuVsYklfGVkAESrjLiMbCCf9k5tDao2bMYNi9Myl4q
         9Own9UWFRCI/h5GpthiPVdIyP6HF5lhmOmN3t2xu78+U1az2fIOlmAWPmFKlb96qGFJ1
         ZMvEbtsdWAQMkSGZ9B4Du4ZIAkx4NxsuXArgk2Vg2ydXYR9RBktK7f04kU2pLyyaoAK/
         YipQ==
MIME-Version: 1.0
X-Received: by 10.107.160.67 with SMTP id j64mr19807894ioe.128.1443872949185;
 Sat, 03 Oct 2015 04:49:09 -0700 (PDT)
Received: by 10.64.155.6 with HTTP; Sat, 3 Oct 2015 04:49:09 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510022225350.2163@localhost6.localdomain6>
References: <1443811785-50375-1-git-send-email-cristina.moraru09@gmail.com>
	<alpine.DEB.2.02.1510022225350.2163@localhost6.localdomain6>
Date: Sat, 3 Oct 2015 14:49:09 +0300
Message-ID: <CAGZ2q2x2isxseeCSJwrmaPsLCRF=07p+TU6ZbHoRZUGSYHRuPg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Switch unnecessary
 /** to /*
From: Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1140ed9c3cd6a5052131de61

--001a1140ed9c3cd6a5052131de61
Content-Type: text/plain; charset=UTF-8

Yes, I changed "/**" to "/*" where "/**" was used in regular comments and
not kernel-doc comments.

For example, the code:
> /**
> * cvm_oct_poll_queue - Workqueue for polling operations.
> */
> struct workqueue_struct *cvm_oct_poll_queue;


caused the following warning when I run the script kernel-doc:
> ethernet.c:92: warning: cannot understand function prototype: 'struct
workqueue_struct *cvm_oct_poll_queue;'

As far as I understood it, kernel-doc script failed to parse the comment
because it did not have the correct formatting for a kernel-doc comment for
a function or structure. But the comment was a regular comment describing
the use of one variable although it was using the reserved "/**".


2015-10-02 23:26 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:

> On Fri, 2 Oct 2015, Cristina Moraru wrote:
>
> > Fix kernel-doc comment used as regular comment.
> > Fix 'cannot understand function prototype' Warning
>
> Not sure to understand this one.  There seem to be only the changes on the
> comment starting characters, as described in the subject line.
>
> julia
>
> >
> > Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> > ---
> >  drivers/staging/octeon/ethernet.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/octeon/ethernet.c
> b/drivers/staging/octeon/ethernet.c
> > index 87ab6c6..14eb4af 100644
> > --- a/drivers/staging/octeon/ethernet.c
> > +++ b/drivers/staging/octeon/ethernet.c
> > @@ -86,19 +86,19 @@ int rx_napi_weight = 32;
> >  module_param(rx_napi_weight, int, 0444);
> >  MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");
> >
> > -/**
> > +/*
> >   * cvm_oct_poll_queue - Workqueue for polling operations.
> >   */
> >  struct workqueue_struct *cvm_oct_poll_queue;
> >
> > -/**
> > +/*
> >   * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
> >   *
> >   * Set to one right before cvm_oct_poll_queue is destroyed.
> >   */
> >  atomic_t cvm_oct_poll_queue_stopping = ATOMIC_INIT(0);
> >
> > -/**
> > +/*
> >   * Array of every ethernet device owned by this driver indexed by
> >   * the ipd input port number.
> >   */
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1443811785-50375-1-git-send-email-cristina.moraru09%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a1140ed9c3cd6a5052131de61
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Yes, I changed &quot;/**&quot; to &quot;/*&=
quot; where &quot;/**&quot; was used in regular comments and not kernel-doc=
 comments. <br><br></div>For example, the code:<br>&gt; /**<br>&gt; * cvm_o=
ct_poll_queue - Workqueue for polling operations.<br>&gt; */<br>&gt; struct=
 workqueue_struct *cvm_oct_poll_queue;<br><br></div><br>caused the followin=
g warning when I run the script kernel-doc:<br>&gt; ethernet.c:92: warning:=
 cannot understand function prototype: &#39;struct workqueue_struct *cvm_oc=
t_poll_queue;&#39;<br><br></div>As far as I understood it, kernel-doc scrip=
t failed to parse the comment because it did not have the correct formattin=
g for a kernel-doc comment for a function or structure. But the comment was=
 a regular comment describing the use of one variable although it was using=
 the reserved &quot;/**&quot;.<br><div><br></div></div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">2015-10-02 23:26 GMT+03:00 Julia Lawa=
ll <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;</span>:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><span class=3D"">On Fri, 2 Oct 2015, Cristina Moraru wrote:<br>
<br>
&gt; Fix kernel-doc comment used as regular comment.<br>
&gt; Fix &#39;cannot understand function prototype&#39; Warning<br>
<br>
</span>Not sure to understand this one.=C2=A0 There seem to be only the cha=
nges on the<br>
comment starting characters, as described in the subject line.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Signed-off-by: Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09=
@gmail.com">cristina.moraru09@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/octeon/ethernet.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeo=
n/ethernet.c<br>
&gt; index 87ab6c6..14eb4af 100644<br>
&gt; --- a/drivers/staging/octeon/ethernet.c<br>
&gt; +++ b/drivers/staging/octeon/ethernet.c<br>
&gt; @@ -86,19 +86,19 @@ int rx_napi_weight =3D 32;<br>
&gt;=C2=A0 module_param(rx_napi_weight, int, 0444);<br>
&gt;=C2=A0 MODULE_PARM_DESC(rx_napi_weight, &quot;The NAPI WEIGHT parameter=
.&quot;);<br>
&gt;<br>
&gt; -/**<br>
&gt; +/*<br>
&gt;=C2=A0 =C2=A0* cvm_oct_poll_queue - Workqueue for polling operations.<b=
r>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 struct workqueue_struct *cvm_oct_poll_queue;<br>
&gt;<br>
&gt; -/**<br>
&gt; +/*<br>
&gt;=C2=A0 =C2=A0* cvm_oct_poll_queue_stopping - flag to indicate polling s=
hould stop.<br>
&gt;=C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0* Set to one right before cvm_oct_poll_queue is destroyed.=
<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 atomic_t cvm_oct_poll_queue_stopping =3D ATOMIC_INIT(0);<br>
&gt;<br>
&gt; -/**<br>
&gt; +/*<br>
&gt;=C2=A0 =C2=A0* Array of every ethernet device owned by this driver inde=
xed by<br>
&gt;=C2=A0 =C2=A0* the ipd input port number.<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1443811785-50375-1-git-send-email-cristina=
.moraru09%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.=
google.com/d/msgid/outreachy-kernel/1443811785-50375-1-git-send-email-crist=
ina.moraru09%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a1140ed9c3cd6a5052131de61--

