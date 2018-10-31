X-GM-THRID: 6618035235223240704
X-Received: by 2002:a0c:93ec:: with SMTP id g41mr725092qvg.30.1540944381523;
        Tue, 30 Oct 2018 17:06:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:8da:: with SMTP id y26-v6ls51496qth.1.gmail; Tue, 30 Oct
 2018 17:06:20 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cYHC6Zufjs/6BRzaARb6jJOger8aCu8NjMPiyZx+E3ZzT60r3rJ2J7Ro+ZLcPIBizTLmYk
X-Received: by 2002:ac8:1289:: with SMTP id y9-v6mr727685qti.30.1540944380861;
        Tue, 30 Oct 2018 17:06:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540944380; cv=none;
        d=google.com; s=arc-20160816;
        b=WHDGm7rsIsq37E///+xEDKA+YNUuH9UtYpGxV47XlayZHlN9+Mvxanp8BiOIUZfY/V
         n8nSPkynIT7LaggnTkFamutMj1evP6gTWqxMDBvphIsXxFjgn2VYob2zn73nkqoywLGO
         UXmObeGBDK+tf+IVW7ucIOJTGOpJfBcxMJZQnNAk4w8DsdeI16DVSZwzpAgj40uv+joB
         6dRoDNzKtzFusUmeo2nSqcAFYxRIqHynSTou0S5Sw/MaSnZ0IZfXZG75AMDJYQmQD2yT
         uhqPqqiMOP5oQfWDxoct9C6y9Aor20yWDFbZefoTZVDe3zvswWBmB7aqZyqouBKhOmNw
         V8Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rOQW4lPOL6nr7ptqR3+d8pmXTX6SYq5L+LoE7kJvqSs=;
        b=uY8bL+mZ9z6kiLAEP854azP3XjWgQjadlw6aUVyI4rEffsI9bvKHgnWoaSqaMe96gg
         fsyUqp/SAkBfevIzTK1RiePHeFUn5Y9khFDeIOSTAL9CA+o9RxZXXauGSQ+/MLSS++ft
         p1n/wwt3Q4FhFgL1bL0bk6DQ+NN2B7zkjc+EN1prfcZJjpIbzkG7xwcPvMdmo9/OYX4A
         ObZqd7iMnCw5hqcPHk7ouseuRtrixrIwsasDfaNQdRvthYsUGAGhsEIQC6v9VsgOLCnR
         reDPKuo4yCl6lkBQfdYha7+f8ElHhAUze9eJWe/YG9TZHo69EEWxz1H0a6WTvAVzKg9k
         Nh1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mQVZDlTD;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id h125-v6si139343qkd.4.2018.10.30.17.06.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 17:06:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mQVZDlTD;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x629.google.com with SMTP id bb7-v6so6336793plb.13
        for <outreachy-kernel@googlegroups.com>; Tue, 30 Oct 2018 17:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rOQW4lPOL6nr7ptqR3+d8pmXTX6SYq5L+LoE7kJvqSs=;
        b=mQVZDlTDQvKhbRFoEAEQJ9yRYK+JrfArn1EZXdEktYJTLBH1Bi0JapDd1DXWfPq/WO
         kaNPcqS/JS7KO52Fqx8Ad28qpi3nqsZnwBIgC9jBUnVgiOtNSruaV5kl6WWI3UXQfuSZ
         s2pqUlAayvrhtZeblHFPtCmveSMElfkqAsI7ek0qeuaYV3mUwLh8ZTjs5f+c9tdUF33L
         oI1Z43AqigWsr4C4qdaq7tROFlfulKHIZ1MGbC91oWeh01edj9FV/Hkstv08NJ8yEVdm
         Ia630pVH2rLTD/8D8SRbCfSZlLUsnpjzUzq/UyRqRZ4rGom+HKpm/ZuUarrjNUMFbV3D
         A6ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rOQW4lPOL6nr7ptqR3+d8pmXTX6SYq5L+LoE7kJvqSs=;
        b=qkD0ok/6jaPV+oz8VtcNyfgHkwIzO6FQr8+wRqYFygAEvuMR36GvaTV7HkbxX8GDQx
         L/2VnHh6RfWHgRs0QQgIvYu8NfC86t6rxR1xLdW01L79ah0Jx7ybYz/OQal8yWO0QgZ/
         dRkwuB6S5LJQGNTaUjb8fo+dxtIOAqKAIot5F7xmvnmai+F/BEvmZqnphL8h8NouWhm5
         kVNgGdhxVDhZ69Y8K+bKd5uSCrRPX9DIStiVp/fgih43624sr3NiSlMdfaUVokgI/SQ2
         ch+8G3X96l0aE+RW/twQDujduYB6W9EeUdBvT/GSHoHlZ+m7zGDQPxGJO9n/wuWdzUd5
         iVQA==
X-Gm-Message-State: AGRZ1gJoUJs2VqWCPXUTiAtPPSYOAhuiAma5l/yFf20qUxG4vFm8ynpQ
	t9O8JZJbaDXLPE693Le/2hju8MOjnTA=
X-Received: by 2002:a17:902:aa09:: with SMTP id be9-v6mr826904plb.255.1540944380210;
        Tue, 30 Oct 2018 17:06:20 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id 7-v6sm26919057pgk.31.2018.10.30.17.06.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 30 Oct 2018 17:06:19 -0700 (PDT)
Date: Tue, 30 Oct 2018 17:06:15 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Remove unnecessary
 conditions
Message-ID: <20181031000614.GA2226@k-vBox>
References: <20181030063636.GA5098@k-vBox>
 <alpine.DEB.2.21.1810300845370.2443@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810300845370.2443@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Oct 30, 2018 at 08:46:21AM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 29 Oct 2018, Maya Nakamura wrote:
> 
> > Remove conditions with no effect at four different sections. Issues found
> > by Coccinelle's semantic patch results for cond_no_effect.cocci. Edit two
> > statements to keep expressions on one line--one from Julia's feedback.
> > Eliminate checkpatch result, a line should not end with a parenthesis.
> >
> > Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/phydm/phydm_debug.c   | 35 +++++++------------
> >  drivers/staging/rtlwifi/phydm/phydm_dig.c     |  9 ++---
> >  .../staging/rtlwifi/phydm/phydm_hwconfig.c    |  6 ++--
> >  drivers/staging/rtlwifi/phydm/phydm_psd.c     |  7 +---
> >  4 files changed, 17 insertions(+), 40 deletions(-)
> >
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> > index b5b69d5f1a41..91f2c054d83b 100644
> > --- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
> > +++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> > @@ -140,26 +140,17 @@ static inline void phydm_print_csi(struct phy_dm_struct *dm, u32 used,
> >  		dword_h = odm_get_bb_reg(dm, 0xF74, MASKDWORD);
> >  		dword_l = odm_get_bb_reg(dm, 0xF5C, MASKDWORD);
> >
> > -		if (index % 2 == 0)
> > -			PHYDM_SNPRINTF(
> > -				output + used, out_len - used,
> > -				"%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
> > -				dword_l & MASKBYTE0, (dword_l & MASKBYTE1) >> 8,
> > -				(dword_l & MASKBYTE2) >> 16,
> > -				(dword_l & MASKBYTE3) >> 24,
> > -				dword_h & MASKBYTE0, (dword_h & MASKBYTE1) >> 8,
> > -				(dword_h & MASKBYTE2) >> 16,
> > -				(dword_h & MASKBYTE3) >> 24);
> > -		else
> > -			PHYDM_SNPRINTF(
> > -				output + used, out_len - used,
> > -				"%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
> > -				dword_l & MASKBYTE0, (dword_l & MASKBYTE1) >> 8,
> > -				(dword_l & MASKBYTE2) >> 16,
> > -				(dword_l & MASKBYTE3) >> 24,
> > -				dword_h & MASKBYTE0, (dword_h & MASKBYTE1) >> 8,
> > -				(dword_h & MASKBYTE2) >> 16,
> > -				(dword_h & MASKBYTE3) >> 24);
> > +		PHYDM_SNPRINTF(output + used,
> > +			       out_len - used,
> > +			       "%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
> > +			       dword_l & MASKBYTE0,
> > +			       (dword_l & MASKBYTE1) >> 8,
> > +			       (dword_l & MASKBYTE2) >> 16,
> > +			       (dword_l & MASKBYTE3) >> 24,
> > +			       dword_h & MASKBYTE0,
> > +			       (dword_h & MASKBYTE1) >> 8,
> > +			       (dword_h & MASKBYTE2) >> 16,
> > +			       (dword_h & MASKBYTE3) >> 24);
> >  	}
> >  }
> >
> > @@ -168,9 +159,7 @@ void phydm_init_debug_setting(struct phy_dm_struct *dm)
> >  	dm->debug_level = ODM_DBG_TRACE;
> >
> >  	dm->fw_debug_components = 0;
> > -	dm->debug_components =
> > -
> > -		0;
> > +	dm->debug_components = 0;
> 
> 
> Does this belong here?  I don't see an if nearby.  You should make a
> series if you want to do two different things on the same file.
> 
> julia

Thank you, Julia, for reviewing my submission! I will separate different
types of fixes into their own patches and resend these.

Maya

> >
> >  	dm->fw_buff_is_enpty = true;
> >  	dm->pre_c2h_seq = 0;
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm_dig.c b/drivers/staging/rtlwifi/phydm/phydm_dig.c
> > index f10776fbe2d9..99c805cc380b 100644
> > --- a/drivers/staging/rtlwifi/phydm/phydm_dig.c
> > +++ b/drivers/staging/rtlwifi/phydm/phydm_dig.c
> > @@ -599,13 +599,8 @@ void odm_dig_init(void *dm_void)
> >  		       (DM_DIG_MAX_PAUSE_TYPE + 1));
> >  	dig_tab->pause_cckpd_level = 0;
> >
> > -	if (dm->board_type & (ODM_BOARD_EXT_PA | ODM_BOARD_EXT_LNA)) {
> > -		dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
> > -		dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
> > -	} else {
> > -		dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
> > -		dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
> > -	}
> > +	dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
> > +	dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
> >
> >  	dig_tab->enable_adjust_big_jump = 1;
> >  	if (dm->support_ic_type & ODM_RTL8822B) {
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > index e1544e38944b..2f4f273a0239 100644
> > --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > @@ -45,8 +45,8 @@ static u32 phydm_process_rssi_pwdb(struct phy_dm_struct *dm,
> >  	u32 weighting = 0, undecorated_smoothed_pwdb;
> >  	/* 2011.07.28 LukeLee: modified to prevent unstable CCK RSSI */
> >
> > -	if (entry->rssi_stat.ofdm_pkt ==
> > -	    64) { /* speed up when all packets are OFDM*/
> > +	if (entry->rssi_stat.ofdm_pkt == 64) {
> > +		/* speed up when all packets are OFDM*/
> >  		undecorated_smoothed_pwdb = undecorated_smoothed_ofdm;
> >  		ODM_RT_TRACE(dm, ODM_COMP_RSSI_MONITOR,
> >  			     "PWDB_0[%d] = (( %d ))\n", pktinfo->station_id,
> > @@ -1719,8 +1719,6 @@ static void phydm_get_rx_phy_status_type2(struct phy_dm_struct *dm,
> >  					  ODM_RTL8710B)) { /* JJ ADD 20161014 */
> >  		if (rxsc == 3)
> >  			bw = ODM_BW40M;
> > -		else if ((rxsc == 1) || (rxsc == 2))
> > -			bw = ODM_BW20M;
> >  		else
> >  			bw = ODM_BW20M;
> >  	}
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm_psd.c b/drivers/staging/rtlwifi/phydm/phydm_psd.c
> > index badc514ac0be..c93d871f1eb6 100644
> > --- a/drivers/staging/rtlwifi/phydm/phydm_psd.c
> > +++ b/drivers/staging/rtlwifi/phydm/phydm_psd.c
> > @@ -336,12 +336,7 @@ void phydm_psd_init(void *dm_void)
> >  			2; /*2b'11: 20MHz, 2b'10: 40MHz, 2b'01: 80MHz */
> >  	}
> >
> > -	if (dm->support_ic_type == ODM_RTL8812)
> > -		dm_psd_table->psd_pwr_common_offset = 0;
> > -	else if (dm->support_ic_type == ODM_RTL8821)
> > -		dm_psd_table->psd_pwr_common_offset = 0;
> > -	else
> > -		dm_psd_table->psd_pwr_common_offset = 0;
> > +	dm_psd_table->psd_pwr_common_offset = 0;
> >
> >  	phydm_psd_para_setting(dm, 1, 2, 3, 128, 0, 0, 7, 0);
> >  	/*phydm_psd(dm, 0x3c, 0, 127);*/ /* target at -50dBm */
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181030063636.GA5098%40k-vBox.
> > For more options, visit https://groups.google.com/d/optout.
> >

