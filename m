X-GM-THRID: 6809913191851622400
X-Received: by 2002:aca:5652:: with SMTP id k79mr2481167oib.15.1585838493738;
        Thu, 02 Apr 2020 07:41:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c38f:: with SMTP id t137ls1603180oif.6.gmail; Thu, 02
 Apr 2020 07:41:32 -0700 (PDT)
X-Google-Smtp-Source: APiQypJxS9bNs3SbBQv1+A2pnW2Y/ONYQXmniA+Zwu4+ig6mkAVuLrUcyLOkA6+Se3hJpXbyOkIE
X-Received: by 2002:a05:6808:207:: with SMTP id l7mr2541580oie.171.1585838492457;
        Thu, 02 Apr 2020 07:41:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585838492; cv=none;
        d=google.com; s=arc-20160816;
        b=XjtMFi/o+6Vlwdp1iZ59FMHMd7mzoq4c3QDqlBCdUqWcmupTP7XkzEVdMGOjUz2Az1
         +BiX7CzbudClZ2FtnVHhJs2MmBtPlghITOOnSBRSqVnSUiqp7mDWf4ZtureMz7fmuV77
         Wgx/pEHjKO7TGNlcZyrlON+QnZNhaUmZh0KQv1K+Gu46SABj7I8FJS8IccG+41zC9lEU
         s7gwrv9qFVI9e2IaJSLmKU4pIMvosTx7r0FzRCTEs/+RYR9oh5DBk6H3BfM67JybMPSW
         NR7s3AcCU/uA9b4d+kFJUr8CUfS9/vnSJnKJMY59mQ5bt8G0WGmLQYTx3A+zWiFBTCbg
         zABg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=b5E6jR7CUEGB8eQ96gqw7unF7N1EPP/n2rX0YHnm+hI=;
        b=N6csmbnLaeS6uzMGw8V91qqreL/9YRowDdKwOawr43R/RZrYf1Chp1MkXe6MlW+O8X
         B/69dZhsU+ahnWxIcQEdWqgBUW3z0l2hYXbuvX9sHVstRR1mkU9x+gVgQ4ivhYXY3X6k
         oOPVh4udCenoH6gHAwf0r8ccNAkfmoeTn+q2EyhiuAhFD+jd/BRtI9lq0rQA4cnUtbNQ
         ZCch5eTdrGfXII5A1XGa+TkZp2fXULjYa81vpJjezroI1faZaN3K6No4LukiFBODtlsx
         YWxGNoe+f2rtNEFQK+DEwueKzGBIKMWr0nkI62DgSahtN6dBEjIfZoPQ32/l41i+G/B/
         BdxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vYSr6IV6;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id p29si350672oof.2.2020.04.02.07.41.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 07:41:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vYSr6IV6;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id a23so1423088plm.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 07:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=b5E6jR7CUEGB8eQ96gqw7unF7N1EPP/n2rX0YHnm+hI=;
        b=vYSr6IV6rsZlbDionTyGsKJgb7py6R+hVYgJSVTQdREICexDadEUvgwZt2okmDHo7V
         rzY8b65zmH5QppxwfVkk9GrG42MrGgjoBNbHbNDq0q0rDBnEjshwy9GEIIDzX2me3FJl
         qIOwsP4Qe9HWHQW2qK451MV3IRHi7yOzNuw/1ls5pNXBEu6xBZ72Fe1y62nTmHfJsa6m
         49yjBwkHGn1Xruc+fB5rNSQGdHl+FGM4hqKLlRBHqLKX6fift7W3ZIQW7UhIqPqF/IjN
         WjbDT1K7WmQ9UdVDfQs2knwuSRLH8c4vNc677YbBzLYeDRumrENksV+VN+4WRRfHqBHF
         RZ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=b5E6jR7CUEGB8eQ96gqw7unF7N1EPP/n2rX0YHnm+hI=;
        b=nWbgMrAT8qP0vf++kJcb5MdEvlYlHF7YFCCjj9GJMmcHvjrRr7k6oD9RRSpoF8U+wk
         ytqWtltppx9Sw/xIj5HB9Vhuy4+NfcfaEir4r2iVagt/IItH1r4/EsRjwOSOyG9uH+C6
         UMba/YWWyBnp6OP+ufnunPv0WFi40SH7TKJDtoc4yBASiXMeTkPrB3eLbalbmRkrYva+
         ATRQGzS32rax9O8wofucCeY7MGY4tD4RCiji+9NgvzTk/w0xmmvuTDIGhdJ0skEU373n
         fsnelH875Ni1I9e+Zu6NvVOFOsqXSb4tA9zLBk1wkocZus9w4yaZYDyyKE4PeJakPyZX
         zVAQ==
X-Gm-Message-State: AGi0PublYeBVz47gRatnPMFO4NpMoIA5PZTgRGBU5ufpZa3nMtrQDz77
	bLwWKjHDD2nTIIXowvKPttw=
X-Received: by 2002:a17:902:8305:: with SMTP id bd5mr3135514plb.114.1585838491524;
        Thu, 02 Apr 2020 07:41:31 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([2409:4065:11f:6885:4516:34fe:f4bf:419b])
        by smtp.gmail.com with ESMTPSA id w2sm3755936pff.195.2020.04.02.07.41.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 02 Apr 2020 07:41:30 -0700 (PDT)
Date: Thu, 2 Apr 2020 20:11:22 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	sbrivio@redhat.com
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH v2 2/3] staging:
 rtl8188eu: Line over 80 characters
Message-ID: <20200402144119.GA56028@ubuntu>
References: <20200331183201.18386-1-debsoumyajit100@gmail.com>
 <20200331183201.18386-3-debsoumyajit100@gmail.com>
 <20200401044838.4f8a0ba9@elisabeth>
 <20200401075902.GA18430@ubuntu>
 <alpine.DEB.2.21.2004011038290.2342@hadrien>
 <20200402130127.GA9847@ubuntu>
 <alpine.DEB.2.21.2004021504130.3130@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2004021504130.3130@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Apr 02, 2020 at 03:04:56PM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 2 Apr 2020, Soumyajit Deb wrote:
> 
> > On Wed, Apr 01, 2020 at 10:41:51AM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Wed, 1 Apr 2020, Soumyajit Deb wrote:
> > >
> > > > On Wed, Apr 01, 2020 at 04:48:38AM +0200, Stefano Brivio wrote:
> > > > > On Wed,  1 Apr 2020 00:02:00 +0530
> > > > > Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> > > > >
> > > > > > @@ -445,7 +455,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > > > > >  		tx_ra_bitmap = 0xf;
> > > > > >
> > > > > >  		raid = networktype_to_raid(network_type);
> > > > > > -		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
> > > > > > +		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) &
> > > > > > +							      0x3f;
> > > > >
> > > > > Hmm, no, wait, what is 0x3f bit-wise intersected with?
> > > > >
> > > > > a = lol;
> > > > >
> > > > > a = lol *
> > > > >     2;
> > > > >
> > > > > a = (lol + foo) *
> > > > >     2;
> > > > >
> > > > > a = lol + foo *
> > > > >           2;
> > > > >
> > > > > but not:
> > > > >
> > > > > a = (lol + foo) *
> > > > >          2;
> > > > >
> > > > > ...right?
> > > > >
> > > >
> > > > I am sorry but I couldn't understand what you mean.
> > > >
> > > > As much I can see, a bitwise AND operation is being done between 0x3f and the
> > > > return value of get_highest_rate_idx() function. The first & operation
> > > > is between the arguments of get_highest_rate_idx() function.
> > >
> > > Putting the 0x3 underneath the middle of the argument list of the left
> > > argument of the & is very strange.  get_highest_rate_idx is going to take
> > > its argument and produce some value.  That value will be &ed with 0x3f.
> > > There is no interaction between the arguments of this function and 0x3f,
> > > so it is misleading to try to associate them in some way.  Lining up the
> > > left side of get_highest_rate_idx (left argument of &) with the left side
> > > of 0x3f (right argument of &) could be fine.
> > >
> > > >
> > > > If the current alignment is wrong, should I place 0x3f someplace else?
> > > >
> > > > But as you suggested previously in this thread, that I should place 0x3f
> > > > below the start of first & operand.
> > >
> > > There may have been a confusion because there are two &s in this code.
> > >
> > > julia
> > >
> > Hii Julia,
> >
> > Okay, understood.
> > Then should I place the 0x3f on the left end of the function argument
> > of get_highest_rate_idx() function and resend this patch series?
> 
> No, not the argument.  At the left end of the function call.  The & has
> two arguments; the function call on the left and the 0x3f on the right.
> 
> julia
>

Okay, understood.

My bad, for a minute I got confused and started to consider 0x3f as a
part of the argument. 

I will make the required changes and resend the v3 of the patch
series.

Thank you

--
Soumyajit


> >
> > Thank you
> >
> > --
> > Soumyajit
> >
> > > >
> > > > > >
> > > > > >  		/* ap mode */
> > > > > >  		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
> > > > > > @@ -456,7 +467,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > > > > >  			arg = psta->mac_id & 0x1f;
> > > > > >  			arg |= BIT(7);
> > > > > >  			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
> > > > > > -			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__, tx_ra_bitmap, arg);
> > > > > > +			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__,
> > > > > > +				tx_ra_bitmap, arg);
> > > > > >
> > > > > >  			/* bitmap[0:27] = tx_rate_bitmap */
> > > > > >  			/* bitmap[28:31]= Rate Adaptive id */
> > > > > > @@ -647,7 +659,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
> > > > > >  	rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
> > > > > >
> > > > > >  	/* Beacon Control related register */
> > > > > > -	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&bcn_interval));
> > > > > > +	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL,
> > > > > > +			  (u8 *)(&bcn_interval));
> > > > >
> > > > > This is another pair of parentheses that you could remove: &a == (&a).
> > > > >
> > > > > --
> > > > > Stefano
> > > >
> > > > I noticed those parentheses while removing other extra parentheses
> > > > but I didn't remove these as most of these parentheses are present
> > > > after a type cast.
> > > > Will it not look confusing if I remove these paretheses?
> > > > If not, I will remove them :)
> > > >
> > > > Thank you.
> > > >
> > > > --
> > > > Soumyajit
> > > > >
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200401075902.GA18430%40ubuntu.
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200402130127.GA9847%40ubuntu.
> >

