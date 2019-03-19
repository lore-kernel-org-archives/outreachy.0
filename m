X-GM-THRID: 6670105232964321280
X-Received: by 2002:a19:9503:: with SMTP id x3mr1261908lfd.11.1553005984452;
        Tue, 19 Mar 2019 07:33:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3612:: with SMTP id d18ls994892lja.8.gmail; Tue, 19 Mar
 2019 07:33:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqylCEggQpo6XYkGXBYTohuZv9ubslvWlD7UgWp+s/a3YlzLpRc/R/0SRg7+CweFnfBD1S3/
X-Received: by 2002:a2e:80c7:: with SMTP id r7mr1413737ljg.10.1553005983689;
        Tue, 19 Mar 2019 07:33:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553005983; cv=none;
        d=google.com; s=arc-20160816;
        b=WDbD8GO8FMc7LO5TpZLV4eFM8+0lJl2ySo54yjujaUs2if8dL2VddraHdV3aDXbBEz
         6riVdBMgoCi90VA6QT6zaG1OUAiDifAqC2ENmdx8Yjut+80OBE2tMeqoHsnGcPpvYONr
         VerE2JfUA28BLSLB0lAnpsV0xRuLDCi6vUhEw7cB3s4Cgf0+zX/mKouWlTkoSwXG+njR
         2duVZ38661rzdNUwD1bqAXjPRLHeN4pdyRT4qtH28Nmavi8spqKMLcu0Kkqk3zejK1/8
         cTY6RRzj/wHO6IYvAQbyiFTc7rwm6VujpsNeAHbkxvK+igaQV1Wkz03TF7AYw4KGarDM
         9HVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Gpjz832ldhY1CspfGlrUNLNK0ed8l28yXZH6TxkecIw=;
        b=YCsciCBaVEsR/XPuICXqjkrjSSV9urrUa3uvcbOBlwvaq5ZCL8KtTz9UjVNKZKEVi6
         ZJl2eY5H4NZdKsb2zdFoVt3UT+4hNQiPdGLjzO0bsC3T8zDpjplTJPpEtfHBvwmQkish
         sXW71q0lmRZbUR+jr2PP6CeJy+rdmu/uwoF4jKq3NXxFelq6Vm7j4eRw2fmhDXDkzmBH
         tBnXPlVjCHC6gNwQkB4RyVcpPsLRoKRwnq03G4isU2iYPPhqfN06GuuUdePTZJZn4pOd
         EVw5+UcFHtqG31qD/D5DEFapF+5B1q7LYTCD8uG7Ry/W+ZLlruj9QQZfLwMbFS36Jwid
         OX4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 19si368194lje.4.2019.03.19.07.33.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:33:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,498,1544482800"; 
   d="scan'208";a="374722401"
Received: from unknown (HELO hadrien.local) ([163.173.90.67])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 15:32:58 +0100
Date: Tue, 19 Mar 2019 15:32:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: rtl8192u: r8192U_dm:
 Fix alignment issue.
In-Reply-To: <alpine.DEB.2.20.1903191530000.8263@hadrien>
Message-ID: <alpine.DEB.2.20.1903191532270.8263@hadrien>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com> <20190319141806.8592-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.20.1903191530000.8263@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Mar 2019, Julia Lawall wrote:

>
>
> On Tue, 19 Mar 2019, Sanjana Sanikommu wrote:
>
> > Ajdust alignment to match open paranthesis.
> > Issue found by checkpatch.pl
> >
> > CHECK: Alignment should match open paranthesis.
> >
> > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/r8192U_dm.c | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> > index 4fe4c99a0880..8279fa721c74 100644
> > --- a/drivers/staging/rtl8192u/r8192U_dm.c
> > +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> > @@ -1451,7 +1451,7 @@ static void dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool  bInCH
> >
> >  		rtl8192_setBBreg(dev, rCCK0_TxFilter1, bMaskHWord, TempVal);
> >  		RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
> > -			rCCK0_TxFilter1, TempVal);
> > +			 rCCK0_TxFilter1, TempVal);
> >  		/* Write 0xa24 ~ 0xa27 */
> >  		TempVal =	CCKSwingTable_Ch14[priv->CCK_index][2] +
>
> Since you will be sending this series again, maybe you could add another
> patch in the series to remove these big spaces between the = and the array
> reference.  I wonder if it is tab that should be a space, but I'm not sure
> because the next line seems to be aligned according to this big distance.

Oh well, it seems that you sent the new seris again already :)

julia

>
> julia
>
> >  					(CCKSwingTable_Ch14[priv->CCK_index][3]<<8) +
> > @@ -1459,14 +1459,14 @@ static void dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool  bInCH
> >  					(CCKSwingTable_Ch14[priv->CCK_index][5]<<24);
> >  		rtl8192_setBBreg(dev, rCCK0_TxFilter2, bMaskDWord, TempVal);
> >  		RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
> > -			rCCK0_TxFilter2, TempVal);
> > +			 rCCK0_TxFilter2, TempVal);
> >  		/* Write 0xa28  0xa29 */
> >  		TempVal =	CCKSwingTable_Ch14[priv->CCK_index][6] +
> >  					(CCKSwingTable_Ch14[priv->CCK_index][7]<<8);
> >
> >  		rtl8192_setBBreg(dev, rCCK0_DebugPort, bMaskLWord, TempVal);
> >  		RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
> > -			rCCK0_DebugPort, TempVal);
> > +			 rCCK0_DebugPort, TempVal);
> >  	}
> >  }
> >
> > @@ -1517,7 +1517,7 @@ void dm_restore_dynamic_mechanism_state(struct net_device *dev)
> >  		return;
> >  	/* TODO: Only 11n mode is implemented currently, */
> >  	if (!(priv->ieee80211->mode == WIRELESS_MODE_N_24G ||
> > -		priv->ieee80211->mode == WIRELESS_MODE_N_5G))
> > +	      priv->ieee80211->mode == WIRELESS_MODE_N_5G))
> >  		return;
> >
> >  	{
> > @@ -1748,7 +1748,7 @@ static void dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
> >
> >  	/* For smooth, we can not change DIG state. */
> >  	if ((priv->undecorated_smoothed_pwdb > dm_digtable.rssi_low_thresh) &&
> > -		(priv->undecorated_smoothed_pwdb < dm_digtable.rssi_high_thresh))
> > +	    (priv->undecorated_smoothed_pwdb < dm_digtable.rssi_high_thresh))
> >  		return;
> >
> >  	/*DbgPrint("Dig by Fw False Alarm\n");*/
> > @@ -1811,7 +1811,7 @@ static void dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
> >  		u8 reset_flag = 0;
> >
> >  		if (dm_digtable.dig_state == DM_STA_DIG_ON &&
> > -			(priv->reset_count == reset_cnt)) {
> > +		    (priv->reset_count == reset_cnt)) {
> >  			dm_ctrl_initgain_byrssi_highpwr(dev);
> >  			return;
> >  		}
> > @@ -1909,7 +1909,7 @@ static void dm_ctrl_initgain_byrssi_highpwr(
> >  	 */
> >  	if (priv->undecorated_smoothed_pwdb >= dm_digtable.rssi_high_power_highthresh) {
> >  		if (dm_digtable.dig_highpwr_state == DM_STA_DIG_ON &&
> > -			(priv->reset_count == reset_cnt_highpwr))
> > +		    (priv->reset_count == reset_cnt_highpwr))
> >  			return;
> >  		dm_digtable.dig_highpwr_state = DM_STA_DIG_ON;
> >
> > @@ -1925,7 +1925,7 @@ static void dm_ctrl_initgain_byrssi_highpwr(
> >  			write_nic_byte(dev, rOFDM0_RxDetector1, 0x43);
> >  	} else {
> >  		if (dm_digtable.dig_highpwr_state == DM_STA_DIG_OFF &&
> > -			(priv->reset_count == reset_cnt_highpwr))
> > +		    (priv->reset_count == reset_cnt_highpwr))
> >  			return;
> >  		dm_digtable.dig_highpwr_state = DM_STA_DIG_OFF;
> >
> > @@ -2126,7 +2126,7 @@ static	void dm_cs_ratio(
> >
> >  	{
> >  		if ((dm_digtable.precs_ratio_state != dm_digtable.curcs_ratio_state) ||
> > -			!initialized || force_write) {
> > +		    !initialized || force_write) {
> >  			/*DbgPrint("Write CS_ratio state = %d\n", DM_DigTable.CurCS_ratioState);*/
> >  			if (dm_digtable.curcs_ratio_state == DIG_CS_RATIO_LOWER) {
> >  				/*  Lower CS ratio for CCK. */
> > @@ -2643,7 +2643,7 @@ void dm_fsync_timer_callback(struct timer_list *t)
> >  	bool		bDoubleTimeInterval = false;
> >
> >  	if (priv->ieee80211->state == IEEE80211_LINKED &&
> > -		priv->ieee80211->bfsync_enable &&
> > +	    priv->ieee80211->bfsync_enable &&
> >  		(priv->ieee80211->pHTInfo->IOTAction & HT_IOT_ACT_CDD_FSYNC)) {
> >  		/* Count rate 54, MCS [7], [12, 13, 14, 15] */
> >  		u32 rate_bitmap;
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190319141806.8592-1-sanjana99reddy99%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903191530000.8263%40hadrien.
> For more options, visit https://groups.google.com/d/optout.
>

