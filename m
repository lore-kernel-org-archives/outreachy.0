X-GM-THRID: 6802879895263248384
X-Received: by 2002:a1c:9646:: with SMTP id y67mr3506391wmd.42.1583929249817;
        Wed, 11 Mar 2020 05:20:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:498c:: with SMTP id r12ls892068wrq.10.gmail; Wed, 11 Mar
 2020 05:20:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuKyVtCeiLxT/vHhX86W5LyYQyW1agY9o6HHdQ3KGjn7+gFwtRhQWl1xTpisYWZETDYkG5a
X-Received: by 2002:adf:cf04:: with SMTP id o4mr4556162wrj.347.1583929248138;
        Wed, 11 Mar 2020 05:20:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583929248; cv=none;
        d=google.com; s=arc-20160816;
        b=mtjEiYOvnh9k+68IYeP/rMzW/1NsFIo4DYgcfrxvND5u03kD5o+mExJKWjJWpqTbd6
         t+z9LisHqTQqLjSVorqAkNP53LvYppuStP97W/YQIU/xGtvT2rl+yNtcjUIU5xsbKPGo
         vKq2Le4ZMYlmJM3Ma+nPBV+hnCSOzCq35ytBn+00meEzVHjyxpaw99X7533+ruIQsI2P
         U2xsuQkQuPX9vsyetno3zGewjpeL5cqc7Bg2HVqdKXaH4h5AC0cEtbaRdlS+XcfadTDW
         qOkbq2TPJOgbNiuHfDh0KOFc2tValCwpLX4G+WrrOpMG6bcbH4hNI32DtTJ1c5a8nV47
         ma/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lM4dgdHtsoFXJ9H3rlsErRxVBzgKh9xC+2L3Twqz07c=;
        b=WiAjt2a3yodIV0pcAwsYD7Sh69VeTfcIYrEsMZ/+hOY9qZF8LxXje31T6sre8u4jQr
         5FP8VYf/26icsL5hfbJjSxHl3OmZO1cTm1fZwt8MbsQ63J8UECj3E2zhPCL65GDQmS4G
         3pjetXdSg+najI4lVrViOuHHFj1KNHr71j8XjpvwjF6dxm5PMwYhvGrIsnrgV6kPjAZv
         8a1lsB3JsRPycEASnZ+cSeG/CVI4PRnJ8SSv1AP9avKi1T4Q4NtvTYPGIKN50M2z1Vkb
         9W9SGP+4D6QJdrVm4h7IP81+2zceLUc4/w8V0jhidu8OGKi5yUta0QHGFspZ2zRLnKBm
         uVLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CsmK6h+c;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id l17si114001wmg.0.2020.03.11.05.20.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 05:20:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CsmK6h+c;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id z15so2359704wrl.1
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 05:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lM4dgdHtsoFXJ9H3rlsErRxVBzgKh9xC+2L3Twqz07c=;
        b=CsmK6h+cYX7JNfADFGMoHmSfpoUc5TV4neFem6GEOlymAYNAsO6oF0wfTtNBfNznYu
         u0V2zWrcjQMOeR8Eiprke6LWk3Tyf/FW9TnaL8w+NZrv51+tIT3YEjBBTg3jbORtvvm5
         VuHS+SHEgl7s9pVWmkng23O4A1n5DfuqfL1Ro3D9LNHYhjwRWHr+ZrHIdNs4aDOovLuq
         qhqHBD9ISV0fuxuuyywoU+Am4fHPzP/7XGkDEQbo/EqOdki0brpjjD/QATlSQq/AlV6P
         /YCl5faYFcHJZB3qTT6WcU45EWlL73oMNqTl8PHXaW+qp0nP2UkZfPjr9PlpAx5dCLU1
         GqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lM4dgdHtsoFXJ9H3rlsErRxVBzgKh9xC+2L3Twqz07c=;
        b=Nd9CpsopYDwFQ/ESUwA1aWjDd64LzfzseHwXRZjl8Fcw2Lj+u736POnl/8kkFTBnYp
         /UdB7VxYvK/nMAD2zlcf1hwr8PwocMFlyFTYrgrLn0H2n7h4CtOekxhTaXrcqdkrrzX3
         Mif4WbHXkdQ5+00gpOS9V0ky8uboYD2A0KA+KcjJ/kqASNjO6Sy25asQyQ27uv97o6jg
         3juN9oaP11d0CUj0EUAxSsLLbS9N/iaEAYPtyfvCpd09yNwX6SI/FgYsvtAp1UnK5twf
         kzPn5znikoG+YsQVhS2Sgdcm6avoW6WPaLDMn4V3TfDpwrtkzNbRr6V7nwEo66pvbKp2
         m9og==
X-Gm-Message-State: ANhLgQ1bvTC31j/CEDAofEvfrjtdVYGdkfgQxQ4lcsqraBTNC3qC/s+6
	IgOk2qBW7b6YUadbWdikyKCYtvszYQ7NsnTnAaA=
X-Received: by 2002:a05:6000:1186:: with SMTP id g6mr4172510wrx.331.1583929247676;
 Wed, 11 Mar 2020 05:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
 <cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com>
 <20200311130807.02e32fc8@elisabeth>
In-Reply-To: <20200311130807.02e32fc8@elisabeth>
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Date: Wed, 11 Mar 2020 17:50:35 +0530
Message-ID: <CAJyzNhmYR0e2Z6YMsfcMdt81zDEn+ReapnPs=PpMaxOMVgANxA@mail.gmail.com>
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c:
 remove an unneeded variable
To: Stefano Brivio <sbrivio@redhat.com>
Cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000283cc505a0934428"

--000000000000283cc505a0934428
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 11, 2020, 5:38 PM Stefano Brivio <sbrivio@redhat.com> wrote:

> On Wed, 11 Mar 2020 14:58:15 +0530
> Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
>
> > Remove unneeded temporary local variable, cleanup suggested by
> coccinelle.
> >
> > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > ---
> >  drivers/staging/qlge/qlge_ethtool.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/qlge/qlge_ethtool.c
> b/drivers/staging/qlge/qlge_ethtool.c
> > index 592ca7edfc44..e15f9723b5c0 100644
> > --- a/drivers/staging/qlge/qlge_ethtool.c
> > +++ b/drivers/staging/qlge/qlge_ethtool.c
> > @@ -692,7 +692,6 @@ static int ql_set_pauseparam(struct net_device
> *netdev,
> >                            struct ethtool_pauseparam *pause)
> >  {
> >       struct ql_adapter *qdev = netdev_priv(netdev);
> > -     int status = 0;
> >
> >       if ((pause->rx_pause) && (pause->tx_pause))
> >               qdev->link_config |= CFG_PAUSE_STD;
> > @@ -700,9 +699,7 @@ static int ql_set_pauseparam(struct net_device
> *netdev,
> >               qdev->link_config &= ~CFG_PAUSE_STD;
> >       else
> >               return -EINVAL;
> > -
> > -     status = ql_mb_set_port_cfg(qdev);
> > -     return status;
> > +     return ql_mb_set_port_cfg(qdev);
>
> Here, you're also removing a newline that is typically inserted before
> a second return (or the last one in a function) for readability, or
> whenever there are two logically distinct branches, same in 3/4.
>

Thanks for the suggestion.
I thought there is no need to keep the newline as is:D
But I did not understand what do you want me to do, patch is okay or need
to be resend by adding a newline for readability:)

payal

And in 1/4, you might want to add one. In 2/4, there's no need.
>
> --
> Stefano
>

--000000000000283cc505a0934428
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Wed, Mar 11, 2020, 5:38 PM Stefano Brivio &lt;<a href=3D"mailto:sbrivio@=
redhat.com">sbrivio@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">On Wed, 11 Mar 2020 14:58:15 +0530<br>
Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar1234@gmail.com" targ=
et=3D"_blank" rel=3D"noreferrer">payalskshirsagar1234@gmail.com</a>&gt; wro=
te:<br>
<br>
&gt; Remove unneeded temporary local variable, cleanup suggested by coccine=
lle.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar=
1234@gmail.com" target=3D"_blank" rel=3D"noreferrer">payalskshirsagar1234@g=
mail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/qlge/qlge_ethtool.c | 5 +----<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 4 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlg=
e/qlge_ethtool.c<br>
&gt; index 592ca7edfc44..e15f9723b5c0 100644<br>
&gt; --- a/drivers/staging/qlge/qlge_ethtool.c<br>
&gt; +++ b/drivers/staging/qlge/qlge_ethtool.c<br>
&gt; @@ -692,7 +692,6 @@ static int ql_set_pauseparam(struct net_device *ne=
tdev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ethtool_pauseparam *pause)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ql_adapter *qdev =3D netdev_priv(netd=
ev);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int status =3D 0;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((pause-&gt;rx_pause) &amp;&amp; (pause-&=
gt;tx_pause))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0qdev-&gt;link_co=
nfig |=3D CFG_PAUSE_STD;<br>
&gt; @@ -700,9 +699,7 @@ static int ql_set_pauseparam(struct net_device *ne=
tdev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0qdev-&gt;link_co=
nfig &amp;=3D ~CFG_PAUSE_STD;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0status =3D ql_mb_set_port_cfg(qdev);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return status;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ql_mb_set_port_cfg(qdev);<br>
<br>
Here, you&#39;re also removing a newline that is typically inserted before<=
br>
a second return (or the last one in a function) for readability, or<br>
whenever there are two logically distinct branches, same in 3/4.<br></block=
quote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks for =
the suggestion.</div><div dir=3D"auto">I thought there is no need to keep t=
he newline as is:D</div><div dir=3D"auto">But I did not understand what do =
you want me to do, patch is okay or need to be resend by adding a newline f=
or readability:)</div><div dir=3D"auto"><br></div><div dir=3D"auto">payal</=
div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
And in 1/4, you might want to add one. In 2/4, there&#39;s no need.<br>
<br>
-- <br>
Stefano<br></blockquote></div></div></div>

--000000000000283cc505a0934428--

