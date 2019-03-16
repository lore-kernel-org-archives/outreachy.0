X-GM-THRID: 6669024286787764224
X-Received: by 2002:a9f:2d84:: with SMTP id v4mr6085574uaj.22.1552754429824;
        Sat, 16 Mar 2019 09:40:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7c4a:: with SMTP id x71ls1698044vsc.1.gmail; Sat, 16 Mar
 2019 09:40:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxm+/G+7yGDevnYj6WS94tZAlQpa1Zh5ugo4JgA+ii+Fen9gKe4AUXUReC9KrcTiAPc/kes
X-Received: by 2002:a67:f4d2:: with SMTP id s18mr5983234vsn.41.1552754429086;
        Sat, 16 Mar 2019 09:40:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552754429; cv=none;
        d=google.com; s=arc-20160816;
        b=igsZsDkFsprpDK3mOKb0lh+wYDdFnwif8/rD5O9a7WiKV9TxfFnK7Eh2MFtIeeAJkz
         BL2LHcvnISGqOrcx63brIKNIxuUyp+yTYgR6Bw39bdEHyo38hHrZX1SOJIEqlUbkeGIO
         gKJJi0asb3Q6kguhV2BJV4Hlh3hsn8I19QezWaCGLa4AE8ItLTn7J0/2zl6pgbVuyway
         b+4QKau0J3cO9KVzp0HgpoOFxyrasHBOJmr5NGK8eBnkAT0fhxQ0iNaV40odR6ihLMOE
         6hGrRC3ghGbWPWbCXbtaPiYEt2rK3s4aJF3iGEgDbnyu+tS/nh0EafM1uQQrm03KC5cZ
         gDCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nefPOtJnrngvsTBGKcY7+YFT4fjxdyOjkIw9Dinv6A8=;
        b=A0etG6TmNKf1FcVc18Tr2fQdggiP4SaNIr2sO8nYCbK+pqkL4Yx5xfO6Pk4ZyekGgb
         tTv5Ok3Ebs8iiEhVFvTehSjFya+VZXOaI/BGYGNfZJ9BpOCC6qxlD5tbUUeog3kZ3ch7
         RW0KhJXc4U04qMwWmDsnjGY83J6dD3UGT+IwxKThfqDSDl7DRhhR4/m/G56BIuT1VfDi
         eVVn1v2OXSNJc4Yau69leo6AnGK66JUMnvf0kXoXRfvQlpMTXhxMXcxx6Ihi4ENVcxUX
         10FdKRw71t3ZcjqpQHC0xQ1HB87RlzbVnrI3kVTf2iUrJ5Oh+K4s7qSihVPTrR4e5LmG
         rFRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HeuctUAT;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <anushkacharu9@gmail.com>
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com. [2607:f8b0:4864:20::72e])
        by gmr-mx.google.com with ESMTPS id u12si387609uaa.1.2019.03.16.09.40.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 09:40:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) client-ip=2607:f8b0:4864:20::72e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HeuctUAT;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72e.google.com with SMTP id k130so7374422qke.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 09:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nefPOtJnrngvsTBGKcY7+YFT4fjxdyOjkIw9Dinv6A8=;
        b=HeuctUATlED8g8PrvdXWbGNxDqjRsj0QK1ujRrXEb02dZLyEZElng6THFQZHauCtNS
         W7/QqE9BtOxGc0Fk1MrBwHUc2nPeX3w28FNI6Hl3AAmhosfBVw8Z7cQNhR1L+NgI81cN
         WquD27YhnWTa5iuZ0yiK0RYjJNDXmJpLFjAcR8Ga4oppx2lISgcCeR3SxcqM8qJihC2J
         i30MxWv5rBxFjnT8dtWwbRkm4JhSYfOlVGwRfH08357iSO1qXNl4vyXKzMpHQD63IsQl
         figDabVNDzOKVpGx8p9vVl1EDm1qIhbHJQEP1QDp+qHGOu3718XsO9BOH6irHNiQwqjw
         bmvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nefPOtJnrngvsTBGKcY7+YFT4fjxdyOjkIw9Dinv6A8=;
        b=oaxnIe/CXdJ1WcNe4S/KyvWHjO6h/JYawGk6M7iUuP6N02PtmYVIXVc13SFGI7tVaS
         5PkVGKzzMIB62I7DzPz+l3jphXO7IWCoY3cdCVJWu6XlVbbQ0r4YhJHcDwFiOTLC1epG
         APkW1nIdP1vv8RtJ4zPtoUgybZ1v3WgmV7M7PiPX9t2DWs4CJ4ri1Zaej3QR7qaudYlw
         d3pr7YwsqgYmD8lFSRiWQWoYPupnUXfEgiDGxQB2EnIND6JcSmOku/25KdRKd1bybzwd
         GffkhT7TSeN9y2waqJYG6gIu4M0otnm0CuaOnq1LB5eGuNBFoPEgeWyueFYb/PfHQGuT
         Q6lA==
X-Gm-Message-State: APjAAAWEI1lStOb3e/10j8nHAbAcd8Q8al2oj4iLhl+V6mc52cN/HC+K
	cE+77DJXPrlhD2s7Z5Rr30likBCP9hVFVHcKlPPonHI9
X-Received: by 2002:a37:4b4e:: with SMTP id y75mr7171894qka.158.1552754428751;
 Sat, 16 Mar 2019 09:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <anushkacharu9@gmail.com> <20190316161959.8901-1-anushkacharu9@gmail.com>
 <alpine.DEB.2.21.1903161729560.2487@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903161729560.2487@hadrien>
From: Anushka Shukla <anushkacharu9@gmail.com>
Date: Sat, 16 Mar 2019 22:10:16 +0530
Message-ID: <CACj1OhUBzaoYz+E+z-A3HNLBOdoJVHeCsUADu=TO2URXtLy7tg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [Outreachy kerel][PATCH] staging:gasket:apex_driver.c:fix
 the parenthesis
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000026323a058438d0f2"

--00000000000026323a058438d0f2
Content-Type: text/plain; charset="UTF-8"

Okay I will submit it again.

On Sat, Mar 16, 2019, 10:06 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

> This is not the right subject line for this patch.  First, you have put
> [Outreachy kerel] in the subject line and the mailing list has put
> another, so there are two.  You don't need to put this in the subject
> line.  Second, the information about the file is no correct.  This is no
> something that you can make up by yourself.  Use git log --oneline to see
> what others have done.  Follow the same choice of words and spacing.
>
> On Sat, 16 Mar 2019, anushkacharu9@gmail.com wrote:
>
> > From: Anushka Shukla <anushkacharu9@gmail.com>
>
> You shouldn't need this line.  Update your git configuration file so that
> git-send-email will use your full name.
>
> > Fix the checkpatch.pl WARNING in apex_driver.c by changing the position
> of parenthesis
>
> Commit log messages should be limited to around 70 characters, since they
> will be indented a bit.  Try to come up with a messae that describes what
> you have done and why.  Avoid Fix, which doesn't really give any
> information.
>
> > WARNING: Line should end with '('
> >
> > Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
> > ---
> >  drivers/staging/gasket/apex_driver.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/gasket/apex_driver.c
> b/drivers/staging/gasket/apex_driver.c
> > index 0578bf1ba1e9..7c2ffa467557 100644
> > --- a/drivers/staging/gasket/apex_driver.c
> > +++ b/drivers/staging/gasket/apex_driver.c
> > @@ -529,18 +529,18 @@ static ssize_t sysfs_show(struct device *device,
> struct device_attribute *attr,
> >       switch (type) {
> >       case ATTR_KERNEL_HIB_PAGE_TABLE_SIZE:
> >               ret = scnprintf(buf, PAGE_SIZE, "%u\n",
> > -                             gasket_page_table_num_entries(
> > -                                     gasket_dev->page_table[0]));
> > +                             gasket_page_table_num_entries
> > +                                    (gasket_dev->page_table[0]));
>
> This doesn't look very nice.  The argument is the same in all cases.
> Maybe you could create a new local variable with a short name and an
> appropriate type and store this value in it before the switch.
>
> julia
>
> >               break;
> >       case ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE:
> >               ret = scnprintf(buf, PAGE_SIZE, "%u\n",
> > -                             gasket_page_table_num_entries(
> > -                                     gasket_dev->page_table[0]));
> > +                             gasket_page_table_num_entries
> > +                                    (gasket_dev->page_table[0]));
> >               break;
> >       case ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES:
> >               ret = scnprintf(buf, PAGE_SIZE, "%u\n",
> > -                             gasket_page_table_num_active_pages(
> > -                                     gasket_dev->page_table[0]));
> > +                             gasket_page_table_num_active_pages
> > +                                    (gasket_dev->page_table[0]));
> >               break;
> >       default:
> >               dev_dbg(gasket_dev->dev, "Unknown attribute: %s\n",
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190316161959.8901-1-anushkacharu9%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161729560.2487%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--00000000000026323a058438d0f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Okay I will submit it again.</div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Mar 16, 2019, 10:06 P=
M Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip=
6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is not the=
 right subject line for this patch.=C2=A0 First, you have put<br>
[Outreachy kerel] in the subject line and the mailing list has put<br>
another, so there are two.=C2=A0 You don&#39;t need to put this in the subj=
ect<br>
line.=C2=A0 Second, the information about the file is no correct.=C2=A0 Thi=
s is no<br>
something that you can make up by yourself.=C2=A0 Use git log --oneline to =
see<br>
what others have done.=C2=A0 Follow the same choice of words and spacing.<b=
r>
<br>
On Sat, 16 Mar 2019, <a href=3D"mailto:anushkacharu9@gmail.com" target=3D"_=
blank" rel=3D"noreferrer">anushkacharu9@gmail.com</a> wrote:<br>
<br>
&gt; From: Anushka Shukla &lt;<a href=3D"mailto:anushkacharu9@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">anushkacharu9@gmail.com</a>&gt;<br>
<br>
You shouldn&#39;t need this line.=C2=A0 Update your git configuration file =
so that<br>
git-send-email will use your full name.<br>
<br>
&gt; Fix the <a href=3D"http://checkpatch.pl" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">checkpatch.pl</a> WARNING in apex_driver.c by changing t=
he position of parenthesis<br>
<br>
Commit log messages should be limited to around 70 characters, since they<b=
r>
will be indented a bit.=C2=A0 Try to come up with a messae that describes w=
hat<br>
you have done and why.=C2=A0 Avoid Fix, which doesn&#39;t really give any<b=
r>
information.<br>
<br>
&gt; WARNING: Line should end with &#39;(&#39;<br>
&gt;<br>
&gt; Signed-off-by: Anushka Shukla &lt;<a href=3D"mailto:anushkacharu9@gmai=
l.com" target=3D"_blank" rel=3D"noreferrer">anushkacharu9@gmail.com</a>&gt;=
<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/gasket/apex_driver.c | 12 ++++++------<br>
&gt;=C2=A0 1 file changed, 6 insertions(+), 6 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/ga=
sket/apex_driver.c<br>
&gt; index 0578bf1ba1e9..7c2ffa467557 100644<br>
&gt; --- a/drivers/staging/gasket/apex_driver.c<br>
&gt; +++ b/drivers/staging/gasket/apex_driver.c<br>
&gt; @@ -529,18 +529,18 @@ static ssize_t sysfs_show(struct device *device,=
 struct device_attribute *attr,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (type) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case ATTR_KERNEL_HIB_PAGE_TABLE_SIZE:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D scnprint=
f(buf, PAGE_SIZE, &quot;%u\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gasket_page_table_num_entries(<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gasket_dev-&=
gt;page_table[0]));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gasket_page_table_num_entries<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (gasket_dev-&gt;pa=
ge_table[0]));<br>
<br>
This doesn&#39;t look very nice.=C2=A0 The argument is the same in all case=
s.<br>
Maybe you could create a new local variable with a short name and an<br>
appropriate type and store this value in it before the switch.<br>
<br>
julia<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE:=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D scnprint=
f(buf, PAGE_SIZE, &quot;%u\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gasket_page_table_num_entries(<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gasket_dev-&=
gt;page_table[0]));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gasket_page_table_num_entries<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (gasket_dev-&gt;pa=
ge_table[0]));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D scnprint=
f(buf, PAGE_SIZE, &quot;%u\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gasket_page_table_num_active_pages(<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gasket_dev-&=
gt;page_table[0]));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gasket_page_table_num_active_pages<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (gasket_dev-&gt;pa=
ge_table[0]));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0default:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(gasket_d=
ev-&gt;dev, &quot;Unknown attribute: %s\n&quot;,<br>
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
gle.com/d/msgid/outreachy-kernel/20190316161959.8901-1-anushkacharu9%40gmai=
l.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.googl=
e.com/d/msgid/outreachy-kernel/20190316161959.8901-1-anushkacharu9%40gmail.=
com</a>.<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161729560.2487%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903161729560.2487%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div>

--00000000000026323a058438d0f2--

