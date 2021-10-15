X-GM-THRID: 7018482002461458432
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a05:6512:118b:: with SMTP id g11mr11985978lfr.353.1634310385864;
        Fri, 15 Oct 2021 08:06:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:982:: with SMTP id b2ls1710672ljq.7.gmail; Fri, 15
 Oct 2021 08:06:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJysPMmbeAymBXglhZg2dwfOQReEq0FtBKPnGBdomQICh7LXw2wLCGIk4WrPL1bZvLBeQquX
X-Received: by 2002:a2e:4b0a:: with SMTP id y10mr13238425lja.110.1634310384191;
        Fri, 15 Oct 2021 08:06:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634310384; cv=none;
        d=google.com; s=arc-20160816;
        b=vR06bKATcFThAbMNoEnB+5pS3vAisG7ruO2Osmq9gxz39taI7NOTqho28x5Urbm5la
         zMRlJQYCSuHlAARoh3Lxlh7fkN08RzDTJWCjBi0L/kYBZadx17Jwy/F+ngcFXDgJw7AV
         LIyXcAhkbiXA8hjG+kxRkG1mqetvcZzRXLhPbp+JYG9xGUN7jOFKnnurAXqfNQlI2AeI
         Ku9YyzeHnrVWySqXsZFwHrP9UvRn1y/5wOcF752mCNmoCvNrjjpzbyz8bFQKtWE6okgA
         kgntgf+I2VRE5ZjaBMDStyNi9FJu+QWZFwgm1+nOavyb92f+71wqDPl/mlTU2LcwMfzr
         rX3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=+O3Os9WM5IX9SZ9rTBQOxLtiipOGSTjqnRp50Qh/P/M=;
        b=sUmj1yPlFuBB1HXGs43LP0d40jhFp5YE1NwHMlbknW+lNqHDfr1UXFGqIfrXC+8NYt
         iQNuSs5DrEDrgx+svn9d2mB967wqK1WOBGCKZ/zJ+26dMoKo4OXVMsRuuUkb4JKhVJnw
         3XyaJaKsfl+mASY9fypE0RRpdVNjNRrMBUzn/rqt9ZF4mpWD2Z+C2KY9NwK1dqBsJ6Hu
         lMxTJUCYWhY4LaweylhBQn3dWbHUH0EhYjQETJFUOGT0DQDgByI+7Kvpm1JZv4MqulIQ
         evHeokFvAwdetZK5QQBJ6m01mETkS5Na/Yl25NN2fCljLCE2OGIyGg8VMOysJVs7xnzQ
         FmMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="badSN/Pn";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id 8si26663lft.11.2021.10.15.08.06.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 08:06:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="badSN/Pn";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x435.google.com with SMTP id t2so27076083wrb.8
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Oct 2021 08:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=+O3Os9WM5IX9SZ9rTBQOxLtiipOGSTjqnRp50Qh/P/M=;
        b=badSN/PnY2ke1NfS4yzFVgh3tuSyHX03b5GamKjOWWXHF+yWqIRIfDFsFBHnydlX0m
         W9EAvsiZ95Uzq0kY01cZzB6mO6w6ty+CLvacgTO4I6LrIVl8xOie6ORpyA346uZFziO7
         NgrCsGO13xRbCVsgoMtpXTLepPyRIpegVcj49YuI9Dh9/Q9hW0brwtgkeOJyS712ytkm
         wn6UnLyhcLFNg0ZG5Ak20OfF6E2bijtPXAFVte0YTnXKKEeAcosHvxvisu3qHKmU6OU+
         VGmgOEs5a3QvWJPSj4JFwMo1eQUPAz+eKL86A2IG2m5buTGybdKVL2np65pZprIWedy9
         FEzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=+O3Os9WM5IX9SZ9rTBQOxLtiipOGSTjqnRp50Qh/P/M=;
        b=Rfd/UYGqaABQa8AXVL1LwwGgOvMmFZDKxEpSKFMhD1fewxWHUErQCGr6y+e4ovEy5i
         vd1SPSlkBImuUEgW2DiG2h4NOTn1zB1XixeZEXe/8J6NosmP908DbMkToyNfAO3u6K8M
         9Dj4jPekHtlTn9BZxi9l6TAseKNv4fEntW1lSBnKLsFqoDUTGXvY3Ik3FXD2VcrQhJRK
         M0e4QVDafT+/yz5UbnwQA7plMLWhPMdx9/F9wxJPoMYTaxHqSvSp6axGEB2SkoKsbzVV
         aSy2foHMwaDQym91ceUf37fDbBwyHtRnBNaEkN7P/i9bbkQQkfPS4NC+X/s+v4jCIr7P
         MxFg==
X-Gm-Message-State: AOAM532dMpm0qUSrW2GX9L7b4UblDLkKwIracbv7aptXTENxuPNV9jn6
	IucUNRMlgmBZY/Y41g0ONs3Gl9YRMGQ/Aw==
X-Received: by 2002:adf:aa96:: with SMTP id h22mr15101947wrc.405.1634310383723;
        Fri, 15 Oct 2021 08:06:23 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id z6sm5337709wro.25.2021.10.15.08.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 08:06:23 -0700 (PDT)
Message-ID: <eda74cb46a30785adec86ce842c75721072c2df6.camel@gmail.com>
Subject: Re: [Outreachy kernel] =?UTF-8?Q?Can=E2=80=99t?= install kernel
 when CONFIG_SYSTEM_TRUSTED_KEYS is set
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall
	 <julia.lawall@inria.fr>
Date: Fri, 15 Oct 2021 16:06:22 +0100
In-Reply-To: <YWc6PeGJUKnp4Y1O@casper.infradead.org>
References: <d89839a7-c1c6-4768-9f5c-c9001b1239a2n@googlegroups.com>
	 <alpine.DEB.2.22.394.2110131136370.3465@hadrien>
	 <YWc6PeGJUKnp4Y1O@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Wed, 2021-10-13 at 20:57 +0100, Matthew Wilcox wrote:
> On Wed, Oct 13, 2021 at 11:37:51AM +0200, Julia Lawall wrote:
> > I often receive complaints about this file, and I have just
> > replaced "debian/certs/debian-uefi-certs.pem" by "", rather than
> > removing the configuration option.  No other changes to the
> > configuration inherited from my debian installation.
> 
> I think if you have a Machine Owner Key set up, this will cause
> problems.

Hmm, I don't have SecureBoot enabled and no MOKs set up. Still, I'll
save your config/patch for the future reference, it's very useful.
Thanks for sharing it


Karolina



