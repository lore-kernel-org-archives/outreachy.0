X-GM-THRID: 7021065776829300736
X-Received: by 2002:adf:c00a:: with SMTP id z10mr51159256wre.315.1634735331405;
        Wed, 20 Oct 2021 06:08:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ef8b:: with SMTP id d11ls2664092wro.2.gmail; Wed, 20 Oct
 2021 06:08:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwAeaXz98CmdGxsvOqLH12X4RK4IcUncS4eSJbheS6wWWnX0MbBDYWYlAdMdNeSefTfbCfB
X-Received: by 2002:adf:8b1a:: with SMTP id n26mr51832770wra.182.1634735329914;
        Wed, 20 Oct 2021 06:08:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634735329; cv=none;
        d=google.com; s=arc-20160816;
        b=GEji1JckgScviGxUSGbkp+IBD1ov2lUn4kAIyF2UkSOB46P15O84TZnLrbjMtAiGiY
         z01rXgSYpy7HLbEITO9QNMaAWvChF9Nej3+MOQtAJIy+lyWuJBFfynIUvCnFcOdoQ5XV
         1v0LPg+LT94W3IwXYP81pdPmpIgCW9y3n8qk5Ieyv1FptDVSxzxHbzwnXe1CGrPsWEBJ
         iEjmyWuwZ5i0uk9shhaGsnAruoQX3FP+Clg9nc9gaQJotvtvFwUbQdTyqrRztARG98S+
         xM4b6WUmTHY+svKIKUlA/sYLq6DmzdSBJaGZotxFPb0VL2GHNYx70TkV5CTnUbw8OewN
         SOHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=4P4AVlRuS+D8nRRZwY7bESCy+/9tZLn5inc7/Sy4z+g=;
        b=HL6ospMaiiC4GP8352+b+XW4AbLGgXNat7uJ4dHgnf4WcOgt8qvfMFPN0C0+Esb0Mu
         4yDgphygLN2ykFQ6vCbMWTrQelwz+PNA+0gi989AC8UVWKa65RcBuqOaIhAXFQBJalDQ
         fXAVEsP2nhvTeV9XnMEgA5YWHzBvRadtS49tdBnll5eP66zR5eKvRf6EAnpOlZwAhdP/
         /w+YizJZpQj9TpjCbOBhgY1bqADTVp1YOSq6oeTp4PhTw0Jas8wEvT5pMDgGwr780im8
         9c9XLIuBSVHMDfGFFBwYtwiVvHHc7rbHc3BOLjJL0idHi1mpOesk1n0nLMRP3Ht1+Fdn
         PQyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=XyzvrgVN;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id f9si378890wmg.2.2021.10.20.06.08.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 06:08:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=XyzvrgVN;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x329.google.com with SMTP id g2so18888153wme.4
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Oct 2021 06:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=4P4AVlRuS+D8nRRZwY7bESCy+/9tZLn5inc7/Sy4z+g=;
        b=XyzvrgVNkV/afwxqMkX5uoSxL3qX4Hb0sTQfo44r6x/QtqVKaSBK/7OlAuOIAlRrjE
         NbszUB0kB50R4XBwLdOENLmlQwexDnDhOIiN8oHs/7y5FuGrOP2Pw1Tv40oDTytAfNlj
         UojVZ8UMguW/TueF7aeKl98cY0wfwMpOz68CfC9J2FaUNv4gLTvEiycezbR7+mwP7Ar5
         L4+KJTZX12i7L+QMgyMMOlZX94fFMefhocAyip/fGcy5wK+T9hgV8G1mFITiq57Kx55+
         Uc3wIW/aNMGxTIyxRNXhc89sMuKPJICdcNFWY0lu6WW9WjQQyGk9i7JUEMuyPxgLNuCy
         RjgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=4P4AVlRuS+D8nRRZwY7bESCy+/9tZLn5inc7/Sy4z+g=;
        b=iTG2PD4eIIK8jlXRJwqDhePuyKdl4tMYKHd69yS32XHTsBwy5zlR0Mmh2Kr1DrBoJ1
         ufymmr4O+7+CsyXyNltJY/xlml8WFe7bycTv3hnw5btxgGYNkQvtHj1x9iNwbvc78Y2b
         snbO1fIuN4yakFRMHjquEP3kNCcOybAsdD/t96pg1wWLf99CjIXUrImrAgE9iK+0DCBQ
         WBae+aDW1Z4vkfm+TbXDcBBPUF1FS51bP5U4gwKqCw91wE6JE7YqIBSOc6+w6ttHpZFv
         SMVwTtWPfNDQ2XEC4b8L3CQm46qcriNqKEVnWTywmi4k0XRgpGI4Q8Ho6ylXL8MRuzTS
         Zklw==
X-Gm-Message-State: AOAM532cJRciJmJxWNMVTEI93I6y7BhKedVB8BiZ1vLqqiORdS2rbJ2p
	vVxQjy3V47V6Qrlfzs7ZyJo=
X-Received: by 2002:adf:e7d0:: with SMTP id e16mr51195752wrn.283.1634735329623;
        Wed, 20 Oct 2021 06:08:49 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id g25sm2012944wrc.88.2021.10.20.06.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 06:08:49 -0700 (PDT)
Message-ID: <c89758e11e9d159135b7bc0f16b76b99b34a3ba8.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Rename
 `by_preamble_type` parameter
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Wed, 20 Oct 2021 14:08:47 +0100
In-Reply-To: <alpine.DEB.2.22.394.2110201456190.2930@hadrien>
References: <20211020084033.414994-1-karolinadrobnik@gmail.com>
	  <alpine.DEB.2.22.394.2110201051300.2930@hadrien>
	 <6089e564f89ceaa7303bf3a4b4c864bf1389ac25.camel@gmail.com>
	 <alpine.DEB.2.22.394.2110201456190.2930@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Wed, 2021-10-20 at 14:59 +0200, Julia Lawall wrote:
> On Wed, 20 Oct 2021, Karolina Drobnik wrote:
> 
> > On Wed, 2021-10-20 at 10:54 +0200, Julia Lawall wrote:
> > > On Wed, 20 Oct 2021, Karolina Drobnik wrote:
> > > 
> > > > Drop `by` prefix in the first parameter of `bb_get_frame_time`
> > > > function.
> > > > As the original argument, `byPreambleType`, was renamed to
> > > > `preamble_type`,
> > > > the parameter referring to it is now renamed to match the new
> > > > naming
> > > > convention.
> > > > Update `bb_get_frame_time` comment to reflect that change.
> > > > 
> > > > This patch is a follow-up work to this commit:
> > > >     Commit 548b6d7ebfa4 ("staging: vt6655: Rename
> > > > byPreambleType
> > > > field")
> > > 
> > > This is not going to be practical.  If the previous patch is
> > > accepted, then this it not needed.
> > 
> > This change was there before but Greg told me to do only one
> > logical
> > change per patch (which was a struct member rename), so I reverted
> > it.
> > I believe this is needed because this parameter still uses
> > Hungarian
> > notation, which is against the LK coding style. Also, it makes
> > sense to
> > update the name given my previous change.
> 
> Sorry, I think I was not clear.  It's not practical to explain
> constraints
> on other patches in the log message.

Oh, I see. I thought about this log message as "why" but now, when I
come think of it, just saying it's about the Hungarian notation should
be enough. I'll correct the log message, thank you.

> 
> The important thing is
> that if you want to make two different changes on the same file,
> either
> the first one has to be accepted before you submit the second one, or
> they
> have to be in a series.

I see, thanks for clarification.

> > > 
> > I can add this in but will that still count as a one logical
> > change?
> 
> No.  It's a different change.  It's just a small whitespace issue,
> but
> it's not triggered by the other changes you have made.

Ok, I'll submit a separate patch for it later on.


Thanks,
Karolina


