X-GM-THRID: 6466453874195562496
X-Received: by 10.28.23.200 with SMTP id 191mr623922wmx.25.1505588617316;
        Sat, 16 Sep 2017 12:03:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.35.68 with SMTP id j65ls834181wmj.19.canary-gmail; Sat, 16
 Sep 2017 12:03:36 -0700 (PDT)
X-Received: by 10.28.7.196 with SMTP id 187mr591590wmh.7.1505588616240;
        Sat, 16 Sep 2017 12:03:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505588616; cv=none;
        d=google.com; s=arc-20160816;
        b=QauodoaFAn4PoKZ1oZPvp2/7Au5Kg8NDk3Sekukz1MCKWImQLb5nec/U1acojyJaYk
         /7tDBFyt3a8vjDVlA0Ikkq/gZeJ0Fozf+WOnwzC0SlK0xOEK6WQYwGDihdGv6THY0Q3r
         dv6jzcbXWv16ZhOxypgw/p3ZmiSUPa6Rnhr6ONqg/n9ycE4kSF1Eg7Tah/sCwZfaeE36
         EE2U528hj5URNiGVLRK1pgbtYXecu+9o/5UtksXcnFJi+RY6DfBJyMAWKnyuOIzhHyMQ
         RgtBWtxzH6SJUh2j7ugsyqkPwAw/1vhABxsodmRXWKkYFem7FWEBd3T8fvMW6snVVGHb
         25/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature:arc-authentication-results;
        bh=X3zU6rwRV+EHY0lM2h4REA1w0Lpkp3KXfOTwHCFEjdE=;
        b=qUF0s48lQLI0el9aIRCbJOV6GhsLAGI524Z+8UCWUPxCpK+RtUF8IDiJ0lk1AsMWKi
         CKrcFKm6j8A9ZoIeHGnKWBhCnHndivC4nORWiYDX5PpyR7/AN5+BC+ibpcuQC+fpjGEO
         CR1CKbEszuad+0/BsUMHQCW6m4+Zf2CYV7axw+ycUSZr9BMJU6WVnfJR2i/jQMv22m1z
         XHWUI/jBd1zceH9IMCAjq0aDo3qqweWgYWXj37TqAGgwUPfV92xtpFFepOwFMrKDM8z6
         J/UV+EmDRStyxjA2fnfHp84qOyUK0xv6njCQfuFMPkUceeemtfTVVTpenesqLVyiXjrx
         O1dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOpLwUPE;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id p200si246295wmg.4.2017.09.16.12.03.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 12:03:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOpLwUPE;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id b9so2970089wra.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 12:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=X3zU6rwRV+EHY0lM2h4REA1w0Lpkp3KXfOTwHCFEjdE=;
        b=kOpLwUPEeAN1NBhIOY0cC4GgbRGIi4nu7UkFg/nr4T/+mabJd7SBKU4Nj2jGxhR0Ld
         lR1SORAmtVcmIShqBNNQdcuuPr0RHFHsIldVmlNWgtu38dgY6uw9UBX+bsGCGxXKx+Pi
         pcJtYIfDY9yzFFQPum6vxe7o5ngzXgBJ/VdDDLRQ5OOh8HgTS4dHWCrbCCYdvQZGTepV
         vHOqFjQf6okrwKeQcBG7NuQbRDpxXAE2VAzYX+YUEZ7fQZ6dFFtuRVZjvqdXCDZwztq2
         /ou0zPLZPjfPHRkbyekRxmicF5BpwLh6KNCk9in8eJ8JUmNwh3gOwUdSn2bbNERea2+B
         ZcKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=X3zU6rwRV+EHY0lM2h4REA1w0Lpkp3KXfOTwHCFEjdE=;
        b=lqg2Gicqv1Oa6GHFyBQc/AHo+FHiESigS50xY/MawnfPkukaXjp2DEqEL0JypEynmb
         8xBaJkr+2M6wXU8jsj6+J6Rd/uT5ufLUoH+842lFMtmE8kDHnYvLReHUimr76gyHAdPw
         dL3GfE8KUtQhq8uSGe9BLD+JHLWMk3JAietxEEHKWPhW7+PHwVzMU1B/NtJtzCTvJRxc
         813WvEyLncIBZdQGjEGD2mgFvFXKJG7FWMx1NBwP1a3xnQPFv/KEVBVrrL9OUrmPwZyz
         RdVhWZQp7jnWnx9KztbdM86S/+d2jhSdwAM3LMAdYK3ccLT2oVD2dgdS0Px6+NIV3FMj
         XQsA==
X-Gm-Message-State: AHPjjUjpnMvtBHrobufVy+d5X3ahMDB7akfL3rzmw6KZqM/uCPYeXa63
	YM8wfh3DHcW8oA==
X-Google-Smtp-Source: ADKCNb5b7oFIUq4RVERLyMPUlGIItR5fYhUCjx2osjpDFvnJkPQD2XcviKRt1k3vGIpMrWTAqr6Pbg==
X-Received: by 10.223.160.68 with SMTP id l4mr24357440wrl.79.1505588615925;
        Sat, 16 Sep 2017 12:03:35 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.124.247.82])
        by smtp.gmail.com with ESMTPSA id a19sm3772006wra.64.2017.09.16.12.03.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 12:03:35 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
X-Google-Original-From: Georgiana Chelu <georgiana.chelu93@example.com>
Date: Sat, 16 Sep 2017 22:03:34 +0300
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, mchehab@kernel.org
Subject: [PATCH] staging: media: atomisp: pci: Move constants to right side
 of comparisons
Message-ID: <20170916190334.awmvwhunsgz4iozl@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Place the constant on the right side of the comparison
to increase the readability of the code.

Warning found by "checkpatch.pl".

Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
---
 .../media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
index 606376fdf0ba..81c0e057a8b8 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
@@ -88,7 +88,7 @@ int ia_css_queue_enqueue(
 			uint32_t item)
 {
 	int error = 0;
-	if (NULL == qhandle)
+	if (qhandle == NULL)
 		return EINVAL;
 
 	/* 1. Load the required queue object */
-- 
2.11.0


