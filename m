X-GM-THRID: 6620096919809032192
X-Received: by 2002:a25:7d04:: with SMTP id y4-v6mr549767ybc.16.1541396673612;
        Sun, 04 Nov 2018 21:44:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5012:: with SMTP id e18-v6ls6898511ybb.13.gmail; Sun, 04
 Nov 2018 21:44:32 -0800 (PST)
X-Google-Smtp-Source: AJdET5cSbjNS/nGVe2mqxTQXnB8Z/LHGbeJv80anMF9V2K+Ga7AuY1ULc0CrE8O19mxvXmWL0bYo
X-Received: by 2002:a25:af94:: with SMTP id g20-v6mr3832416ybh.30.1541396672759;
        Sun, 04 Nov 2018 21:44:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541396672; cv=none;
        d=google.com; s=arc-20160816;
        b=d+iMFtOCvu7OWaSvnj2QKPQSYWsdlBSMlN1kUXLxWaXzHQU/Rr6dWd7DRpUJgbczFh
         1ITR9naZ4ZWxUcslVodpNxJK/IfVqO9R/Y//GQBAOAAzOb0MqLtcvcAsDd/MYwO57kmb
         o0Y+OWcyekcMoHS0yPyW+EaERy7lqAMFcyZ8JbgYo6WH4hTe0EJwH0u5ht/xmTbvtSue
         IsUj0oRgJIDkWCRwllc0iCYxewUXe1nfVtGoruIhKFe1dzoVqbTaNwlhuxLHQJAP8lQ2
         7t+CyPSiGqnL1xQGj9IhL6CD4keTEojUt3atgXl42xullxDbuOoFPqioevV1qUsa560O
         wWew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cp8DK9q9DgBGrTA9kUGmn3Z2pDBtZVeQ7Thr9OI7FSI=;
        b=mSFn6vnJNWKMKgN4whvymvhtgZBzpSRUjJUItl8lx+6nrMBjuIT3TFcF4ACuSbXsz/
         I4Zf0/5hYQ/c/HRzEiKjFzIENGVacW7wuUfHdxz0youG+Bx7mZ25vFtD8iqPJqqPq2KL
         NR5wSk4znkoShjqA4DhNlGXVw0dgAUVu8Fl6WHrbbSGdvANkecvVsDpydsViIFmnGxRg
         s45rCqKGhTKdG/Ru8Hbur8gobbTbx6U7Tr8GbSusD0loIu03I2IsF4zMX2inRS2YMeRX
         jTif8OFlf+4xU0lFQCCvSoLA23ZrMPXjpcYlyqQzgVYk7rJ6LExzji5CS4sddpbcb0yn
         XNFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ivg1YPPX;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id z68-v6si743875ywe.1.2018.11.04.21.44.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 21:44:32 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ivg1YPPX;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x734.google.com with SMTP id o125so12798469qkf.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 21:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cp8DK9q9DgBGrTA9kUGmn3Z2pDBtZVeQ7Thr9OI7FSI=;
        b=ivg1YPPXSO6FN7anyDM/XYS16t81dLcBGzdLM95w3tUiqHe7cekh3QsqxD/PfTZhDF
         ZbYBlaTnL66UC80O1E5CP6IZmqaHMLR/sdp3qtgCgV9TYSzOgR179dFFSHjeQgIkOdja
         wUs7OLcW+jPTK4mJ+6vPKJUxOgKumtDiCvTjjbz9X2rtZxtPeHJWn5D3+Ghr5CsDzVeQ
         0dDoCRF6uE+7NnUcI0aO8hDvTOic4rtdwL/51MLrJtIK+tIkqJw93mj8/UVxPHsxEUfZ
         /jT7EHuU8m1hPACvOv/6hbREWHGxoH2Vf4cWzp47AEkGfGYIpe9sLl62xegVkZXMVWMF
         wQqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cp8DK9q9DgBGrTA9kUGmn3Z2pDBtZVeQ7Thr9OI7FSI=;
        b=gMHg7UL+NaXz7aBcdLroSkW1w+cTPhU2vQApeI2M2X4U7qfuNHg2YdBSOz8i03W79/
         3eo0HhNbqBSgKQzwWk5gjDnAotqhdKi8n5ZpjEnazEGbnztazB6EjEeiDK2jHUXuTPia
         dTL+MNdbabaCjlvqsI1Hegj4KKJkaz3/R2PUGeKGnGLk6Pyh/mPdSKfjvKb9/B46VCvV
         +j7S6MDSdYl8Vu7cadtxj7ueSX9D1RKDlWgJdt4ykX1+0lZvLLkiaolEIegSf1hrHNL5
         AEp/HUoiDs6ds61JEjn/MXRVpoKqW8ftMbHjWto8ic8oAzET+OnMc722E0Lgb+WWIlDv
         Cxzg==
X-Gm-Message-State: AGRZ1gL0TA19JO13fHynGYzRVv9Y0W2h0uzNcebhhYBydOOZVDKHEhiV
	63TpD7mUFImqeTBNee/eZuF+EGfiYoTO194DpZISQl/1
X-Received: by 2002:a0c:a8e3:: with SMTP id h35mr6469254qvc.92.1541396672313;
 Sun, 04 Nov 2018 21:44:32 -0800 (PST)
MIME-Version: 1.0
References: <3db6ea6f3a7b1fab94e5dacc1ec4a026e38548c2.1541394756.git.digholebhagyashri@example.com>
 <5d7fc290-08ad-0c83-d030-de255de81c47@huawei.com>
In-Reply-To: <5d7fc290-08ad-0c83-d030-de255de81c47@huawei.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Mon, 5 Nov 2018 11:14:16 +0530
Message-ID: <CAOMPgjjF3_JYc6H8FuMXXmNHov30uxy2N+ZtTTtVhSxzmbsnFQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/2] staging: erofs: Modify
 conditional check.
To: Gao Xiang <gaoxiang25@huawei.com>
Cc: Chao Yu <yuchao0@huawei.com>, gregkh@linuxfoundation.org, 
	Sasha Levin <sashal@kernel.org>, Outreachy <outreachy-kernel@googlegroups.com>, 
	linux-erofs@lists.ozlabs.org
Content-Type: multipart/alternative; boundary="0000000000001c7dfe0579e46160"

--0000000000001c7dfe0579e46160
Content-Type: text/plain; charset="UTF-8"

Thanks Gao. As per discussion in previous mails, I thought we need to
submit one change at a time in a patch that's why I modified accordingly.
As you suggested it makes sense to fix all similar issues at once and
create a single patch for those issues. I will update patch accordingly.

 Thanks

On Mon, Nov 5, 2018, 10:58 AM Gao Xiang <gaoxiang25@huawei.com> wrote:

> Hi Bhagyashri,
>
> On 2018/11/5 13:13, Bhagyashri P. Dighole wrote:
> > Found issue using checkpatch.
> > Use ! for NULL test rather than explicitly comparing to NULL.
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
> >
>
> Could you please fix pointer comparisons to NULL all in once?
> at least for a specific file (eg. for the staging/erofs/data.c only)?
>
> It is somewhat weird to just fix one place only of data.c +243 as above,
> this is my personal suggestion...
>
> Thanks,
> Gao Xiang
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/5d7fc290-08ad-0c83-d030-de255de81c47%40huawei.com
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000001c7dfe0579e46160
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Thanks Gao. As per discussion in previous mails, I t=
hought we need to submit one change at a time in a patch that&#39;s why I m=
odified accordingly. As you suggested it makes sense to fix all similar iss=
ues at once and create a single patch for those issues. I will update patch=
 accordingly.</div><div dir=3D"auto"><br></div><div dir=3D"auto">=C2=A0Than=
ks=C2=A0</div><div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"=
><div dir=3D"ltr">On Mon, Nov 5, 2018, 10:58 AM Gao Xiang &lt;<a href=3D"ma=
ilto:gaoxiang25@huawei.com">gaoxiang25@huawei.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">Hi Bhagyashri,<br>
<br>
On 2018/11/5 13:13, Bhagyashri P. Dighole wrote:<br>
&gt; Found issue using checkpatch.<br>
&gt; Use ! for NULL test rather than explicitly comparing to NULL.<br>
&gt; <br>
&gt; Signed-off-by: Bhagyashri P. Dighole &lt;<a href=3D"mailto:digholebhag=
yashri@gmail.com" target=3D"_blank" rel=3D"noreferrer">digholebhagyashri@gm=
ail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/erofs/data.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data=
.c<br>
&gt; index 6384f73..a671ad4 100644<br>
&gt; --- a/drivers/staging/erofs/data.c<br>
&gt; +++ b/drivers/staging/erofs/data.c<br>
&gt; @@ -240,7 +240,7 @@ static inline struct bio *erofs_read_raw_page(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bio =3D NULL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (bio =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!bio) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct erofs_map=
_blocks map =3D {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0.m_la =3D blknr_to_addr(current_block),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; <br>
<br>
Could you please fix pointer comparisons to NULL all in once?<br>
at least for a specific file (eg. for the staging/erofs/data.c only)?<br>
<br>
It is somewhat weird to just fix one place only of data.c +243 as above,<br=
>
this is my personal suggestion...<br>
<br>
Thanks,<br>
Gao Xiang<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/5d7fc290-08ad-0c83-d030-de255de81c47%40huawei.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.c=
om/d/msgid/outreachy-kernel/5d7fc290-08ad-0c83-d030-de255de81c47%40huawei.c=
om</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--0000000000001c7dfe0579e46160--

