X-GM-THRID: 6664942000953884672
X-Received: by 2002:a1f:d5:: with SMTP id 204mr1032595vka.9.1551802735871;
        Tue, 05 Mar 2019 08:18:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:76cd:: with SMTP id w13ls4458630uaq.2.gmail; Tue, 05 Mar
 2019 08:18:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqyM3wVVlLyNwoHycd6ge02cAHExpduovjpPf7NQ7o0M2+KgOkS8CHdtohGbp2lQv/ksJ+0n
X-Received: by 2002:ab0:6455:: with SMTP id j21mr2036599uap.11.1551802733879;
        Tue, 05 Mar 2019 08:18:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551802733; cv=none;
        d=google.com; s=arc-20160816;
        b=n4nZPQIiVzV0WvwI638yoxFeitsC3i1uMXk5C/RoWPTFp+UNkXs+nfu1R+WWKkfVkS
         EWt1KFYKt+dfwxHuYkj9aKnBXz56B7/I0CAljjPwJ9KSI+BTHK6kQgxki5FcmoIUl4/u
         mfN/iO9dqKuhws8OEOb4NazW6Wktv5EEBw7jMQj3KMpuOTN7sGttx/IIGL2xlEcq1Tzl
         LNMzv++ZfoXdNBZwO4A4Ztry1vn9j8bBlXiEqsdPfPb0dExtpIDt9zyk7fDGmgcVsO1C
         Ug/IweRLpa4i+5wVe3qpppviNee22iU06fOnIGeapTmQ/eItURVI4aLgt3JTbVR1lWp7
         WZqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1qjtqzLT7TNDblXpRLmEwpLtFfUFMhyVuDP2RVgxbQs=;
        b=IHXqLCFqi0cUFAfe4AUWUlaAzuHo+KrQjqEQ8NO+5laxP7C4jV/DiQ2DFHV+MUhekf
         L93oQYp+DjdpTcF1/CZs3MysuaYoEiCmuY0xhCoPVs1WeuBX61FIm/jySbNqbdr9yxAd
         guFRwIcwWYdpJWMIAfeFiLYsHilYCk6FkuMSdbk/V/WVdbrx0wZTZu2p33qHprg9mX5u
         rb/9OC/J/K03w8pn8dYhy4X4XNaG8o6h5rpTEihiEaHwETpf5D8u93VbD4DI44OFVx/u
         qmZlZz3Eh/zR58WNaZIbL3frhGlszaiS1xYWiKkTqcPme/PG4O8v2rE1RmDqf2XFkzp+
         2hTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YQXBh4Zc;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id m195si605423vkd.4.2019.03.05.08.18.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:18:53 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YQXBh4Zc;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x532.google.com with SMTP id r124so5956311pgr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 08:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1qjtqzLT7TNDblXpRLmEwpLtFfUFMhyVuDP2RVgxbQs=;
        b=YQXBh4ZcsV7NPkpLN8o+KIxNsgvu05+xGlt5806tTxiMppeQCH8DrqoMyWWcjMyAdu
         HIAPYNRX0Baa+eZxfb8pZoXraNHk3EgTIvdhBbdi2GBPQysxrY00wNvuz82mHSOjtCPj
         2b0CwcIMdlUTaHbFE2KsOwGa1/IvEIse4IB+jyYZbumxMSOlkUq5nX816vd/l3TwPu5t
         cM6Uwxu89q8Bcvdr+o2tiZGlxEDnzSy4Nl7dQL0c8GZ20fcCLmIm6bkDcEq0DdwlyET/
         tmf7v2HkKw2K630pw2lvmdGSswrtI+Za0svb4MIPxB2bP8KfRV83L9GCKmaHcb8cwKBM
         HjJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1qjtqzLT7TNDblXpRLmEwpLtFfUFMhyVuDP2RVgxbQs=;
        b=iRiQvG1D/azVRWEsfLfLL6pVbfRejIcfLB7nVujcgUHI8PxPMfrZ9jNCOa52kwWU7r
         rZKTEJjnUAosJ+G1S8tXeOa2xuxD1SfJ7QA6MMTTEs8qTRK6m3w3d6LKoz3AtC9g9bly
         1sdhl3wxMIjZ2lSwRsqYKtW6bojdKb/JpJ1ajS4jYMoHuI4KkA8A9nATrkFvnVT5cHL/
         vUibxnRXsdLvb8UmOYmXRvoqaxOB6OnLpmOp49dbsCBFxdPFT3EUxhdA4AAM1VSioi/M
         secjzGhdUSuexYOHLgWz0238DRzQ462RlGLpNGPPI7DFXrwMaeBPAb/JbtXaXqiYfTi5
         QAxA==
X-Gm-Message-State: APjAAAXm1+1V1PiOXsZJx6t9HOGKUFmftsyryZpaNxkuXWHzrGpKmCEP
	zBqRS3Fvk+oeGx1NZHdi4zEfkM25et0FAQ==
X-Received: by 2002:a65:508b:: with SMTP id r11mr2074321pgp.242.1551802732864;
        Tue, 05 Mar 2019 08:18:52 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e88:a284:c1b4:4aa8:71c5:d127])
        by smtp.gmail.com with ESMTPSA id 4sm19792666pft.96.2019.03.05.08.18.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 08:18:52 -0800 (PST)
Date: Tue, 5 Mar 2019 21:48:45 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/2] staging: fbtft: Remove unused #defines.
Message-ID: <20190305161845.GA32030@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unused #defines detected by checkpatch.pl.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v2:
  - Remove unused macro.

 drivers/staging/fbtft/fb_watterott.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 0a5206d..502d67f 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -90,15 +90,9 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	return 0;
 }
 
-#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
-			   (((c) & 000600) >> 6) |\
-			   (((c) & 0x001C) >> 2))
 #define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
 			   (((c) & 000700) >> 6) |\
 			   (((c) & 0x0018) >> 3))
-#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
-			   (((c) & 000700) >> 5) |\
-			   (((c) & 0x001C) >> 2))
 
 static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 {
-- 
2.7.4


