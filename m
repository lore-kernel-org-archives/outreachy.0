X-GM-THRID: 6752263859613990912
X-Received: by 2002:ab0:6994:: with SMTP id t20mr8798818uaq.124.1572287333211;
        Mon, 28 Oct 2019 11:28:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ed0f:: with SMTP id l15ls897328vsp.12.gmail; Mon, 28 Oct
 2019 11:28:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwUR6Dmw+ocA53hI+wkVLoUPPXsPBcAsWZPY3KG2BRhdcAYpkaYz1YcQnilBHssOs6mw9aG
X-Received: by 2002:a67:a40e:: with SMTP id n14mr10433665vse.230.1572287332075;
        Mon, 28 Oct 2019 11:28:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572287332; cv=none;
        d=google.com; s=arc-20160816;
        b=jntnre7g6BKDyOIMTTlw+AWIaTFBudxXrENUmKHE7BQPMq60peZratMqASWJdEi7Ig
         eWXrtQMl93qjUqD0fjg8CoJ+NA2WjG2+buyWNAynQzIuu4B57VEFaVaqqqYjyZQ2Bo/S
         7wkSNQmovuaJ41lcy9ilgwWaPlJTjZvCfjXHBdr4UlRldIFnxIiaQh6EhSdXE93uCHfM
         gs0Gbf1MSmmnsaW1ytmRIGU+lijHq+k3QQzcRnEBNGPbk7rEPnksHU+O/926biOo9HRi
         cyG0g/HkgYOEeS2hXvE/9LSWpeMYO3OuZF8IYFhAZLaUz7FV7jp7QczdZ0lfVurfhtCc
         sIpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8LrzOqjMECykeO+Jc+bxahxjSZOWhZOiGpJ/+YEEqnU=;
        b=WwwUZ3NrJI5L67LU3/ICsVWNWZglUgpX5YL49FxyVgoojSWrn8t/uJT3q/g/x5RkTp
         1AX+mdoerkp8ZvEFmoyquypuA+PoKVbkNq2lBJq+lxkiqswH5Xv0ot+Rv+fclr7G/Owt
         rBPwiTvsfSlTJmo+A3Un4b42BO94tg+Tl5zG9LRmIPWCvJcQ6ITDQYu5pvnikcjvEYY9
         FW/vaN/6lCsguCuUUZoeY2SA93gnd/vSthgfhSTg4uIATC7FOFodt5OjY9DGzxmYt8EJ
         nU+fdA8VOq2b/Bj1AML96Dkwgi6kEBTOb+8n9M96no6spCh11gyxqCeZzJbzu2zdJRH+
         Lxzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BJ0tvyDe;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id s19si24663vsj.0.2019.10.28.11.28.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 11:28:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BJ0tvyDe;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id t8so16023632qtc.6
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 11:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8LrzOqjMECykeO+Jc+bxahxjSZOWhZOiGpJ/+YEEqnU=;
        b=BJ0tvyDepnE69e/uSCZ1+YUnV/avveOevGWZ/xghCAz88Pljrw6y5NJRvoek6N/fbw
         ZYN8SIhqeiowMqCbFX2ZECWSSgCVhakNPahFO/jqv4f0B0NUE6X/oVJPzxvn5+ATplRg
         bkDNWTXsiWr+0pN5ohFYgbpvJKuvQp892EEvnC5EKccl5XUIpCvDLxc6qUa+X3SWqclJ
         qm4YlfabMbhpbVuinAy48u/ISLmvS4F/ClCGfQl4fNLIZSrP9czTEgGxUOnvDCz9msXi
         re1wDyPQJJ5+5JrhE9uYHneID2gepB6fAZ18geMUewoD78jF8gZSDst0YpMbFZn/7rJt
         e1+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8LrzOqjMECykeO+Jc+bxahxjSZOWhZOiGpJ/+YEEqnU=;
        b=o/SpVK76pmgHFUJWQ2m5QHj+cxxGT3J4FjkrN5bDZ/wnz4wbcrz7+T7VJazuIavfYP
         B+Ozz4WI3xys2MYI+HamOhHYDHIkGnsj5PJiB1DV0aZlcSPhdaj6HtgyAWlfthPRx8BZ
         fTu8MKpCFqk6M4uOasqHIZhaCD24fdsygxlDgndKKJCOB9Sy1JcP8M44Bxvzj4JAVofT
         N38MO0yiwGfYHlIPqFsxWyJ3eBuXH9x6xSnr2o236gg88caK47d7Er8sXHPftwGfupq3
         k5+jW3H0k+1b7Au9otMlwx3+g6jwM/9rB5ZK5Wdq2lrwe0N7UXM86Q5zcQo/w0S4EG06
         M3sA==
X-Gm-Message-State: APjAAAVrtVsN6+Yb3EOjLKyWG7t8qDP5pu8lugFtlIAsL1KFxLuJRJOj
	SnA7C2S7/pzBXzyAai+wRJI=
X-Received: by 2002:ac8:45c7:: with SMTP id e7mr19169166qto.364.1572287331522;
        Mon, 28 Oct 2019 11:28:51 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id v137sm6229129qka.64.2019.10.28.11.28.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 11:28:50 -0700 (PDT)
Date: Mon, 28 Oct 2019 15:28:47 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Sven Van Asbroeck <thesven73@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: fieldbus: anybuss: use
 devm_platform_ioremap_resource helper
Message-ID: <20191028182847.GA2311@cristiane-Inspiron-5420>
References: <20191026235214.GA11702@cristiane-Inspiron-5420>
 <CAGngYiV0hCjXigVhijoTmwMfS4mM+hC-aVFsu6VDT-WmKsNsJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGngYiV0hCjXigVhijoTmwMfS4mM+hC-aVFsu6VDT-WmKsNsJQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 28, 2019 at 10:27:04AM -0400, Sven Van Asbroeck wrote:
> On Sat, Oct 26, 2019 at 7:52 PM Cristiane Naves
> <cristianenavescardoso09@gmail.com> wrote:
> >
> > Use devm_platform_ioremap_resource helper which wraps
> > platform_get_resource() and devm_ioremap_resource() together. Issue
> > found by coccicheck.
> >
> > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> 
> This is a duplicate of:
> https://www.spinics.net/lists/linux-driver-devel/msg129526.html
> and
> https://lore.kernel.org/patchwork/patch/1140024/
> 
> When you find an issue, please search the mailing list(s) first to check
> if it is being discussed already.

Sorry, I was searching for the issue only on outreachy mailing list and
had found nothing about it.
I didn't know about these other mailing lists. 
Thanks for the feedback!

