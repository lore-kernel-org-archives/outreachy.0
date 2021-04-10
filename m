X-GM-THRID: 6949336667395194880
X-Received: by 2002:a17:90b:1998:: with SMTP id mv24mr13949128pjb.67.1618021557665;
        Fri, 09 Apr 2021 19:25:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:e38c:: with SMTP id b12ls5947437pjz.0.gmail; Fri, 09
 Apr 2021 19:25:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzs+zeITjM54ibHMBmoKXYwkopcp7L8EJ1r3e9TQ6tBfyuQbktuv5qcAO2S7/EYE18fpC+4
X-Received: by 2002:a17:90b:30c6:: with SMTP id hi6mr10583459pjb.26.1618021556464;
        Fri, 09 Apr 2021 19:25:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618021556; cv=none;
        d=google.com; s=arc-20160816;
        b=PtC1Z/wPG8QNhX61BLKtlj8S+a1o/URpygvpvROiRmWCrh/+Uwg3lRiLd78UEbwp1b
         XYHwSTzcrN/uOMjGE3LChqCjhXa7uHrcw751wqZOs9StdjBpLFvt7lX1SyVN+ZHrWEDI
         ImiV21PNQTcrLbo0X+6E8AGv5IArrl1VyEamFvwuaf4OEMt0YpKIWN3j6tLF6Errd3Nq
         0NS7ovw5umQ5xHt8JxJlK0kes2ETH4rTLx9uuU0DNpRzKpo9slRp2M4fu+qAqsATu0OC
         LH3ZF0nHfuOcq7qjIVcmtQ9qS11nwE8REZug4f7R1F3dEVRjEdTXs1XeDB/mWNmI6SYX
         YFMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=tRxserF1kmYtyXKOVcZo2cxB5e2oiDqXxMhGx+qb4IE=;
        b=tvT8nkOAG95Izw3SRbpLTSUeP3wFXvvIaovAoGwADHza+vnjPKAAAcXREM/zAzN0of
         GmVdRhf4bHHZlYf7b6AdKLF/rCxN8dI+XxOmdQLsCKDlbSgSBzJPVKLmXIr9TsE3jUGO
         0+lK7Copo5d7/0FRA6Nt2I4N5N/oXmBXRl25MBH3xmyWwYjZW/IwBHX4WGwdfLv9LyMP
         OJXo1Bu2sE6D2uGLvKKp17h1ewNRMjgrXg/17phnzEYC6A4E+gN9IU7drwcTHFeNtQuY
         zQqafY1/DjHx81g9cGQTveAAfAKrQ/axLIKhpMNjjFqyxeSujrqpqbTAhB3ToELmjt3e
         mbOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F5lFTt3U;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id e15si247169pjm.3.2021.04.09.19.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 19:25:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F5lFTt3U;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102f.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso4090480pjb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 19:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=tRxserF1kmYtyXKOVcZo2cxB5e2oiDqXxMhGx+qb4IE=;
        b=F5lFTt3U3onbYaIlDdSmB46f8guOx+gRe+kZHWp07pu3+yZDYockBr2vbQ7hAeNTS4
         Fzs0quiCYHKBowNI+wv8sS178SXa6NQZfLWC1FHWYKO9+/R/c2KMn9ZMpUJnfkhld2zA
         5BHVMN/gg7H6P05qMhcJ5jIx6IrI8QNb+cR9HViVjX3EXBOFH2JYAtbb4J4vpAlEfME6
         YF6kJX/7SvnFI5unlVfQVmjf6+AQNSxZQxrFHaU3031kdysT8zONzp9FiPxQ/mxuBCBa
         047kHruZEzYYfNSPqww1MKLpiriz9ZNKrDQ/T8Dl3dR3QHhwqBe4BBDmWRHL4F2UUZo8
         xSLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=tRxserF1kmYtyXKOVcZo2cxB5e2oiDqXxMhGx+qb4IE=;
        b=d9ajxz9bSjU0VDJ3I1Cp0LAMWIhP8EFnY5PxB/C3oZSOYdseFUEyJNbjpAOvAJKgLi
         HTQr2h+xD113ORQeasKqaSEcm48gx/UYeZf66Hi4q8ikcrcHlHujgMDdUPNskKBEfhkA
         q9ZXqKFqICFV/nhGtyJ8V0P5m7nfWJ2dUO8pSii4OBxE9v1BaLgqMTE6dtKTyNFdBHYQ
         7P86O9y0LOXjRodMrXBuhxVxK6p6sGxCCfMCjYYtLRLTi/m04ZwUxCbD52AjowRdghQZ
         Jp4rLCT4xPv+5yDBkYSq5R3QJ2uu/q9DMhDt3xMiZZeM4UdgZ2/krQJT2qFFxApFFX9g
         6zBQ==
X-Gm-Message-State: AOAM533c6rBa/59CEO/H+ZxeeB1Q3wxO2PB2sUmJcM6AZd9ds0nODyTQ
	3luPINqJMzBuoxx8TnMOopI=
X-Received: by 2002:a17:90b:4b87:: with SMTP id lr7mr15623594pjb.5.1618021556083;
        Fri, 09 Apr 2021 19:25:56 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id d2sm3844630pgp.47.2021.04.09.19.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 19:25:55 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:55:49 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 4/6] staging: rtl8192e: matched alignment with open
 parenthesis
Message-ID: <YHEMrQdEFpXgmMh/@kali>
References: <YHEA2Te3Hik5J39t@kali>
 <f5fe04d62b22eb5e09c299e769d9b9d8917f119c.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f5fe04d62b22eb5e09c299e769d9b9d8917f119c.camel@perches.com>

On Fri, Apr 09, 2021 at 07:07:09PM -0700, Joe Perches wrote:
> On Sat, 2021-04-10 at 07:05 +0530, Mitali Borkar wrote:
> > Matched the alignment with open parenthesis to meet linux kernel coding
> > style.
> > Reported by checkpatch.
> []
> > diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> []
> > @@ -154,7 +154,7 @@ bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
> > �	    (net->ralink_cap_exist))
> > �		retValue = true;
> > �	else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
> > -		!memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> > +		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> > �		!memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
> > �		(net->broadcom_cap_exist))
> 
> checkpatch is a stupid script.
> Look further at the code not just at what checkpatch reports.
> Align all the contination lines, not just the first one.
>
Sir, I have aligned them in last patch of this patchset.

> It might be sensible to add a generic function like
> 
> static inline bool ether_oui_equal(const u8 *addr, const u8 *oui)
> {
> 	return addr[0] == oui[0] && addr[1] == oui[1] && addr[2] == oui[2];
> }	
> 
> to include/linux/etherdevice.h
> 
> (Maybe use & instead of && if it's speed sensitive)
> 
> so this would read
> 
> 	else if (ether_oui_equal(net->bssid, UNKNOWN_BORADCOM) ||
> 		 ether_oui_equal(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM) ||
> 		 ether_oui_equal(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM) ||
> 		 net->broacom_cap_exist)
> 
> and it'd also be good to correct the typo of UNKNOWN_BORADCOM globally.
>
I will look into this.

> > @@ -654,13 +654,13 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
> > �	pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;
> > �
> > 
> > �	memset((void *)(&(pHTInfo->SelfHTCap)), 0,
> > -		sizeof(pHTInfo->SelfHTCap));
> > +	       sizeof(pHTInfo->SelfHTCap));
> 
> Doesn't need casts or parentheses.
> 
> 	memset(&pHTInfo->SelfHTCap, 0, sizeof(pHTInfo->SelfHCap));
> 
Ok Sir, i am on it.

> > �	memset((void *)(&(pHTInfo->SelfHTInfo)), 0,
> > -		sizeof(pHTInfo->SelfHTInfo));
> > +	       sizeof(pHTInfo->SelfHTInfo));
> 
> etc...
> 
> > @@ -815,7 +815,7 @@ void HTUseDefaultSetting(struct rtllib_device *ieee)
> > �		HTFilterMCSRate(ieee, ieee->Regdot11TxHTOperationalRateSet,
> > �				ieee->dot11HTOperationalRateSet);
> > �		ieee->HTHighestOperaRate = HTGetHighestMCSRate(ieee,
> > -					   ieee->dot11HTOperationalRateSet,
> > +							       ieee->dot11HTOperationalRateSet,
> > �					   MCS_FILTER_ALL);
> 
> multi line statement alignment etc...
>
Sir, I have aligned this patch 6/6
> 

