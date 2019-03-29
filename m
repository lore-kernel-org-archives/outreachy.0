X-GM-THRID: 6673486345256566784
X-Received: by 2002:ac2:4aca:: with SMTP id m10mr828287lfp.8.1553824689566;
        Thu, 28 Mar 2019 18:58:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:998e:: with SMTP id w14ls75652lji.14.gmail; Thu, 28 Mar
 2019 18:58:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxw3lSVvLcfziDVmcklRbQrgTUfB03/uxTx1fqv+Pvg20m6RRXKbBtaV5NQScXfLsIN5Ckj
X-Received: by 2002:a2e:460a:: with SMTP id t10mr35975lja.28.1553824688762;
        Thu, 28 Mar 2019 18:58:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553824688; cv=none;
        d=google.com; s=arc-20160816;
        b=EP/x8JlOTNsf2rwY8nskaoc4ls0yDFKZa/S89JBihAV/KFxcL0y61uzHOrWnVhRE0d
         fR+6DzMiIG988Rg8kBXXdmdP2YLwt26Ezn8VNrQLC+59FbMn42El29hIW7zG72sr2thA
         SdOarHoaC98yVSpEe5piHr5sZB7DUoeUG6U8PkAm0MWyalLLXo0mpybV9xz8Z6ISYAvR
         dAi1tB86RPs7suEIzQCJ9iekt9UnUh2BMwp7RNeg1ZmT7fsTGO1EBR0iLjs7B76rbYPn
         PU5K6tYtEbj2CX1bsbE940uTcG+5ABySIRJfR3JR+Z1ErYnvpI2eRB/Qg5e99Q87XumG
         8caA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DkPRPitMGP7B3VmvxbkM5yLz64P9MXF8/AoTPM9NeSY=;
        b=jIQlxKb0nwmBRlq3ZAK9Y2MU7ledIxozamwgaD7KlU9/X3zvvbIz8IN2t2q2KSJudo
         0Jmf18zt4Sdgg0+vzBxjzo/5L/+4DPv0bzp5Jj4r9fAuWBF8/AqB8I1vJhtNuB7WeZgl
         xrf1iyWhocHs2rsJFAOTbUIzAR1cLTNo61zP2CQMlUKRk9N3l1IaRzHIe0hXkd8GQoDt
         MuJpZz7uCny026CWYrwLYb1z8cFlXDxlIzTVXLUGFPpWYCIHfVVuuOTbSEs4mJNQXUUD
         6DUM82yflJYHO+s5NW0yWkoCKXX77b/jTotoOrw5/TSA4g+uKOzx2KJsiqE1MtRdfXY8
         YTnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f3ZkGUn1;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h7si23218ljj.5.2019.03.28.18.58.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 18:58:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f3ZkGUn1;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x544.google.com with SMTP id a25so669604edc.8
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 18:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DkPRPitMGP7B3VmvxbkM5yLz64P9MXF8/AoTPM9NeSY=;
        b=f3ZkGUn1i2st6buKxtjd6riKwo5w/TPYLL/0PGzDKwfI7v/KQVzBCeQojYn6RhAy4X
         Hfjh754qgaxufLfoQXMVngJFpmj2OR06ZFUJkrXtCq76IWlkvNSbNAMBVKENfwu2lv8/
         BewDoDPsxKILdVoqSDtNrLWRffeYfM8IV59SRryORvx9baVNL0b4C7CFRDD3pdzvHj8S
         gwZ/BWyJnWZIZrjfwX2mRiNhGQK/oS8iQ8J2ELouPvK69Ya2DQg1Mx7Zgl8HFbyuOiQZ
         sAkkvmCzPH9OI/kjI8rMrbJCetzGxUCPWLJjiBchUpGLQMabdQROLZp21yqeduRXiI51
         0IVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DkPRPitMGP7B3VmvxbkM5yLz64P9MXF8/AoTPM9NeSY=;
        b=hNqcw8XxpnqoOiLE1T7OqJfRI/rKAcP4Scyoo6XV4QlGWVPwL8tu7OkWlKw8arkDuT
         qPouFMZ8ln6GEk2Kh0l2KsvYALLc217dvN3D5N7K5JOMf+XzudF+UYP5m1seZzdDJH7M
         Rppi2hd0L6v9UtNUaNkOyZ0U59mx34hDf9ua0aKqDSx3zUI2lb9pqCFuj5TIJofYAO8D
         2JSlZTy3QZSP3bhk08NOyiWFU92d3mwsxRBIN7BOfmYi9CECBDxYWXlHInMUyAxvVtVy
         DTkYimtIg/uhxHfug6TCzta66dmaxPVCBrrnNUgF/xZaoZntCl8aP36s/3U65ja7ygwo
         QBxA==
X-Gm-Message-State: APjAAAX7PcauQCHXldP68cLyfJDuWCV+qzZ79wDe7vqOY6HR+AbaKWbw
	+5KbGYkDFAxyQQ+qS2iwpa4SfFVQUiWm50co/TvfhA==
X-Received: by 2002:a17:906:4d8b:: with SMTP id s11mr26043005eju.31.1553824688210;
 Thu, 28 Mar 2019 18:58:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190328165508.17702-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.21.1903281950280.2760@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903281950280.2760@hadrien>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Fri, 29 Mar 2019 07:27:56 +0530
Message-ID: <CAO-bXGDaZ-FqXU3yfjboUEov6pTELdddGmRipi1fc9c7gp_+GQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: erofs: unzip_vle.c: Remove
 unnecessary parenthesis.
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000095889e0585320096"

--00000000000095889e0585320096
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 Mar 2019, 00:21 Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 28 Mar 2019, Sanjana Sanikommu wrote:
>
> > Challenge suggested by coccinelle.
> > Reomove unnecessary parenthesis around the right hand
> > of the assignment using the below script.
> >
> > @@
> > local idexpression id;
> > expression e;
> > @@
> >
> > id =
> > -(
> > e
> > -)
> >
> > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> > ---
> >  drivers/staging/erofs/unzip_vle.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/erofs/unzip_vle.c
> b/drivers/staging/erofs/unzip_vle.c
> > index 8715bc50e09c..03b9c0f256fe 100644
> > --- a/drivers/staging/erofs/unzip_vle.c
> > +++ b/drivers/staging/erofs/unzip_vle.c
> > @@ -870,7 +870,7 @@ static inline void z_erofs_vle_read_endio(struct bio
> *bio)
> >                * If mc has not gotten, it equals NULL,
> >                * however, page->mapping never be NULL if working
> properly.
> >                */
> > -             cachemngd = (page->mapping == mc);
> > +             cachemngd = page->mapping == mc;
>
> There is a feeling that it is better to keep the parentheses when the
> right side of the assignment involved ==, so that it doesn't look like a
> double assignment.
>

   Sure, I would let the parenthesis same as before.

  Sanjana

>
> julia
>
> >  #endif
> >
> >               if (unlikely(err))
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190328165508.17702-1-sanjana99reddy99%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903281950280.2760%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--00000000000095889e0585320096
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 29 Mar 2019, 00:21 Julia Lawall, &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><br>
<br>
On Thu, 28 Mar 2019, Sanjana Sanikommu wrote:<br>
<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; Reomove unnecessary parenthesis around the right hand<br>
&gt; of the assignment using the below script.<br>
&gt;<br>
&gt; @@<br>
&gt; local idexpression id;<br>
&gt; expression e;<br>
&gt; @@<br>
&gt;<br>
&gt; id =3D<br>
&gt; -(<br>
&gt; e<br>
&gt; -)<br>
&gt;<br>
&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"mailto:sanjana99reddy9=
9@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@gmail.co=
m</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/erofs/unzip_vle.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs=
/unzip_vle.c<br>
&gt; index 8715bc50e09c..03b9c0f256fe 100644<br>
&gt; --- a/drivers/staging/erofs/unzip_vle.c<br>
&gt; +++ b/drivers/staging/erofs/unzip_vle.c<br>
&gt; @@ -870,7 +870,7 @@ static inline void z_erofs_vle_read_endio(struct b=
io *bio)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * If mc has not=
 gotten, it equals NULL,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * however, page=
-&gt;mapping never be NULL if working properly.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cachemngd =3D (page-&=
gt;mapping =3D=3D mc);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cachemngd =3D page-&g=
t;mapping =3D=3D mc;<br>
<br>
There is a feeling that it is better to keep the parentheses when the<br>
right side of the assignment involved =3D=3D, so that it doesn&#39;t look l=
ike a<br>
double assignment.<br></blockquote></div></div><div dir=3D"auto">=C2=A0 =C2=
=A0</div><div dir=3D"auto">=C2=A0 =C2=A0Sure, I would let the parenthesis s=
ame as before.</div><div dir=3D"auto"><br></div><div dir=3D"auto">=C2=A0 Sa=
njana</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
julia<br>
<br>
&gt;=C2=A0 #endif<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (unlikely(err=
))<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190328165508.17702-1-sanjana99reddy99%40=
gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.g=
oogle.com/d/msgid/outreachy-kernel/20190328165508.17702-1-sanjana99reddy99%=
40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903281950280.2760%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903281950280.2760%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--00000000000095889e0585320096--

