X-GM-THRID: 6334961343676809216
X-Received: by 10.237.53.90 with SMTP id b26mr8223782qte.8.1475082060658;
        Wed, 28 Sep 2016 10:01:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.41 with SMTP id h38ls1357504otb.2.gmail; Wed, 28 Sep
 2016 10:01:00 -0700 (PDT)
X-Received: by 10.13.237.135 with SMTP id w129mr9006958ywe.150.1475082060176;
        Wed, 28 Sep 2016 10:01:00 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id f196si1819928ita.1.2016.09.28.10.01.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 10:01:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id t63so1514626qtd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 10:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ls9PdBoLWv1Dw23eiuIvtSD0SSXQ46vbdxmHD46mzRA=;
        b=HFR6ip/9Ag/P3J3ipYZx9QJx7MjZVQvfVwAf8MY5dmsirDdGuPyGzkLPxqj5X0bzgH
         fBbzzss6Z+dPk1YUZdM7kbdKXTUzlQUfeg71dHzc8frivwoYWNKFSxs/SA8eIbJ9bjpC
         VwrLbp9RsatJw6ke3i6+nqmZtyclme0BYZRb3d6YkJB9HdXYbi+p/V8VUIJJZ3jGxuxL
         LkDQSKx3KxACUoKsWyv8DDFJmLIz1qesq4FMSjt7/yJN3LkW0S0321HLEJRs+Yjjn2pw
         cqJ+prTOIP/3gMyVdIgyV4yowNdELrHilEKz0/FTY1TnRjtFegfSKcDKxsoQJmzc8jXz
         61qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ls9PdBoLWv1Dw23eiuIvtSD0SSXQ46vbdxmHD46mzRA=;
        b=I4zSvuYKlddt/M8tytpISOPvL/UaIp64h9NiR9vKRB/SsXO0h8rulA1Ld3fV5X7Dir
         9Uvh/X1OrOf88ItGnM0yjpIL1ghglRXmLtgKcT74NTReE8zYNBb39hj1QNhalyp224pA
         Nn9k+1WxA7iOny+yequMtwstm6G19EsYAqpJZNhrPW2clcy+OPa4MRfN+Pzu/f5VhCV8
         Cz0doAQein3b6qzqXn2uXvpZrM0chKWKrTmELUvFtm7P3KjK1rzKd2cyM4Tf/ZVrYvIH
         t8rng5NL73vGNWWRgnh3ihGWKYJuQE3ENNr1Wq0e3jUh7WObLcCnlwETt72q904iDL/n
         hbZg==
X-Gm-Message-State: AA6/9RmmsNf+fWy5SbBCArArspWPgMMbcqxzxCt3jZh1oS4i74mjL5B3mDwdWURD+OFcWjVwl1Le8ZkmaaNTgg==
X-Received: by 10.237.54.98 with SMTP id e89mr35827194qtb.5.1475082059876;
 Wed, 28 Sep 2016 10:00:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.171.92 with HTTP; Wed, 28 Sep 2016 10:00:59 -0700 (PDT)
In-Reply-To: <20160927194634.GA20266@d830.WORKGROUP>
References: <20160927104504.GA13155@life-desktop> <20160927170701.GA18239@d830.WORKGROUP>
 <20160927194634.GA20266@d830.WORKGROUP>
From: Anchal Jain <anchalj109@gmail.com>
Date: Wed, 28 Sep 2016 22:30:59 +0530
Message-ID: <CAAbeOSs60S7DuxD30og0w=zP24i2dPrvo=vqPUMCWryJuL-LOg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: cdc: add comment to mutex
To: Alison Schofield <amsfield22@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Michael.Hennerich@analog.com, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a113b810031910c053d944e64

--001a113b810031910c053d944e64
Content-Type: text/plain; charset=UTF-8

>Ahah ;) I've been wondering when someone would get around
>to these.  There are a lot of these CHECK's in IIO.
>
>Following on Julia & Greg's comments, you do need to
>explore what the lock is for and give a succinct comment.
>
>Unfortunately, when you: git grep "struct mutex", even in
>upstream iio, you won't find too many examples...but you'll
>find a few.  Usually, simply say /* protect <something> */
>
>Fortunately, in this case, there is a comment for it, just
>in the wrong place - scroll up. That makes your task easier,
>although I still would suggest condensing it to a short phrase that
>fit adjacent to the definition.




I according to your suggestion I read the comment above the "struct
ad7150_chip_info"
And check the other files where they used the "struct mutex"

As you said to use just simply /* protect <something> */
then in the comment, Mention some hardware stuff what was that stuff ?
so I can make the comment.


On Wed, Sep 28, 2016 at 1:16 AM, Alison Schofield <amsfield22@gmail.com>
wrote:

> On Tue, Sep 27, 2016 at 10:07:02AM -0700, Alison Schofield wrote:
> > On Tue, Sep 27, 2016 at 04:15:12PM +0530, Anchal Jain wrote:
> > > Fix the checkpatch.pl issues:
> > > CHECK: struct mutes definition without comment
> > >
> > > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> >
> > Ahah ;) I've been wondering when someone would get around
> > to these.  There are a lot of these CHECK's in IIO.
> >
> > Following on Julia & Greg's comments, you do need to
> > explore what the lock is for and give a succinct comment.
> >
> > Unfortunately, when you: git grep "struct mutex", even in
> > upstream iio, you won't find too many examples...but you'll
> > find a few.  Usually, simply say /* protect <something> */
> >
> > Fortunately, in this case, there is a comment for it, just
> > in the wrong place - scroll up. That makes your task easier,
> > although I still would suggest condensing it to a short phrase that
> > fit adjacent to the definition.
> >
> > alisons
>
> Although, this change is 'just a comment', if you do a few of them
> you'll begin developing an understanding of where and why things
> are locked in IIO drivers.  That's where the value is - you are
> exploring the code and figuring things out.
>
> Good patches for honing your patching skills.
>
> alisons
>
>
> > > ---
> > >  drivers/staging/iio/cdc/ad7150.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/iio/cdc/ad7150.c
> b/drivers/staging/iio/cdc/ad7150.c
> > > index f6b9a10..88c6ebe 100644
> > > --- a/drivers/staging/iio/cdc/ad7150.c
> > > +++ b/drivers/staging/iio/cdc/ad7150.c
> > > @@ -78,7 +78,7 @@ struct ad7150_chip_info {
> > >     u8 mag_timeout[2][2];
> > >     int old_state;
> > >     char *conversion_mode;
> > > -   struct mutex state_lock;
> > > +   struct mutex state_lock; /*generic mutex for cdc and drivers*/
> > >  };
> > >
> > >  /*
> > > --
> > > 1.9.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com
> .
> > > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20160927104504.GA13155%40life-desktop.
> > > For more options, visit https://groups.google.com/d/optout.
>

--001a113b810031910c053d944e64
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>&gt;Ahah ;) I&#39;ve been wondering wh=
en someone would get around<br>&gt;to these.=C2=A0 There are a lot of these=
 CHECK&#39;s in IIO.<br>&gt;<br>&gt;Following on Julia &amp; Greg&#39;s com=
ments, you do need to<br>&gt;explore what the lock is for and give a succin=
ct comment.<br>&gt;<br>&gt;Unfortunately, when you: git grep &quot;struct m=
utex&quot;, even in<br>&gt;upstream iio, you won&#39;t find too many exampl=
es...but you&#39;ll<br>&gt;find a few.=C2=A0 Usually, simply say /* protect=
 &lt;something&gt; */<br>&gt;<br>&gt;Fortunately, in this case, there is a =
comment for it, just<br>&gt;in the wrong place - scroll up. That makes your=
 task easier,<br>&gt;although I still would suggest condensing it to a shor=
t phrase that<br>&gt;fit adjacent to the definition.<br><br><br><br><br></d=
iv>I according to your suggestion I read the comment above the &quot;struct=
 ad7150_chip_info&quot; <br></div>And check the other files where they used=
 the &quot;struct mutex&quot;<br><br></div>As you said to use just simply /=
* protect &lt;something&gt; */<br>then in the comment,  Mention some hardwa=
re stuff what was that stuff ?<br></div>so I can make the comment.<br><div>=
<br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Wed, Sep 28, 2016 at 1:16 AM, Alison Schofield <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:amsfield22@gmail.com" target=3D"_blank">amsfield22@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On=
 Tue, Sep 27, 2016 at 10:07:02AM -0700, Alison Schofield wrote:<br>
&gt; On Tue, Sep 27, 2016 at 04:15:12PM +0530, Anchal Jain wrote:<br>
&gt; &gt; Fix the <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" targe=
t=3D"_blank">checkpatch.pl</a> issues:<br>
&gt; &gt; CHECK: struct mutes definition without comment<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Anchal Jain &lt;<a href=3D"mailto:anchalj109@gmail=
.com">anchalj109@gmail.com</a>&gt;<br>
&gt;<br>
&gt; Ahah ;) I&#39;ve been wondering when someone would get around<br>
&gt; to these.=C2=A0 There are a lot of these CHECK&#39;s in IIO.<br>
&gt;<br>
&gt; Following on Julia &amp; Greg&#39;s comments, you do need to<br>
&gt; explore what the lock is for and give a succinct comment.<br>
&gt;<br>
&gt; Unfortunately, when you: git grep &quot;struct mutex&quot;, even in<br=
>
&gt; upstream iio, you won&#39;t find too many examples...but you&#39;ll<br=
>
&gt; find a few.=C2=A0 Usually, simply say /* protect &lt;something&gt; */<=
br>
&gt;<br>
&gt; Fortunately, in this case, there is a comment for it, just<br>
&gt; in the wrong place - scroll up. That makes your task easier,<br>
&gt; although I still would suggest condensing it to a short phrase that<br=
>
&gt; fit adjacent to the definition.<br>
&gt;<br>
&gt; alisons<br>
<br>
</span>Although, this change is &#39;just a comment&#39;, if you do a few o=
f them<br>
you&#39;ll begin developing an understanding of where and why things<br>
are locked in IIO drivers.=C2=A0 That&#39;s where the value is - you are<br=
>
exploring the code and figuring things out.<br>
<br>
Good patches for honing your patching skills.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
alisons<br>
<br>
<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 drivers/staging/iio/cdc/<wbr>ad7150.c | 2 +-<br>
&gt; &gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/staging/iio/cdc/<wbr>ad7150.c b/drivers/stag=
ing/iio/cdc/<wbr>ad7150.c<br>
&gt; &gt; index f6b9a10..88c6ebe 100644<br>
&gt; &gt; --- a/drivers/staging/iio/cdc/<wbr>ad7150.c<br>
&gt; &gt; +++ b/drivers/staging/iio/cdc/<wbr>ad7150.c<br>
&gt; &gt; @@ -78,7 +78,7 @@ struct ad7150_chip_info {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0u8 mag_timeout[2][2];<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0int old_state;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0char *conversion_mode;<br>
&gt; &gt; -=C2=A0 =C2=A0struct mutex state_lock;<br>
&gt; &gt; +=C2=A0 =C2=A0struct mutex state_lock; /*generic mutex for cdc an=
d drivers*/<br>
&gt; &gt;=C2=A0 };<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 /*<br>
&gt; &gt; --<br>
&gt; &gt; 1.9.1<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
 send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegr=
oups.com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; &gt; To post to this group, send email to <a href=3D"mailto:outreachy-=
kernel@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; &gt; To view this discussion on the web visit <a href=3D"https://group=
s.google.com/d/msgid/outreachy-kernel/20160927104504.GA13155%40life-desktop=
" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>msg=
id/outreachy-kernel/<wbr>20160927104504.GA13155%40life-<wbr>desktop</a>.<br=
>
&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/op=
tout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr=
>optout</a>.<br>
</div></div></blockquote></div><br></div>

--001a113b810031910c053d944e64--

