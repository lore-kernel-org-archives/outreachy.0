X-GM-THRID: 7021822549853995008
X-Received: by 2002:a05:600c:22d0:: with SMTP id 16mr30184153wmg.35.1634918286231;
        Fri, 22 Oct 2021 08:58:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:35cd:: with SMTP id r13ls4329132wmq.2.gmail; Fri,
 22 Oct 2021 08:58:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvzCAfB8Vb7DSgfJIEw9F0YasBs/W8TNs/MOq1I9KP7A3zKvTkc6X8mlUtX1Ar6c7poK52
X-Received: by 2002:a1c:4d0:: with SMTP id 199mr29294512wme.64.1634918284736;
        Fri, 22 Oct 2021 08:58:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634918284; cv=none;
        d=google.com; s=arc-20160816;
        b=0u+GXrZDekxH+QppUd/ocOYQ9yBMAODKk041T5eGrjfE/kz8NWs2HsV8bpZTun6szN
         YxWJp8XnhVcHE5KRpI+bqmYJt7lK99lwu2H17RNoCJD0oPgRVc363wFdukJVKMSXsVYh
         /6+S5gDMScwohOumU1gXiuI7vWQtBlsKpj7UY1pNXIr/tVPLFa+3GfeZmQ/RDYy99kfi
         415tmGIKZBVja3N5lw5LmD8tg1SEpyT6SFdbOiYggSZf3NFV45k61ZEZvDtTvD6wTzY8
         AeXzKz/WPeciDdL4qb53B0l+NeX+DTdMF/IJdxm6CNvof3wrPuwUPgtrjm4atRQKYwsM
         h8sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=oxg7wtYVb2I8ZNupHXd2gl7ipYhOJwG6Q/eeUjge9ic=;
        b=D85lkjcL2sQncfCz3b2CxGBqqtldn7HG+mkIgYZ/5zhP1IbhvnwBgVez0v6rbh7GJz
         r9rs5zC1JACZsBqv5PZAOb9hQE46XBsnxCkiVY4gVl5H+RG5tryudOU6l/8PCZXFTj6E
         6lEJqEey4m2TEUrpNlZhF8jQgUpGjV0JhG8mpN7vZAyMSNxdOXa2WSPUgehHvA20GgpM
         z5IQit7BlN5XRILsqrA+2MMdR9WCc6Fw0QxntfJJurRf0DaHhjXhkTHmwsrv5URPUjDP
         q7AFrjNXuxH7P2f9TgXgev0uujK1TD2lvI6DV7mlHRNpJLINHy2fm1/3lYS9u2WTcS5d
         UL4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=mObrmk3n;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id a10si622004wmb.0.2021.10.22.08.58.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 08:58:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=mObrmk3n;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x334.google.com with SMTP id p21so3340816wmq.1
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Oct 2021 08:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=oxg7wtYVb2I8ZNupHXd2gl7ipYhOJwG6Q/eeUjge9ic=;
        b=mObrmk3neCUnsocnuZ1ARAuQDBLO2Pv0jgshOruwD4Pp1dH5du/dxLfpPtLC/BK8EK
         gkrEHLoo32P5ycx9wBLj8bRKBIBLeexPKSM0epgdp1a/fcAmHkIltMNndDtKcvzGBPDL
         KPPAuyn+L/K5FiL6s/mWb6aA9hXCS/GVW7VwzuSyJp2M0aKTSy65rO1Z6tpQWZOe9vpm
         aGZ6hr96qqs3V+dcTjqezDAyQtuv4k/Vld1b/dbRObxiLYrFcsxNSiqw8dJMycqfnWpW
         skkg7umXzpJATMSqK2EPoHMaP+qFuwTniSJeCI5nF/6BLbXqVClv7sz3R2URE3Pv5wd7
         uNvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=oxg7wtYVb2I8ZNupHXd2gl7ipYhOJwG6Q/eeUjge9ic=;
        b=f2cf0WboaMw0E2PE/2LRxoNmlI05ETzLawjbPLsyOvOXfCiPnyzJ+8EA3A9fhvAtlS
         0ZXJg20pbcSLPi4eSyzZ6jabrK+0+CosRrFeSHNi2sb9X6p0PoSgde3w8ast3EH+PRYC
         QMps7M+KrPx1p9B0E73ASxuobgtenicfEs4nnqnyVubJK+J1q5GZGWm8dvsetNJ/BvtT
         i+hNBtS0hPzzRpg9oykeCnXffPAMTyRQgcPPnsNJujroM8dpMl79j61MI35eNF5e7lMy
         eelOKSv4Ljq6WwTwhCkkE3uaKpXSkmKyAcIe+6OfT0WZ78eYW0apSpLxkhmvUtVyFANo
         QfAg==
X-Gm-Message-State: AOAM530CFkhjIbuuGMSjsqlOzp+ZRrnTnLBJ8DzVVgAuN85oMDQRcRNF
	EvPxL/KOS5EH1E8ZwNbonLGpKzAWLHfKsuow
X-Received: by 2002:a1c:cc0f:: with SMTP id h15mr587438wmb.37.1634918284369;
        Fri, 22 Oct 2021 08:58:04 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id k17sm8152897wrq.7.2021.10.22.08.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 08:58:04 -0700 (PDT)
Message-ID: <bf2a82e5a5f296ea66bda0cef84acbf78e88ffe3.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: vt6655: Rename
 `byRFType` variable
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Praveen Kumar <kpraveen.lkml@gmail.com>, 
	outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Fri, 22 Oct 2021 16:58:02 +0100
In-Reply-To: <049d4b3e-ed32-9b48-0c2e-19f9af95ca37@gmail.com>
References: <cover.1634826774.git.karolinadrobnik@gmail.com>
	 <f0b6818d2b15982081bebaf14f830f4646f61fe2.1634826774.git.karolinadrobnik@gmail.com>
	 <049d4b3e-ed32-9b48-0c2e-19f9af95ca37@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Praveen,

Thanks for taking a look at my patch.

On Fri, 2021-10-22 at 19:56 +0530, Praveen Kumar wrote:
> IMO, probably we can sync RFbSelectChannel as well with similar
> notation in another patch.
> 
> >  bool RFbInit(struct vnt_private *priv);
> > -bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char
> > byRFType, u16 channel);
> > +bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char
> > rf_type, u16 channel);
> >  bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16
> > uCH);
> >  bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
> >                     unsigned int rate);

That's a good idea. I plan to clean up `RFvWriteWakeProgSyn` completely
first and then I can move on to this one.


Thanks,
Karolina



