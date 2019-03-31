X-GM-THRID: 6673442126229929984
X-Received: by 2002:aa7:cfc3:: with SMTP id r3mr3476087edy.1.1554008623939;
        Sat, 30 Mar 2019 22:03:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:a3e2:: with SMTP id t31ls1741431edb.6.gmail; Sat, 30 Mar
 2019 22:03:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxlPEEVlWR7daO32nZ44SM4zv5Shb6OGix9jxPSMwTPotd7vlr8EpDSf9tGkscdUINR5Q12
X-Received: by 2002:aa7:cfc3:: with SMTP id r3mr3476085edy.1.1554008623131;
        Sat, 30 Mar 2019 22:03:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554008623; cv=none;
        d=google.com; s=arc-20160816;
        b=o6P9CcB2ggIDO0y8/juNQG5Ae/bMNWXGk8VZFG/CQPGpJke7azjERG428Ip9oNx0cM
         ruEcPTdNaW+40+6u405MUFJ8w5orh4f9NMwLi0evZ/lVSh8y+zoeKETxAaWtVMwdCqlK
         wW+Mdmt3sXshphVEpLN+wpNK8/xkvNs/r2/M5Mofwx1lebuy/EmEnKlOx9yApjkSz0lV
         5bM6jN8KA/0J+k5gIL+5DZQL/feUaZqW1hz3hWhBlmJzMiPrtjS6RGKKbvW1+RX9pfvc
         Rja6hLofWdNfPEOMWoPr6p6Y2IjlXaR/2eirErzWxjOJvgEXj0EnhVLZzry2abQ44KS+
         WLZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aZzF9N+CjqNzuemenYft0DgnN5Qx+RgKSR9MYsg7t8s=;
        b=Bed2iJkDK74M9HnOmqGkPZZufk4NPLSPduE69tU3kxjFZkx2fX5lNqvXKlHpD7pMGD
         vRvdM01AzuEurXIRWVQFIUvJiUkvMBEYPdaGehZd2aFp1ZYJDZWiqTuF5XcEWBLYFUry
         Z95ohXvb4W6fATW/cGSldEmo6EKjmk2oJ8MbBEHS70qzrYKVhg4EPandPGgpDCCNJV3E
         zqEpEQBqtxhSoRY1KOMIJlZt3zQqQWOoBGh3p8kfyw6Gk9UR6NkgEZbKMN1p58Z/uoYr
         MJrf+zv5KcxghrzC3hxk41JdvYMEL2A0lcVb2aTPg2sMaKpvPOUsFJi1AP9esGwP7VNB
         VJxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CX4DYqoj;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id w13si178412edb.1.2019.03.30.22.03.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 22:03:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CX4DYqoj;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id p14so5213990ljg.5
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 22:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aZzF9N+CjqNzuemenYft0DgnN5Qx+RgKSR9MYsg7t8s=;
        b=CX4DYqojdp5ynS1BY38/iimrE3eaSC1FCO0AbTeJM/8df4WcYO92U5NO5TfHUeTtSq
         G8VH/wmTJAYGYok7em+Hcscvs3v2ZGG4WaV88j8+SAb/uAb6UxybdnFu/nK5rmtsV691
         HugDwPj7TnSwC7F2Eyi44PWAXyovuB4Ig5kMuhVg02KQUOKaLIXNv9DqHVJ0m1twVScL
         RVZUXiWbhKt+g2dp7MavCSbB/pGLDWgcCO/nmiS5WJih8VT7xLzgQ3aYHg0+44GOdXwl
         yenVYiLIWviUAIi2MJ7Ux2CT6w/TW8VxXKizQuHU+ED+macC8ZxrOBnbIIT27BZzZCd8
         XT7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aZzF9N+CjqNzuemenYft0DgnN5Qx+RgKSR9MYsg7t8s=;
        b=mbJJvVBWV5vNE2woH0uy38ygzwZc3ZYSjDcPyZ/aFDdjeg2vUcHXCmi8mEco/m0mxl
         SFUQdrT8CW7+0/5Zsi+934xp0BNw1pBNcTqOJiJ/y8nSXsF8Q1rV+7ecly9HayflbnAW
         tNXwW1Fi1xKyaU/UbjHK+Vm4K+kSTUqH212JSH9udTcIMa7Yye46uH8cEkXNmdBo+Ctt
         Jm5BBEtNKihd41wg+pPwEx0YMuBzeMIxh32d2Ai/5mDZ+o3daOez7ulv6Afg7M3Ca05A
         uh0OLaxNbKdfWPzl802eNG9ykkbSwjkVkdIU5hGJfQKs14YzP+SGO1m2C0SghKx9QAUc
         E+Ow==
X-Gm-Message-State: APjAAAXAJz6esj/oC8oGalB0tyoTGqEx5k6V4Q81U5OsAjPq00BQBddN
	gvnhlA9tLBTUZAxA/PI27KsVEDFkW68KMM5IqUk=
X-Received: by 2002:a2e:924c:: with SMTP id v12mr30741116ljg.185.1554008622703;
 Sat, 30 Mar 2019 22:03:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
 <54ed2f9b66b51437d6285c614a3399cb1f7f1b14.1553964404.git.payal.s.kshirsagar.98@gmail.com>
 <20190330193820.GA9615@kroah.com>
In-Reply-To: <20190330193820.GA9615@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 31 Mar 2019 10:33:30 +0530
Message-ID: <CANTOzWF9ToJtjYWs2fgUPqmJ2zLx40Ss1oDpOPJ3mmC7Q6jPpw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 9/9] staging: rtl8723bs: Fix
 indentation issue.
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000ef283a05855cd3c1"

--000000000000ef283a05855cd3c1
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 31, 2019, 1:09 AM Greg KH <greg@kroah.com> wrote:

> On Sat, Mar 30, 2019 at 10:41:56PM +0530, Payal Kshirsagar wrote:
> > To fix the indentation issue remove spaces and add tabs.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > index 68fac89..ec336a5 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > @@ -961,9 +961,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >          if (pPMK->cmd == IW_PMKSA_ADD) {
> >                  DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
> >                  if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
> > -                    return intReturn;
> > +                     return intReturn;
> >                  else
> > -                    intReturn = true;
> > +                     intReturn = true;
> >
> >               blInserted = false;
> >
>
> Please just fix up all of the formatting in this function.  The spaces
> all need to be turned into tabs.
>

Okay I will fix it and send it in a new patch.
Thanks,
Payal

thanks,
>
> greg k-h
>

--000000000000ef283a05855cd3c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 31, 2019, 1:09 AM Greg KH &lt;<a href=3D"mailto:greg@kroah.com"=
 target=3D"_blank" rel=3D"noreferrer">greg@kroah.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">On Sat, Mar 30, 2019 at 10:41:56PM +0530, =
Payal Kshirsagar wrote:<br>
&gt; To fix the indentation issue remove spaces and add tabs.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">payal.s.ks=
hirsagar.98@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/=
staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; index 68fac89..ec336a5 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; @@ -961,9 +961,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (pPMK-&gt;cmd =3D=3D IW_PMKSA_ADD=
) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DBG_871X=
(&quot;[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!mem=
cmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 return intReturn;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return intReturn;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 intReturn =3D true;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0intReturn =3D true;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0blInserted =3D f=
alse;<br>
&gt;=C2=A0 <br>
<br>
Please just fix up all of the formatting in this function.=C2=A0 The spaces=
<br>
all need to be turned into tabs.<br></blockquote></div></div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Okay I will fix it and send it in a new pat=
ch.</div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Payal</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--000000000000ef283a05855cd3c1--

