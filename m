X-GM-THRID: 6885722277770428416
X-Received: by 2002:a05:620a:15c7:: with SMTP id o7mr3470397qkm.262.1603210438367;
        Tue, 20 Oct 2020 09:13:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3ecd:: with SMTP id o13ls884263qtf.6.gmail; Tue, 20 Oct
 2020 09:13:57 -0700 (PDT)
X-Received: by 2002:ac8:45c6:: with SMTP id e6mr3084053qto.322.1603210437096;
        Tue, 20 Oct 2020 09:13:57 -0700 (PDT)
Received: by 2002:a37:b2c1:0:b029:12b:28f0:4e2b with SMTP id b184-20020a37b2c10000b029012b28f04e2bmsqkf;
        Tue, 20 Oct 2020 08:27:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyRwV31qt8UcPBzmNskDwlXq9wFPR6ETy+IiUsxpurpIJLfM4FzmJ5UTutmkL2KHYHb8IAP
X-Received: by 2002:a17:906:5509:: with SMTP id r9mr3882171ejp.12.1603207619629;
        Tue, 20 Oct 2020 08:26:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603207619; cv=none;
        d=google.com; s=arc-20160816;
        b=CtPUcHbmYsKi3YyxiVuU/fKgtIZTd5LpScP52B5A28JBMXXgd4tsGvRJXxOV6VP0bW
         C7Es0OsYmGBqupTGWhPLgFdvvjA4ZW32cGxVm6z1rKndHCIwani2xiEf2oJfDpvkgiwl
         M36Rfr1YkLIVFR2pjn/+QfgO1oHF6qGtZWi0X9XBuSwKtXmPlbJ7U1/JEg7P8y/LR+td
         ey3Sn5NNrlONJ0lm4uiOf9TrZwm0sLVF2IlvKQGzp42DfXsb0rF5tIV/jgk5XR1a1pPk
         d9H8bfYL3bgS/2DCwg+5r/NLZoOBZp1kHCraPTWI1dpPeYjCgVQzbIMAZVS9k9b5gp5U
         fsag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=Zeh27GzRmL8bPL9oQCB5ck5CEjhVPNog8LVAko3+L1c=;
        b=soc53vxZPHFtonzJDs5z3ma7pRCF+v1qrATNGc/83XI/vbLOR32MR2BMkpM5HKWgkR
         12ECzPVlZ2OxUlZa6BY3gkRTQQ02tWz9BbQ9AJBh3QXavtwy8xxwM0V14bwn+34/i0Rx
         5Bwe7SdQWe4dS2wrpvLuMliYbg813HY+el4/Oi9A+6sRHn0PyaDRkj6I/3WaFTdJYBAZ
         6h7ooQQlBopRFC3qbCYnzH6bYNUD2cya9beO7Z9WX/n+NxW3ZoP6WqlPzRoKLpa6Jjwz
         NYqKubCTq/rLyMebsmLcEd5Bf8ZRQnnOR9T1w9Nt5BFZwf9CxTtktjNOKlQPy7wbRRpz
         Kz/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VkRmWZIV;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id g25si56996eds.3.2020.10.20.08.26.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 08:26:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VkRmWZIV;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id a28so2483363ljn.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 08:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Zeh27GzRmL8bPL9oQCB5ck5CEjhVPNog8LVAko3+L1c=;
        b=VkRmWZIVxZksp8YLlWRlb3EAWtNkOyEbd+ADeHDy4h61/4SfZruYbo+z4tN9CDCzLU
         I3woZVHaKjTwjo+8bzUc8WYFhE9bryxKtrbmgtJy31mMmgt2C3e9WNuZMfwwLnVWpYpJ
         xwm3OvkQubPrJGYzh1Yd/7pY5ezKXF8z1a38qpYU016pzgn6yrBA/fJEtn+crlhBZPHQ
         jpGaCgMKX6LsPsXl3PcWu40OhzlOsyKCqWrRmWonnoA2Iub5RdFeZrzXRNCrt8vB6tmX
         nc+gZaC/5O43vGR17vuQ/hDvgaiD/STlIlkDEmdB6Jv8xN6PzKt75QTDBD3TNEt5oX8y
         xJDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Zeh27GzRmL8bPL9oQCB5ck5CEjhVPNog8LVAko3+L1c=;
        b=uM9YTEFU/e5XsBGj+dkI67v2Qm1vMEah0ZD5XXzOTVnA3ridSCLhcLwe2Uv5v01bUl
         G4fhvw5jAohnXj746mCF77NqcVbQw5Mpnkucze11TPaxaAnbywZ9b1Jq0UL/75LzpYew
         QhasfyPE2zZt9A18McwI7HBXThY3HQ50E/3W6+fJ68LHQD80mStseHeWk3ARgC8zt0ua
         JKvq1SZtSRSOq/++3AzUg+b+Ndsmqe4RXRSm/zsvHJSuI6U5LpGX6BTmBRhCElRh6pK2
         7Qvam5z4ix1kcvc6AKFhgpZ3GHUkJEzsOqDXeJHQb88ztDhlt1bzTAMnGu4MOk0j8i/E
         WXZQ==
X-Gm-Message-State: AOAM5326yR52Y6hNw9YBBKCkdTP8AiPfXoaG3sV1decoNTDwNd6rEgVi
	OVFUmh+yr7osC+9hOgmzpptby08SS18A+B5O
X-Received: by 2002:a2e:7304:: with SMTP id o4mr1284890ljc.437.1603207619099;
        Tue, 20 Oct 2020 08:26:59 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from [192.168.167.128] (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id p7sm350369lfc.299.2020.10.20.08.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 08:26:58 -0700 (PDT)
Message-ID: <db06e14584ad31f5a16e6600fa269543997cc28a.camel@gmail.com>
Subject: Re: [PATCH] staging/rtl8192u/ieee80211: use __func__ macro
From: Elena Afanasova <eafanasova@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Date: Tue, 20 Oct 2020 08:26:45 -0700
In-Reply-To: <20201020151949.GA852005@kroah.com>
References: <20201020150823.35734-1-eafanasova@gmail.com>
	 <20201020151949.GA852005@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-10-20 at 17:19 +0200, Greg KH wrote:
> On Tue, Oct 20, 2020 at 08:08:23AM -0700, Elena Afanasova wrote:
> > Replace function names with __func__ macro.
> > Remove unnecessary characters in error messages.
> > Reported by checkpatch.pl.
> > 
> > Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/dot11d.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.c
> > b/drivers/staging/rtl8192u/ieee80211/dot11d.c
> > index bc642076b96f..f972edcde8a0 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/dot11d.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/dot11d.c
> > @@ -15,7 +15,7 @@ void rtl8192u_dot11d_init(struct ieee80211_device
> > *ieee)
> >  	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF,
> > MAX_CHANNEL_NUMBER + 1);
> >  	RESET_CIE_WATCHDOG(ieee);
> >  
> > -	netdev_info(ieee->dev, "rtl8192u_dot11d_init()\n");
> > +	netdev_info(ieee->dev, "%s\n", __func__);
> 
> This is a pure debugging line, and should just be removed.  Can you
> do
> that as an add-on patch to this?

ok
> 
> thanks,
> 
> greg k-h


