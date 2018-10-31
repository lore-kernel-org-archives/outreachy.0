X-GM-THRID: 6618414504788099072
X-Received: by 2002:ac8:748:: with SMTP id k8-v6mr1576501qth.53.1541011144773;
        Wed, 31 Oct 2018 11:39:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:a8da:: with SMTP id h26ls6866797qvc.5.gmail; Wed, 31 Oct
 2018 11:39:04 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cDh44lINSssLH8Luflcsilo/BrS9VI/eujbb1FCImJJ+P/dP6yq4FY+KF1VeWBZytVZ/l3
X-Received: by 2002:a0c:b5de:: with SMTP id o30mr2934106qvf.39.1541011144062;
        Wed, 31 Oct 2018 11:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541011144; cv=none;
        d=google.com; s=arc-20160816;
        b=MQfOVJOjc2JYZ2BsCE8TuG1kt+ruy/CORvu2HxfEkpvUHgYWAtWCu58UlVl+JgbnMb
         OCzzwlWEJpTTrnoQq8eLXPczLrVij/e4D2Ua5MydkhW8P0jA8dtVn0PW87a1AL1JHHbt
         ojUert8u6FdfubF6pvX96zwisMn5I2PYEKsdL7rWwCQXrDFZe8O5wXKubfS6J4IgvMGP
         RIAxWJKFLPrRIQKk1eEheYjTrQFV/9yB2ZlCIg0Llyt+5z9ejpkv+bFcmJxwezXEN16R
         J4wz24CJKxMGBFrOiznKVJTcvMdY81ow8uuq6soBjS8k1FHsnPsU1pb1CaJ26h/I8s3r
         6NZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uFDQ52SDAP6EQz3lTAfs4lc9pmCLMIGMbBxNxJBL6H8=;
        b=qE+djo+vKCmhDhh5SPrAHxIsbc7pF+4eooTzPh/JGpMFW4IRE60yTYzKoE+9NB4P5l
         IyCciHGYmsLKKg5jOSjFRgjjCBPF8uR4tynl0mdb6P4a6mKiuF+N5j90DR+hplzE83Al
         obQWtFbOpHjiC/tDbFjXpXGbK/xkxtQOBdbduVCd8ra9PYn2U0Lk+vjA5KWQOetER1ci
         VuhZ1yiKEEdfNfNhHZQnL2C+szZWNP8cvUmooaR+x8k32Z4DQfAtbaLd+3GMrIW/d9++
         y3+t6hPNHQcovFoYvplhV1DhoSGdx37B6MMsQ+byYMRVVjddo0QaajDo/s8gZDj4l7zR
         8j7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JF4tx3yH;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x41-v6si1271351qth.2.2018.10.31.11.39.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 11:39:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JF4tx3yH;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id g21-v6so8028473pfi.7
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 11:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uFDQ52SDAP6EQz3lTAfs4lc9pmCLMIGMbBxNxJBL6H8=;
        b=JF4tx3yHl961RUVu2mhyG9Xq2QHhdnMfYAzv3Skohqsk0qfXHY3vfQrAlMb6pJ2qAq
         x1ucyRh5x1z++ukzPBMjOsBFmYOGME86Mo+6H4p4o/09GTaBRT0ACkiA2Jr1O2XFeTjI
         AB07syUiQ5BR9upjzidmKgT+W9+HFI/xji/k6seEKX9VeCzW+dA/fM+mNrahK18sNa3M
         lzW7GQKi695Y82Jy8ZsPgVhJPHMWxQcnQ5QhtyMm4W+pwOE5I6iITdAR/Q+UYXV2A4/Q
         /Su3+e4tc7Sa4ZZvN/UC3E+KFdsStKBG/FVRdZdFY9ZKDKDCebfhJJ0FPTkfz6G3ja6y
         yDbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uFDQ52SDAP6EQz3lTAfs4lc9pmCLMIGMbBxNxJBL6H8=;
        b=Fr05AUyRdolqQAGDg9mQcbanpXbMYgvTBNhPDOKie0DjjsieG9N4v0nLd5w7Gn9+cT
         1hU52RY3vmY2qhJBJJM4WQ1J7PUUcuSlOUa81MskAfpOuvWX9lla8htg5KzzFIcF5LP6
         FpqMz1ZMIY3EGHfVNPYzT6z8vKOMRw9PMCHaoKKrOWLKQ45upIPVqqM3eLsJxUC8fj3U
         VHFg1A74EBbZyeEwjrpWDeOg1alS5AIudjnk+E+NR9o/g9yuXV2HrgYMe2JKb88MHv/n
         GKW+6F1md/H6v2q1G72ELIBBIGk4GalqMt2oN4XaKxuKTZO5VtSv2XdAKhOCrWut0BXV
         GEJA==
X-Gm-Message-State: AGRZ1gKY9FT4NT/H8xsx0HmvQ7jTrUysIxqQcZRn5XqyemKu8Evki3FV
	+kbQNTB2mgw8ixFiN50FGOJxoSiNkWs=
X-Received: by 2002:a62:3101:: with SMTP id x1-v6mr2250584pfx.204.1541011142915;
        Wed, 31 Oct 2018 11:39:02 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id 64-v6sm60376729pfq.10.2018.10.31.11.39.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 11:39:02 -0700 (PDT)
Date: Wed, 31 Oct 2018 11:39:01 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rtlwifi: Keep
 expressions on one line
Message-ID: <20181031183859.GA2192@k-vBox>
References: <cover.1540968891.git.m.maya.nakamura@gmail.com>
 <368f5b749807cd02336274f978f3c6451655583d.1540968891.git.m.maya.nakamura@gmail.com>
 <alpine.DEB.2.20.1810311539020.6117@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1810311539020.6117@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Oct 31, 2018 at 03:39:40PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 31 Oct 2018, Maya Nakamura wrote:
> 
> > Edit two statements to keep expressions on one line--one from Julia's
> > feedback.
> >
> > Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/phydm/phydm_debug.c    | 4 +---
> >  drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 4 ++--
> >  2 files changed, 3 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> > index 1c7faa5840f2..91f2c054d83b 100644
> > --- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
> > +++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> > @@ -159,9 +159,7 @@ void phydm_init_debug_setting(struct phy_dm_struct *dm)
> >  	dm->debug_level = ODM_DBG_TRACE;
> >
> >  	dm->fw_debug_components = 0;
> > -	dm->debug_components =
> > -
> > -		0;
> > +	dm->debug_components = 0;
> >
> >  	dm->fw_buff_is_enpty = true;
> >  	dm->pre_c2h_seq = 0;
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > index e7dcb5b02ad4..2f4f273a0239 100644
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
> 
> There is another small cleanup you could do here, to put a space in front
> of the */
> 
> julia

Thank you for pointing that out! I will add a space and resubmit this
patchset.

Maya

> >  		undecorated_smoothed_pwdb = undecorated_smoothed_ofdm;
> >  		ODM_RT_TRACE(dm, ODM_COMP_RSSI_MONITOR,
> >  			     "PWDB_0[%d] = (( %d ))\n", pktinfo->station_id,
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/368f5b749807cd02336274f978f3c6451655583d.1540968891.git.m.maya.nakamura%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

