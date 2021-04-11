X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:5855:: with SMTP id x21mr5762225ljd.203.1618135740128;
        Sun, 11 Apr 2021 03:09:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls79243lff.3.gmail; Sun, 11
 Apr 2021 03:08:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwielyRMNC+RLdjfccOyrEFcAVOmxbJPvpcnTvs4fK9H2LGCsT3/aPfy5h5xNautZxw/KCF
X-Received: by 2002:a05:6512:38c9:: with SMTP id p9mr15892155lft.572.1618135738534;
        Sun, 11 Apr 2021 03:08:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618135738; cv=none;
        d=google.com; s=arc-20160816;
        b=ZNX3emPoyf/SVvvWGliSdPReR+2/f4hq2OWF0HdKD4BZe2Hp0p3mPeAH0A3Zo1+fED
         YdHLYRch4UhyqMVDYf35GHbiu3mGW6ASzfeP45TqWC2DNIaRTm0lSVOrVe3NEUzR8Dio
         FbrPZfsySvQQf+NBZinE/GtmE+0/wFL6vCIHP2cKD3vQFHq/hv7kS72R6aBCOIa/QddS
         S52zCpJypL79pvJccZvmNz4680iOEK8uNb8qaQK06USFBG3EiS0o1SMw0hz572B4B2ia
         66LsGk1s/zK2i2EwRl6+Q02if9+/b8lnHjhoABXyRQnMdliKTyYry3Y96RYHSSXk/NuS
         RkJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iPjVxr4EIDFwGpM/pEVhF+9F+zdLzGbV3PZiyToJD2U=;
        b=UGa70TPWsvwHbF/KnuYryYvOCub4BnW0JaVPBCT/XXOsS1spz9hCf6x96zk2jftufZ
         Tm9ttwD2FrnK+ZRR4pbND+9OECe242IdbFlfe/aSKtxOR6iqljnNHZRAHeENKxFGeupo
         BW85LF4TMOhkxNUVBlEWRRXqFruEkYE/cyjuezjm4pBVUkyBoqpgpKTr/opW/uXYyHRc
         sy7CUMPB8qL4y38mOUPxilJBbN6FoSTq2q/r3Uk43z8RxlzbSKBU3Lx4v7bRYgHLqrCQ
         VY5pinWMXZu/9sHLQ4Ljo9ShUdIh14ttL/83rqfeKnWE2h3UVuNPTKYyeKeAUC/7QY6o
         lq8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WqbuNhCh;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id z5si527138ljj.5.2021.04.11.03.08.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 03:08:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WqbuNhCh;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x533.google.com with SMTP id f8so11496381edd.11
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 03:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iPjVxr4EIDFwGpM/pEVhF+9F+zdLzGbV3PZiyToJD2U=;
        b=WqbuNhCh0fY6MMNk9U5CNX9k65sqsEs+LaBSID9sUmImFN8fUkN4bI5MY2AAH1A2u2
         ueulFAAqg0B0kWJcXJfEthNPdYyJ8JLNHMyjprdho/N5pC//PJfTuptbq5JoLk2QeTfH
         7yaQoryxNUsOor4UD16UVLy+Cv9hDYcAjR5Vr5qH+5+c7d38S/QDOhgE/MfwblulCTDb
         BQIz1E+OfGpNzOl72UEPOANnkPrIIVg0bTAcb46TwYkCtbPVIbZjFeljcamFO5vubB7v
         4/Yfw3+f/eAI7lkvrhYHC5ZBmd2cCt2HJrXiKdVew2bTLVA1toDjVRIj5ydf3cKNLPF2
         e4Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iPjVxr4EIDFwGpM/pEVhF+9F+zdLzGbV3PZiyToJD2U=;
        b=b/360R8ofNqlaYDPLPayxl2c0vWZh0t07W6Rxy2A1athzOAOFUPTMfz50xPQEGBCOk
         2o8vBI5/slgFLp5VzuZJlBXUmC/gCT3W4tedzspWkcqqJBXffF4iZZBUnbLiittUmmwN
         +7fElgxoNVwO9SKbfvA1g8pQYw0N46kLDlNYW2kqHXrNf8whjArzeR9d8Eg4pmqosKA5
         rkqBfxXv15f50sn9FxT2FDIApZElhfKSaOtBJx2/OeMaNwPr2rQd0wAhGCt8e7vQxCYN
         85Oz/OjNtk1KmqzTLvewx9gplyIwMoIPaf/16mIf6bdHZJy/pDbwTvAg0xyLg0PZMn6s
         ZNRw==
X-Gm-Message-State: AOAM531J0rMnkMZHLIBBiO34ZDSRzsYo2LFAObvST/EQg7KZi+aMNPbz
	Q7z8ySqLZugHqVbWRlWEGg/9ljYKM3SiZ8yM
X-Received: by 2002:aa7:cb90:: with SMTP id r16mr25432046edt.139.1618135738097;
        Sun, 11 Apr 2021 03:08:58 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id r17sm4479772edt.70.2021.04.11.03.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 03:08:57 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Julia Lawall <julia.lawall@inria.fr>, Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3 4/4] staging: rtl8723bs: core: Change a controlling expression
Date: Sun, 11 Apr 2021 12:08:56 +0200
Message-ID: <3322597.vpUxb0oOqP@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104111150010.2854@hadrien>
References: <20210411082908.31876-1-fmdefrancesco@gmail.com> <2796632.fryDJISotm@localhost.localdomain> <alpine.DEB.2.22.394.2104111150010.2854@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Sunday, April 11, 2021 11:51:32 AM CEST Julia Lawall wrote:
> On Sun, 11 Apr 2021, Fabio M. De Francesco wrote:
> > On Sunday, April 11, 2021 11:26:41 AM CEST Julia Lawall wrote:
> > > On Sun, 11 Apr 2021, Fabio M. De Francesco wrote:
> > > > Change a controlling expression within an 'if' statement: don't
> > > > compare
> > > > with 'true'.
> > > > 
> > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > ---
> > > > 
> > > > Changes from v2: Rewrite subject in patch 0/4; remove a patch from
> > > > the
> > > > series because it had already been applied (rtl8723bs: core: Remove
> > > > an
> > > > unused variable). Changes from v1: Fix a typo in subject of patch
> > > > 1/5,
> > > > add patch 5/5.>
> > > > 
> > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > > > 32079e0f71d5..600366cb1aeb 100644
> > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > @@ -1507,7 +1507,7 @@ static void rtw_lps_change_dtim_hdl(struct
> > > > adapter *padapter, u8 dtim)>
> > > > 
> > > >  	if (pwrpriv->dtim != dtim)
> > > >  	
> > > >  		pwrpriv->dtim = dtim;
> > > > 
> > > > -	if ((pwrpriv->fw_current_in_ps_mode == true) && (pwrpriv-
> > >
> > >pwr_mode >
> > >
> > > > PS_MODE_ACTIVE)) { +	if ((pwrpriv->fw_current_in_ps_mode) &&
> > > > (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
> > > 
> > > The parentheses in the left argument of && can be dropped as well.
> > 
> > What about the parentheses of the right argument? I'm not sure: does
> > '>'
> > have precedence over '&&'? Doesn't it?
> 
> On the right they are not actually needed either:
>
So, I remembered well :)
> 
> https://en.cppreference.com/w/c/language/operator_precedence
> 
Very nice table. Thanks for the link.
>
> But you could look around in the code and see what people typically do.
> Perhaps one might find the parentheses more clear when there is a binary
> operator.  But when there is no binary operator, they could be more
> confusing than useful.
>
When I look around in the code I see a lot of unnecessary parentheses. 
What people typically do is not always the right thing. I prefer to remove 
parentheses where they are redundant.

Thanks for your kind help,

Fabio
>
> julia
> 
> > Thanks,
> > 
> > Fabio
> > 
> > > julia
> > > 
> > > >  		u8 ps_mode = pwrpriv->pwr_mode;
> > > >  		
> > > >  		rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE,
> > 
> > (u8
> > 
> > > >  		*)(&ps_mode));
> > > > 
> > > > --
> > > > 2.31.1
> > > > 
> > > > --
> > > > You received this message because you are subscribed to the Google
> > > > Groups "outreachy-kernel" group. To unsubscribe from this group and
> > > > stop receiving emails from it, send an email to
> > > > outreachy-kernel+unsubscribe@googlegroups.com. To view this
> > > > discussion
> > > > on the web visit
> > > > https://groups.google.com/d/msgid/outreachy-kernel/20210411082908.3
> > > > 187
> > > > 6-5-fmdefrancesco%40gmail.com.





