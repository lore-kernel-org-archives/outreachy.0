X-GM-THRID: 6949336424403435520
X-Received: by 2002:a25:11c5:: with SMTP id 188mr39642915ybr.322.1618279392371;
        Mon, 12 Apr 2021 19:03:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:8288:: with SMTP id r8ls262807ybk.4.gmail; Mon, 12 Apr
 2021 19:03:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwpNTuUCP7+S6hEJIAGTE43WXgRa94ev5ZUOpuX80emvg2u6cB8NH46s6s7tWCRb2j53foe
X-Received: by 2002:a25:188b:: with SMTP id 133mr40796581yby.65.1618279391256;
        Mon, 12 Apr 2021 19:03:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618279391; cv=none;
        d=google.com; s=arc-20160816;
        b=tst0B2NlxYML4yFbZQsA2MTh7VpFPDng7GJ7T58pVA+biVrG0mc3jInGTOLAvJSVzW
         v7+MVkWPhQN+Ihex3wXn5/BfRKfwhPNpPZA+DMh9jGKMF1+lBuUGarWIoiWn2D3h8aEh
         bNJlwfnSsciOfMWDO1l1HfQSjgkQxwvwfG7NtnckvgACqVswb9G/b8SovBvcyAZDgqLr
         aH3zaxQ9Q5MM/EByuYB0YccB+buM8Vp2w8zbyTd5/eT3R4ZEuEnndby6Whjv81ROPTJs
         uAzcxt9ZIo+eigZggI4EpSShi5ChKSKytjcjv3VM1lO10duYi59ABLhS2REVV7t2MuiR
         +NXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=qUjaIguq8yzqDkohG7sI2rAfSZY7awUZei/nxUOMr3E=;
        b=rQmhHojTdAhRA0Mc34YidkCoOblob+eP4I66pNorKy6DNreOtqueAWIo+pCCOrZ1Wz
         ZcUZbNApCmHQFE38y3esYDuhVIHBJscI0z1JEnru0fRuMDbhoSJ1ZPI3kEm2tnlxo78C
         1VZVarMZwWzGUtNKkoRaBNAGDuIdI6du2jzHtBvByb3JQSMXTGhYb0LIbtuU3rfQHEyM
         SA+xlINi500dKX4jrLOXGuKy2dcp56cEtIHMP1A97J7GDmWl8kBGI8jEVgSDjzJY2bkb
         IOpWfgrigQWCfwujUKDNqy0rjLZhNhZFYQWOHAulwTl2WbAqdw//aHk7CNJJZDAeWsFQ
         /LEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vJNaJV+S;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id k6si535407ybt.0.2021.04.12.19.03.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 19:03:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vJNaJV+S;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id m11so10405763pfc.11
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 19:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=qUjaIguq8yzqDkohG7sI2rAfSZY7awUZei/nxUOMr3E=;
        b=vJNaJV+SxnOz/uU9pIGZ5okaXuBTkZF8q/Ly7teLJE7oCsuHhkgi3MBc24jkuPxSP/
         UUb0SzxQW3WlzKcfXCPF6vUHlhA7WFK0uD3vVny63Vz6MotwBIFnCLtKfHKpaPMVnAcO
         Rn1/jTBwEJ+pHqh7xmBVKVHTGC0QdzLBQDWsmu6RFxg2L90/u38pESDyfbHQ51o925FJ
         i02sTLO5QTfgTWdB57HMRXPhmlJMf2Z1KIBC/quvGPJ0XFnltyrm7MxpX8cp4/sY7gWc
         1TcTs0OGWbqBbSCvDTZPYZS9MhODFK00TgsexRH9eCLcChjcBcfbzugvm4BFWYlW1Qqc
         4QBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=qUjaIguq8yzqDkohG7sI2rAfSZY7awUZei/nxUOMr3E=;
        b=WStMGnssRsQ/d3Mz+z73KR6ZnNtJHJ0E8rbKRY3xcP9Xq8/9r62u+UKyCHp5lq2Y0G
         XglQvvIR1IcE+ERgDsH61dWBYrSxeDelRFzFORiiqmHw7PTbkyM8j61khIVx9YByR8ku
         uHYUW/XiY50xK9UTNW/KAch2CjtfLRz97Ddhh6squYIJDiLGIMP07VToSiReS+tyru5b
         f8U6ySI9CGIng0gT3dFzbt+3OLI/Wwa/rLUc08NjlVFAAsRK1HIFQ5aNpp9h8dzhK+c4
         VFdQBqDumc/J4Ruak6AXBsNguX0fRKYURd0sel/nABOZJCd0W5gLKXBtwxz2rFrzY1fa
         g4ug==
X-Gm-Message-State: AOAM531tq7f3LQFSvfY3rsfw3wBuCGjoFft9h3JtT3PqpugNhROGPobM
	Y+jD8k4BhKzZEYV7QJ3GXok=
X-Received: by 2002:a05:6a00:13a0:b029:248:f411:2778 with SMTP id t32-20020a056a0013a0b0290248f4112778mr13864229pfg.66.1618279390742;
        Mon, 12 Apr 2021 19:03:10 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id d21sm577784pjx.24.2021.04.12.19.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 19:03:09 -0700 (PDT)
Date: Tue, 13 Apr 2021 07:33:04 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Joe Perches <joe@perches.com>, gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v4 3/3] staging: rtl8192e: remove unnecessary parentheses
Message-ID: <YHT72MuY6mQ+JPGL@kali>
References: <cover.1618224838.git.mitaliborkar810@gmail.com>
 <29464cba775f9529db30b7fb4168198975098b55.1618224838.git.mitaliborkar810@gmail.com>
 <d82c4f4be48b645983a7f922f1791ebf098b22c5.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d82c4f4be48b645983a7f922f1791ebf098b22c5.camel@perches.com>

On Mon, Apr 12, 2021 at 01:46:54PM -0700, Joe Perches wrote:
> On Mon, 2021-04-12 at 16:52 +0530, Mitali Borkar wrote:
> > Removed unnecessary parentheses because they must be used only when it
> > is necessary or they improve readability.
> > Reported by checkpatch.
> 
> I gave you feedback about the memset changes.
> Please use it.
> https://lore.kernel.org/lkml/f5fe04d62b22eb5e09c299e769d9b9d8917f119c.camel@perches.com/
>
I am sorry Sir, I missed this. I will make required changes now.

> > Changes from v3:- No changes.
> > Changes from v2:- Rectified spelling mistake in subject description.
> > Changes has been made in v3.
> > Changes from v1:- No changes.
> []
> > diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> []
> > @@ -646,13 +646,13 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
> > �	pHTInfo->CurrentMPDUDensity = pHTInfo->MPDU_Density;
> > �	pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;
> > �
> > 
> > -	memset((void *)(&(pHTInfo->SelfHTCap)), 0,
> > +	memset((void *)(&pHTInfo->SelfHTCap), 0,
> > �	       sizeof(pHTInfo->SelfHTCap));
> 
> 	memset(&pHTInfo->SelfHTCap, 0, sizeof(pHTInfo->SelfHTCap);
> 
> etc...
> 

