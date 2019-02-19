X-GM-THRID: 6659597331609944064
X-Received: by 2002:a37:634c:: with SMTP id x73mr16965251qkb.17.1550590797211;
        Tue, 19 Feb 2019 07:39:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:7f86:: with SMTP id a128ls8095467qkd.6.gmail; Tue, 19
 Feb 2019 07:39:56 -0800 (PST)
X-Received: by 2002:a37:e10d:: with SMTP id c13mr17028121qkm.47.1550590796765;
        Tue, 19 Feb 2019 07:39:56 -0800 (PST)
Received: by 2002:a37:553:0:0:0:0:0 with SMTP id 80msqkf;
        Tue, 19 Feb 2019 07:31:35 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaL9bn4m2cFX2GbgH8T+4JWd0lweM7uFykUlhoqObmjTCDWv1V/JclLWf60zRO2hpW7E087
X-Received: by 2002:a1c:f718:: with SMTP id v24mr303232wmh.4.1550590294610;
        Tue, 19 Feb 2019 07:31:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550590294; cv=none;
        d=google.com; s=arc-20160816;
        b=pgDywToC/Tgf2BXbctosYbLyDRMefQCQSUhPsBrrETesWrVS6nHaFUZjoyZRxvMwRP
         21RtWM/70sAuN+xzw64FYHgJekxdtv9PulwZI0nVDy4BR86OnvtKYwSz8pZbueIdfxxT
         Ga8/uNlD6YG9Qy/HNPjtGZEIOysGBFRFcylYFpVBcBYvByPCgC38Gtaokoq5qC0eMclQ
         zK68Uahe3FUMkne7fnIhD3RB00ifyBRQVVSYXSbFfiPE4jDnF0LRuka4vSo4D6WUeW8B
         G7Xi1VbH4cclGQxt2jcpNhsnya1OivA5EXLlQkRRZQ1DRc32DNamWkXiyyoMMkr8vQvn
         a1LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:openpgp:from:references:cc:to
         :subject:dkim-signature;
        bh=7kdWtS+FD4aG/3PRJ/JemB35ItWdaXo0StiFFuQVvYU=;
        b=ulwwJzJ/0YExOdvAcXDJ9c1lQ1AH4WbvrlMOgvEpBALfImAB5rhyyUFJxrtiqrWxkn
         +ZCirIhE5hxDSHroSIWQHm19+upwa4y79o9BMpg5VLquVo/wCdGDGwarry+2iUyvWSOa
         V2ntVxvPzGsYmwX7aEw0SL5i60c4GUmDYDTXmSNVazGq26w2dLMVgtkNURG8b6PigmBI
         hbEa3UaK95gmuTNHFaDKvcf/4wW/vPmyDu8IKqVRjXEF4Oc+FZf1CMmcgY+IhVEicpW5
         nNprPdiPAo1fBzOHYy1+B93C/I1I7f3dXoBAxVmQaXBEdywNw9K2gQW1GVNbITWpj8db
         l89A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EldxAZ9X;
       spf=pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=matthias.bgg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <matthias.bgg@gmail.com>
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id y6si112669wmd.1.2019.02.19.07.31.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 07:31:34 -0800 (PST)
Received-SPF: pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EldxAZ9X;
       spf=pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=matthias.bgg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x543.google.com with SMTP id h58so17084107edb.5
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 07:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7kdWtS+FD4aG/3PRJ/JemB35ItWdaXo0StiFFuQVvYU=;
        b=EldxAZ9X606l0zcTSdeFrfmItwxKD8TaTKZ/AlfcK3IC1mPu8QEkE77zRqv4vf64Va
         GBiV45w/Lz6yvD2UXuYto9MxIWlneN9yAU5/ZkolqtU+lXuEAWtrc4FsmIw42pRZ0KBh
         C0zFzJSWazWQ69WoL9cW189v/Zsh1b0jPRZVWgWqXwOvkniPQFzFf76M0Q2bhgKnZApv
         mRpLzllFaVdEQU230EcIrnJRa5+1/6thUN1Xx/86Ol/0GGpuH6XjIMDZJJs/r2VHOQrh
         w7nfW9lypelbWBo+PGGYl6NQvO5pj2JiPP75o5ZftZTAprHFQBt62nyT8UPrDJeE4v08
         CiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=7kdWtS+FD4aG/3PRJ/JemB35ItWdaXo0StiFFuQVvYU=;
        b=lJCxLg64FK6zx39bLmw9m7JGe3IzJJP92QGAuS/MWUFqnC+3O9XfQBIy219AkUH3JI
         /E+cuSnNUQyOGmxn9QQju3TSLevco8kMBcbwBlmf1MpicKuKWFNzIghleiyMvF9sV+VM
         PI50jRqICHF04YCcaBCwSqhHYprp5DHBI5V227OaXIkw4IXz/ZT/scDtwDpRrPhLV+uu
         uhCMx6uyfuznJXhNbBPo1akwS9pHTd9gyaBu2ZrRuLY1eYFDu3NA0ZYmGvtevKUytZ0j
         V8nEZ0YfSNFvClUxYn+ni+Soa0pqC8Ax0yG/EBQozooMdm42h1sfZzokyRv09/hJRmSu
         3C/Q==
X-Gm-Message-State: AHQUAuaw1CElAtVWJNwEj/idCveFh1fn0lAS5xnzNjdgIenTMbVlEg1l
	vriFNtQuUdhg5Hn41vxXhWfFEGUC
X-Received: by 2002:a17:906:6091:: with SMTP id t17mr21028501ejj.112.1550590294217;
        Tue, 19 Feb 2019 07:31:34 -0800 (PST)
Return-Path: <matthias.bgg@gmail.com>
Received: from ziggy.stardust ([37.223.146.9])
        by smtp.gmail.com with ESMTPSA id s46sm5097539edd.9.2019.02.19.07.31.33
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 07:31:33 -0800 (PST)
Subject: Re: [Outreachy Kernel][PATCH]staging:mt7621-mmc: Prefer using BIT
 macro
To: Bhanusree Pola <bhanusreemahesh@gmail.com>,
 outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190219063848.GA2994@bhanusree-MacBookAir>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <3d66e3f3-74d3-2da7-57cb-8b04427ae680@gmail.com>
Date: Tue, 19 Feb 2019 16:31:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.0
MIME-Version: 1.0
In-Reply-To: <20190219063848.GA2994@bhanusree-MacBookAir>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 19/02/2019 07:38, Bhanusree Pola wrote:
> Use BIT(x) instead of (1<<x), reported by checkpatch.pl.
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/mt7621-mmc/mt6575_sd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt7621-mmc/mt6575_sd.h b/drivers/staging/mt7621-mmc/mt6575_sd.h
> index 4e287c140acb..038a484a9476 100644
> --- a/drivers/staging/mt7621-mmc/mt6575_sd.h
> +++ b/drivers/staging/mt7621-mmc/mt6575_sd.h
> @@ -363,7 +363,7 @@ enum {
>  #define MSDC_CKGEN_MSDC_DLY_SEL   (0x1F << 10)
>  #define MSDC_INT_DAT_LATCH_CK_SEL  (0x7 << 7)
>  #define MSDC_CKGEN_MSDC_CK_SEL     (0x1 << 6)
> -#define CARD_READY_FOR_DATA             (1 << 8)
> +#define CARD_READY_FOR_DATA		BIT(8)

To be honest, I'm not sure if this is the right thing to do here, given that all
other defines use the shift operator.

Apart from that git grep tells me that CARD_READY_FOR_DATA is not used in the
driver. Maybe that would be a better first patch: check if the defines are used
in the driver and delete all these that are not used :)

Regards,
Matthias

>  #define CARD_CURRENT_STATE(x)           ((x & 0x00001E00) >> 9)
>  
>  /*--------------------------------------------------------------------------*/
> 

