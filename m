X-GM-THRID: 6406607470592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f04d7bc1ed043b39
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.161.194 with SMTP id xu2mr911278wjb.1.1425492908029;
        Wed, 04 Mar 2015 10:15:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.67 with SMTP id o3ls74360laj.67.gmail; Wed, 04 Mar 2015
 10:15:07 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr925427lbb.11.1425492907449;
        Wed, 04 Mar 2015 10:15:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si380587wib.2.2015.03.04.10.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 10:15:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,688,1418079600"; 
   d="scan'208";a="102123641"
Received: from unknown (HELO [132.207.219.129]) ([132.207.219.129])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Mar 2015 19:15:06 +0100
Date: Wed, 4 Mar 2015 13:15:04 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 08/13] staging: rtl8192u: remove extra
 parentheses around right bit shift operation
In-Reply-To: <20150304175729.GA4911@waves>
Message-ID: <alpine.DEB.2.10.1503041314530.2868@hadrien>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com> <076f797b7a1c3417bb6fe5d027a4a21d5e33b072.1425446659.git.mahfouz.saif.elyazal@gmail.com> <alpine.DEB.2.10.1503041208500.2777@hadrien> <20150304175729.GA4911@waves>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 4 Mar 2015, Aya Mahfouz wrote:

> On Wed, Mar 04, 2015 at 12:09:40PM -0500, Julia Lawall wrote:
> > > diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> > > index 9de4412..bab7751 100644
> > > --- a/drivers/staging/rtl8192u/r8192U_core.c
> > > +++ b/drivers/staging/rtl8192u/r8192U_core.c
> > > @@ -2310,11 +2310,11 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
> > >  	}
> > >
> > >  	if (bLoad_From_EEPOM) {
> > > -		tmpValue = eprom_read(dev, (EEPROM_VID>>1));
> > > +		tmpValue = eprom_read(dev, EEPROM_VID>>1);
> >
> > Perhaps you could add some spaces around >> at the same time.
> >
> Yes, I realized the styling issue too, it can be found in many files.
> Coders are not consistent when it comes to leaving spaces around
> the >> and << operators and checkpatch does not complain. In addition,
> checkpatch does not issue any warning about where an operator should
> be if a statement is split into two or more lines
> e.g.
>
> s = a *
>    b;
> is the same as
> s = a
>    * b;
>
> I can send the styling issues handling in a separate patchset. If you
> want me to resend the patchset again, let me know. It will however take
> me some time.

As you like.

julia

>
> > julia
> >
> > >  		priv->eeprom_vid = endian_swap(&tmpValue);
> > > -		priv->eeprom_pid = eprom_read(dev, (EEPROM_PID>>1));
> > > -		tmpValue = eprom_read(dev, (EEPROM_ChannelPlan>>1));
> > > -		priv->eeprom_ChannelPlan = ((tmpValue&0xff00)>>8);
> > > +		priv->eeprom_pid = eprom_read(dev, EEPROM_PID>>1);
> > > +		tmpValue = eprom_read(dev, EEPROM_ChannelPlan>>1);
> > > +		priv->eeprom_ChannelPlan = (tmpValue & 0xff00)>>8;
> > >  		priv->btxpowerdata_readfromEEPORM = true;
> > >  		priv->eeprom_CustomerID = eprom_read(dev, (EEPROM_Customer_ID>>1)) >>8;
> > >  	} else {
> > > @@ -2397,7 +2397,8 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
> > >  			}
> > >  		} else if (priv->EEPROM_Def_Ver == 1) {
> > >  			if (bLoad_From_EEPOM) {
> > > -				tmpValue = eprom_read(dev, (EEPROM_TxPwIndex_CCK_V1>>1));
> > > +				tmpValue = eprom_read(dev,
> > > +						EEPROM_TxPwIndex_CCK_V1 >> 1);
> > >  				tmpValue = (tmpValue & 0xff00) >> 8;
> > >  			} else {
> > >  				tmpValue = 0x10;
> > > @@ -2410,7 +2411,8 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
> > >  				tmpValue = 0x1010;
> > >  			*((u16 *)(&priv->EEPROMTxPowerLevelCCK_V1[1])) = tmpValue;
> > >  			if (bLoad_From_EEPOM)
> > > -				tmpValue = eprom_read(dev, (EEPROM_TxPwIndex_OFDM_24G_V1>>1));
> > > +				tmpValue = eprom_read(dev,
> > > +					EEPROM_TxPwIndex_OFDM_24G_V1 >> 1);
> > >  			else
> > >  				tmpValue = 0x1010;
> > >  			*((u16 *)(&priv->EEPROMTxPowerLevelOFDM24G[0])) = tmpValue;
> > > @@ -2453,7 +2455,7 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
> > >  		// Antenna B gain offset to antenna A, bit0~3
> > >  		priv->AntennaTxPwDiff[0] = (priv->EEPROMTxPowerDiff & 0xf);
> > >  		// Antenna C gain offset to antenna A, bit4~7
> > > -		priv->AntennaTxPwDiff[1] = ((priv->EEPROMTxPowerDiff & 0xf0)>>4);
> > > +		priv->AntennaTxPwDiff[1] = (priv->EEPROMTxPowerDiff & 0xf0)>>4;
> > >  		// CrystalCap, bit12~15
> > >  		priv->CrystalCap = priv->EEPROMCrystalCap;
> > >  		// ThermalMeter, bit0~3 for RFIC1, bit4~7 for RFIC2
> > > --
> > > 1.9.3
> > >
> > >
> > > --
> > > Kind Regards,
> > > Aya Saif El-yazal Mahfouz
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/076f797b7a1c3417bb6fe5d027a4a21d5e33b072.1425446659.git.mahfouz.saif.elyazal%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> Kind Regards,
> Aya Saif El-yazal Mahfouz
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150304175729.GA4911%40waves.
> For more options, visit https://groups.google.com/d/optout.
>

