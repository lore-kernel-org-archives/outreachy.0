X-GM-THRID: 6620096919809032192
X-Received: by 2002:a02:b5ec:: with SMTP id y41-v6mr17332715jaj.14.1541391811874;
        Sun, 04 Nov 2018 20:23:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:624e:: with SMTP id d75-v6ls1933017itc.6.gmail; Sun, 04
 Nov 2018 20:23:30 -0800 (PST)
X-Google-Smtp-Source: AJdET5dqdYmps1VxcTi+Yz0mh6SOMqCwdzg+3wZWr4SknrITThKg5OyLh4ledYMHSgP00Kws/q7x
X-Received: by 2002:a24:fa81:: with SMTP id v123-v6mr3975425ith.4.1541391810949;
        Sun, 04 Nov 2018 20:23:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541391810; cv=none;
        d=google.com; s=arc-20160816;
        b=dq2ailgPJamxGxuvb5YpK2FmnwUIYExWWBs/HqvVA/QNUjXdu44h2Jh9RD3l651HDA
         OjrmuG/s/emITwEo85xdASpH9z6n3uKqqfb4iDCXb1rBDNaLkhmQY1+SIdemKRc8Q90C
         wzt35snbA1328USxpJKy1ir4NyJgIRAtzhReUhC13hak9HmPF4oCk/n/+gqMvRgmxQVC
         OGh9gDSRnNSPJhEweUnW6YaOS4Emswr72zpEzVIQQLLegPkOXvu/DVdDY6AJuWINx34C
         ta8jDOWBe8p5fK3DTvpqTRwwaPuMi6r6vXjJhbCM8RPAXpCIz1/dlxXrrCT3QqfLQpUc
         3w1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=y0Ee7+a2CVesoEhVvv2lghYFb8HNjm62zZQnMhU81q8=;
        b=Jo7NbqsWhZPHs0bqrOc0ICEDHj7oLkhhLdxNjXt4nq/GTmU0TWN0nY/kXktAUMzsFm
         eue7RNiL2556Z9DyefS9CVgblNRosZVt/AYse023ISFjtplxs/eNwM5OtVrvhPAsEkeh
         mOy5bofZpvjJ8nBBmyxyFTQEi7M9UleIcdvQj3hgxOF+oO4KZ0fcmi16Jt+4vAkqFsOJ
         Le44yrh6XjBiJiSJdHSl5ZdiM8lVUtGE3ZUr1ZZw2VvmMT/I7F7nDPOJU0E9/qTzWIBg
         EZM70feUwVw56Aogc2asYgtz9/iErMl/d8LgH5xZdH0dg5rZygaG/hGoxdUVNTPPNvkd
         QK4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W64nXCRB;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com. [2607:f8b0:4864:20::72a])
        by gmr-mx.google.com with ESMTPS id v20-v6si998139iob.4.2018.11.04.20.23.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 20:23:30 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) client-ip=2607:f8b0:4864:20::72a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W64nXCRB;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72a.google.com with SMTP id d19so12595852qkg.5
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 20:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=y0Ee7+a2CVesoEhVvv2lghYFb8HNjm62zZQnMhU81q8=;
        b=W64nXCRBom8wjHSCZyupd7zRWuGji5x8M3mhZ21klYyLNJTBfyE04YT7FLlj5yosyE
         c+42PETZBcT6Ddsp3Pax23uyh0SF9LfJiM8FjascyPChnxbQUsolbWSwab4u/2gZGWja
         mQpsYradVmZGBwN6oTibCRQ00jtuqSesBolKUZ+z2G9OxCiXfURSbJt03IZUU5bR0oUG
         TBw3I0rtG6u7cW/TgZyRzf9FiA+Q3QDSQf3oPMg5yAeeVgIEAgTRTOZV+R5JptQZZB6g
         HjJ/jmbz78emjmCV/12HXaM01TrMR0o1/FTMZin6PVkEEsPclGuo1xEMConShVEnUh7X
         KQ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y0Ee7+a2CVesoEhVvv2lghYFb8HNjm62zZQnMhU81q8=;
        b=kR3LZdrCyeGTBkb4rF+ppoLXY8Vhl8Y2Nu7tata37z0xpXLTJet149ztZ39IfSqndo
         glpGQxN/uZcpQAhmJxULPsWgJ3ejcHoUqPjHu1JL+ZqBIbRVFaYgA0PJ+EQP+n6KBrVp
         iJyayidgSmzm+eJ1VzdQAv0T2qSb422UlOQPVCbafA5rPK/4HHx99oCGF/p0dscNXWim
         pkiJmo8zwBnAaHALAZMyWEWCzCYUslgrbN07uSObFS6vu3JLoq5xGd3TQ83o9UCHoDd0
         yQqDQgb3juEVewdN72TRYN1vElP00rDG0kSWRfRp1IX0peKOxkzKdYd08weA8F9zfK9u
         Z9qQ==
X-Gm-Message-State: AGRZ1gJI9nh5+K/fIhxkqsWdXXdeV8QqPziG2Yx7F6jUjA7WlQOXImpT
	wiwYez1+gjuydOe9wX88pWLmSJ89qJIFGXvVbRE=
X-Received: by 2002:ae9:dcc5:: with SMTP id q188-v6mr18726269qkf.329.1541391810520;
 Sun, 04 Nov 2018 20:23:30 -0800 (PST)
MIME-Version: 1.0
References: <20181104195701.GA18201@bhagyashri-Lenovo-G570> <alpine.DEB.2.21.1811042100420.2360@hadrien>
In-Reply-To: <alpine.DEB.2.21.1811042100420.2360@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Mon, 5 Nov 2018 09:53:16 +0530
Message-ID: <CAOMPgjjQAGPb1Ed4BX5m3DromhM7OVxzr45HVR+Tuq8FUs8ANQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: erofs: Modify conditional check.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>, linux-erofs@lists.ozlabs.org
Content-Type: multipart/alternative; boundary="000000000000536ce20579e33f67"

--000000000000536ce20579e33f67
Content-Type: text/plain; charset="UTF-8"

Thanks Julia, I will update commit log message for patch and add version
for patch. I will also add series number if there are multiple changes on
the same file.

Bhagyashri

On Mon, Nov 5, 2018 at 1:36 AM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 5 Nov 2018, Bhagyashri P. Dighole wrote:
>
> > This patch includes modified condition to check for bio struct.
>
> The commit message is sort of wordy and imprecise.  Don't say "This patch
> includes".  The commit log message should be in the imperative.  That is,
> it should start with a verb.  Here, the first word could perhaps be
> Modify.  Afterwards, you should explain what was done and why.  Here you
> could say "Use ! for a NULL test rather than explicitly comparing to NULL,
> to be more concise and readable".  Then, if you came across this issue due
> to checkpatch, it would be nice to acknowledge that - Issue found using
> checkpatch.
>
> Finally, if you are going to send the other changes then they all need to
> be in a series.  On the other hand, for your first patch, it is fine to
> only send this change.  But in that case you have to work on something
> else until Greg picks this up.  If there are multiple changes on one file,
> he needs the series number to know in what order to apply them.
>
> julia
>
> >
> > Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> > ---
> >  drivers/staging/erofs/data.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
> > index 6384f73..a671ad4 100644
> > --- a/drivers/staging/erofs/data.c
> > +++ b/drivers/staging/erofs/data.c
> > @@ -240,7 +240,7 @@ static inline struct bio *erofs_read_raw_page(
> >               bio = NULL;
> >       }
> >
> > -     if (bio == NULL) {
> > +     if (!bio) {
> >               struct erofs_map_blocks map = {
> >                       .m_la = blknr_to_addr(current_block),
> >               };
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20181104195701.GA18201%40bhagyashri-Lenovo-G570
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--000000000000536ce20579e33f67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Julia, I will update commit log message for pa=
tch and add version for patch. I will also add series number if there are m=
ultiple changes on the same file.<br><br></div>Bhagyashri<br><div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov 5, 2018 at 1:36 AM Julia=
 Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On Mon, 5 Nov 2018, Bhagyashri P. Dighole wrote:<br>
<br>
&gt; This patch includes modified condition to check for bio struct.<br>
<br>
The commit message is sort of wordy and imprecise.=C2=A0 Don&#39;t say &quo=
t;This patch<br>
includes&quot;.=C2=A0 The commit log message should be in the imperative.=
=C2=A0 That is,<br>
it should start with a verb.=C2=A0 Here, the first word could perhaps be<br=
>
Modify.=C2=A0 Afterwards, you should explain what was done and why.=C2=A0 H=
ere you<br>
could say &quot;Use ! for a NULL test rather than explicitly comparing to N=
ULL,<br>
to be more concise and readable&quot;.=C2=A0 Then, if you came across this =
issue due<br>
to checkpatch, it would be nice to acknowledge that - Issue found using<br>
checkpatch.<br>
<br>
Finally, if you are going to send the other changes then they all need to<b=
r>
be in a series.=C2=A0 On the other hand, for your first patch, it is fine t=
o<br>
only send this change.=C2=A0 But in that case you have to work on something=
<br>
else until Greg picks this up.=C2=A0 If there are multiple changes on one f=
ile,<br>
he needs the series number to know in what order to apply them.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Bhagyashri P. Dighole &lt;<a href=3D"mailto:digholebhag=
yashri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/erofs/data.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data=
.c<br>
&gt; index 6384f73..a671ad4 100644<br>
&gt; --- a/drivers/staging/erofs/data.c<br>
&gt; +++ b/drivers/staging/erofs/data.c<br>
&gt; @@ -240,7 +240,7 @@ static inline struct bio *erofs_read_raw_page(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bio =3D NULL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (bio =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!bio) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct erofs_map=
_blocks map =3D {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0.m_la =3D blknr_to_addr(current_block),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20181104195701.GA18201%40bhagyashri-Lenovo=
-G570" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msg=
id/outreachy-kernel/20181104195701.GA18201%40bhagyashri-Lenovo-G570</a>.<br=
>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div></div></div>

--000000000000536ce20579e33f67--

