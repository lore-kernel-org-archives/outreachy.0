X-GM-THRID: 6667942778398310400
X-Received: by 2002:a25:d6cc:: with SMTP id n195mr24071035ybg.33.1552541891181;
        Wed, 13 Mar 2019 22:38:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e6cd:: with SMTP id d196ls1090425ybh.9.gmail; Wed, 13
 Mar 2019 22:38:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy3fIcg0Gqk7og+oU70UonlWG5YMgGEZERnbyVJWfWh0psDcVYFFkQSP56QIG11BhTlRSAr
X-Received: by 2002:a25:2f44:: with SMTP id v65mr20092288ybv.2.1552541890037;
        Wed, 13 Mar 2019 22:38:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552541890; cv=none;
        d=google.com; s=arc-20160816;
        b=qN0rCC56vgdas2PawQhIZ7giNuvsuARS52ubCTm1OQ9RzoHa7vx+VQNpOn9CNoy0Qh
         jK/8abLekjpo0wr+OkhvdNHKTFhalogfAVpcn1JwEHQB+Z6FgPe9oFaGFJR+08jJY5S1
         +R+OrzX77f1E748fFbi3Lj7izrcqQbOA0DIuordcQfBlunGVHH1/17xec2bMYQsXXQzV
         XWxES4M1mVAV+AgUY/bJcHc4VWsUGFHx4o/xwuePGEEdsbCz3aqAgW11IW1F0PoVSFnA
         Au1WzT4pB276FBOaxZKg1RZkDtJ8uHBgZR0wXYuzS1TmmmCS3JMKm+bEY0JWepEQxqPp
         gVvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YP6EqEixc9Jxb2pGy/s0RvzYIlPi0FA8otUZ41O23Go=;
        b=OjZnCBx8QCg5RKhM0qCVmRrZVQ0LpXvMuKBeOJQgOvwUoDT9MotD7/fzCv2lbbGWbK
         a7wtA9Iw1yJvL6Z3nTLcTWotUAh3wm3f8ldyKjI4B+3zubhH+ZXg8Nww3kf/vniWiZ7P
         hV66BYBmn8M5+hR5EMF9vbxi8I8hFTjhcFMruA3cwEsHQdpc5g631+XmKaA2sAxlNAgn
         zCHHLPXde88m7oHR2XDp5jeMf7G9hb9O/VF2A7yx4fPGJxXYdpinLQKKh7rV9h5gC2P8
         9PJDCltByFt1+JvqHryswaM5FWt8IU+5EQnxvBwCZXZop+Fh7Lttvnr8ot9BfOeoDV98
         UjkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XOXHoQdq;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id t128si702923ywa.4.2019.03.13.22.38.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 22:38:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XOXHoQdq;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id c1so2633667qkk.4
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 22:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YP6EqEixc9Jxb2pGy/s0RvzYIlPi0FA8otUZ41O23Go=;
        b=XOXHoQdq+9j+3LRHxAjUHWSzVSWoaOzqLGQL1URf+IT7feuuluVQprtEnYU8jsRGHC
         lqUtUK5dzKRet6HpAKdY5vzwmtRkiQ+1uNKau+o7pj5N/EqLKGiujGaCiTHeqvYBmiHr
         B549xINn89W/zqXQb9wC6R19JX6KxXvuA4xE1GMswC/TF34YmCRCUH+ircwSRQQ+2eOj
         7pfd5dkIemQsQCSNw4k0OD/f1mSxYnAgbc1UMkulCJyoimDqJlT+2vmwPntZed1gOww7
         gUhSUgZCe2AcuTL91ocAGsFzeo8bH7pXemVkvWVFPRwYTRvyg37gYKwyGF9Wye18DT/7
         UlMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YP6EqEixc9Jxb2pGy/s0RvzYIlPi0FA8otUZ41O23Go=;
        b=c8o7Pgu3Y/CuN0vIg3h9D4gxfxPNv1pTrfj1Mlwb1gv4LfE5ywgM6JqRCibPTQqgko
         t4V/d6ExG/kxDipz36CNkJVf8JJindPMc1AB7c4rHWUvMRqUijpNYlYMR2OJXAQ1/Dw0
         PRyHA9nMXBvMjjB37mNJG+6PUyYR0NTyH5KTCBnEC4m8gfdFLWbqR/vjQhVIRT3m9Ewx
         9S0hl0jx0z4H4n5OlUsanlO7T/2eUoI60aoEGwE8mw98xH+M7FFho1UrNpbGFqEG9ArS
         ncnryzXLtfuGyX8NaO/Q8N2nQPJ7SUVlEcZWGf5+WXl0rse2lhZBg8Hh1umWPVDwk6+/
         HcFQ==
X-Gm-Message-State: APjAAAU/sQGB2ZUOUbz7J8vCCxLDW48Ecm0I/bDYqu1HVdOts1aXJ6cP
	VR9EjS9TH6geMyeOfDeVlhOjKSSbVBIhCDQ0MWGoYU/Iyu0=
X-Received: by 2002:a37:d685:: with SMTP id p5mr16094113qkl.329.1552541889657;
 Wed, 13 Mar 2019 22:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <1552501395-12308-1-git-send-email-digholebhagyashri@gmail.com> <alpine.DEB.2.21.1903132031440.2515@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903132031440.2515@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Thu, 14 Mar 2019 11:07:29 +0530
Message-ID: <CAOMPgjhBnprnEOdhvR2QX5bFHa6xCKg==_1fK8uKtBcBzJw7Lw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Remove unused variable.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000d50088058407534e"

--000000000000d50088058407534e
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 14, 2019 at 1:02 AM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 13 Mar 2019, Bhagyashri Dighole wrote:
>
> > Remove unused variable which is used to store return value,
> > Detected by Coccinelle semantic patch ret.cocci.
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> >  drivers/staging/speakup/i18n.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/speakup/i18n.c
> b/drivers/staging/speakup/i18n.c
> > index ee240d3..a748eb8 100644
> > --- a/drivers/staging/speakup/i18n.c
> > +++ b/drivers/staging/speakup/i18n.c
> > @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
> >       input++;                /* Advance over %. */
> >       input = skip_flags(input);
> >       input = skip_width(input);
> > -     input = skip_conversion(input);
> > -     return input;
> > +     return skip_conversion(input);
>
> The maintainer already said that he preferred this one left as is, because
> he liked the input = input = input = pattern.
>

Yes, I will consider this scenario for next time :).

Thanks


> julia
>
> >  }
> >
> >  /*
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
> https://groups.google.com/d/msgid/outreachy-kernel/1552501395-12308-1-git-send-email-digholebhagyashri%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903132031440.2515%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000d50088058407534e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 14, 2019 at 1:02 AM Julia=
 Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br=
>
<br>
On Wed, 13 Mar 2019, Bhagyashri Dighole wrote:<br>
<br>
&gt; Remove unused variable which is used to store return value,<br>
&gt; Detected by Coccinelle semantic patch ret.cocci.<br>
&gt;<br>
&gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digholebhagyas=
hri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/speakup/i18n.c | 3 +--<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/=
i18n.c<br>
&gt; index ee240d3..a748eb8 100644<br>
&gt; --- a/drivers/staging/speakup/i18n.c<br>
&gt; +++ b/drivers/staging/speakup/i18n.c<br>
&gt; @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0input++;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /* Advance over %. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0input =3D skip_flags(input);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0input =3D skip_width(input);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0input =3D skip_conversion(input);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return input;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return skip_conversion(input);<br>
<br>
The maintainer already said that he preferred this one left as is, because<=
br>
he liked the input =3D input =3D input =3D pattern.<br></blockquote><div><b=
r></div><div>Yes, I will consider this scenario for next time :).</div><div=
><br></div><div>Thanks<br></div><div><br> </div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
<br>
julia<br>
<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 /*<br>
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
gle.com/d/msgid/outreachy-kernel/1552501395-12308-1-git-send-email-digholeb=
hagyashri%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.=
google.com/d/msgid/outreachy-kernel/1552501395-12308-1-git-send-email-digho=
lebhagyashri%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903132031440.2515%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1903132031440.2515%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--000000000000d50088058407534e--

