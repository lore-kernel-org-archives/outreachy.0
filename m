Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA3B257C
	for <outreachy@lists.linux.dev>; Thu,  7 Apr 2022 16:17:48 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id i38so2221713lfv.3
        for <outreachy@lists.linux.dev>; Thu, 07 Apr 2022 09:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cs-iitr-ac-in.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wjO0bs1qvXp5AP5h5pS2WCcaezCLjsHDm5T0Nl0HxQY=;
        b=ghBT/e4ySWCB0ovgQR8E03ayNEJigtDReWTbUsMXn/TLVJWCV9WApQT02QFREECsyD
         s/HktNUEtI3RVxP2V2zPzpA5moJaxOJYdhwcM7+KdzPzGXRJhk/jaH1psFS7Y++lFj2n
         VVLnIUvxVmBFmfkBh0ERTAQ2VFtTinCjFJSmxNaZN92z0Yx0bDvI3lu4XCWsTN8Q5DGO
         Y98s6aH+yyFnKYK5Kuk/M3ahk2/wdpPU1Z+/97AmhOKLPExaC8reR6gYRtH5dh3tRhYy
         T/hUP867TYL3Q2ER8ffKJcjtCV7SbOCLCLyquwEMJkRIqAeP/wiq4AG1OlG7vN0dZvI7
         WIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wjO0bs1qvXp5AP5h5pS2WCcaezCLjsHDm5T0Nl0HxQY=;
        b=kuxWh4qO0DmhAOSu6YLUGyt9WTyuXx1/DmWf/vFjXUs+pxZiR6GiPZzITgZhCILkM1
         Hgob8UrW+++3cjhX5wbvXI0T403nDuX9+9S1IK5rAEpOn4kH4+a1wTyCq33QgL0c9r+G
         5bYzD5XPjWd2+GFcGPvxRPOSNJvKwIo7wVdVuYEgNEF/1tuPQUC+quimvExMofiUOVCS
         EdgyE9YJfWPv8yMlyN1wz2u4afmIncqCwgu/9eubuNIircHVHluwOq6zo8EbiBKmqioi
         AxmCikalglldbbda0dFL1rR8baWvTpIQLhyE2tnuzgGZs5xoTlQWhE7lnaBCIFONU7L1
         RSxA==
X-Gm-Message-State: AOAM530EY1WTdlpJSbm9KPB673wiVT4V3jmVvD/wAgbNGfqcrShw6TMY
	MpuOmlGNxDH03Iepq9LRXHuFjvWBzWPBuzMsYAOwMg==
X-Google-Smtp-Source: ABdhPJx1AntGzS/rBalHe6cpDFXldbK0o8QTe7Iu4ifkfngxq4NABQay5eYCVKcNzCDUc0j4GKW3Mg4laLmQa6ViisA=
X-Received: by 2002:a05:6512:3c6:b0:44a:b66d:6d04 with SMTP id
 w6-20020a05651203c600b0044ab66d6d04mr10174664lfp.428.1649348265832; Thu, 07
 Apr 2022 09:17:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20220407120945.31030-1-mahak_g@cs.iitr.ac.in> <alpine.DEB.2.22.394.2204071414080.2213@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2204071414080.2213@hadrien>
From: MAHAK GUPTA <mahak_g@cs.iitr.ac.in>
Date: Thu, 7 Apr 2022 21:47:09 +0530
Message-ID: <CANnaPbD7C8kvz-fK4js=zprck58=Yxp8h+wBLmXfQNKsHMDytw@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8712: fix camel case in function r8712_generate_ie
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
	gregkh@linuxfoundation.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 7, 2022 at 5:44 PM Julia Lawall <julia.lawall@inria.fr> wrote:
>
>
>
> On Thu, 7 Apr 2022, Mahak Gupta wrote:
>
> > Adhere to linux kernel coding style.
> >
> > Reported by checkpatch:
> >
> > CHECK: Avoid CamelCase: <beaconPeriod>
>
> As another patch, you could also adjust the structure field name.
>
> julia
>
> >
> > Signed-off-by: Mahak Gupta <mahak_g@cs.iitr.ac.in>
> > ---
> >  drivers/staging/rtl8712/ieee80211.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
> > index f926809b1021..7d8f1a29d18a 100644
> > --- a/drivers/staging/rtl8712/ieee80211.c
> > +++ b/drivers/staging/rtl8712/ieee80211.c
> > @@ -162,13 +162,13 @@ int r8712_generate_ie(struct registry_priv *registrypriv)
> >       uint sz = 0;
> >       struct wlan_bssid_ex *dev_network = &registrypriv->dev_network;
> >       u8 *ie = dev_network->IEs;
> > -     u16 beaconPeriod = (u16)dev_network->Configuration.BeaconPeriod;
> > +     u16 beacon_period = (u16)dev_network->Configuration.BeaconPeriod;
> >
> >       /*timestamp will be inserted by hardware*/
> >       sz += 8;
> >       ie += sz;
> >       /*beacon interval : 2bytes*/
> > -     *(__le16 *)ie = cpu_to_le16(beaconPeriod);
> > +     *(__le16 *)ie = cpu_to_le16(beacon_period);
> >       sz += 2;
> >       ie += 2;
> >       /*capability info*/
> > --
> > 2.17.1
> >
> >
> >

Sure, on it. Thanks.

Mahak
