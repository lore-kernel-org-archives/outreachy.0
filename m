X-GM-THRID: 7020422968837668864
X-Received: by 2002:a05:600c:22c3:: with SMTP id 3mr5248450wmg.170.1634641203162;
        Tue, 19 Oct 2021 04:00:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6b08:: with SMTP id v8ls993083wrw.3.gmail; Tue, 19 Oct
 2021 04:00:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzat/WwDQTHG4kVAy2+KDOWmTNtDKN8SS98qLwOYqC0y51xG1xjb1AqsKp1eZqaBx4E+UfM
X-Received: by 2002:a05:6000:1841:: with SMTP id c1mr43731286wri.204.1634641201684;
        Tue, 19 Oct 2021 04:00:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634641201; cv=none;
        d=google.com; s=arc-20160816;
        b=Ws0RMxDUYmPsSZuHUtLq1lPtagShLlok05FP+sNY/jnCXMzKxBsOd2TGh204bZK4wR
         ZFiec4WB83AuQk2bKS5Gn+c+5cWqiGlkwQDf3nC7vnxx3PhGbIhWnMOU3t59M30r38pZ
         FScRXDe7Yf8AboI5kKgebCJ83gxgFGSS81pSLbQV7YmKoJIauCteft/5f4r4Nus2czv+
         e5CazstdDwdUtvLmWx+kHou+sfgWVTnttMtjzZLjVlQNqEU5+1nArCVF5uUPRDn8a/Jg
         yAbaOqdD86t/jsc/Dpoa/fVi5ZCetZpV7KIY2PR4jrz1ZoGNwE0t1osi/MXy6iGwg3L9
         J8sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=LRkSXvKU2H3yNWwYA1Dskm2+OrbMFIykkcsNX7x6JHY=;
        b=V8KZDGafigoBz70ZXaWEKVAYQ+U80Iy1hXzBSj3Ue9go2MA03lAQsoFuz2bxPT1UX4
         Q7lFVXKbcgD2pdGA1+5eFOlfmIk6sBhJBIR6+0/9phMC9w1Qc0OKenJb9HqOGo/FvRxw
         HDFvb7aABKolpF3TCljXTZJNqvCq/w+Vh4N+aRyJUIIARuPMLmrwy9lOQESHRq23Oexu
         kw1Ep6hdqNLlJVxeQFLjU+1f9hh6Qw/lx04cuQxnMxwIXYZoMVoXIMl5C0fB8L2VNTZD
         dOE7aOWMu9LcAyYlSzIxwGFhz+Zryd9W8WIoGq4ymi1h3lCJPnnA7ztk6hcTu3cRPX4F
         RUqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Zt2uGQFq;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com. [2a00:1450:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id h11si939476wrs.3.2021.10.19.04.00.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 04:00:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) client-ip=2a00:1450:4864:20::32b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Zt2uGQFq;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32b.google.com with SMTP id n7-20020a05600c4f8700b00323023159e1so2257584wmq.2
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Oct 2021 04:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=LRkSXvKU2H3yNWwYA1Dskm2+OrbMFIykkcsNX7x6JHY=;
        b=Zt2uGQFq89/yImCzTMOWBObDDJ+N0WvJuq2vzZdU7jm5QFQ2bWNIwpcpk8ntJm4ObN
         c32YtN4Q6/M5U1hWk1mk1q1NMyyNhngTCvObm87r56pGDyZZISgO8okr84/D8n+jCrlo
         d6zbLFYEIedMaf832hRSwdhxMtj6LSCM0yFOadMoZiupMSHA/IWjs10H3i2rcY+wJeGh
         ZnVfasLZ+BrlNdMBQ9FAgJg7MLwz41pM8ZUz1W7vSZMQEQEBpjJ87ewcogAAhov6qLb3
         03Xb5ahEFx2wR7J9gYU2PRQONGhN6VOo/ZFKoMhR9IBkrA6jc3RLJRsaniZZGaFOc9Tw
         wgyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=LRkSXvKU2H3yNWwYA1Dskm2+OrbMFIykkcsNX7x6JHY=;
        b=LsZjevu4cTFTCekkL1Rr8aFmL2Qvk2TrTuLUM6igZz9EQIyda10jSrvQ+nCYXFqz2W
         t81+obetALpVZgessY3go3hCVgCkqI3+JFtDhzV243rJRHwA5TcFSOwZcsSosUpRY4b/
         v/i/16Bll/S9p42k7Air3EVQLVaM/3ljQToeUERStqMHS9j8Fxy4hraKu4wU2m5rWHkM
         G0ELnbGZwP7q6KsMlFKVWrlADtFPD18/9CE5HL42ODJe+Dtr41UMYs+URlC23X8tjwRn
         1ilzcG9GuXlySxXA9SnIcEcNdkA1cA0qfcMdsJdR+2qel3d0Mr2i3AqK0ipl0S+D4kMK
         rCzQ==
X-Gm-Message-State: AOAM531U7ZRgPXxsZVnxOsMK/KuefyWaiX9hc/QASlXqjvjVZcJG04DF
	t6lzVTC2GL+Zekzy2SC56w71MNAyrTdQN6Dk
X-Received: by 2002:a7b:cf03:: with SMTP id l3mr5210548wmg.25.1634641201313;
        Tue, 19 Oct 2021 04:00:01 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id v3sm15097529wrg.23.2021.10.19.04.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 04:00:00 -0700 (PDT)
Message-ID: <810a4e29b0c54520a30cae4d37fde0a59ea3d83b.camel@gmail.com>
Subject: Re: [PATCH] staging: vt6655: Fix line wrapping in rf.c file
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Tue, 19 Oct 2021 11:59:56 +0100
In-Reply-To: <84f3c940fedb961e6e7e88d47c3d15e598bc32c3.camel@perches.com>
References: <20211018150526.9718-1-karolinadrobnik@gmail.com>
	 <YW2O3wC8wMEKS3Ub@kroah.com>
	 <84f3c940fedb961e6e7e88d47c3d15e598bc32c3.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Thank you very much for your comments.

On Mon, 2021-10-18 at 17:12 +0200, Greg KH wrote:
> Also, these are all just fine as-is for now.  A better way to make
> these lines smaller is to use better variable and function names 
> that are shorter and make sense :)

I have v2 ready but I'm not sure, given the Joe's patch, if my solution
is a satisfactory one. I didn't jump on such refactoring as I'm still
learning about the codebase/process and didn't want to muddle the
waters (...more than I do already).

Greg, what would you prefer? Should I back up with my patch, pick
something else and let Joe's patch be merged?


Also, I have a question about the patch if that's ok :)

On Mon, 2021-10-18 at 22:56 -0700, Joe Perches wrote:
> Maybe some refactoring like:
> ---
>  drivers/staging/vt6655/rf.c | 38
> ++++++++++++++++++--------------------
>  1 file changed, 18 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c
> b/drivers/staging/vt6655/rf.c
> index 0dae593c6944f..7beb0cd5a62df 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -680,16 +680,19 @@ bool RFvWriteWakeProgSyn(struct vnt_private
> *priv, unsigned char byRFType,
>                          u16 uChannel)
>  {
>         void __iomem *iobase = priv->PortOffset;
> -       int   ii;
> +       int i;
> +       unsigned short idx = MISCFIFO_SYNDATA_IDX;
>         unsigned char byInitCount = 0;
>         unsigned char bySleepCount = 0;
> +       const unsigned long *data;
>  
> +       uChannel--;
>         VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);

I see that you introduced `uChannel--` to further tidy up the lines
with `[uChannel - 1]`. In general, is there anything wrong with
indexing like `i - 1`? What's the preference here? DRY things up as
much as possible?

I'm asking because when I was reading this line, at first, it wasn't
clear to me why we could decrement it (example though: "Was this
modified earlier? Do we need to "correct" it?").


Thanks,
Karolina



