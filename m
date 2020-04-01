X-GM-THRID: 6810562968301862912
X-Received: by 2002:a05:651c:200c:: with SMTP id s12mr12891027ljo.30.1585760950644;
        Wed, 01 Apr 2020 10:09:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:58f1:: with SMTP id v17ls104177lfo.8.gmail; Wed, 01 Apr
 2020 10:09:09 -0700 (PDT)
X-Google-Smtp-Source: APiQypKZ7n9K9DLOfxc7Ja94JaJ1Xh0+pzTZNg2llOdmyjF++m0EWYqSqz5xyjKrkVvPx1IrhZz8
X-Received: by 2002:a05:6512:66:: with SMTP id i6mr15426446lfo.48.1585760949206;
        Wed, 01 Apr 2020 10:09:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585760949; cv=none;
        d=google.com; s=arc-20160816;
        b=BDXWgSZNX0184pCftTyQHuip47r9UFmFKsA0W5IRJCheTRAdAHxMz/adLRolNTi7HC
         URs5crFI0Yn1AeFdNHVu7ix+C+72I3lV5K6S1sKs4BMpQ5T2LGAvqsgNZHLLpb3xLZ0u
         7vA7U0MpC/4DZFpbzKrYQ1Ul+aOkruxqpil3N1DoAIDgVb0u4hdMqSkx+62cqhktVTwB
         77IUnwZ2aD4JAr2mcVg18J9PucrBHb/l3d3f0OCdvmbsxK793AW0EICt791njrjmZg9K
         eok0LcNQU6VlUquuM/ne/lDCxVBywCJnzGC3UFQ3nu1iUk7t6gZqt5yyHK3YXRm+OyVf
         9ifw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=F9GmEMzc3iUT/W0XU+gvtvMRWOZ7k4L1gSWrMUKfcEs=;
        b=DvrAxisTvi2hMx9fJn787wSTtO0Rkm3ocz/dZqodUh+3LTPeEH/4SkpOmX7yHLFzQR
         6/tU7NwM0Fg0fQrfkxhp+oLgOP4RqLaIH3oiBUIQzkYct9SwkJrZ7VMjzsRRESeGHtKe
         JNIsWt2ctklH7flzJ6cygHgmZljUp1phppA0MLYcJfku+URE2T9BKgFeuyNqed6DglyA
         nUe8/8zOazRKCFW/0K5XwnksBVo1zXIuXClTE188NRDhQr6pGjk6OGNlnVouI1ktI5Tg
         C1tjdEDVq0JkxS6kGXfZje1NMKtFeErN4wlJqdqTlKeckrk0optfV4fXRPCd8YfVDd6o
         IidA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c18si137871lji.4.2020.04.01.10.09.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2020 10:09:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,332,1580770800"; 
   d="scan'208";a="443399479"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Apr 2020 19:09:08 +0200
Date: Wed, 1 Apr 2020 19:09:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Briana Oursler <briana.oursler@gmail.com>
cc: sbrivio@redhat.com, gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Patch v3 3/3] Staging: vt6655: Remove CARDbRadioPowerOn
 definition.
In-Reply-To: <ae1e61bfb47906b833048f58e7533de1264cdf2f.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2004011908160.2342@hadrien>
References: <cover.1585707212.git.briana.oursler@gmail.com>  <e64c02aadd0b846604c755989b39f374161a87e0.1585707212.git.briana.oursler@gmail.com>  <alpine.DEB.2.21.2004011406200.10695@hadrien> <ae1e61bfb47906b833048f58e7533de1264cdf2f.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Apr 2020, Briana Oursler wrote:

> On Wed, 2020-04-01 at 14:07 +0200, Julia Lawall wrote:
> >
> > On Tue, 31 Mar 2020, Briana Oursler wrote:
> >
> > > Remove function CARDbRadioPowerOn that is never called, along with
> > > comments related to it.
> >
> > Did you check whether any of the functions that it calls are only
> > called
> > from here?
>
> Hi Julia,
>
> It looks like there are. Should I remove them in additional commits and
> add them to the patch series?

Yes.

julia

>
> Thanks,
>
> Briana
>
> >
> > julia
> >
> > > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > > ---
> > >  drivers/staging/vt6655/card.c | 55 -----------------------------
> > > ------
> > >  drivers/staging/vt6655/card.h |  1 -
> > >  2 files changed, 56 deletions(-)
> > >
> > > diff --git a/drivers/staging/vt6655/card.c
> > > b/drivers/staging/vt6655/card.c
> > > index 222b6ef61d9c..67b23ab0b0d1 100644
> > > --- a/drivers/staging/vt6655/card.c
> > > +++ b/drivers/staging/vt6655/card.c
> > > @@ -17,7 +17,6 @@
> > >   *      CARDvSetFirstNextTBTT - Set NIC Beacon time
> > >   *      CARDvUpdateNextTBTT - Sync. NIC Beacon time
> > >   *      CARDbRadioPowerOff - Turn Off NIC Radio Power
> > > - *      CARDbRadioPowerOn - Turn On NIC Radio Power
> > >   *
> > >   * Revision History:
> > >   *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253
> > > spec.
> > > @@ -437,60 +436,6 @@ void CARDbRadioPowerOff(struct vnt_private
> > > *priv)
> > >  		      LED_ACTSET);  /* LED issue */
> > >  }
> > >
> > > -/*
> > > - * Description: Turn on Radio power
> > > - *
> > > - * Parameters:
> > > - *  In:
> > > - *      priv         - The adapter to be turned on
> > > - *  Out:
> > > - *      none
> > > - *
> > > - * Return Value: true if success; otherwise false
> > > - */
> > > -bool CARDbRadioPowerOn(struct vnt_private *priv)
> > > -{
> > > -	bool bResult = true;
> > > -
> > > -	pr_debug("chester power on\n");
> > > -	if (priv->bRadioControlOff) {
> > > -		if (priv->bHWRadioOff)
> > > -			pr_debug("chester bHWRadioOff\n");
> > > -		if (priv->bRadioControlOff)
> > > -			pr_debug("chester bRadioControlOff\n");
> > > -		return false; }
> > > -
> > > -	if (!priv->bRadioOff) {
> > > -		pr_debug("chester pbRadioOff\n");
> > > -		return true; }
> > > -
> > > -	BBvExitDeepSleep(priv, priv->byLocalID);
> > > -
> > > -	MACvRegBitsOn(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
> > > -
> > > -	switch (priv->byRFType) {
> > > -	case RF_RFMD2959:
> > > -		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
> > > -				  SOFTPWRCTL_TXPEINV);
> > > -		MACvWordRegBitsOff(priv->PortOffset,
> > > MAC_REG_SOFTPWRCTL,
> > > -				   SOFTPWRCTL_SWPE1);
> > > -		break;
> > > -
> > > -	case RF_AIROHA:
> > > -	case RF_AL2230S:
> > > -	case RF_AIROHA7230:
> > > -		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
> > > -				  (SOFTPWRCTL_SWPE2 |
> > > SOFTPWRCTL_SWPE3));
> > > -		break;
> > > -	}
> > > -
> > > -	priv->bRadioOff = false;
> > > -	pr_debug("chester power on\n");
> > > -	MACvRegBitsOff(priv->PortOffset, MAC_REG_GPIOCTL0,
> > > -		       LED_ACTSET); /* LED issue */
> > > -	return bResult;
> > > -}
> > > -
> > >  void CARDvSafeResetTx(struct vnt_private *priv)
> > >  {
> > >  	unsigned int uu;
> > > diff --git a/drivers/staging/vt6655/card.h
> > > b/drivers/staging/vt6655/card.h
> > > index 32405027e269..568a2ddd6588 100644
> > > --- a/drivers/staging/vt6655/card.h
> > > +++ b/drivers/staging/vt6655/card.h
> > > @@ -55,7 +55,6 @@ unsigned char CARDbyGetPktType(struct vnt_private
> > > *priv);
> > >  void CARDvSafeResetTx(struct vnt_private *priv);
> > >  void CARDvSafeResetRx(struct vnt_private *priv);
> > >  void CARDbRadioPowerOff(struct vnt_private *priv);
> > > -bool CARDbRadioPowerOn(struct vnt_private *priv);
> > >  bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
> > >  bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char
> > > byRxRate,
> > >  		    u64 qwBSSTimestamp);
> > > --
> > > 2.24.1
> > >
> > >
>
>

