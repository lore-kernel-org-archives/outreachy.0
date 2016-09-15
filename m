X-GM-THRID: 6330646891713265664
X-Received: by 10.157.54.216 with SMTP id s24mr8436332otd.49.1473972823263;
        Thu, 15 Sep 2016 13:53:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.49.22 with SMTP id e22ls4499232otc.32.gmail; Thu, 15 Sep
 2016 13:53:42 -0700 (PDT)
X-Received: by 10.157.12.201 with SMTP id o9mr8173307otd.3.1473972822750;
        Thu, 15 Sep 2016 13:53:42 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id c75si431140ywh.0.2016.09.15.13.53.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:53:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id z143so4179803qka.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=9oqMGitihA0BpcMqLqJs9FR3mYGhDfX9Qi7FMA2g6ko=;
        b=VBR5XtFR2vA1a50hVsFuemjRqGfujr7QHuUAseUYbphvR2obeZI0rOMZBRJiWdLB2l
         AMgjSDjXuHIVjddTnZ52jbIG67WeGZ+ldNCMyDlODVgxKbyfHwCkAW8gqSoIYT+QW2vO
         5DOGmmI+SfuXswvbjsnBWucBGoDvlvH08mWRa8YRfLFerbQPytXbIegrYZGeTQ6Brmf/
         xMrziBDu9CmTuErtdCOn9hY6Zko0QRDoI8ZQ8kHzEKhubcFQvgl7X07l7hqSQzTDzn2+
         Dy57+AUKNvndUIZYe8YBVAM+4IIkFlpyXHn6Xd/zwJKyH72KZiJ1peQuajsmhzIvCmXz
         +n2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:cc;
        bh=9oqMGitihA0BpcMqLqJs9FR3mYGhDfX9Qi7FMA2g6ko=;
        b=JlVeqX+r/3elBoAB6cR25HoPLNVXD0w03mCkHfRVLAItDO4FtHQpPl7hu97a5DThie
         tUEnaYrKAIn/YDHDV09atND9e27iKGBhqu/qAE3yr4s48RCMS2rFrCIaUMSt1lzv/OVU
         XCfE2By4uJl9qofFjeDM5cjQB7leTxED50cF6vqk4t+/kDSoSjnGB6FOGGuX5XYlXEwf
         FoqXIEOR61ajJAIriyPJMtbvwUZTuQQFY6PjSk02gr9HqhjGC6T4e+VC3c7M5E3t9hld
         XSESHStLvaX1J+nrH1Yc5m/nWt7igARmsw49m++gBkVslz061GxLss13rmul7Ajn+CqL
         jHRw==
X-Gm-Message-State: AE9vXwMpHJWQamfU2/BTE3/oVKBNk++VyXz8mvRGpqv+hTMJ7biwiRzCu2ApyeZstNsIEJNFaNsxWWTiKyvbfA==
X-Received: by 10.55.75.145 with SMTP id y139mr11662686qka.26.1473972822503;
 Thu, 15 Sep 2016 13:53:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.35.204 with HTTP; Thu, 15 Sep 2016 13:53:41 -0700 (PDT)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.10.1609152203580.3364@hadrien>
References: <20160915194341.GA30843@sandhya> <alpine.DEB.2.10.1609152203580.3364@hadrien>
From: sandhya bankar <bankarsandhya512@gmail.com>
Date: Fri, 16 Sep 2016 02:23:41 +0530
Message-ID: <CAA3ASzn3u-kcLjy69W27oeT2eabtay7UHySdrVz0cV6dXUgWBA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Convert array index
 from the loop bound to the loop index.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, oleg.drokin@intel.com, 
	andreas.dilger@intel.com, jsimmons@infradead.org, 
	Greg KH <gregkh@linuxfoundation.org>, jinshan.xiong@intel.com, lai.siyao@intel.com, 
	bobijam.xu@intel.com, mike.rapoport@gmail.com
Content-Type: multipart/alternative; boundary=001a114a8f367e7d1d053c920a1c

--001a114a8f367e7d1d053c920a1c
Content-Type: text/plain; charset=UTF-8

The structure cl_env_percpu[NR_CPUS] have been initializing for each
possible cpu (i.e 0 to i) but during
initialization if any error will occurred this come to the error handling
code in which the cl_env_percpu should be uninitialized upto i but
currently uninitialization happening for the cl_env_percpu[i] which does
not seems to be correct. That is why proposing this fix. Please Correct me
,If I am wrong. Should I send patch v2 with this issue description ?

On Fri, Sep 16, 2016 at 1:35 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 16 Sep 2016, Sandhya Bankar wrote:
>
> > Convert array index from the loop bound to the loop index.
> > Used below semantic patch to identify this issue:
>
> This is a really nice idea!  However, it would be good for the commit
> message to explain why the change is correct.  Certainly the code is
> suspicious, but why is it actually wrong?  The idea would be to consider
> what is done with cle on each iteration.
>
> julia
>
> > @@
> > expression e1,e2,ar;
> > @@
> >
> > for(e1 = 0; e1 < e2; e1++) { <...
> >   ar[
> > - e2
> > + e1
> >   ]
> >   ...> }
> >
> >
> > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/obdclass/cl_object.c |    2 +-
> >  1 files changed, 1 insertions(+), 1 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> > index 91a5806..eeccd30 100755
> > --- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> > +++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> > @@ -1000,7 +1000,7 @@ static int cl_env_percpu_init(void)
> >                * thus we must uninitialize up to i, the rest are
> undefined.
> >                */
> >               for (j = 0; j < i; j++) {
> > -                     cle = &cl_env_percpu[i];
> > +                     cle = &cl_env_percpu[j];
> >                       lu_context_exit(&cle->ce_ses);
> >                       lu_context_fini(&cle->ce_ses);
> >                       lu_env_fini(&cle->ce_lu);
> > --
> > 1.7.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20160915194341.GA30843%40sandhya.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a114a8f367e7d1d053c920a1c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The structure cl_env_percpu[NR_CPUS] have been initializin=
g for each possible cpu (i.e 0 to i) but during <br>initialization if any e=
rror will occurred this come to the error handling code in which the cl_env=
_percpu should be uninitialized upto i but currently uninitialization happe=
ning for the cl_env_percpu[i] which does not seems to be correct. That is w=
hy proposing this fix. Please Correct me ,If I am wrong. Should I send patc=
h v2 with this issue description ?<br></div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Fri, Sep 16, 2016 at 1:35 AM, Julia Lawall <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blan=
k">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><span class=3D""><br>
<br>
On Fri, 16 Sep 2016, Sandhya Bankar wrote:<br>
<br>
&gt; Convert array index from the loop bound to the loop index.<br>
&gt; Used below semantic patch to identify this issue:<br>
<br>
</span>This is a really nice idea!=C2=A0 However, it would be good for the =
commit<br>
message to explain why the change is correct.=C2=A0 Certainly the code is<b=
r>
suspicious, but why is it actually wrong?=C2=A0 The idea would be to consid=
er<br>
what is done with cle on each iteration.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; @@<br>
&gt; expression e1,e2,ar;<br>
&gt; @@<br>
&gt;<br>
&gt; for(e1 =3D 0; e1 &lt; e2; e1++) { &lt;...<br>
&gt;=C2=A0 =C2=A0ar[<br>
&gt; - e2<br>
&gt; + e1<br>
&gt;=C2=A0 =C2=A0]<br>
&gt;=C2=A0 =C2=A0...&gt; }<br>
&gt;<br>
&gt;<br>
&gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhya512@g=
mail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/<wbr>obdclass/cl_object.c |=C2=A0 =
=C2=A0 2 +-<br>
&gt;=C2=A0 1 files changed, 1 insertions(+), 1 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/<wbr>lustre/obdclass/cl_object.c b=
/drivers/staging/lustre/<wbr>lustre/obdclass/cl_object.c<br>
&gt; index 91a5806..eeccd30 100755<br>
&gt; --- a/drivers/staging/lustre/<wbr>lustre/obdclass/cl_object.c<br>
&gt; +++ b/drivers/staging/lustre/<wbr>lustre/obdclass/cl_object.c<br>
&gt; @@ -1000,7 +1000,7 @@ static int cl_env_percpu_init(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * thus we must =
uninitialize up to i, the rest are undefined.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for (j =3D 0; j =
&lt; i; j++) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0cle =3D &amp;cl_env_percpu[i];<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0cle =3D &amp;cl_env_percpu[j];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0lu_context_exit(&amp;cle-&gt;ce_ses);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0lu_context_fini(&amp;cle-&gt;ce_ses);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0lu_env_fini(&amp;cle-&gt;ce_lu);<br>
&gt; --<br>
&gt; 1.7.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160915194341.GA30843%40sandhya" rel=3D"n=
oreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>msgid/outreac=
hy-kernel/<wbr>20160915194341.GA30843%<wbr>40sandhya</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a114a8f367e7d1d053c920a1c--

