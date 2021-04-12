X-GM-THRID: 6949956774560530432
X-Received: by 2002:a2e:bb88:: with SMTP id y8mr14767701lje.265.1618222990618;
        Mon, 12 Apr 2021 03:23:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:bc23:: with SMTP id b35ls155597ljf.7.gmail; Mon, 12 Apr
 2021 03:23:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx1DBYRLGSt60So1T3LbUkKQKLe4rZvgZ4kdqsVkFIiP9gW8Ejaq131Ue1kEAD5onKXjdQm
X-Received: by 2002:a05:651c:1139:: with SMTP id e25mr10970852ljo.318.1618222988951;
        Mon, 12 Apr 2021 03:23:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618222988; cv=none;
        d=google.com; s=arc-20160816;
        b=NKE920PACb/kxIv8yA9fPEsrV1j+PSGcNP5ROiB62LDk4TXfqm3WMTPqso+9A73Nci
         ndiAITBMVDKCclWLhD9nL2xZ8T8dNhz/D5xZe9kO5SiX9FjRU5BimnSjT6ZhjbbzvPM5
         +v9IY48bUihQOYPJNa+m7FCsj3HrJy5FziIu0oOXLNxjiybl7w4yyMMTehkJtl3Q0EpI
         TqgrFt4sW+NSAdI2i7d2laQw07rrpSeL/Q3sfwsMolEvziOjx2WixwOqitYyIdLGJBww
         H8wihPVKBlnJHM/0BZ7O76f5zYw/OGt0dnrHXr3F+uwDGvX0fP3esprIJu7rvnwUzQCw
         vEOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aDYfwXOX7CXJC5km5DlusEFEF+Nl5xWOkbGcpQvebPk=;
        b=Vt9eFTDZUfitoaQ3E/I8IHAMXotxM3lVWlrk5UAa1dikbhP6ArHoDWJG1d3VZ4ql6f
         oj7lpgPt76xCTgagHf8Y3g5TJxKxUd31cR/B/C3Gi5NgGkgQVP3wDdLmtG+cZrOlRCiD
         m0PntcZpwNpbkmeMvFu9icD07bR51gIScTP2PLsg1C7hpjeTKNZ+AlpxBl+F8tEEm/wR
         1kxf4vyrGY2TTWD7AMl981E14x8QoCr8+oSAX9N4EP3dVGscSaXdBP7AtvKn08kF0xgu
         UgdQOFpsb02vnIRkwYqKO/e6/OaylCceL11lEGXq1g8gXK0tXpXbCvtXTAhFMcKyymXk
         h/Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dpot/PDu";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id z2si572158ljm.0.2021.04.12.03.23.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 03:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dpot/PDu";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x529.google.com with SMTP id w18so14464495edc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 03:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aDYfwXOX7CXJC5km5DlusEFEF+Nl5xWOkbGcpQvebPk=;
        b=dpot/PDuWTxI0+YsjLFgYLzDEj6vgBZZXMNrC5eNX2r5KNR9iKUMwbnVJ3BjT1vNex
         wSvgO0xYpng6v2cvxlxxCRq11pcF/DE7hoSDUMbKXRYT5KekR45y2Nq3ysC2ZIpwD60A
         x+KcjDBwQquu8oosqncOGLRy67S0T+CGgm5HKD0eYbk3vjCK16gkdUWxSGGMFA3Gw2th
         ddF2dtSOkIIa4diivQ++lhGNuGwicsn/6RariSY8/whcfMdjuc+3Z34zZ9WM2DMKn7WP
         fzyFLCHBvMhd4M8K/hPezvjDvD0xXIUs4cBCHSOoMqUHN0fT7ioOasbstn/+FxMfg4Ey
         Q+bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aDYfwXOX7CXJC5km5DlusEFEF+Nl5xWOkbGcpQvebPk=;
        b=JfJhNIFMmlB8Ln0B5G0mB/GPNvrxxjEPeSnfke/8A2TC0bhuZZZQRaHBfkzZ8+kMCZ
         mdHSWs0CuY4KdSaz0Eod8lLJCdqOVofKJ5ceEbe2+m/nzbrstkHDaJFVeginfoarXmpd
         3aduWOczmmmPw/lmuKXN6ZpUmaVhg/5aLm1YCxPVYdI9HdF4imd/Sjuj/2j4JRJ3Biiv
         T0FeX83pkdMBAiNslI3MRjxOsGudoiKHxupB/IZuQqgt09cExo/9dJODrtBHWn5UT8AY
         wu+9K1Q0QHbjKqa75GgQt/nVCTuhwtMjW7bPjUbHT19IRkF1wJFZnPW622PUKa3aXHkD
         QLIg==
X-Gm-Message-State: AOAM531ghvG5mUkJKZ45MbG8adZdoRhYDprl0k10Cg38WTJxRgI6vzp2
	3k26yh9RT5pkRDKYUFQioU3Z407snfY6pHKA
X-Received: by 2002:a05:6402:2691:: with SMTP id w17mr21565207edd.81.1618222988753;
        Mon, 12 Apr 2021 03:23:08 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id w13sm6134925edc.81.2021.04.12.03.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 03:23:08 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove variable set but not used
Date: Mon, 12 Apr 2021 12:23:07 +0200
Message-ID: <269706412.I7xuoi7Q6o@linux.local>
In-Reply-To: <YHQTY4fGJfsdSjXL@kroah.com>
References: <20210411174143.31618-1-fmdefrancesco@gmail.com> <YHQTY4fGJfsdSjXL@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, April 12, 2021 11:31:15 AM CEST Greg KH wrote:
> On Sun, Apr 11, 2021 at 07:41:43PM +0200, Fabio M. De Francesco wrote:
> > Remove variable "int ret" which is instantiated but not used.
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  drivers/staging/rtl8192u/r8192U_core.c | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/drivers/staging/rtl8192u/r8192U_core.c
> > b/drivers/staging/rtl8192u/r8192U_core.c index
> > f48186a89fa1..30055de66239 100644
> > --- a/drivers/staging/rtl8192u/r8192U_core.c
> > +++ b/drivers/staging/rtl8192u/r8192U_core.c
> > @@ -902,7 +902,6 @@ static void rtl8192_hard_data_xmit(struct sk_buff
> > *skb, struct net_device *dev,> 
> >  				   int rate)
> >  
> >  {
> >  
> >  	struct r8192_priv *priv = (struct r8192_priv 
*)ieee80211_priv(dev);
> > 
> > -	int ret;
> > 
> >  	unsigned long flags;
> >  	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb +
> >  	MAX_DEV_ADDR_SIZE); u8 queue_index = tcb_desc->queue_index;
> 
> Did you test-build this patch?
>
Sorry, I don't know why I forgot to test it.
I realized that this morning when I read a message from the kernel test 
robot.
I'll be more careful with future patches.

Thanks,

Fabio





