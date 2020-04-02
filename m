X-GM-THRID: 6809913191851622400
X-Received: by 2002:ab0:311:: with SMTP id 17mr2431100uat.131.1585832500718;
        Thu, 02 Apr 2020 06:01:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c496:: with SMTP id d22ls568109vsk.8.gmail; Thu, 02 Apr
 2020 06:01:39 -0700 (PDT)
X-Google-Smtp-Source: APiQypJGQymd09UHLR95DH9M/uf5v4LWFtveH+1rwIPbbStx6qjfKSduTPfuGwnZ4Nv78LbUS0m7
X-Received: by 2002:a67:328a:: with SMTP id y132mr2222859vsy.4.1585832499486;
        Thu, 02 Apr 2020 06:01:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585832499; cv=none;
        d=google.com; s=arc-20160816;
        b=M0q5e6pP7+Skgs8AhKSBLCwYK0bVGXq0VfIN/UOC/mOp7FybHHKZB9plPklfZwu457
         y5RXEc8nYqb9Qs/Pa0VLZWli+X50L6+MKKNLqISQAVuHKy6Bn6t5dlh3NATe6J7ELzeI
         yvTT9MSyAcCNPiAhteC+HoQmenjKwO0UkQOx+DejcnMg9G7gxM1sxhiDGWhqqrQSLRue
         Qmp/CuOM51R7yK9UzJxLapnwJPySXBUyeHvJ6hWMagSPLmsY/e79OkAmBRZjDdejtrVR
         RWYDiqW4PHggefwT10r1yLJwEdB+9rsq3yDA/2iF3YbI+a+SWbEIz/T8zkA6n87p8wMk
         /Rag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6/XgLC7NGS6NKFJAnaPfQXQab9IU0LJ3pM23m7dSkJc=;
        b=B0ONhjgOc0nzODLcWFqFU4gfWRx1E5c4RM66vvUuOqLBbvM0wNZt5tpIcMbxKaMXK1
         e9mK9YuJdceYfldZvavb93snmNQFwMQepBghoNlp/OBsqM8bS5Xkf34Qf91WNh9uzA6D
         SRJo7SqnRllwvZ91gXGTNoxNfV21/ttmpyEVzpIImtJZ90nxqaPCTL2mAwNoyhTQPE3+
         DPPYghZdo6Li9RHhAf63WwlmJNYsd2H2Dn0JGYlXO3Gbk1w7JOkjh7wsxNZ7zQBjEvtf
         +110W14sF1EYEaAvp8s3PB6yuLhysaBucj+SO4WuAvjK7mLqMogxehhV5BJ2X0q6Lvbq
         mZ3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ps/yIaun";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id d20si343348vsf.2.2020.04.02.06.01.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 06:01:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ps/yIaun";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id np9so1502680pjb.4
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 06:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6/XgLC7NGS6NKFJAnaPfQXQab9IU0LJ3pM23m7dSkJc=;
        b=Ps/yIaunXoCRfpoAfFuLsCplx7nTL1a4DGGJ6sHMdvbwWGgwukH/AnIfzQAi8Zvjd1
         21z+7xaaSg8GduXtX0Cvrf9F3ponjwG/ma2R2kTtrTYDT/EnCEgkecoF/FeN2Gd/uCoF
         ZYYZ1rvkF0tqjzN4gpf0npVhYEAzlzPutox1h0VEXCe25u+GovJcwuxbD10gLQaDEUcg
         7xqpBWPRHdxNbRG+zg8k3+X4Yt2rhfiC3r78dJkG31zqsnIBH2hNSntohx5ve+dAaSi7
         aB8tzo0BnUnyd1HW0Cj4Rm9F02/GL6MZG80yn5VYZsWFTJfnMOCBEJ7UdInJaJZBbxrz
         601w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6/XgLC7NGS6NKFJAnaPfQXQab9IU0LJ3pM23m7dSkJc=;
        b=KOR3YRZSggQ5gDoWWaBNkwALnvGnvy5ePA6OALlHlLP7aIqXzWhPFKZb87TkWQZczg
         AhJcHBEJEhAtxt34Yw069/WGZ6KwuPva7DOQTgDTQ8aDDs4h9NYhC69rVstGiNWynUoX
         6Z6jNtLV/AKjlUPmpvpkszgE/BG4THjG/ZiSSLlMcnNmMryLSxgJSy/BcCkagjCNXV0B
         58fVCGLPbU/sgWCIZVyqtZUxF6RDa9a6QHjyPNj+dbF45B1e+3OeCEAm1N6s+e51rsTu
         AXU19Eho3xmy7IryYzeZEs7FD2PNzb9/StDT43lgA5dt6q9PHpxoD2kfrbPBtwevo2rq
         dz0A==
X-Gm-Message-State: AGi0PuaqC5t7+z8RVTZPGcl7CjVnUifIUdoBVbpyWWxm5zLo2EaGheej
	cZKhQKoi8WKEhWO388o7hUU=
X-Received: by 2002:a17:90b:254:: with SMTP id fz20mr3720419pjb.27.1585832498362;
        Thu, 02 Apr 2020 06:01:38 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([2409:4065:11f:6885:857d:c6a:2389:b44d])
        by smtp.gmail.com with ESMTPSA id i4sm3758883pjg.4.2020.04.02.06.01.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 02 Apr 2020 06:01:37 -0700 (PDT)
Date: Thu, 2 Apr 2020 18:31:29 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, sbrivio@redhat.com,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH v2 2/3] staging:
 rtl8188eu: Line over 80 characters
Message-ID: <20200402130127.GA9847@ubuntu>
References: <20200331183201.18386-1-debsoumyajit100@gmail.com>
 <20200331183201.18386-3-debsoumyajit100@gmail.com>
 <20200401044838.4f8a0ba9@elisabeth>
 <20200401075902.GA18430@ubuntu>
 <alpine.DEB.2.21.2004011038290.2342@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2004011038290.2342@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Apr 01, 2020 at 10:41:51AM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 1 Apr 2020, Soumyajit Deb wrote:
> 
> > On Wed, Apr 01, 2020 at 04:48:38AM +0200, Stefano Brivio wrote:
> > > On Wed,  1 Apr 2020 00:02:00 +0530
> > > Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> > >
> > > > @@ -445,7 +455,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > > >  		tx_ra_bitmap = 0xf;
> > > >
> > > >  		raid = networktype_to_raid(network_type);
> > > > -		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
> > > > +		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) &
> > > > +							      0x3f;
> > >
> > > Hmm, no, wait, what is 0x3f bit-wise intersected with?
> > >
> > > a = lol;
> > >
> > > a = lol *
> > >     2;
> > >
> > > a = (lol + foo) *
> > >     2;
> > >
> > > a = lol + foo *
> > >           2;
> > >
> > > but not:
> > >
> > > a = (lol + foo) *
> > >          2;
> > >
> > > ...right?
> > >
> >
> > I am sorry but I couldn't understand what you mean.
> >
> > As much I can see, a bitwise AND operation is being done between 0x3f and the
> > return value of get_highest_rate_idx() function. The first & operation
> > is between the arguments of get_highest_rate_idx() function.
> 
> Putting the 0x3 underneath the middle of the argument list of the left
> argument of the & is very strange.  get_highest_rate_idx is going to take
> its argument and produce some value.  That value will be &ed with 0x3f.
> There is no interaction between the arguments of this function and 0x3f,
> so it is misleading to try to associate them in some way.  Lining up the
> left side of get_highest_rate_idx (left argument of &) with the left side
> of 0x3f (right argument of &) could be fine.
> 
> >
> > If the current alignment is wrong, should I place 0x3f someplace else?
> >
> > But as you suggested previously in this thread, that I should place 0x3f
> > below the start of first & operand.
> 
> There may have been a confusion because there are two &s in this code.
> 
> julia
>
Hii Julia,

Okay, understood.
Then should I place the 0x3f on the left end of the function argument
of get_highest_rate_idx() function and resend this patch series?

Thank you

--
Soumyajit

> >
> > > >
> > > >  		/* ap mode */
> > > >  		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
> > > > @@ -456,7 +467,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > > >  			arg = psta->mac_id & 0x1f;
> > > >  			arg |= BIT(7);
> > > >  			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
> > > > -			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__, tx_ra_bitmap, arg);
> > > > +			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__,
> > > > +				tx_ra_bitmap, arg);
> > > >
> > > >  			/* bitmap[0:27] = tx_rate_bitmap */
> > > >  			/* bitmap[28:31]= Rate Adaptive id */
> > > > @@ -647,7 +659,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
> > > >  	rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
> > > >
> > > >  	/* Beacon Control related register */
> > > > -	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&bcn_interval));
> > > > +	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL,
> > > > +			  (u8 *)(&bcn_interval));
> > >
> > > This is another pair of parentheses that you could remove: &a == (&a).
> > >
> > > --
> > > Stefano
> >
> > I noticed those parentheses while removing other extra parentheses
> > but I didn't remove these as most of these parentheses are present
> > after a type cast.
> > Will it not look confusing if I remove these paretheses?
> > If not, I will remove them :)
> >
> > Thank you.
> >
> > --
> > Soumyajit
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200401075902.GA18430%40ubuntu.
> >

