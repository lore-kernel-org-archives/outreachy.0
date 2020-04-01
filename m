X-GM-THRID: 6810562968301862912
X-Received: by 2002:a17:90a:3602:: with SMTP id s2mr5877271pjb.143.1585760632814;
        Wed, 01 Apr 2020 10:03:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls152520pfg.9.gmail; Wed, 01 Apr
 2020 10:03:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsJ7XOM4t4UaGMwqu+U4796NFB2E/kisC57mYdG234FpfBHeQ8x4o7xuF1tIztAQhjPuW3E
X-Received: by 2002:a63:cb4a:: with SMTP id m10mr24416451pgi.101.1585760631036;
        Wed, 01 Apr 2020 10:03:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585760631; cv=none;
        d=google.com; s=arc-20160816;
        b=D9H7H9P/zYmNCeTbf76tDvhigCcfeY4ILwvOtFz3CIeJZ+zFHYNvHupiRXxlK3JFnD
         lyWyBT1wcqrJxB6W410XQ6hkuoFkvOkrRHu/UTQXD78NhE9iijFdMFwJlQQA666vV3Mb
         h3BVR0qWWjeoh/9EN1A+RVju/At5sBmqXGPEpHMBjsn29B+pFy860uCSdQMuzxFEH/t+
         JetzTT1+PgjlSOex9spHpocJTqEIY7tMH4DjX0DapTp6c4fKOB4insRDLwDTMsGd3mnY
         1liqJfz4af+TpCJ8cNWNTucjbljJibX77HTq0u06YjvIrFkSkoC16nc/y976mE1+HoNH
         i2wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=WtwGv3vdnXTqKFWbAa80zaGaRUy3I2YmRln94V7sduE=;
        b=hd4Htf72yzfQjLESxxiErO/sGyo4knYfkhDMtBe8/KJVgJRPgiT5VMEMTMiCIYUkM2
         zrZVbYYSMC0OEecCd9WJO8oiIFzXoCQnJBIKsvkTR5PWvAM7UXlV1KQ6I7lkgUi0HRzy
         uFnij12CR/XEbGK1MzYazzXioiG1XbpjYlNJfR5Kjyrp4YR0bGmE72rqbWHm5qKS4OWL
         SQ9+oV/NYoWFHXniPlTf+dur+Zj+97jwGX7zfH+nQO33dP8/FnPxrIKO5WFEjCMUFuvp
         b1RzFKTbeL1Go4xnG90CAJWXvApu27P74NTGf668XeFUmUoeOSHh4eOh87iz9pX8Ne7x
         0T/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qPel5yC7;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id c16si196098pgw.4.2020.04.01.10.03.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 10:03:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qPel5yC7;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id l36so255814pjb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 10:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=WtwGv3vdnXTqKFWbAa80zaGaRUy3I2YmRln94V7sduE=;
        b=qPel5yC7XE5OqNaHjX66jEuOmtdUGvLwaMhbcywW+ogQGmcfOl/Iz5AOjuUsRHtx0p
         Y5Tfs/PJ1FKPJE3JPxm8EWMyzmowUUtR093T9wwReyYt/Mlz5PeADLjhu716Qqql61lY
         /SHAmH/OmatEUeQXRNfjy+44flhf1jNJBBT+NKgYVxUzSNDvIZ1NJX6hQ3s71HcUMDrg
         zyAcElstTQFpiAIPOKgRp9xvPd7RIyIvzychzfFXUc/US0Ig1ICYZ+nN3JYc2JJnM/at
         zVTEqQDNmvVQ9sFc6HHbQlR8Os+Kj7jim52+RdE8xEfgviq5DVG/BcojMrIihILwjRIK
         QdPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=WtwGv3vdnXTqKFWbAa80zaGaRUy3I2YmRln94V7sduE=;
        b=IAivTqEjdGXxnOY1DreQrW+4MLbYHG9ti/wagl2d3MAebvdrsT+A3BxqWKYTRp3+Gr
         oDWGiHULYigdxBFRzGsL9az571vaF0vprXWllOZFmnYoMzmt3bZWoO9rWr54gNF1Kiyg
         QnhF7pX8q8OaAe5KmNzBWFYgUWJLuaEkNqAgFdv4vLwfEwriZbqnyAJIgdYdkmrCUxq9
         xj+puFTXEmfWmTa6WfJ440l9XnNE/pWqRo+FEnkIldwLnvydI9PPxw+7OfBkj/6pjYe2
         vWbnmOkm0X85JOAZPAseFm+IfrT7GtLemTl2W6beoW55euUgKHXB3SBgzFWp8osjZrEn
         ovGQ==
X-Gm-Message-State: AGi0PuZ8uGn+1st4ebrz4BV6YOjtkSzmDTjtBS5IfEYfRs9Gh+T3jVGv
	F7VYAzez4OZF7RcKsNmN9aA=
X-Received: by 2002:a17:90a:240e:: with SMTP id h14mr5949965pje.5.1585760630644;
        Wed, 01 Apr 2020 10:03:50 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id b133sm1966593pfb.180.2020.04.01.10.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 10:03:50 -0700 (PDT)
Message-ID: <ae1e61bfb47906b833048f58e7533de1264cdf2f.camel@gmail.com>
Subject: Re: [Patch v3 3/3] Staging: vt6655: Remove CARDbRadioPowerOn
 definition.
From: Briana Oursler <briana.oursler@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: sbrivio@redhat.com, gregkh@linuxfoundation.org,
 forest@alittletooquiet.net,  outreachy-kernel@googlegroups.com
Date: Wed, 01 Apr 2020 10:03:49 -0700
In-Reply-To: <alpine.DEB.2.21.2004011406200.10695@hadrien>
References: <cover.1585707212.git.briana.oursler@gmail.com>
	 <e64c02aadd0b846604c755989b39f374161a87e0.1585707212.git.briana.oursler@gmail.com>
	 <alpine.DEB.2.21.2004011406200.10695@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.5 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2020-04-01 at 14:07 +0200, Julia Lawall wrote:
> 
> On Tue, 31 Mar 2020, Briana Oursler wrote:
> 
> > Remove function CARDbRadioPowerOn that is never called, along with
> > comments related to it.
> 
> Did you check whether any of the functions that it calls are only
> called
> from here?

Hi Julia,

It looks like there are. Should I remove them in additional commits and
add them to the patch series?

Thanks,

Briana

> 
> julia
> 
> > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > ---
> >  drivers/staging/vt6655/card.c | 55 -----------------------------
> > ------
> >  drivers/staging/vt6655/card.h |  1 -
> >  2 files changed, 56 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6655/card.c
> > b/drivers/staging/vt6655/card.c
> > index 222b6ef61d9c..67b23ab0b0d1 100644
> > --- a/drivers/staging/vt6655/card.c
> > +++ b/drivers/staging/vt6655/card.c
> > @@ -17,7 +17,6 @@
> >   *      CARDvSetFirstNextTBTT - Set NIC Beacon time
> >   *      CARDvUpdateNextTBTT - Sync. NIC Beacon time
> >   *      CARDbRadioPowerOff - Turn Off NIC Radio Power
> > - *      CARDbRadioPowerOn - Turn On NIC Radio Power
> >   *
> >   * Revision History:
> >   *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253
> > spec.
> > @@ -437,60 +436,6 @@ void CARDbRadioPowerOff(struct vnt_private
> > *priv)
> >  		      LED_ACTSET);  /* LED issue */
> >  }
> > 
> > -/*
> > - * Description: Turn on Radio power
> > - *
> > - * Parameters:
> > - *  In:
> > - *      priv         - The adapter to be turned on
> > - *  Out:
> > - *      none
> > - *
> > - * Return Value: true if success; otherwise false
> > - */
> > -bool CARDbRadioPowerOn(struct vnt_private *priv)
> > -{
> > -	bool bResult = true;
> > -
> > -	pr_debug("chester power on\n");
> > -	if (priv->bRadioControlOff) {
> > -		if (priv->bHWRadioOff)
> > -			pr_debug("chester bHWRadioOff\n");
> > -		if (priv->bRadioControlOff)
> > -			pr_debug("chester bRadioControlOff\n");
> > -		return false; }
> > -
> > -	if (!priv->bRadioOff) {
> > -		pr_debug("chester pbRadioOff\n");
> > -		return true; }
> > -
> > -	BBvExitDeepSleep(priv, priv->byLocalID);
> > -
> > -	MACvRegBitsOn(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
> > -
> > -	switch (priv->byRFType) {
> > -	case RF_RFMD2959:
> > -		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
> > -				  SOFTPWRCTL_TXPEINV);
> > -		MACvWordRegBitsOff(priv->PortOffset,
> > MAC_REG_SOFTPWRCTL,
> > -				   SOFTPWRCTL_SWPE1);
> > -		break;
> > -
> > -	case RF_AIROHA:
> > -	case RF_AL2230S:
> > -	case RF_AIROHA7230:
> > -		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
> > -				  (SOFTPWRCTL_SWPE2 |
> > SOFTPWRCTL_SWPE3));
> > -		break;
> > -	}
> > -
> > -	priv->bRadioOff = false;
> > -	pr_debug("chester power on\n");
> > -	MACvRegBitsOff(priv->PortOffset, MAC_REG_GPIOCTL0,
> > -		       LED_ACTSET); /* LED issue */
> > -	return bResult;
> > -}
> > -
> >  void CARDvSafeResetTx(struct vnt_private *priv)
> >  {
> >  	unsigned int uu;
> > diff --git a/drivers/staging/vt6655/card.h
> > b/drivers/staging/vt6655/card.h
> > index 32405027e269..568a2ddd6588 100644
> > --- a/drivers/staging/vt6655/card.h
> > +++ b/drivers/staging/vt6655/card.h
> > @@ -55,7 +55,6 @@ unsigned char CARDbyGetPktType(struct vnt_private
> > *priv);
> >  void CARDvSafeResetTx(struct vnt_private *priv);
> >  void CARDvSafeResetRx(struct vnt_private *priv);
> >  void CARDbRadioPowerOff(struct vnt_private *priv);
> > -bool CARDbRadioPowerOn(struct vnt_private *priv);
> >  bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
> >  bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char
> > byRxRate,
> >  		    u64 qwBSSTimestamp);
> > --
> > 2.24.1
> > 
> > 


