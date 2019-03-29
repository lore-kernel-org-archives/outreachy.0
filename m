X-GM-THRID: 6673867872334249984
X-Received: by 2002:a17:906:b288:: with SMTP id q8mr2627713ejz.10.1553885334329;
        Fri, 29 Mar 2019 11:48:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:adba:: with SMTP id a55ls870016edd.4.gmail; Fri, 29 Mar
 2019 11:48:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx5b/1Aehpb/vNqImXsQbIXBZYmMkGjntL8ZHzDf83hSLhcs6iN7UKapRRvujca/vWL37N7
X-Received: by 2002:a50:928a:: with SMTP id k10mr2820664eda.10.1553885333451;
        Fri, 29 Mar 2019 11:48:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553885333; cv=none;
        d=google.com; s=arc-20160816;
        b=uDu37uM2Lp5FEDrgzsrrbrG0HdrzdMOnSadA2mRFBQktmuXPDdJoskBnBMi7e5KWAe
         0DNgG1w9JF9Bvu0NlNxaS14ZO1rihktELiYnHzd90qwb0vWqj2BlinLlrQ7ViSbTT6Rs
         mAj1StT/X+XRMFdDXPkkXYqAD/xm3rKMA05uCXA+/hLI/7UN+oeifKYwwLZ9HS7INYsV
         CqEW/+K8h8NpzdzTUaJYT/w4kPg4gO1rfJhoguE9p0JT+mkgo33beqe92cL2z2PeVpGU
         /nRYcG66KMJuqMN8t/kkrz26prZcw2FmaNm40kUdJKG+ydEPkJgXCtcXhC5FxynEqv3v
         tRZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I1OUYHyYouGyveetUWa2bwixuSuAy+UIf3cUFt0Vlbk=;
        b=GuKw1WXRMrlPW6c3kwfbAHsa98gIHz9ACB2f5i7XQuBe02hPdN/Q4KxYM/ckAVpPcz
         unAxwIbo/kf4U3NjvrMbW46nIiI9eVOuw+TuJWacljRTNxLgw/vB2IjEqAaGElWl1BWC
         HZB+KLDvl6lsGsTpLYljVQFj8AWpdLmrtwy1hsSfE90nNyt1nbKV7mViZOYSfhWBZLn8
         Jg5GF26TgvAe56qLBVGlD9srvKSRFQhGt/XCOIS3IKMSI2xA7w9GPMACAprl2o7CpjTB
         ES/kKvgJdj07SFpmJLkeWoezKfpHtMvvYO5lbnH1fnPZ1U3Rrxj13ffAekp0TcF3cXzA
         CyZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PjRPwsCx;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id a38si144980edd.0.2019.03.29.11.48.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 11:48:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PjRPwsCx;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x142.google.com with SMTP id y18so2148740lfe.1
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 11:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I1OUYHyYouGyveetUWa2bwixuSuAy+UIf3cUFt0Vlbk=;
        b=PjRPwsCxVbMCHdxny3dwRDxlR2vxenNFNZE4Ah964Iafx8IH0DExSjKlN7/8tfoL/W
         1yAH5JvFx58tYjT6caI3QAtvm9ranj9gQBTEMNpmo0JD9hvH64YTdPxH8uWHzMtKUDII
         TipsBrB0+hVr6J9wcHugicPGVVv8dhjSWnDq92gUMpEIpJE3cLXQrboMBZ/g9GwJDj1i
         NUIeDs8opjEqP4gc8AD28q0dZK+oBlUP/EfTxSbXyYYfZC0DK7VxhuaDLwci/zdTqWe5
         6CrIqPqRXNGfKxzzyc2Wa99vJwZuOICt1GbJjembsgCMcWrjBC+jDPNjRoho+ovovWB2
         kMYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I1OUYHyYouGyveetUWa2bwixuSuAy+UIf3cUFt0Vlbk=;
        b=LXHhGkpHuePjErqOaFc1Q99IFg68B9pqqtIrG0CgQzIPw9Dc5quHKYLO260lusbD/E
         nekDQZdsW2sIGvRM7HcwjLGCUxIZ23aWJdmaejuQn5+OrforsKVVjbxENCZk4k5Yz4aZ
         Ax1St0rOF8IIM51I8iESQP4HL21QKgIOaZct7ZKdLrDk5Mfts6F0KDjC8IN53WwdDGIp
         0ufQ40/TSWlBE+gMIkw9HF0I1dWbchUTLmk/3pnFtsXo/ob/jiCfnxVK4Dv+BtllfSts
         rj6loC/GxgthNRnGRzgjJ4dEf4IrGw/aY0vTgDv6dSRDAP1BQHB3H1Xq0CPyKtutHlVC
         7XXA==
X-Gm-Message-State: APjAAAX7Flnx0YMYm1BSNIMowOuQPMhsyDRmNaRmCsXbdf+9pcgJG65t
	emPMpdJlD7VG1DS68H6x3/pj2Go3A9Np1io4MmRqTw==
X-Received: by 2002:ac2:515b:: with SMTP id q27mr10888212lfd.110.1553885333014;
 Fri, 29 Mar 2019 11:48:53 -0700 (PDT)
MIME-Version: 1.0
References: <1553880917-2839-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190329184510.GA4639@kroah.com>
In-Reply-To: <20190329184510.GA4639@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 30 Mar 2019 00:18:40 +0530
Message-ID: <CANTOzWHH2Xsg7Sw2KLhMCqNQBdXOBY_7Tg6483qHsFyx66FbDA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Compress two lines
 into one line
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000004bcdb80585401fa6"

--0000000000004bcdb80585401fa6
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 30, 2019, 12:15 AM Greg KH <greg@kroah.com> wrote:

> On Fri, Mar 29, 2019 at 11:05:17PM +0530, Payal Kshirsagar wrote:
> > Challenge suggested by coccinelle.
> >
> > This patch compress two lines into one line using following semantic
> patch:
> >
> > @@
> > local idexpression ret;
> > expression e;
> > @@
> >
> > -ret = e;
> > +return e;
> > -return ret;
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> > diff -u -p a/hal/rtl8723b_rf6052.c b/hal/rtl8723b_rf6052.c
> > --- a/hal/rtl8723b_rf6052.c
> > +++ b/hal/rtl8723b_rf6052.c
>
> Please take your patch and try to apply it yourself to a kernel git
> tree.
>

I will try and sorry for the inconvenience.
Thanks,
Payal

Hint, it will not work :(
>
> Always test your patches before sending them out.
>
> greg k-h
>

--0000000000004bcdb80585401fa6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sat, Mar 30, 2019, 12:15 AM Greg KH &lt;<a href=3D"mailto:greg@kroah.com=
">greg@kroah.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On =
Fri, Mar 29, 2019 at 11:05:17PM +0530, Payal Kshirsagar wrote:<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; <br>
&gt; This patch compress two lines into one line using following semantic p=
atch:<br>
&gt; <br>
&gt; @@<br>
&gt; local idexpression ret;<br>
&gt; expression e;<br>
&gt; @@<br>
&gt; <br>
&gt; -ret =3D e;<br>
&gt; +return e;<br>
&gt; -return ret;<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; diff -u -p a/hal/rtl8723b_rf6052.c b/hal/rtl8723b_rf6052.c<br>
&gt; --- a/hal/rtl8723b_rf6052.c<br>
&gt; +++ b/hal/rtl8723b_rf6052.c<br>
<br>
Please take your patch and try to apply it yourself to a kernel git<br>
tree.<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">I will try and sorry for the inconvenience.</div><div dir=3D"auto">Tha=
nks,</div><div dir=3D"auto">Payal</div><div dir=3D"auto"><br></div><div dir=
=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hint, it will not work :(<br>
<br>
Always test your patches before sending them out.<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--0000000000004bcdb80585401fa6--

