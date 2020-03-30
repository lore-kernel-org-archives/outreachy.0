X-GM-THRID: 6807590102219358208
X-Received: by 2002:aa7:9af7:: with SMTP id y23mr11664966pfp.1.1585538490794;
        Sun, 29 Mar 2020 20:21:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:fd82:: with SMTP id cx2ls14166966pjb.1.canary-gmail;
 Sun, 29 Mar 2020 20:21:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvszdVkl4HIKZ89h2varqYkEKGi410ZSGQExaw59tuV6TzHzKPFcVdUFTrLMK+PJVE2VJb5
X-Received: by 2002:a17:90a:1b22:: with SMTP id q31mr13813572pjq.109.1585538489378;
        Sun, 29 Mar 2020 20:21:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585538489; cv=none;
        d=google.com; s=arc-20160816;
        b=D55Cds6b/iHYZF15tYYsb0dva3nvEnPKrQEpq4DgE2Wj6y47/CB8wdivnKzI1l1hPT
         InE7rnQfDrWo+4upVUxz/833TlwcO2/w0Fi5FyH8QaEv4YFe9BTNWTNKCk5pN+5AOwav
         dogigrb+mFG0ZCwV1SSFLTIXP8bXV0AoTjBsYKNAXoZHMw25Fa2JOMpBio5gxt4IrCW4
         gy5OW7Qpq6ALmQUMkzGWjbTbgcJZS3Yi6GG+riqdHYcjGlwCGkH4HHiadNf01eE9Ik75
         KldE+HYPyF/Hh/R0b/uoglNwrK2UPk32bBmlJjoBjWG5cc2cFCwJ2YY2fAC0IcFAcpsm
         aEWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=EN1q9XM+nM2xWLN5P4z6Jk4k5m+Jvl40OzoW+zWzArI=;
        b=qRIdc7FM1T3QPALMkLDl3t7Bf6cToe9/7J3zvUGwnPR+PrU3/ppA4sNkjkFFULRo99
         cEKqAj/ZyGMbuqTZGpHJ1F+cNCDlrHWG8TIe0V3/4GOxyNGKChTH+Qa/yfg6JCyi03Tn
         MLcrI8INCYx6beBD5gAflFo1Ow7wEgP0KS4tf7B583fmArX++dJAjNoJ1q2QqWrRxmOV
         n/aqNHIEMCtfQa8+MtSgKeKYcPRznOQ0Wh60HhuesEQLLiCh0E8DszMgCYiFFh4wFiaP
         +AXYfS2mJFTea8Lizv45YkSF5xKg5Gqu0KhqF7h6ue7/YHYg0ediHSrFAOQZKuYCvNFa
         o/Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FqF/CxZF";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id u14si770462pjn.2.2020.03.29.20.21.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 20:21:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FqF/CxZF";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id x1so6184589plm.4
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 20:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=EN1q9XM+nM2xWLN5P4z6Jk4k5m+Jvl40OzoW+zWzArI=;
        b=FqF/CxZFf+0s4zlEdq+fQGwT3oob3DXedxrEaRmBGruyJfZ/vLy1VAKmcXTIewoMHV
         gtKkslPUdFD8pCmtFBPkkYRyfOXe4sRv6DbZhNLNzOstWH2MpSMvg408IGqHIbc1NCSV
         h6xvD06GWGawhhs77xG9CnucNm7kcRfdIoclhjPmUavcOO22SZ5kHs3MI3EIgwEc2VMN
         sRxX6Z22hoMowDi6lwNKHO5Rx7W7wen8hj0zD+HyXePfibEg6sDSFi5y2Qiw4FzqvQqE
         IMUS6J5DWD3F5pBllc2Nul1Fo6MnnphxRYPKuIzvwHvF7dRu5X5ycO6ifLykwHiUTpgG
         eCDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=EN1q9XM+nM2xWLN5P4z6Jk4k5m+Jvl40OzoW+zWzArI=;
        b=Wo7vU2FJes2mGpTENdnGDWiDT5BN4aXfyqCWW7XD9rblI1BW68TEBFwKwUgmZ4xAtc
         LgXXiR5RhkgKyHgvpHy2KxnlYB86im+bBiSAqBsD9K1XuSUuo1MpxDUTiIxpZOKMA4vz
         cT1WnbuHtjQBcxe0l10uCY+ibA2eSLzuTEFODwgKWjcdCn2VRY1Ezynj/XGnlytsiJBd
         60njIvyf805pQ5Vlzm2hPobc1MU41JMjDAaYPpSszdY1sgDKW3Br4YbggG3IZLnAs7xe
         T08nWidSG2q+KoObd98S8aT5rigjTiRATode2ns50fhfajqhddw366AxuwNnRpVbNym7
         2Rbw==
X-Gm-Message-State: ANhLgQ34D41PZfIQovs3tp1dzTwzDZGpUF+X5gA+DOdWBffMclXDIl89
	4nDZtrDl7BpAlVBE/POSuF0=
X-Received: by 2002:a17:90a:36c7:: with SMTP id t65mr13045852pjb.182.1585538488967;
        Sun, 29 Mar 2020 20:21:28 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id x188sm9280192pfx.198.2020.03.29.20.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 20:21:28 -0700 (PDT)
Message-ID: <86fdd60730d374a151aeabd092f571bc11e2f655.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vt6655: Break up
 function call with long line.
From: Briana Oursler <briana.oursler@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
	outreachy-kernel@googlegroups.com
Date: Sun, 29 Mar 2020 20:21:24 -0700
In-Reply-To: <20200330030229.2e4b468d@elisabeth>
References: <20200324113525.GA2286293@kroah.com>
	 <20200324183812.79411-1-briana.oursler@gmail.com>
	 <20200330030229.2e4b468d@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.5 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 03:02 +0200, Stefano Brivio wrote:
> On Tue, 24 Mar 2020 11:38:12 -0700
> Briana Oursler <briana.oursler@gmail.com> wrote:
> 
> > Update matches style found elsewhere in file.
> > Issue found by checkpatch: line over 80 characters.
> > 
> > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > ---
> >  Changes in v2:
> > 	- Move '+' operator to end of line.
> > 
> >  drivers/staging/vt6655/device_main.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/vt6655/device_main.c
> > b/drivers/staging/vt6655/device_main.c
> > index 0442f71494b2..5c86cc60eb5c 100644
> > --- a/drivers/staging/vt6655/device_main.c
> > +++ b/drivers/staging/vt6655/device_main.c
> > @@ -443,7 +443,10 @@ static bool device_init_rings(struct
> > vnt_private *priv)
> >  
> >  	/*allocate all RD/TD rings a single pool*/
> >  	vir_pool = dma_alloc_coherent(&priv->pcid->dev,
> > -				      priv->opts.rx_descs0 *
> > sizeof(struct vnt_rx_desc) + priv->opts.rx_descs1 * sizeof(struct
> > vnt_rx_desc) + priv->opts.tx_descs[0] * sizeof(struct vnt_tx_desc)
> > + priv->opts.tx_descs[1] * sizeof(struct vnt_tx_desc),
> > +				      priv->opts.rx_descs0 *
> > sizeof(struct vnt_rx_desc) +
> > +				      priv->opts.rx_descs1 *
> > sizeof(struct vnt_rx_desc) +
> > +				      priv->opts.tx_descs[0] *
> > sizeof(struct vnt_tx_desc) +
> > +				      priv->opts.tx_descs[1] *
> > sizeof(struct vnt_tx_desc),
> 
> Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
> 
> Two notes:
> 
> - it's a bit unusual to post a new patch version as a reply of a
>   comment to a previous version -- did you read about this somewhere?

I think I basically misunderstood the normal use case of 'in-reply-to'. 
Rereading that section of the first patch tutorial, I definitely
misread it. I've been resending all my patches as replies. I'll change
that up.

> 
> - a * x + b * x = (a + b) * x

Wow, yes. I will try to think more critically about context, it seems
so obvious now. Should I update it, or is it too late in the process?
Is there a 'too late'? Thank you,

-- Briana
> 



