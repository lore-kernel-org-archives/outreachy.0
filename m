X-GM-THRID: 6525365385486663680
X-Received: by 10.129.119.133 with SMTP id s127mr3707143ywc.86.1519310766860;
        Thu, 22 Feb 2018 06:46:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.216.13 with SMTP id a13ls212425ywe.34.gmail; Thu, 22 Feb
 2018 06:46:05 -0800 (PST)
X-Google-Smtp-Source: AH8x227X4/VFIgaGBtMAtWJjkbNCd+OO1uAspr35OasTv2fB1hiE/KhiqCoom16SOVspuayv2bxF
X-Received: by 10.129.168.202 with SMTP id f193mr555945ywh.1.1519310765837;
        Thu, 22 Feb 2018 06:46:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519310765; cv=none;
        d=google.com; s=arc-20160816;
        b=Q1W2S0/zq2vUoTbNpGPOSFk9EF+akbFPjaa/Ow6p00V5NxC0GECohh6NIZd+0OpSr5
         5NA4JNm6Qygt5bvPsf2DJ0j/jRhSyBavFIfA8Yc+NihHdL1UaHAwLHFB19VaHD20cSEk
         snRw+sgU6RI5Vlv9IGIeLuewjQUmsOlc3a0ZEUmnlY2SPxSz6HkeODzTOQSBCpaWu+7H
         ZP++1N0UA5ybjAalQCqZZMXEgwWtMLId9AOp+JOZ3MHzfl/RsET5C51Ytc18/jrxd/O5
         4aiww62lhcry1+VJlIEamu9uROZNyObtMj4FDjgwLRRLL10Yxeqsf6dobz3X1QMTlWW4
         iG4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=1glkP170wbFmWUaThfP+JyIssl2xfJx+z7YpVx/f61k=;
        b=mB0zkO4TdSdRwIzhD4GKMmYxE7VcORY1HriLiO2Er6LbyZiPAead6xYVpb8piWAW0k
         K268jssxS92v6XJydyuRcJdCsah7qJDTJY6BlyVXOfVyj2qTbfvstHZYgjk7YgZeWRF/
         +TnwS2eQL0i3ZrPtc8+DV1milGYcdXWR/C6wz9PrO+mJ/v917CmWBWZPJtoYxC23JoHg
         p5IyJbyyWhtoU48F9kZnqnpQAdnxLsv3Dg8tYat3sx9jnXjJG83EQS0VmFcwS4z2eCq2
         aiOvb5B7r3uoEzmzGnCB+TEBN8GJzn6QjpiSTQ0BgBcgu0uOfTsJMc7hZaZ+uoYMTp7w
         kwWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hRu0AVgt;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x22d.google.com (mail-pg0-x22d.google.com. [2607:f8b0:400e:c05::22d])
        by gmr-mx.google.com with ESMTPS id t4-v6si15296ybl.3.2018.02.22.06.46.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 06:46:05 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) client-ip=2607:f8b0:400e:c05::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hRu0AVgt;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22d.google.com with SMTP id l131so2077817pga.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Feb 2018 06:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1glkP170wbFmWUaThfP+JyIssl2xfJx+z7YpVx/f61k=;
        b=hRu0AVgtE/SFxLhS0iolihFhGgMX8XUqoAm30O9FV/l5kMZRAxtFFFSJgVU2ReC5Po
         dxyTZPCpFnauV1d+kF8hzPci5FVwea8DZ59zCrTslwNtHsheX8etAtH0G4l8YAKYu0w/
         kYBzMrWZ8ZxTP5XpvVqk28h4oLrU4PIkr5GOaNoqVU+TT2Iumay6lZ8yfic4Op8B8tkl
         RS+49lBOpwOe6YQtAgGLIAgD3ZbJ0mBiXYOPYO6Yj9maE8vLHyyKRhgWenBRX2p+X4y2
         PqMO10lrquFN9nAB5RMlp442qDZr6URDzrf+BYo6hX5Bil5Rq3HuCrkzhfGcMQoN1+zp
         xCZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1glkP170wbFmWUaThfP+JyIssl2xfJx+z7YpVx/f61k=;
        b=hFXdHgQ8exQ2XoynuyLjGLJlLg3841mRfU+L1HkhHU3Ao4zwU5j+d454NeTUvOB1/c
         raGmWMBtLQtR4oZ5P/YIVjenmfYAVry4mJhofrgDGgs5pjZbCT458d7bFNipgHBLYx/X
         Ob8veDC2DD7poE5GDYwlFyJx+ZFPHRRV9INWvDA3iyb79xnq40uFXvoGnws1VyRz5bBS
         /jbQJdhWuWQUoLHOgjKyDAFRSY86GgRvlLpMOD1WVst46GGet3rtaxOORGOKVb2+ijpN
         uhqCcBb3h7BBU4r6TCQs1BOJDLWQ2jVAtoGaI0z0HcUam84wPGWRq/mfhpL51gNsci12
         +e3g==
X-Gm-Message-State: APf1xPArrLDFxG0Br7kBhRA7xTs17NPA3qc1yxNL46m/IxvY1rSngAoy
	PT83aKW3IFoTUBWUz1wClJ8=
X-Received: by 10.101.86.73 with SMTP id m9mr5955532pgs.70.1519310764910;
        Thu, 22 Feb 2018 06:46:04 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.140])
        by smtp.googlemail.com with ESMTPSA id l10sm509014pfc.133.2018.02.22.06.46.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 06:46:04 -0800 (PST)
Message-ID: <1519310758.2359.3.camel@gmail.com>
Subject: Re: [PATCH NAND v3] mtd: nand: Replace printk() with appropriate
 pr_*() macro
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Richard Weinberger <richard@nod.at>
Cc: boris.brezillon@free-electrons.com, dwmw2@infradead.org, 
 computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr,  maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org,  linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar,  outreachy-kernel@googlegroups.com
Date: Thu, 22 Feb 2018 20:15:58 +0530
In-Reply-To: <2093598.TLbMltDcSo@blindfold>
References: <1519305014-2547-1-git-send-email-shreeya.patel23498@gmail.com>
	 <2093598.TLbMltDcSo@blindfold>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Thu, 2018-02-22 at 15:30 +0100, Richard Weinberger wrote:
> Am Donnerstag, 22. Februar 2018, 14:10:14 CET schrieb Shreeya Patel:
> > 
> > @@ -438,7 +438,7 @@ static void __init doc2000_count_chips(struct
> > mtd_info
> > *mtd) break;
> >  	}
> >  	doc->chips_per_floor = i;
> > -	printk(KERN_DEBUG "Detected %d chips per floor.\n", i);
> > +	pr_debug("Detected %d chips per floor.\n", i);
> <bike-shedding>
> 
> You are aware of the fact that printk(KERN_DEBUG and pr_debug() are
> not 
> equivalent?
> Not a big deal, just want to make sure that you understand what you
> are doing. 

Actually pr_debug() shouldn't be used here.

We usually don't prefer pr_debug for drivers, instead we use dev_dbg.
But as Boris told me that it will be better to first having changed all
printks to pr_*() macro and then think about dev_*() macros.

> :-)
> 
> </bike-shedding>
> 
> Thanks,
> //richard

