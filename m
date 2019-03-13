X-GM-THRID: 6667904381849960448
X-Received: by 2002:a17:902:c8:: with SMTP id a66mr14833256pla.48.1552513790787;
        Wed, 13 Mar 2019 14:49:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:430a:: with SMTP id j10ls1284732pgq.0.gmail; Wed, 13 Mar
 2019 14:49:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwFmIgFi3QgBOShzp9hEkITeVNd3iAWtDMi5Ky/CME5n6nknMehhh0YPkc5r4CIkiBuV+/w
X-Received: by 2002:a63:c10a:: with SMTP id w10mr6163442pgf.16.1552513789961;
        Wed, 13 Mar 2019 14:49:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552513789; cv=none;
        d=google.com; s=arc-20160816;
        b=G1kCDOUUtzQzNDg9X0nYltsl1QCPrKO1wUAmSQlSuZpjm9/bhqmUH7CnlQYNXVts8+
         HU2vXZ7XcZZb73CbQIdGHhwXmWSJSG8rDxd4yV106uR244aIRsJ15aHZqy/a+8WrrepH
         8A125ZqzQ66fXk12JLBBXLibvthabAoGxweIUBRlCDHmuQdJviQbKPziJpo9wFvWRUbj
         q3sbmchANKdDsRMTKfoxX3m3Y+T9jhqlD3AF4YJ+PZxYzrSaZum5caq3sdMIQddY95ho
         ei4vphBPdcwtIHu2cyMjWtq71evljSu92Q4B+4RFia5mM/RXNAG+bfLMb9BCqoFORWbV
         dSDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=SW+FyDi2eWnryQdKes3SvVE86QV5LG6gGQ0DICHumuY=;
        b=nt22GJmRNDzjzfzK3NXIjpbMOd1lTTF/ZybVvFi+NFwUnC7wcOG+YMPrje3DW0Ni0/
         VenPgVuLhcTc50RMaeWdEVvCx0VcRzCU9mHYWYObLEQr/41L1H8neg9k3yRElNNr4Mtl
         L7dNPkfHzidgu8eb4Y8ztKZjRG6no4s+VZ8Z29BmViegLJcJjhciboII9nXp0MISnEwU
         Y9dhBviI0gHhdLuR8c6ifyZ2C8cn0aXr8N4EIGuymjvaE4RybcLUo6OdmZweQ2HOKoRI
         2HB/v5LeMhElJPoey8vTLQnygUhdEBcNbINJDy4qPUmnO/MFmLKBXdhAgfeLRSql8HGi
         cVVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KE6PLa6n;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id u20si797624pfj.3.2019.03.13.14.49.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 14:49:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KE6PLa6n;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id b4so2739059oif.6
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 14:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SW+FyDi2eWnryQdKes3SvVE86QV5LG6gGQ0DICHumuY=;
        b=KE6PLa6nwMH9kIDv1oev10uZtkSqk4EeOSvCObPcIKUIFLGAvOdZKpu9FfvNrcES9t
         Zr20e9n8ZB/SlzB9eZmTe3YnyxTSaRjFmC2ADYEJI2/6Zj2LjMVdExUrluaCom+XT+Y9
         nDx1r4taGlWiCfBIgyV6Ai2PJGwL55YsQf5v8mYfQmaLSHDqWTbApFpWQ/UwzFGVehqM
         2qgBrW4SMGOouuRs29O+XS09i/bAuwEVFTsVWxG3MINkIACQ2cbwfCUU/D+nrxo8MZ4x
         EFo3gHwO3qzo1QZOQjlwM195HhiSCQr5BK9ciyzOHTLgJr2XiwirS2O5YnHTiP7hmNRc
         DDpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SW+FyDi2eWnryQdKes3SvVE86QV5LG6gGQ0DICHumuY=;
        b=NTggDT7jr35ZFR2bW4X9JgDlZ7oJVPPko80UqKOC4q60vbia0YyRXMPmTowIDNKU8T
         ND6X6c9U9JMHUWNqoj2ACOsx/uU3TugkSTLPDo1dDzMVzuta4NK6aawbjb5zy8hYafQ0
         sm9nag/ycmOhBSQon0UOdjw1mFaJ7T6jp2Jy+6R5A9bn2wkpc7UIkPIGRDsPkRNSg2q7
         NOdS6qzN4XlUbEeimdsfP6Y0D5UlV15f1vcgBjt33wgrEJO66eKkJ/Ceqahx4+7g11t6
         JDTM3KVXKwNIkSwO3CtjW5A1dhb9jXBAJwWQ7EWM2gDmsPssuXG3MSSP9sQCCdzw4w1b
         fs6g==
X-Gm-Message-State: APjAAAWOzxE7PKGigga/dztuAP66nD89GLMANKLO65vnFwUQQXykn+/R
	P8JRyGmrxJG3WcViP8kIvQG0Ii/FaDs=
X-Received: by 2002:aca:4f0c:: with SMTP id d12mr198148oib.21.1552513788924;
        Wed, 13 Mar 2019 14:49:48 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:8990:5097:524f:ad64])
        by smtp.gmail.com with ESMTPSA id q6sm4961732oia.4.2019.03.13.14.49.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 14:49:48 -0700 (PDT)
Date: Wed, 13 Mar 2019 16:49:46 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl872bs: Remove local
 variables in functions
Message-ID: <20190313214945.GB5065@madhuleo>
References: <20190313155425.5548-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903132045230.2515@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903132045230.2515@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 13, 2019 at 08:48:09PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 13 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Remove declarations of local variables in functions rtw_init_cmd_priv
> > and rtw_init_evt_priv.
> > Issue suggested by Coccinelle using ret.cocci.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 ++--------
> >  1 file changed, 2 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > index 91520ca3bbad..814a4b7677a9 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -297,18 +297,12 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
> >
> >  u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
> >  {
> > -	u32 res;
> > -
> > -	res = _rtw_init_cmd_priv(pcmdpriv);
> > -	return res;
> > +	return _rtw_init_cmd_priv(pcmdpriv);
> >  }
> >
> >  u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
> >  {
> > -	int	res;
> > -
> > -	res = _rtw_init_evt_priv(pevtpriv);
> > -	return res;
> > +	return _rtw_init_evt_priv(pevtpriv);
> >  }
> 
> I wonder if there is something more drastic that you could do here.  The
> functions that these functions call (the ones with the _s) are called only
> once.  They have a different return type (sint) than these functions
> (u32).  They are declared as extern, but they are only used in the file in
> which they are defined.  It looks like things could be greatly simplified.
> 
> julia
> 
> 
> >
> >  void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190313155425.5548-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903132045230.2515%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

Should I submit this as patch series, along with other modified file.

Thanks,
Madhumitha

