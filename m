X-GM-THRID: 6201888067640360960
X-Received: by 10.50.17.74 with SMTP id m10mr10422676igd.3.1444015647644;
        Sun, 04 Oct 2015 20:27:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.75 with SMTP id k69ls2537899qgk.48.gmail; Sun, 04 Oct
 2015 20:27:27 -0700 (PDT)
X-Received: by 10.31.154.19 with SMTP id c19mr24047098vke.13.1444015647215;
        Sun, 04 Oct 2015 20:27:27 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x22e.google.com (mail-io0-x22e.google.com. [2607:f8b0:4001:c06::22e])
        by gmr-mx.google.com with ESMTPS id x8si908843igx.2.2015.10.04.20.27.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 20:27:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) client-ip=2607:f8b0:4001:c06::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22e.google.com with SMTP id 1so135480015iow.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 20:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6xyb/yxsIOHdhQc/UQEidhmWss9gfemCeNQ4s0eLl0A=;
        b=aCX5BvbLoLXkTY0BBec2joEGoPZEINRTXA3Gl5RJA4s1qQO5DCki16ya3INMk1YPlx
         QxHyLohbJQnd8yjKTStL0+p+HbIQn5yAXAUmigxJ6YHuu+9Uf7knZE5izfkMIrbWvOTy
         XQxxRMxpxQCDbDoGeqFq1an6kT0cmqAaQLqohqypiNE9YWpb3xtyEQGI00x5QAd967H+
         ftIBx8BJzEdwGUWTBQ1lSiZ/Ht75A2nKTWRH1xzt+KWa4bpzVUtVFWcMMfVCj5XItnkL
         D33UFX750wM8mOR7w1gtYAKkDd1FcY2nZlAbitn/cASf0H34jy1gxXzxm/fEWv4QCfoY
         Vmcw==
MIME-Version: 1.0
X-Received: by 10.107.18.26 with SMTP id a26mr27154545ioj.150.1444015647067;
 Sun, 04 Oct 2015 20:27:27 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Sun, 4 Oct 2015 20:27:27 -0700 (PDT)
In-Reply-To: <2cc8099c17ae523dee853b9615725b71b0b28ed7.1443989364.git.ksenija.stanojevic@gmail.com>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
	<2cc8099c17ae523dee853b9615725b71b0b28ed7.1443989364.git.ksenija.stanojevic@gmail.com>
Date: Mon, 5 Oct 2015 05:27:27 +0200
Message-ID: <CAL7P5jKM7JN1TFCj3LdaScU9CmxHjf4JQrSzg0+11FHQL1SK1w@mail.gmail.com>
Subject: Re: [PATCH 4/4] Staging: rtl8192u: Do not DMA on the stack in write_nic_dword()
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 4, 2015 at 10:15 PM, Ksenija Stanojevic
<ksenija.stanojevic@gmail.com> wrote:
> Fix error "doing DMA on the stack" by using kzalloc for buffer
> allocation.
> Issue found by smatch.
>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 6d0127f..a5bf8b4 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -347,11 +347,16 @@ void write_nic_dword(struct net_device *dev, int indx, u32 data)
>
>         struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
>         struct usb_device *udev = priv->udev;
> +       u32 *pdata = kzalloc(sizeof(data), GFP_KERNEL);
> +
> +       if (!pdata)
> +               return;
>
>         status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
>                                  RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
>                                  (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
>                                  &data, 4, HZ / 2);

I made a mistake i should have replace &data with pdata.

> +       kfree(pdata);
>
>
>         if (status < 0)
> --
> 1.9.1
>

