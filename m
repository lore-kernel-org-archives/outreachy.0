X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:b5cd:: with SMTP id g13mr14811397ljn.372.1618137023411;
        Sun, 11 Apr 2021 03:30:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls276402lfa.0.gmail; Sun, 11 Apr
 2021 03:30:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvDpxaaHNC9k4K8h5lBPW26x5B/vBeuNAbeDiiFNVm0smgO2t+CllS9oKHSh0kieStO/JW
X-Received: by 2002:a19:f518:: with SMTP id j24mr7838144lfb.225.1618137021667;
        Sun, 11 Apr 2021 03:30:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618137021; cv=none;
        d=google.com; s=arc-20160816;
        b=n4f0h8CfjrHQd7kZi1/82UihgEORIz6QmW/5ZEJ1HO2fOeC9qYnrcDuWUqsSrMec+4
         1g7o1p+cz85hBtciOf9ccN8vkZ4tpT0oIER/6QihLbH6UgkHbVdiZXytfxK9+dh8IiUe
         B41W7tCNxfqhwHOi/nN5e94CRdDJ+YJhWont9ogdXWVkCV0+PQ84vwS6bBinDbH0F8Dn
         fFtmWi5wJSizx7a2uiNvHqGKUjlZiPgcQcUKJ8Kn6EMcDtjuE0b2dLeIF19+BoYlv9sV
         KR3H/AKUoZKwAr2JTOhgtTlF8tTAof5dmSz/iBdLYSDHBDpxDxQQ8FXKhoq72Pq4uvKS
         ErLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=x3r2FyLHyY3w2SLbIC95IxoZj7WakC/+ymJzKCDyFVo=;
        b=Q8dsDJKi1Ssdob3K8JtGTQ0OxfgKkYkKhfv85UShrdFHNcHx7glk/ZuwIRXI/P3p3/
         G+XFFv1bRYLiH27IFeIRj0edjy4EU+rURXqGlPzKrEgmIPd3961XoHw2l9WLKWIawMYo
         q3PW86FRtHdbZ/nm3/4zbdh4YutJo9/99s1fAP9SCYpWhXDvseQIXxTgiVGy+dTnTeh6
         wAvmxG5plfj7ofuSDctvolOGc520XczX7vF1klYosPn0hBGGEfog/zTjtasVqu1yLJ6u
         CVLJQy+v9hNIumPxH+lvxKLNXp8rJo3m690iCVPwkRULFda+Q4KPvgXlfnhE6w25+elt
         4A9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IF/DORTr";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id y11si467703lfg.8.2021.04.11.03.30.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 03:30:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) client-ip=2a00:1450:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IF/DORTr";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52b.google.com with SMTP id g17so10788971edm.6
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 03:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=x3r2FyLHyY3w2SLbIC95IxoZj7WakC/+ymJzKCDyFVo=;
        b=IF/DORTrw1iddbeufjNoavKZSL4pP53ubatlXQ7IGCwxjq3FE64a3JJPA1huLYvKwT
         WXTOA7cdsQA9Q4TVFQz7zRkZsxWrvjTAWzbmMfdLym7n1xYQ1nJOjDRXPipEHXQab3nL
         jsbR6UD5CndtKfZe9TYJfaaAMNFz5EDly5AMUmixX2P3ohFjyQ3gV8ZWO8DjCEY/EQrV
         B0w+xTTxz9aCgddXvwQQXPocbf++gL1nn9ZtzXx/FnmNFFLEA0DSoPIZTig+8h51G1+F
         HCwpdmNYza7efmpRLAkCTg+cKRCNPxWb1LAKfCwp1RSsHpQ7g+fHAXB3OpjyJhEFEGaI
         X5RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=x3r2FyLHyY3w2SLbIC95IxoZj7WakC/+ymJzKCDyFVo=;
        b=hVXEvze864R2+8b8AF9StC1pAKun8E1CxIAUS5hSa656jBeychHQ1Nm0gzefZebWsa
         mosCrwY/W8meQl5sMiir7BDTEJKmix83/gOPyam59faZe7fubBsoJJ/LWR9pLZXB9HKh
         hLj6d5e3yTQxAZZsgym3GR4sTW0Odjw96U4151GD/Z1wFJpyhSDt9lWdvyJQSv+87tOb
         3tI9/OR6J4cNEGJZfOqRu3mkpfAJd0zVUT0vqDwWtE+EcOLpwAoFu/VheNx3+h0bDGMF
         0LyV8/KKp3Wx00DaN2eMSz3W71lEtGFXbICmSYrWPuN+ZkgfUz3h5Vuleqr4lbAJnAjW
         A5CA==
X-Gm-Message-State: AOAM530OIQ2Yu+b3FwXQKigSvksQyFfVbqDteJKiLF5jidDg9dXJ2jLN
	PsQsgxrGHXn1+JiMUUsNdg4=
X-Received: by 2002:aa7:dcc7:: with SMTP id w7mr24482602edu.255.1618137021184;
        Sun, 11 Apr 2021 03:30:21 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id ay3sm4499894edb.2.2021.04.11.03.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 03:30:20 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3 4/4] staging: rtl8723bs: core: Change a controlling expression
Date: Sun, 11 Apr 2021 12:30:19 +0200
Message-ID: <4476737.Uq5WOKsIPT@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104111209230.2854@hadrien>
References: <20210411082908.31876-1-fmdefrancesco@gmail.com> <3322597.vpUxb0oOqP@localhost.localdomain> <alpine.DEB.2.22.394.2104111209230.2854@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Sunday, April 11, 2021 12:10:17 PM CEST Julia Lawall wrote:
> On Sun, 11 Apr 2021, Fabio M. De Francesco wrote:
> > On Sunday, April 11, 2021 11:51:32 AM CEST Julia Lawall wrote:
> > > On Sun, 11 Apr 2021, Fabio M. De Francesco wrote:
> > > > On Sunday, April 11, 2021 11:26:41 AM CEST Julia Lawall wrote:
> > > > > On Sun, 11 Apr 2021, Fabio M. De Francesco wrote:
> > > > > > Change a controlling expression within an 'if' statement: don't
> > > > > > compare
> > > > > > with 'true'.
> > > > > > 
> > > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > > ---
> > > > > > 
> > > > > > Changes from v2: Rewrite subject in patch 0/4; remove a patch
> > > > > > from
> > > > > > the
> > > > > > series because it had already been applied (rtl8723bs: core:
> > > > > > Remove
> > > > > > an
> > > > > > unused variable). Changes from v1: Fix a typo in subject of
> > > > > > patch
> > > > > > 1/5,
> > > > > > add patch 5/5.>
> > > > > > 
> > > > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 +-
> > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > > 
> > > > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > > > > > 32079e0f71d5..600366cb1aeb 100644
> > > > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > @@ -1507,7 +1507,7 @@ static void
> > > > > > rtw_lps_change_dtim_hdl(struct
> > > > > > adapter *padapter, u8 dtim)>
> > > > > > 
> > > > > >  	if (pwrpriv->dtim != dtim)
> > > > > >  	
> > > > > >  		pwrpriv->dtim = dtim;
> > > > > > 
> > > > > > -	if ((pwrpriv->fw_current_in_ps_mode == true) && (pwrpriv-
> > > > >
> > > > >pwr_mode >
> > > > >
> > > > > > PS_MODE_ACTIVE)) { +	if ((pwrpriv->fw_current_in_ps_mode) 
&&
> > > > > > (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
> > > > > 
> > > > > The parentheses in the left argument of && can be dropped as
> > > > > well.
> > > > 
> > > > What about the parentheses of the right argument? I'm not sure:
> > > > does
> > > > '>'
> > > > have precedence over '&&'? Doesn't it?
> > > 
> > > On the right they are not actually needed either:
> > So, I remembered well :)
> > 
> > > https://en.cppreference.com/w/c/language/operator_precedence
> > 
> > Very nice table. Thanks for the link.
> > 
> > > But you could look around in the code and see what people typically
> > > do.
> > > Perhaps one might find the parentheses more clear when there is a
> > > binary
> > > operator.  But when there is no binary operator, they could be more
> > > confusing than useful.
> > 
> > When I look around in the code I see a lot of unnecessary parentheses.
> > What people typically do is not always the right thing. I prefer to
> > remove parentheses where they are redundant.
> 
> Not sure I was clear.  This driver seems to be very enthusiastic about
> parentheses.  But perhaps check in other more mature parts of the
> kernel.
>
Sorry, I thought you were specifically referring to that file.

I've run "grep" in ./kernel/locking and others mature parts of Linux. 
You're right: experienced authors use parentheses when there are binary 
operators. Therefore, I'll leave that right hand argument as is within 
parentheses.

Thanks again,

Fabio
> 
> julia
> 
> > Thanks for your kind help,
> > 
> > Fabio
> > 
> > > julia
> > > 
> > > > Thanks,
> > > > 
> > > > Fabio
> > > > 
> > > > > julia
> > > > > 
> > > > > >  		u8 ps_mode = pwrpriv->pwr_mode;
> > > > > >  		
> > > > > >  		rtw_hal_set_hwreg(padapter, 
HW_VAR_H2C_FW_PWRMODE,
> > > > 
> > > > (u8
> > > > 
> > > > > >  		*)(&ps_mode));
> > > > > > 
> > > > > > --
> > > > > > 2.31.1
> > > > > > 
> > > > > > --
> > > > > > You received this message because you are subscribed to the
> > > > > > Google
> > > > > > Groups "outreachy-kernel" group. To unsubscribe from this group
> > > > > > and
> > > > > > stop receiving emails from it, send an email to
> > > > > > outreachy-kernel+unsubscribe@googlegroups.com. To view this
> > > > > > discussion
> > > > > > on the web visit
> > > > > > https://groups.google.com/d/msgid/outreachy-kernel/202104110829
> > > > > > 08.3
> > > > > > 187
> > > > > > 6-5-fmdefrancesco%40gmail.com.





