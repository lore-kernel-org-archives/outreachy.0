X-GM-THRID: 7020739860072759296
X-Received: by 2002:a02:77cf:: with SMTP id g198mr3832668jac.6.1634644796741;
        Tue, 19 Oct 2021 04:59:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7105:: with SMTP id q5ls3459822iog.1.gmail; Tue, 19 Oct
 2021 04:59:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwo1ez45hpqoAxk9ZJkDCBEiQ4cxRPMqPm16bsz9P1GRAvY9EH5WoIrG6RtCQl7qIoK89zB
X-Received: by 2002:a6b:b785:: with SMTP id h127mr19076841iof.186.1634644796109;
        Tue, 19 Oct 2021 04:59:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634644796; cv=none;
        d=google.com; s=arc-20160816;
        b=f3kg0IKqfNMdmdipZjVs85mM4c6xFV//8AzE3Wsf2Q0BglkBlDGt2lhGpy2fsYGZGT
         rjP0rRHu0izdCxxHRGqLegJtVy7XED0T4Q/IYTRDJNv43cq1N98glt+QOu0mLOh3JPtd
         rH7hVYa6te4jWoMTMDTe6m/Jae/GgT3nEC8B07ygepyrFiduizWygoFazon9D4yLqTHn
         jG9o9LWgdIRf7ArfZy/BtDHMKd1ybLVvLyqJe2gdxIEX1oXUvVYtXpEQrSpjXOaGqNXd
         5J/T+GdYZSgzEFwqUYXuh+Bzim0sue25O/uEvRZrzhUcejN6Gj49BUqHUNlTLKwIPr/z
         9YbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=BZk982IzrC9n+hcSNy+9u2b+1ikZeQmLvmHL3Vct6hY=;
        b=Dag+DX8gevecjxsgo1MTcxD5XFlvawJXc//bkCDymc4w0G5o2LXiFLj7S2GC3XuHtV
         1+ukW6jY20mBfc2DAiEDU1g+p/jbZ9KoyjHn+Qv9QwDC0Z4K4FrM5qWytY0Vu8qb6mzx
         NWWv1Tn7Q1Y45wKifYyp03vV/LuJVlDeKkyEBqABwU2cZDmzfHytiBb+EcRGtve2xge8
         ccPBZDzefia8JlXni/OgAVwYOfkO6Z6sUtGTgYmoCpPOouC4BUSt42+H0IpttphNWinv
         CmFAdFJyY1lWczyxWqmi8/DNE3/Y/5PXPy7s9HwW4azmEZnPRAToiYG1BVnPfh82A11h
         XxZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Mp8n5FqP;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id e16si1010293ilm.3.2021.10.19.04.59.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 04:59:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Mp8n5FqP;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x633.google.com with SMTP id i5so7265322pla.5
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Oct 2021 04:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=BZk982IzrC9n+hcSNy+9u2b+1ikZeQmLvmHL3Vct6hY=;
        b=Mp8n5FqPAXMAdqBtfs5gScJ/bFjKBtuHvyINCHG8ly7u1PVLk/3PxRGodSTvkmvxcL
         1MJZPXfHbwERDj72Mste2pNa422D1hB4eNNxlkcPmSUqJf/2NrK6zDXEnS1BbXQ7nTK0
         K01TM1hK1x+J9U4+saXWZVXCsZEAoum82rzzuUP+DkcIBHrnDLK5YhhscHhW4RBY64si
         +Zb7uElI/g1bkEqKOhD9ky7jUmMZWgw7uQpivRp+kfQM2akRzQeEpoAbTgmRGvkNlvK+
         XRJlApVUlwwsdxms3+AG3kG2jibzljFuKYzlc+M0tFHBWRD62zrWdvcr5lzSYmwTXOzj
         /Mig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BZk982IzrC9n+hcSNy+9u2b+1ikZeQmLvmHL3Vct6hY=;
        b=bVgIcNMKDWkia2sN6viJE6EkKmlwK5VEABnKSx2WrQKuJcz1PyPlya33FKOYV472xW
         tqPO+Bl40B2nVbwYn4TAojX/RqUlfEi/3BH+Peo7obp5acXnHS3pZFlbZzbkpULI0e9f
         U425u86pUQovUFs3fpctpilxqs6+xaUBoc6CpRL3RB+V6GZqec8kXJjTtgWUl2lKX//t
         qIKktNYCIxcMou5TFcpM9I7U9DYNopiDIgY3P7q4aUvZkv/6xM2lHh7OVDMUH9lios2e
         6NnPxbUcxLNE9aDhEKajwPL/KtTzvgKh9LiRSz0mDKc0+o8qEXyHzrlNjL69l633anCu
         2Jtw==
X-Gm-Message-State: AOAM531AKSkooGbKNlSrnTouuLpilwyOSNOBMmVCR7ea+Edv4Kccd0g8
	2482KvCy9E2BhaspqYI1dQmHtHoy7+s=
X-Received: by 2002:a17:902:6bc3:b0:13f:8e99:ce74 with SMTP id m3-20020a1709026bc300b0013f8e99ce74mr26229886plt.29.1634644795467;
        Tue, 19 Oct 2021 04:59:55 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from [192.168.1.87] ([171.61.208.14])
        by smtp.gmail.com with ESMTPSA id k3sm2532066pjg.43.2021.10.19.04.59.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 04:59:55 -0700 (PDT)
Message-ID: <e0a93780-63e2-d080-cc87-807ef8b79780@gmail.com>
Date: Tue, 19 Oct 2021 17:30:01 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [Outreachy kernel] Inline comments and the line length
Content-Language: en-US
To: Karolina Drobnik <karolinadrobnik@gmail.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
References: <cc6aa5185aaa3a4db3a5a6f11032f37bfa977362.camel@gmail.com>
From: Praveen Kumar <kpraveen.lkml@gmail.com>
In-Reply-To: <cc6aa5185aaa3a4db3a5a6f11032f37bfa977362.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19-10-2021 17:06, Karolina Drobnik wrote:
> Hi,
> 
> I'm working on tidying up the vt6655 driver and I can see warnings
> about lines with inline comments that are too long, for example:
> 
> ```
> CHECK: line length of 129 exceeds 100 columns
> #171: FILE: drivers/staging/vt6655/rf.c:171:
>     0x08031B00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* init
> 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) */

I think you can put the comment above this statement.

/* init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) */
0x08031B00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,

However, I do see other entries are not in 80 column boundary.
So, lets wait for more comments.

> ```
> 
> Is this something that should be addressed or is it ok to leave it as
> it is?
> 
> 
> Thanks,
> Karolina
> 

Regards,

~Praveen.

