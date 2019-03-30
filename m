X-GM-THRID: 6674230099683835904
X-Received: by 2002:a2e:9c2:: with SMTP id 185mr1348924ljj.4.1553965732700;
        Sat, 30 Mar 2019 10:08:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9d52:: with SMTP id y18ls667312ljj.13.gmail; Sat, 30 Mar
 2019 10:08:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxXhYKkjKpjJaHNY3ybgPie8cCmfOIgP1gOsEbbB5ZB08TOM61DpVdjXbRJ51ljTZnHf4Ff
X-Received: by 2002:a2e:9890:: with SMTP id b16mr1186650ljj.24.1553965731989;
        Sat, 30 Mar 2019 10:08:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965731; cv=none;
        d=google.com; s=arc-20160816;
        b=digk245el6nitwpOg9bEl39vrb/B3DQCLJ5mvXq/VZfcSGcFo0RGHWvEVXK+XYNWV9
         SN3O6dOqapZxCmOe4CPWaCI1G4+N6VDjjVCihfWb8UibKtxgvI6PAOpEGV6fTFd120k7
         KCdA5Pml9WURi1nD6fLli3qE+vZVLDdiRErXOLy5jBZo4mgOYapPnAv79lthhLMgx7hj
         hJ1EePovzXmS7hEvUrHX9Ket5ppapNw7CTKcopEMiRnzcfTJA5wsD/u4LQylTkTr4Ggm
         DaQnggNuBQHnNt/7aFJIjRL0K1jhP2//FpYuWsKjU7Ybob1xYASGE2cq4zHAHai6DSwW
         PVew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6tMwBp83kns/7gw5khx1PhP6W9Ae4tofwOB8u1PMJFg=;
        b=1HfL/NurtxsK69PGv/2/EmZIjtyjwzHzzrHTZWNG0+E/RG1VV7JNckleVx4iey8Fbw
         o/CaR3kJp3JGTuSbqlaay6b+Xx+h+yAXqu+zfVusPcnyBcfQ9pfVhRB0yif6tI5sz7Uk
         gKXhsh8MhppbZwlyzxqwOqlCzjkJ27s6TZbOA8O8k6mssNPd+pek3xL2OEKtUGhOR4Jk
         7JniLMPto5caElTgs7lK0qDHPM16yeA4ORVjHjsYJwDCDpWlIhvyizjkBO8G3nVcqmOm
         4Oald9oxoPnOBFgsBImrvbuUlGdyINLkmc0hlLLrh2DkRu3duAICVjZPgcq97D+BYPrT
         NZ+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rMlMtvkk;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id f10si273840ljk.2.2019.03.30.10.08.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:08:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rMlMtvkk;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x544.google.com with SMTP id m16so4596839edd.12
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6tMwBp83kns/7gw5khx1PhP6W9Ae4tofwOB8u1PMJFg=;
        b=rMlMtvkkK26IByPVZWPzBzwKb37CHs38UC6AQ+Rse7IR2I1OTY1JRL02AqQMg6Sui+
         7EG2Yx/JyjuuQAHtk1qhLYrqIhHReyr0TbmvChmhJwPHrlGhGkRNGZJW3Ur53IDDwNez
         CnxCDJrSptllbvdPNwfo1dr6WVLnTv6uf2TRX13ydDk63J7jybK1+eX0dVpRPh4eIJfK
         UT+w+Xu8QrehINl2XRAmedFwmxfjs/6Wc+VwVqBnaEFlEG4pcRoh0YulkC5Hqq2jCbxJ
         cf2zRT2cHq6QUXOejFeaXJ6reYv862lrzHcPDxXhjgyRO6AMsNYbIEa16NI7xDjRxcAx
         EXCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6tMwBp83kns/7gw5khx1PhP6W9Ae4tofwOB8u1PMJFg=;
        b=rwNfowwvOWpNB1MQafc+0MRtuBSJy0DeNhixANx7VES/DDsdLXXvMob/VstbieaqJf
         YVo/Jhl70Jp6LcmwPvr1OeroXF2uWlpm154tWg+Rln/5N38TIlETd7uhNVTCeBqOzjDk
         7JjzU7WykHqvE16noGHW7Z6iHSv9Ri6PCfYxz/b4MKlvQcX1za+NEPmekGuf/JWEVnnA
         K6a1Ndb71AehLW9ibx3X5O9Ck73xLIw1PcWr8AUdBuWVKKae0aHp9+KJ+jved5BZA6SX
         GZ7FQHyqQdVZAEJfcl+8gRlemceU7pe1HOkllTeC6Co6AlFyAB3yF/agRcSC+bBVWhhF
         I+vg==
X-Gm-Message-State: APjAAAVtLv8Yi8QLt30g4k/GJEngpUc/xDULf87ig9ePKKmxikfzYrBH
	A4e2O0ZxKVy1xxTFExdMCt1D86wYhxIl6SVUpPw=
X-Received: by 2002:a50:c982:: with SMTP id w2mr17176002edh.47.1553965731482;
 Sat, 30 Mar 2019 10:08:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.21.1903301805410.2608@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903301805410.2608@hadrien>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Sat, 30 Mar 2019 22:38:39 +0530
Message-ID: <CAO-bXGDmAJVPyODMynGrPTuttnKkJbivpaVYQSUYAOmj8v4e+Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: wilc1000: Modify return statement
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000006b14b6058552d775"

--0000000000006b14b6058552d775
Content-Type: text/plain; charset="UTF-8"

On Sat, 30 Mar 2019, 22:35 Julia Lawall, <julia.lawall@lip6.fr> wrote:

> The cover letter should also be v3.
>

     Shall I change the version number for only cover letter or send again
the whole series in v4?plz let me know.

Sanjana.

>
> julia
>
> On Sat, 30 Mar 2019, Sanjana Sanikommu wrote:
>
> > This patchset does the following things.
> > 1.Modify return statement in wilc_spi.c
> > 2.Modify return statement in host_interface.c
> >
> > Changes in v3:
> > Make a patch series.
> >
> > Changes in v2:
> > Adjust spaces for last argument in return statement host_interface.c.
> > Adjust space for last argument in return statement in wilc_spi.c.
> >
> > Sanjana Sanikommu (2):
> >   staging: wilc1000: wilc_spi.c: Modify return statement.
> >   staging: wilc1000: host_interface.c: Modify return statement.
> >
> >  drivers/staging/wilc1000/host_interface.c | 31 +++++++----------------
> >  drivers/staging/wilc1000/wilc_spi.c       | 10 +++-----
> >  2 files changed, 13 insertions(+), 28 deletions(-)
> >
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190330170116.4761-1-sanjana99reddy99%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--0000000000006b14b6058552d775
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, 30 Mar 2019, 22:35 Julia Lawall, &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">The cover letter should also be v3.<br></=
blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"></blockquote></div></di=
v><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0Shall I change the version number f=
or only cover letter or send again the whole series in v4?plz let me know.<=
/div><div dir=3D"auto">=C2=A0=C2=A0</div><div dir=3D"auto">Sanjana.</div><d=
iv dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<br>
On Sat, 30 Mar 2019, Sanjana Sanikommu wrote:<br>
<br>
&gt; This patchset does the following things.<br>
&gt; 1.Modify return statement in wilc_spi.c<br>
&gt; 2.Modify return statement in host_interface.c<br>
&gt;<br>
&gt; Changes in v3:<br>
&gt; Make a patch series.<br>
&gt;<br>
&gt; Changes in v2:<br>
&gt; Adjust spaces for last argument in return statement host_interface.c.<=
br>
&gt; Adjust space for last argument in return statement in wilc_spi.c.<br>
&gt;<br>
&gt; Sanjana Sanikommu (2):<br>
&gt;=C2=A0 =C2=A0staging: wilc1000: wilc_spi.c: Modify return statement.<br=
>
&gt;=C2=A0 =C2=A0staging: wilc1000: host_interface.c: Modify return stateme=
nt.<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/wilc1000/host_interface.c | 31 +++++++----------=
------<br>
&gt;=C2=A0 drivers/staging/wilc1000/wilc_spi.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| =
10 +++-----<br>
&gt;=C2=A0 2 files changed, 13 insertions(+), 28 deletions(-)<br>
&gt;<br>
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
gle.com/d/msgid/outreachy-kernel/20190330170116.4761-1-sanjana99reddy99%40g=
mail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.go=
ogle.com/d/msgid/outreachy-kernel/20190330170116.4761-1-sanjana99reddy99%40=
gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--0000000000006b14b6058552d775--

