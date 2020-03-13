X-GM-THRID: 6802944332146933760
X-Received: by 2002:a62:18cf:: with SMTP id 198mr10377790pfy.277.1584084480587;
        Fri, 13 Mar 2020 00:28:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls3631218pfd.4.gmail; Fri, 13
 Mar 2020 00:27:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs1NNwQ8++hR+yc6Fy4qlefpPGAuKQAJu5yZHs4hGcQZHyEbKeuGZyUpQcQLk9gV1/D91/2
X-Received: by 2002:a63:382:: with SMTP id 124mr11813365pgd.49.1584084478930;
        Fri, 13 Mar 2020 00:27:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584084478; cv=none;
        d=google.com; s=arc-20160816;
        b=KCzCH+EnhZK9zryZ4IZJHVXNKufXv3RvHljuGwi4Hvas+qXPdmJl/ZRkSe8xa2jLmD
         oowX6mRfKQvcDoFdxy/9mIHGxUxLj9M59i0ohGYmz4q2fF76bLIGn35rxNVQ4UyudYlk
         nfsw+CmXv0N+WSHpybSyKVSMgLYc/+p8XPkynOtfO64Qi2CubW/bD+5ureDtvtX+y8HE
         SCV1ISWKif1H+QNQEundObOduNLRSUgg4P1euGtaJh8BY3VSnyasz789R6rpJIQ56uz3
         Qjz12ruy2KCC8+GEMNFUscJECrwLgsmebHS0JEGnq91AkM3L0upOLGhlPQ+cWk8wp/dQ
         jk1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=wvA6h/ADCFmpO4/R58WqwTsyj0FZP41tEV3Px7U6ciw=;
        b=TRXdiiot29zMUQgcx65/++ZJR1Z2s2B7M6LvzU4xNyHKEcvDII2sR8L5/U8w4Ei9Jo
         TcIKFKV/spGYzn/IdjSK+czHdZkFs9eWrYHpeUS/rzQg0ikGOv5LgYb2/s/lTbDkUUwD
         Glfvu6adUQCjl9rJos1EIXeKwq6oFm4voZGkig5dzPsaoZ6zWrPm0oBzKRDQiLoMLifi
         xsq3ws9fY0PmgqeXuukrDtQRmGpIBRR8jzLcVoz5pGrDmNr+cZiz3wGjiLbt9QjGAQN4
         4CeDnEbKICj4wkdb6p6mQEiklcnn/AAgq3AMYCm+AchaAwjyE64IL8RJyCm8A53oJbMP
         l3lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uyAkfSNH;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id b10si469313pfo.6.2020.03.13.00.27.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 00:27:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uyAkfSNH;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id x7so4475137pgh.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 00:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wvA6h/ADCFmpO4/R58WqwTsyj0FZP41tEV3Px7U6ciw=;
        b=uyAkfSNHKkYjA+Ao2n9McRVmNL+oA0W06DzsicIwPy13UVOQPoRnEzPB+fYWQSNqFn
         hCer85T8KVYhhvKNgm1C/ud+9IAESjZqV5vQsDXMhfVQk1yfcUHyCzSL9GFwp5E5Xd5V
         N9sFhuifSO64xuoviHXsM0XziCYpGNEUo+J2mRkkilx01rKW0CzAvFjQyiBinqC1HGFy
         s6fAKlsFK2VbazbwSO3ILM+UNEaniNWnRgxKLFDIinTMjbeSHAqS8L7EUx97e9yTURaj
         RA8oQXMWWsKlISGqkRWzaQcnHQfRnY/LpxomBc21yeCxpROugy2MM/R9fD3TB+CafaMQ
         dx+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wvA6h/ADCFmpO4/R58WqwTsyj0FZP41tEV3Px7U6ciw=;
        b=erZYMiLI9//omaX86CDKZ7sqJFwKWe5lNBpgj4br0SUM5vJKWGqEWUlO9XecLFvKl+
         UamRkKNQ4iTySwxjyFyIopL+kYKdF8P2TYChqBEBliEbNb1Pq4hBkF4koZJ4v6oKwX+h
         Ujgv1XrznOQ5lz/mDttNLUMdE2F2RdPLMAsl8FX/PILZyDzwZT6O33gsaTl0rWOG3LHa
         76n68P4ud0gwIfxRIlhfgqsmM5I+yjxpjbcZyH14r8KmGcTdA8q41aMNzdxtcwzgc3Vp
         7VzWQCHsELqaAjajfofytTlxDY9yfSWG2wA3yUG8/KVevfmSCSUIRttB5D11r162CkNh
         nJcw==
X-Gm-Message-State: ANhLgQ1gpwIUnos6lKx/2Xupkk93SARJ3vdiRbsgyNc+lEy3Mu3hJ8lw
	VHg+LQvQeb09Edjjd7FlWJo=
X-Received: by 2002:a62:1a83:: with SMTP id a125mr12496744pfa.78.1584084478438;
        Fri, 13 Mar 2020 00:27:58 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from Shreeya-Patel ([1.23.249.228])
        by smtp.googlemail.com with ESMTPSA id y7sm17061880pfq.159.2020.03.13.00.27.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 00:27:57 -0700 (PDT)
Message-ID: <40e15d511cc2fbb4a13bb7df5a4f23ea942ab3a6.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: sdio_halinit:
 Remove unnecessary conditions
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Joe Perches <joe@perches.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
	sbrivio@redhat.com, daniel.baluta@gmail.com, nramas@linux.microsoft.com, 
	hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Date: Fri, 13 Mar 2020 12:57:50 +0530
In-Reply-To: <20200313072021.GQ11561@kadam>
References: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
	 <20200313072021.GQ11561@kadam>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-03-13 at 10:20 +0300, Dan Carpenter wrote:
> On Wed, Mar 11, 2020 at 07:08:11PM +0530, Shreeya Patel wrote:
> > diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> > b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> > index e813382e78a6..643592b0bd38 100644
> > --- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> > +++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> > @@ -551,18 +551,11 @@ static void HalRxAggr8723BSdio(struct adapter
> > *padapter)
> >  
> >  	pregistrypriv = &padapter->registrypriv;
> >  
> > -	if (pregistrypriv->wifi_spec) {
> > -		/*  2010.04.27 hpfan */
> > -		/*  Adjust RxAggrTimeout to close to zero disable
> > RxAggr, suggested by designer */
> > -		/*  Timeout value is calculated by 34 / (2^n) */
> > -		valueDMATimeout = 0x06;
> > -		valueDMAPageCount = 0x06;
> > -	} else {
> > -		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
> > -		/*  TX/RX Balance */
> > -		valueDMATimeout = 0x06;
> > -		valueDMAPageCount = 0x06;
> > -	}
> > +	/*  2010.04.27 hpfan */
> 
> Delete these sorts of comments where it's just a name of someone and
> a time stamp when they wrote it.  We don't know how to contact
> "hpfan"
> so it's useless.
> 

Thanks Joe and Dan for your explanation. I will remove the comments and
send the patch again.

> regards,
> dan carpenter
> 
> 


