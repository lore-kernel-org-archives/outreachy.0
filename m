X-GM-THRID: 6406607470592
X-Received: by 10.152.27.134 with SMTP id t6mr892279lag.5.1425491856805;
        Wed, 04 Mar 2015 09:57:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.5 with SMTP id ga5ls172475wib.10.gmail; Wed, 04 Mar
 2015 09:57:36 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr4051525wic.3.1425491856468;
        Wed, 04 Mar 2015 09:57:36 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id el6si377007wib.2.2015.03.04.09.57.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 09:57:36 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id h11so32807229wiw.3
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 09:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=0ukrCsFKKdZe0CcLldHvyv/wgSWC9cy1g+cHtp6h6k4=;
        b=OdCPpUZ8reooNZsrwiiYNib2M5io7ilejPU9Fxt4jHsEpeeMThSwYG8kXOzoIz8QRN
         ihsMv8W40uKJM9fdhNgf/ggaZM6tQQnIEVZYBaj9CccUFgXJlvAP1gJGCFsKL3+spj66
         dFtCVq/yEABSYpOiNATVM8Qh3SlSrLOU3HoJsFfliSgf7cVADK4NpjeShBfOmoHzoTVQ
         rXfubcmE3j09rNUQ0wMtzCc/wsepEoq8ZP2Oges05dJ5cYmG2RwqHn8DTN5iZg1qYYgn
         4AR8zV98v49cVo+jQ6bzdpK0MPgkD+CEyE0yEfML7J93WTOlwUwr0daw+Rub290APVPR
         T1RQ==
X-Received: by 10.194.156.202 with SMTP id wg10mr10717107wjb.70.1425491856385;
        Wed, 04 Mar 2015 09:57:36 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.213.41])
        by mx.google.com with ESMTPSA id ev7sm6932605wjb.47.2015.03.04.09.57.34
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 09:57:35 -0800 (PST)
Date: Wed, 4 Mar 2015 19:57:29 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 08/13] staging: rtl8192u: remove extra
 parentheses around right bit shift operation
Message-ID: <20150304175729.GA4911@waves>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
 <076f797b7a1c3417bb6fe5d027a4a21d5e33b072.1425446659.git.mahfouz.saif.elyazal@gmail.com>
 <alpine.DEB.2.10.1503041208500.2777@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1503041208500.2777@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 04, 2015 at 12:09:40PM -0500, Julia Lawall wrote:
> > diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> > index 9de4412..bab7751 100644
> > --- a/drivers/staging/rtl8192u/r8192U_core.c
> > +++ b/drivers/staging/rtl8192u/r8192U_core.c
> > @@ -2310,11 +2310,11 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
> >  	}
> >
> >  	if (bLoad_From_EEPOM) {
> > -		tmpValue = eprom_read(dev, (EEPROM_VID>>1));
> > +		tmpValue = eprom_read(dev, EEPROM_VID>>1);
> 
> Perhaps you could add some spaces around >> at the same time.
>
Yes, I realized the styling issue too, it can be found in many files.
Coders are not consistent when it comes to leaving spaces around
the >> and << operators and checkpatch does not complain. In addition,
checkpatch does not issue any warning about where an operator should
be if a statement is split into two or more lines
e.g.

s = a * 
   b;
is the same as 
s = a 
   * b;

I can send the styling issues handling in a separate patchset. If you
want me to resend the patchset again, let me know. It will however take
me some time.
   
> julia
> 
> >  		priv->eeprom_vid = endian_swap(&tmpValue);
> > -		priv->eeprom_pid = eprom_read(dev, (EEPROM_PID>>1));
> > -		tmpValue = eprom_read(dev, (EEPROM_ChannelPlan>>1));
> > -		priv->eeprom_ChannelPlan = ((tmpValue&0xff00)>>8);
> > +		priv->eeprom_pid = eprom_read(dev, EEPROM_PID>>1);
> > +		tmpValue = eprom_read(dev, EEPROM_ChannelPlan>>1);
> > +		priv->eeprom_ChannelPlan = (tmpValue & 0xff00)>>8;
> >  		priv->btxpowerdata_readfromEEPORM = true;
> >  		priv->eeprom_CustomerID = eprom_read(dev, (EEPROM_Customer_ID>>1)) >>8;
> >  	} else {
> > @@ -2397,7 +2397,8 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
> >  			}
> >  		} else if (priv->EEPROM_Def_Ver == 1) {
> >  			if (bLoad_From_EEPOM) {
> > -				tmpValue = eprom_read(dev, (EEPROM_TxPwIndex_CCK_V1>>1));
> > +				tmpValue = eprom_read(dev,
> > +						EEPROM_TxPwIndex_CCK_V1 >> 1);
> >  				tmpValue = (tmpValue & 0xff00) >> 8;
> >  			} else {
> >  				tmpValue = 0x10;
> > @@ -2410,7 +2411,8 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
> >  				tmpValue = 0x1010;
> >  			*((u16 *)(&priv->EEPROMTxPowerLevelCCK_V1[1])) = tmpValue;
> >  			if (bLoad_From_EEPOM)
> > -				tmpValue = eprom_read(dev, (EEPROM_TxPwIndex_OFDM_24G_V1>>1));
> > +				tmpValue = eprom_read(dev,
> > +					EEPROM_TxPwIndex_OFDM_24G_V1 >> 1);
> >  			else
> >  				tmpValue = 0x1010;
> >  			*((u16 *)(&priv->EEPROMTxPowerLevelOFDM24G[0])) = tmpValue;
> > @@ -2453,7 +2455,7 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
> >  		// Antenna B gain offset to antenna A, bit0~3
> >  		priv->AntennaTxPwDiff[0] = (priv->EEPROMTxPowerDiff & 0xf);
> >  		// Antenna C gain offset to antenna A, bit4~7
> > -		priv->AntennaTxPwDiff[1] = ((priv->EEPROMTxPowerDiff & 0xf0)>>4);
> > +		priv->AntennaTxPwDiff[1] = (priv->EEPROMTxPowerDiff & 0xf0)>>4;
> >  		// CrystalCap, bit12~15
> >  		priv->CrystalCap = priv->EEPROMCrystalCap;
> >  		// ThermalMeter, bit0~3 for RFIC1, bit4~7 for RFIC2
> > --
> > 1.9.3
> >
> >
> > --
> > Kind Regards,
> > Aya Saif El-yazal Mahfouz
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/076f797b7a1c3417bb6fe5d027a4a21d5e33b072.1425446659.git.mahfouz.saif.elyazal%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

