X-GM-THRID: 6747349178842611712
X-Received: by 2002:a05:651c:1ad:: with SMTP id c13mr16533645ljn.131.1570992876603;
        Sun, 13 Oct 2019 11:54:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:51de:: with SMTP id u30ls1090113lfm.14.gmail; Sun, 13
 Oct 2019 11:54:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwsKB01puMAYIbhgyCmFkSoYEKpXuUrcGaEZGUJHSGuoKjHS8GWFixj9HTkysihokqc3lhm
X-Received: by 2002:a19:ee08:: with SMTP id g8mr10416991lfb.117.1570992875479;
        Sun, 13 Oct 2019 11:54:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570992875; cv=none;
        d=google.com; s=arc-20160816;
        b=siGL8/3PbGOlRUVxrI0ay7W9NuIwq0vTcpl1vCFThEqOZ+xyImtXEqRjO/EpX8TxZd
         3DD/uzh093pfo2X6hiElXlCX6SJxVICKiPa26rj77fzsNUGQliwxiVWgskagefcuXhFv
         sGb8nj2hhS+xlBmGZzGsilnr3TSM0T6Qgr5QJE6dnxLDhfrb3b8jDBl7d567Mu5GOgw/
         CydXMyaHVfPHQ5aJa+4/TRLvasDw646aSorQgH/eAP9hCu470KKW5kRZY6AQQGNTqEPl
         BRBDgm0x+7NOTxwV1d4RmiFQwudZ7S7OQ7kNiWxHdDhUpoOXKQyyfYttqi6DbfjhT+Zt
         1kMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=tqsXr9fhBmWkymaUtYPOa1KUp2T9gWdbbOi7v6RICyE=;
        b=UyUkCjqGsy6a+zK+KOkhucdSKd/uwAoTLdPB1LvdzzYWd61zlIoXEYi1xIrWvVXaLc
         dX9ATACjqd6s8mt6ob9qpKqBq1oJbJCD8XxuYvzM+66iFFrMY/f2Ahgtgw1IsGLaAY/+
         mA+5v9Yk7fkg95gjW4pIYuqx1FoFlfAwvPsQqZqqgAc1IL9f8JST2g9kmYdu3tRNauKK
         AHi6Qop3Lg1o/k1U6jZyd/CK8tw70OQWbU8MYzGSlJxdqD0vx+RwqTE1mDN4wo706/Uy
         +1kjKObGneDjdkI+ZX54zLAkGdauLofcnPQZ3RETs+8pLOjsDuj0hMFHOr1mxdzZgV92
         QCcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e3Ogq3tD;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z4si897178lfe.4.2019.10.13.11.54.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 11:54:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e3Ogq3tD;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id v8so17156799wrt.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Oct 2019 11:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tqsXr9fhBmWkymaUtYPOa1KUp2T9gWdbbOi7v6RICyE=;
        b=e3Ogq3tDcHYRmDXvKY9LQuff9bout4EkuwMXlYAAcrsttguls8KMu8vsVoZEjVnMAH
         NhsyavnBvYbLZH/RA/+j3byv1NXTxcSVrkVJI720XNeW98d94CJtaS9v/PndhghijXx9
         7/skz27sxvHOnxS7ROVPAAFT+2AavDu73LsJ2CH4Gvm6cwKZ8MHfmZNz7LRD07hWFVy3
         R/RzY+8mSMtGJoZL8cN0g7licYApRQ+0CkbZRoy/a60aZJTedB6IBmYsbPuVUVyqA37D
         ANVUuj8MlOcylXGcw3G/tnJxDIMtdGcWMmbYsETqbQPa0qWBLmj92jrT3z3snrqMWJal
         I5hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=tqsXr9fhBmWkymaUtYPOa1KUp2T9gWdbbOi7v6RICyE=;
        b=APk06wPckMA6CqvaDbLtEUY76HMYHw+AkQ7rj9uRZSE41bxdUlc2G/3Wv95i0Tkxhn
         nlwdzJuerkdaZZbEJOmI/wpQd3D7iljG7UcyXRRRxIwo2qUQjFnT43ynGNPrGdACrevh
         71cv0PVLkdGATubO5cVJ62EmlmdzStL9xPuGtMwDPquZrzVSSz2Ay6uLymZB9VZstpLx
         Eeb3N368D6Y+88PyGS1oZEbV8oG4TC9EcAaDvrXVFARqhbHN5gM1+eFKAsM1G1LvBCxl
         HTr7Kz1OV7qKsvnkqZTPBdu8c9CXKGfArKzuCiSR7ZrKiIPG1kdDgBa64vicENnHRJ/S
         1aaQ==
X-Gm-Message-State: APjAAAWdT5LThrWPB5PpKhZfE9zuyFR/joJ+fAmvO1Kx+RTZ/+N01NvA
	AmNH4ZQykRUoYxpCxqR2xc8=
X-Received: by 2002:a5d:6787:: with SMTP id v7mr8237032wru.392.1570992874814;
        Sun, 13 Oct 2019 11:54:34 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.237.61.225])
        by smtp.gmail.com with ESMTPSA id 90sm23340176wrr.1.2019.10.13.11.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 11:54:34 -0700 (PDT)
Date: Sun, 13 Oct 2019 21:54:28 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: use DIV_ROUND_UP
 helper macro
Message-ID: <20191013185428.GA390@wambui>
Reply-To: alpine.DEB.2.21.1910132005330.2565@hadrien
References: <20191013180033.31882-1-wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910132005330.2565@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910132005330.2565@hadrien>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 13, 2019 at 08:06:14PM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 13 Oct 2019, Wambui Karuga wrote:
> 
> > Use the DIV_ROUND_UP macro to replace open-coded divisor calculation
> > to improve readability.
> > Issue found using coccinelle:
> > @@
> > expression n,d;
> > @@
> > (
> > - ((n + d - 1) / d)
> > + DIV_ROUND_UP(n,d)
> > |
> > - ((n + (d - 1)) / d)
> > + DIV_ROUND_UP(n,d)
> > )
> >
> > Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > index 87535a4c2e14..74312e8bb32e 100644
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > @@ -4158,7 +4158,8 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
> >
> >  			/*  The value of ((usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B) */
> >  			/*  is getting the upper integer. */
> 
> It's a nice change.  Maybe the above comment could also be dropped, since
> the code is more understandable now.
> 
> julia
> 
Ok, I agree. Will update this.

wambui karuga

