X-GM-THRID: 6809468497850007552
X-Received: by 2002:ab0:2541:: with SMTP id l1mr4125656uan.123.1585470234751;
        Sun, 29 Mar 2020 01:23:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:60b5:: with SMTP id f21ls1057301uam.6.gmail; Sun, 29 Mar
 2020 01:23:53 -0700 (PDT)
X-Google-Smtp-Source: APiQypJfC8EKfz/Oqk0EThncxfGswUY8yt0gVn7l4GOoH2pB6BgqMcaDHX5Jt+F1IaRDDZ0QpXTw
X-Received: by 2002:ab0:3198:: with SMTP id d24mr4287406uan.20.1585470233415;
        Sun, 29 Mar 2020 01:23:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585470233; cv=none;
        d=google.com; s=arc-20160816;
        b=WJdfRV4O/g63FqbxLjSo9a/84rsMFGR/4O0IBPLqy6H5XecBODsjzkssj+wPWw5VVc
         i5H5sT5Dkq7MGwJY6fDY0peXTDOEgA/HaLpcqBNuUplKtH6keczLZHHpLZ2Il2w8QJar
         Q3N3mLWzIbx5LmtfSaePywHOysF1LzyxyCvoMQ/hXnGZAJfPbasUPde2vyEjBRWJGCmt
         K7rwJ91p1TXqNnPui5nVW2g+9vqeL8ui/1y3G8W7YXTbh5funTrD8eRRXl1Yi6rVKFo5
         +N8mK1Zhdke+oSGAK882M8cgzgYcfUQzfcUGAPzqeSQzKS66GTUt/FO90l32Um3qmAKQ
         SrZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=3ISLFHsgkKWmx4G9ZXKgUQvnJD8EGZqjk+mpZVGnzS0=;
        b=AqtuN2CyCLfzqRlS6isiPw8bElbtESZbvRgWIwOIErqW8zyVCVTdQoUyBJvmXZCUz4
         MwAf1MgmSSnbJaBRczUZwKp9Av9/CHv4DxQxVGem/vdy5n294cQyPMTVFbYDdWof8aL7
         tzMtUJiYgrlop5irlk7LQhw+4HP64+jzP875QzsLumsBbnCjvvgiZm4CbplWRp0YEUNK
         WgpBIaPwYHwuyAoilR+H51+L5ql5UwTlrlVvC41P8U9Rc6rlJTR13Bg3o7GbeNwFpCeJ
         wMwVpX7e7AVPsV0iTU6qvZogB1/qj6M7a1J2UPkzN3Ehfe7YxCcA2EP/hRaEXn6nsHSW
         PXFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XDwl7pkO;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id 203si9483vkx.3.2020.03.29.01.23.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 01:23:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XDwl7pkO;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id e1so5388910plt.9
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 01:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=3ISLFHsgkKWmx4G9ZXKgUQvnJD8EGZqjk+mpZVGnzS0=;
        b=XDwl7pkOO0JDf9aF03ANYJKklKh8TYoWQZ/25CyS+MemrKnSYp4OewdsG1Hu35Jbm8
         5vVMkStg2G5O6HyCAqot8DDVy5Pyf89oANT4Akx+YKhNaQ8jGz/TPF28ATTjP9FIsI4M
         CIqOIRxHqE8A4w8Mgv8hbBVe48diILkEX1Qo6edjSTxhoDmvg/UMz83EaEU9o49PeDOT
         C6OUKxLLhU1PMv5Ev/VzbqW1IilvCLQb4Vu7Kum6UiyqmR8S1p2rGjFqfTOy6DlmLBz4
         8WyI1aAuObR/bMTpOSasYZaljE6V/3/Xwpz+eOWMY0vHT74NewX2K4rDk5xObn+zCYhN
         2XsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=3ISLFHsgkKWmx4G9ZXKgUQvnJD8EGZqjk+mpZVGnzS0=;
        b=UFBvMlLxPegtvnVe7nbO0XW903XHQMRZrw7U9pBiDUG/zqKtpWwKaj+1vIEj0kslI2
         lFlIDdCFZefnrUZ24vO+gmbJWlu/nRz+4t3YoJD6INvKE8mk4c4UxlySa8Vkd94A4Ujz
         Jqou1XTWqRIG2YsF9h9rSAV5o8lAHxLj/34mb0gToahbCKhndKdlDogS+Sdi3dJ6RpRn
         h8JOOrz96m8XzfAODxYuDUr9dbMjtx0ajbEF/gMvLiVL3/+XhPR12LdZ62J+lKvd6GC4
         oW01mxj8K8ORFgRawAVIFZqRpJhFTZCqEXnebfOgEOAv36OIXua52zobcdoEv6940J0b
         f2vg==
X-Gm-Message-State: ANhLgQ0KLQ3mfsjibqxV347/Fr3c9labaHj5tMLua53WY3LJhEkqBgY+
	e6za6JDzlwBdzZAmGVeTMCE=
X-Received: by 2002:a17:902:bd83:: with SMTP id q3mr7107789pls.289.1585470232503;
        Sun, 29 Mar 2020 01:23:52 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id d14sm7641313pfq.29.2020.03.29.01.23.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 01:23:52 -0700 (PDT)
Message-ID: <44fcc2be280b0a6034265495bbd0850abda3b760.camel@gmail.com>
Subject: Re: [PATCH] staging: vt6656: add error code handling to unused
 variable
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Sun, 29 Mar 2020 01:23:51 -0700
In-Reply-To: <alpine.DEB.2.21.2003291003200.2990@hadrien>
References: <20200329033435.498485-1-jbwyatt4@gmail.com>
	 <alpine.DEB.2.21.2003291003200.2990@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-29 at 10:04 +0200, Julia Lawall wrote:
> 
> On Sat, 28 Mar 2020, John B. Wyatt IV wrote:
> 
> > Add error code handling to unused 'ret' variable that was never
> > used.
> > Return an error code from functions called within
> > vnt_radio_power_on.
> > 
> > Issue reported by coccinelle (coccicheck).
> > 
> > Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> >  drivers/staging/vt6656/card.c | 19 ++++++++++++++-----
> >  1 file changed, 14 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6656/card.c
> > b/drivers/staging/vt6656/card.c
> > index dc3ab10eb630..9d23c3ec1e60 100644
> > --- a/drivers/staging/vt6656/card.c
> > +++ b/drivers/staging/vt6656/card.c
> > @@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private
> > *priv)
> >  {
> >  	int ret = 0;
> > 
> > -	vnt_exit_deep_sleep(priv);
> > +	ret = vnt_exit_deep_sleep(priv);
> > +	if (ret)
> > +		goto end;
> 
> Normally, if there is nothing to clean up, one can just say return
> ret.

Understood.

> 
> > -	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > +	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > +	if (ret)
> > +		goto end;
> > 
> >  	switch (priv->rf_type) {
> >  	case RF_AL2230:
> > @@ -734,13 +738,18 @@ int vnt_radio_power_on(struct vnt_private
> > *priv)
> >  	case RF_VT3226:
> >  	case RF_VT3226D0:
> >  	case RF_VT3342A0:
> > -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > -				    (SOFTPWRCTL_SWPE2 |
> > SOFTPWRCTL_SWPE3));
> > +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > +					 (SOFTPWRCTL_SWPE2 |
> > SOFTPWRCTL_SWPE3));
> >  		break;
> >  	}
> > +	if (ret)
> > +		goto end;
> > 
> > -	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> > +	ret = vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1,
> > GPIO3_INTMD);
> > +	if (ret)
> > +		goto end;
> 
> There is no need for the above if, because whether ret is nonzero or
> not,
> you will just end up at the next line.

Understood. Sending new patch.

edit: resending this email because I forgot to cc outreachy mailing
list.

> 
> julia
> 
> > +end:
> >  	return ret;
> >  }
> > 
> > --
> > 2.25.1
> > 
> > 


