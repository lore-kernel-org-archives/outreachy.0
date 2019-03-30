X-GM-THRID: 6673442126229929984
X-Received: by 2002:a05:600c:20f:: with SMTP id 15mr620322wmi.10.1553949261769;
        Sat, 30 Mar 2019 05:34:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cd83:: with SMTP id y3ls683857wmj.6.canary-gmail; Sat,
 30 Mar 2019 05:34:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzhZ8Qr1EkejEzsOqXW4C9PyanUJgmE+GsvszeO+vdoppYvRJZvg1aNc6MmCE+YcXep2t/E
X-Received: by 2002:a7b:c0c1:: with SMTP id s1mr667455wmh.0.1553949260722;
        Sat, 30 Mar 2019 05:34:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553949260; cv=none;
        d=google.com; s=arc-20160816;
        b=cFlLj3cpaeoXa3JGlBI+PtMcC7GJcC4ef5ZtwZKgtBT2hDJqfI9lurXNr+ePHaqzJJ
         bB2vgbaEmrrchlrguQdp++dJnMGfgAgxA5gr+FU0iaPuDdXVvD6I68P0gP+vmp51Cqju
         t4NORGoQ9Lla6xpVOoRlz5pPQqYuNIoTM0+oP+0nhQYlxu1CUcX4pKVYVbq/iPtWJ25M
         sHEK/IWo4vWm6sIk2iw8NAQBG3xU6YxDlYy1cxj909dbLznhSI/OQBHcWtGPkHko/2U5
         A11DhUUuNlih8cLd8pfHKTVLp/OJTMiieiV93yBQ6+cJEc5UxIRFVYONXfnvmRzn7Ck7
         UULg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Tq0xdto+dn8XQmBxqezVFSGjwciKbU0h3VVe5NVYIGU=;
        b=aIS/NO+V2RNrmkwVMx0my3AhmGHfGto3JUh8FQ3RRBQfEFof4n/3+fGgW5hpzTGvzp
         zqNRkIT4nCgZ36jLUCrPoJk/3rXnMw7pnZ2eLROsnc1vyiku0aXfOO56o/DNReQHv5kI
         yxrkKszfsY+BNnBfuiAteNyL+MojOuYvoeXUK+4LlefRK3Du00JyWugKbC3RVuY5FN3S
         TvkKcGEClsb4U7wbrTxOcqsJJa7v7E34Dqp6ES+q27fOF/0AdkpelICOLwXsrLWAPwoe
         YhdFzFqav8dPc+h62+h3/s+/4ZspxJOYao4IXqXPXKg1FUkLBNwb6IxxxMB73nNlTp6y
         vAWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="W77dA+D/";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id v17si704796wmc.4.2019.03.30.05.34.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 05:34:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="W77dA+D/";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id h21so4190016ljk.13
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 05:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Tq0xdto+dn8XQmBxqezVFSGjwciKbU0h3VVe5NVYIGU=;
        b=W77dA+D/UvnlezxcjM1WZ//wOtdAzIRAv8rgAzYzaUa0UQkYETuFt50azd8bmcCuEm
         kRBCVC0p8EN85N95wjT+ohcSOtKucOutxJD+y65ajQW250MSlgBVzkLv7jCggedXZKkI
         rmDSUBDVXNMt2FEngrg8vKTUVP/uPmiD/7HxQE4s76f9u1dWP7T1pwpIPO3hMlCO9zhW
         aDH2HiOfMJe+rQ9qe9kME1XvOY1iabaHyXuvh90WqU+O/Fwoz9gI/JGZ9U5VHfeErBOT
         tzNuA2NRAsEU9II2W2ZehUIyy002Re2002TJIMsonvlIJj8EUGtUd5BxdtKj4sORmvrN
         qJOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Tq0xdto+dn8XQmBxqezVFSGjwciKbU0h3VVe5NVYIGU=;
        b=mtsVwr/NH0luLbzmIprzGju8vfTpbB2Fl33zli3awwYNlxtnY5AJZlvU8zFXIc3Q4A
         3gdIOTBV0o/DjyieeXH3bzd1rFzTA9DBKxJByL6Si6C4baRwab3AW9EVyMYTwrRi2BdF
         mqAWR2JfjqVZijvEbAH2tZgKYa0EZMDcIp4I2ubgyaFIw8yJOcN/7Mt4gCE5wm6XV1Jh
         rZZ0dE1rNA5JndrI57vg6GFNbbdo2LSyy3RAO4Jo/mRx3p7tNFITltsMwtKfln/roP1V
         1priizlyRw1LFZzUDOMiV4Qyp4LQU1Wuoaj1/IW4NRhmCeyuKnrqKwGo9JI47eAGXZpL
         TN3w==
X-Gm-Message-State: APjAAAX/KflNNPrTCxsCI5CgfqWIFjJPww20EVYp7bmTRCjUVOnmILZv
	iKdTtgPjhYQTKC9M6QfuIPzRhI8vcc0TcH+F27A/Gw==
X-Received: by 2002:a2e:8016:: with SMTP id j22mr8707500ljg.189.1553949260261;
 Sat, 30 Mar 2019 05:34:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
 <c92a25aaae32172a4c04e3b1cdcbb676ba316672.1553921776.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903300742280.2817@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903300742280.2817@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 30 Mar 2019 18:04:08 +0530
Message-ID: <CANTOzWGvEAUBrUAXgiZSp861Dn2c9Qm6-U7WQrH-ctNaOhBUpg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 8/8] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Remove unnecessary parentheses
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000a82e2b05854f01fe"

--000000000000a82e2b05854f01fe
Content-Type: text/plain; charset="UTF-8"

On Sat, 30 Mar 2019 at 12:13, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 30 Mar 2019, Payal Kshirsagar wrote:
>
> > Challenge suggested by coccinelle.
> > Remove unnecessary parentheses around an expression and fix identation
> > issue.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > index 8fb03ef..e43ad33 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > @@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >          if (pPMK->cmd == IW_PMKSA_ADD) {
> >                  DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
> >                  if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
> > -                    return(intReturn);
> > +                     return intReturn;
> >                  else
> >                      intReturn = true;
>
> I think you could really make another patch in the series for the
> indentation issue and fix up both branches of the if.  It looks a bit odd
> now.
>

Okay I will do corrections.
thanks,
payal


> julia
>
> >
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
> https://groups.google.com/d/msgid/outreachy-kernel/c92a25aaae32172a4c04e3b1cdcbb676ba316672.1553921776.git.payal.s.kshirsagar.98%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903300742280.2817%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000a82e2b05854f01fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, 30 Mar 2019 at 12:13, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sat, 30 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; Remove unnecessary parentheses around an expression and fix identation=
<br>
&gt; issue.<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/=
staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; index 8fb03ef..e43ad33 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; @@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (pPMK-&gt;cmd =3D=3D IW_PMKSA_ADD=
) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DBG_871X=
(&quot;[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!mem=
cmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 return(intReturn);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return intReturn;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 intReturn =3D true;<br>
<br>
I think you could really make another patch in the series for the<br>
indentation issue and fix up both branches of the if.=C2=A0 It looks a bit =
odd<br>
now.<br></blockquote><div><br></div><div>Okay I will do corrections.</div><=
div>thanks,</div><div>payal<br></div><div>=C2=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
julia<br>
<br>
&gt;<br>
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
gle.com/d/msgid/outreachy-kernel/c92a25aaae32172a4c04e3b1cdcbb676ba316672.1=
553921776.git.payal.s.kshirsagar.98%40gmail.com" rel=3D"noreferrer" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/c92a25aaae32=
172a4c04e3b1cdcbb676ba316672.1553921776.git.payal.s.kshirsagar.98%40gmail.c=
om</a>.<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903300742280.2817%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1903300742280.2817%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--000000000000a82e2b05854f01fe--

