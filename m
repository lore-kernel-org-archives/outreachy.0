X-GM-THRID: 6809913191851622400
X-Received: by 2002:a17:90a:240a:: with SMTP id h10mr3236781pje.123.1585727959612;
        Wed, 01 Apr 2020 00:59:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5c88:: with SMTP id a8ls12093695pgt.8.gmail; Wed, 01 Apr
 2020 00:59:18 -0700 (PDT)
X-Google-Smtp-Source: APiQypJanQwfaodNTx6TThOueFepiDl0BK16+b2TwPBeTjNpSGXGEc+vVqvOt5ykGka59t3/a1l7
X-Received: by 2002:a62:8342:: with SMTP id h63mr8342657pfe.24.1585727958145;
        Wed, 01 Apr 2020 00:59:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585727958; cv=none;
        d=google.com; s=arc-20160816;
        b=MZhHcFIJcuAzW/wF0ctS2zN21ux0eKI5v0apx8FD+kl6rRNDwZYfjZUP0cTapmjMkT
         jWrtZZ8gpNy2X5t0lGxlGwDziqfWatF8qVLNQAcORttE1SAitSkVyZyXVn8JA8mH6unF
         Xyz660EZUYIw0N8Dg9tJMNF3EFgvMoTtlxCKiMqHdkHYBQj8KYG/g8QMoOL/JIsPpWwL
         knAKM2aWHKdKH8HQrWUfgVsEUjlfiadBqweEgsPPtznyvzYjJQ9QfaMCTCllEBPhOQ6K
         8xiNIA+/+huUfcPiNAW9UPqaM7Vm3sVw0vpltyqefnWoj0NrR/7YxSsEBrzxXy3asJlU
         UHSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=QzrOkIT7FLEJu8GbgGfj2qp51Jg5XK++B25gI3Zl4m4=;
        b=D7rkOLPc9CDWE9I1uvIV4Nuhx5NmpjYa3XY6d2pu9V581rTiKjSlFD96kfuebJClH9
         tXXfbMbpqxvhMDOGwfzrSaw5pvzhDldG02yZKFrOGfU3ch+nix3trJ3TwbM+DKVslKAd
         wm7/fUT5Qv62tkT0SDxXi3fINr6TlZe7p+O9hjDCWgQF+yW5QccHoYV87++SOYxKILUT
         Kic+QEyimOMLsnRj2XExu6XLYSe8DkgelqQxgyI7iOEcFa2Q+YzytipShxSjaLT7nmt+
         LA3RayOZbxfsVhh1sQfLJSxRLtJiDiBer4317wpkfMampFKOr4oZUhkZoKrCyY2+LBOo
         tH7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dKHwzjvE;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id u14si464477pjn.2.2020.04.01.00.59.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 00:59:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dKHwzjvE;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id h11so9284395plr.11
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 00:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QzrOkIT7FLEJu8GbgGfj2qp51Jg5XK++B25gI3Zl4m4=;
        b=dKHwzjvEdscPdwqTQg/dT9fGptXv5iL4Cv1cGE1RVGQnrFRPaE+G7PvcuJM7mAA2ZS
         ThQefJFm3VvhZL4dEERQdJC0LJHmxqjkc+y0ZC2QaWH5zacyMf+E1CWTpH7pKs+u1IyM
         hj8O53PV6jPbzch5j8tXm+cM0bz8Uqytjj8eS787hcSAHQZ4MLyO+FCpreP7q5LYOB6/
         xLZ2sY2S04TpzzAR+Hl2uyLo6oCdgq/6PfZHBy1EBYGfP8noAoAdeFCYKH7zEcAwBJ61
         PLWodw12tdkJFeZTfJxBLEqkR//Lii97MxJqEYjdnW3NS9UTNh/Pu5KYeR4Ux6aOGlUV
         N1Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QzrOkIT7FLEJu8GbgGfj2qp51Jg5XK++B25gI3Zl4m4=;
        b=R51DQOyphztzowGXgE7l/kIB4rV0mRRBmwBZOQanefkkVG1R1i0SJz3iL77tyRIftC
         1nVaIIKqbbSZ4c37D8hWhPH+gzq7PxTzGZN5RLjLoLfPLVxEepVwUgIiOeq1MrVooJa8
         NfF/5+AGwnszW3Qcsqy/ZndqjfxWuEqmTYq/f2CEmHCXzqYJbuaCS0FMCND9J2K2UA8f
         RufEg635JDRllMEjILSl+cOlCuAdHQEnqoy4TP5QRGhIuGJt+oPv7NIeFphZVMtGov0G
         ju6TXwFbgQq718SEXfTIDDkPE+nMiDByJsX+0qDqssV1I0OEHVxUlSRwCQYFmu3SXIf/
         d1eQ==
X-Gm-Message-State: AGi0Pua30Dyc1A/+JRTxv5+PCaSTk21bRe3Qm2Krp8bddzaZxVrTI61A
	dvkCtynUHH6/FUTIQlxobgA=
X-Received: by 2002:a17:90a:1784:: with SMTP id q4mr3180006pja.174.1585727957667;
        Wed, 01 Apr 2020 00:59:17 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([157.42.224.231])
        by smtp.gmail.com with ESMTPSA id e9sm982339pfl.179.2020.04.01.00.59.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 Apr 2020 00:59:16 -0700 (PDT)
Date: Wed, 1 Apr 2020 13:29:10 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH v2 2/3] staging:
 rtl8188eu: Line over 80 characters
Message-ID: <20200401075902.GA18430@ubuntu>
References: <20200331183201.18386-1-debsoumyajit100@gmail.com>
 <20200331183201.18386-3-debsoumyajit100@gmail.com>
 <20200401044838.4f8a0ba9@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200401044838.4f8a0ba9@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Apr 01, 2020 at 04:48:38AM +0200, Stefano Brivio wrote:
> On Wed,  1 Apr 2020 00:02:00 +0530
> Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> 
> > @@ -445,7 +455,8 @@ static void update_bmc_sta(struct adapter *padapter)
> >  		tx_ra_bitmap = 0xf;
> >  
> >  		raid = networktype_to_raid(network_type);
> > -		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
> > +		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) &
> > +							      0x3f;
> 
> Hmm, no, wait, what is 0x3f bit-wise intersected with?
> 
> a = lol;
> 
> a = lol *
>     2;
> 
> a = (lol + foo) *
>     2;
> 
> a = lol + foo *
>           2;
> 
> but not:
> 
> a = (lol + foo) *
>          2;
> 
> ...right?
>

I am sorry but I couldn't understand what you mean.

As much I can see, a bitwise AND operation is being done between 0x3f and the
return value of get_highest_rate_idx() function. The first & operation
is between the arguments of get_highest_rate_idx() function.

If the current alignment is wrong, should I place 0x3f someplace else?

But as you suggested previously in this thread, that I should place 0x3f
below the start of first & operand.

> >  
> >  		/* ap mode */
> >  		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
> > @@ -456,7 +467,8 @@ static void update_bmc_sta(struct adapter *padapter)
> >  			arg = psta->mac_id & 0x1f;
> >  			arg |= BIT(7);
> >  			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
> > -			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__, tx_ra_bitmap, arg);
> > +			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__,
> > +				tx_ra_bitmap, arg);
> >  
> >  			/* bitmap[0:27] = tx_rate_bitmap */
> >  			/* bitmap[28:31]= Rate Adaptive id */
> > @@ -647,7 +659,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
> >  	rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
> >  
> >  	/* Beacon Control related register */
> > -	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&bcn_interval));
> > +	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL,
> > +			  (u8 *)(&bcn_interval));
> 
> This is another pair of parentheses that you could remove: &a == (&a).
> 
> -- 
> Stefano

I noticed those parentheses while removing other extra parentheses
but I didn't remove these as most of these parentheses are present
after a type cast.
Will it not look confusing if I remove these paretheses?
If not, I will remove them :)

Thank you.

--
Soumyajit
> 

