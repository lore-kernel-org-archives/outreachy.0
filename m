X-GM-THRID: 6616097415299596288
X-Received: by 2002:ac8:4543:: with SMTP id z3-v6mr1329907qtn.4.1540514066388;
        Thu, 25 Oct 2018 17:34:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4147:: with SMTP id o68-v6ls115114qka.9.gmail; Thu, 25
 Oct 2018 17:34:25 -0700 (PDT)
X-Google-Smtp-Source: AJdET5enMrYEyjZjahtesiq547unyRbSHulAageOglZLRDigkeKH3z7zW7MOs0/xMj0e8fT3tT6I
X-Received: by 2002:ae9:f702:: with SMTP id s2-v6mr1307640qkg.11.1540514065741;
        Thu, 25 Oct 2018 17:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540514065; cv=none;
        d=google.com; s=arc-20160816;
        b=ytV8ZlXVCPOviN6IFUxhSVXwYtiZge8pEqUbcRz/cqf7m3jVmbu8ODJkpCtjrBiDtk
         HMgYxVgjuiogdeYkyGPDH0dQRdHI6TT69SIE4XW8kVvOrC5xa1Jc/WyORXH1/Snf3iGP
         +/eQ0huNMQArTbfARikgL0MhYQmk2RTOmps6KkYMr+O2WC5FARWlJr/fnI1ZRXwWLtTo
         8PEwoj3F87jOSLUFw/Qm62vG+010Lv17+yvuZw3aFKlDuwiXLLRXmYCKLRTewjdryNVD
         TP48IDkmWmVcPZcgO1h5h2gAjG863Eyzwwpbc198FYZ+zXmiZ86Gc/SBEcJay3NGBQE9
         A0zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ggEJaeuvGx9IpGBHoPhgXFHI+6Ng9H/R+Ukj0MSlvxA=;
        b=C/EjotetQUmjGPOmWzBIo0aKnAoObUJqBiPnWB56uEGORCx8O473tgkRaCNK7IvlgU
         VruKCM6omsYM5BOkgvXOeqjq1r+k7376MEIrxyxLVvbABHuoKItsCm8/qAeda/8XF90c
         YyHWQFG4UGMUfqihkHDMvgIgTGcKEj9YSOuW7dlBUmneqV5dhMiEdfoXIPDmUM/JAazm
         IL/xVLfCknznHubzntWkaExJ+8WOqi/3un7NFxnIGjJa+L86+yVf8mKggd1lq/Nx5nPC
         ZQIsPaZEAEf3Mz+8XJfDbznK2DuSwtQbTDrW3REYbJkqJpg3Kv3eHAHyPzapgXJoDoQ4
         BvIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=akkwCzTa;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-it1-x12a.google.com (mail-it1-x12a.google.com. [2607:f8b0:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id q49-v6si476596qte.3.2018.10.25.17.34.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 17:34:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) client-ip=2607:f8b0:4864:20::12a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=akkwCzTa;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x12a.google.com with SMTP id 74-v6so3819376itw.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Oct 2018 17:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ggEJaeuvGx9IpGBHoPhgXFHI+6Ng9H/R+Ukj0MSlvxA=;
        b=akkwCzTanUjNswojccPAQN9XuKy2JY9Hw02nEA/EvhKKiIuVzgcfd1A7nw6Xgfp2q1
         8UG0tvuWuzEjWVCHSrxXrgBr1YgjCjUK6wZOdk/Q/TEOzIHVLnJ8TIlcw2HgOte4Ugnp
         HIp6FvNa7mcCbfiqHQaJOveZ42cWnDX30lz0CYxcc+E2OtZBI+jhVylI9zGZfLcCfV6z
         TDr2QuY9XSzM/PjB3bVy7NOuw8IDoneKY74QAdGvZGbPhjpCyOiNn/31xdHBXATtJaPU
         3hPAroxrkiZtRw6TOlnGkvEyGgmWO3eWlbJBiLBnrRSYMNx+ON2S55jrAY4qfQVj+fSc
         vqxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ggEJaeuvGx9IpGBHoPhgXFHI+6Ng9H/R+Ukj0MSlvxA=;
        b=DcwSUYlam8skwN3Zno1CcWIGx1ZVmTQshEEo///hmzLv9L1gSmqWdsY1e4pQlwi9pP
         tcam0ZwlOpjHVhVD8J0Yl64KJ7yaTZMSVKyRglYwc2yUXpuH/1kh1Vy9KUwRhti3KQhA
         pcZt93xRHqocQx7ChX2XxMibAQEdFiEkUk37Sq1JmbBc6aOKYrcaqDohvfCQqHNBqaFp
         1pmTDhcqnxRIFJsMg+BvRPuTiZV1zZ0SZlS4kanefv4XWDLpcy225IN/2SUAGUG7VIsa
         Tmt8dUG7ZKgfOqzqI+E5GFf3CDVyjYAfEei/MyOe9zkaO0wviyFZWNPES84wl6U1YX+Z
         C6nA==
X-Gm-Message-State: AGRZ1gK/yobu5EjqLYJW53wdgkaaNCFAE/SAw2O/AkUKn7zH8ekK2wtF
	zoWqhyYqcQGKkKUYwGbfSIWB+LX6
X-Received: by 2002:a02:b514:: with SMTP id l20-v6mr1034066jaj.25.1540514065153;
        Thu, 25 Oct 2018 17:34:25 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id n3-v6sm92730iob.13.2018.10.25.17.34.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Oct 2018 17:34:24 -0700 (PDT)
Date: Thu, 25 Oct 2018 17:34:20 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: rtlwifi: Remove function
 that only returns zero
Message-ID: <20181026003419.GA2769@k-vBox>
References: <cover.1540428705.git.m.maya.nakamura@gmail.com>
 <bfb248e133326fe1cc0ca387f6fae4129656b72c.1540428705.git.m.maya.nakamura@gmail.com>
 <alpine.DEB.2.21.1810251523520.2363@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810251523520.2363@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Oct 25, 2018 at 03:24:32PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 24 Oct 2018, Maya Nakamura wrote:
> 
> > Because the odm_sq_process_patch_rt_cid_819x_lenovo function is only
> > called to return zero, remove the unnecessary function and change one
> > statement that calls it. Issue found by Coccinelle's semantic patch
> > results for returnvar.cocci.
> >
> > Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 11 +----------
> >  1 file changed, 1 insertion(+), 10 deletions(-)
> >
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > index fd208581d857..335a435caa2c 100644
> > --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > @@ -477,14 +477,6 @@ static u8 odm_query_rx_pwr_percentage(s8 ant_power)
> >  		return 100 + ant_power;
> >  }
> >
> > -static u8 odm_sq_process_patch_rt_cid_819x_lenovo(struct phy_dm_struct *dm,
> > -						  u8 is_cck_rate, u8 pwdb_all,
> > -						  u8 path, u8 RSSI)
> > -{
> > -	u8 sq = 0;
> > -	return sq;
> > -}
> > -
> >  static u8 odm_evm_db_to_percentage(s8 value)
> >  {
> >  	/* -33dB~0dB to 0%~99% */
> > @@ -891,8 +883,7 @@ static void odm_rx_phy_status_jaguar_series_parsing(
> >
> >  			if ((dm->support_platform == ODM_WIN) &&
> >  			    (dm->patch_id == RT_CID_819X_LENOVO))
> > -				sq = odm_sq_process_patch_rt_cid_819x_lenovo(
> > -					dm, is_cck_rate, pwdb_all, 0, 0);
> > +				sq = 0;
> >  			else
> >  				sq = phydm_get_signal_quality_8812(phy_info, dm,
> >  								   phy_sta_rpt);
> 
> Would it be better to just put u8 sq = 0; ?  Then you could negate the
> condition and drop one of the branches.
> 
> julia

Thank you for teaching me, Julia! I will try to change this and the
other (1/3) and resubmit the set.

Maya

> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1810251523520.2363%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

