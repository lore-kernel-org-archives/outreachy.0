X-GM-THRID: 6659803762561908736
X-Received: by 2002:a17:902:b60a:: with SMTP id b10mr3228634pls.147.1550606396172;
        Tue, 19 Feb 2019 11:59:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:124f:: with SMTP id a76ls7735096pfj.1.gmail; Tue, 19 Feb
 2019 11:59:55 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaoE8Ckp9JbqMZtv5kpXioLIC8JIfw0Kc8gM1Lr8JrEUIEu7pXGAlvlmskCk5+MvSrmZiZ1
X-Received: by 2002:a63:368d:: with SMTP id d135mr3333897pga.133.1550606395473;
        Tue, 19 Feb 2019 11:59:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550606395; cv=none;
        d=google.com; s=arc-20160816;
        b=wQsnw7mzjH+Tuj7fKpdXIeaBj06Oq9qERLXzUzLOFCqHHkT1fniGrhTHKaqWSlHQd0
         WmSFrjt0l3ChMwU3/eWRTXlHLH+xBIzUs3iPY1gQ8MLSRlASzyVt4+Zc5V4o30XkJzKX
         xUpNj1jGLT/cCBVk+m5YKF5LDRWBCp5dYwlkuF+IZg9j3Z5Ta4pVfJQIYYnT5YS0eM7S
         hjc3v8Yk1IF7+Hv0zH7kz4f8ZULq5ZtY5bWRos6Qv6PQbvGAcZbXuP+56gFzJCN0Ig5G
         c/X1+l98R5/FQr3sDqvDW5Dk48LFF88WXQqO4Besn/xQTCjK7C6xLrf1LDP0VbegbmuV
         d0Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=2hB1lVER8TJTt1U8AY2xFakaZKZwCg10/5ijt4m6aaw=;
        b=fe0jRPzd/eF/SAR4rzbXGJTfltDoT/fRGTN1ls88VQqjiG+dJPvCcjWN27IZgWBJnS
         Dux44Zh4D3bslKYfbs4FK5co0Bzwhb8T2u2v6nBUmBCuNTyitq4LTOj8jq4IgV4QuLaY
         cOkPJ6FJIaHyDo9yScx+OFwbeXeraOc4Up1fRp77vEkPrSyFQH3ONKKsuqwJosWoWGPk
         WxoT4uY7K4W93smjsuGPH+tJZhoDVLOf42YpNA5ePh41WEIbBan8PO7W71xbxfkuFz8w
         MgU6UuiYr6CC88ejmFkguK4wAugrdQVDzzjNpsd4yyRZXpr/d6Ifd+eZ8lwHDejkYT8Q
         3WTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n2b1HkOQ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id m189si1348612pfb.0.2019.02.19.11.59.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 11:59:55 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n2b1HkOQ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id b2so4888722pgl.9
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 11:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2hB1lVER8TJTt1U8AY2xFakaZKZwCg10/5ijt4m6aaw=;
        b=n2b1HkOQRl0HrTMm1Tl6zzZeXi8GpUnBnJiDX3jFCaYKSIDZA0gITVR37yep8jZb/d
         aMfbde0qSEc1adjg0BWwK7GCuQk25xrOqATose6OEWBctZtlvBJ4cPQPdt7nSicyQsjT
         ibfwY4f/JmfDYEcUbo1TNm5SR8RONDGEwD1xqJvbxTJn4WTOpJBQBo+gvMSZz5wC8lb8
         bL8Le/OQEEvwX5EJTyluChxnYZJeM933eicVAQpGPofF3DPKEBTX2TBkORWYA3jGwwR6
         edRPiwOIiDdOXUDEkgEiRBBkwbh/zZApIDzWKJx6u94AJXls2bX4s4zTatL4p95Hv0hn
         UdCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2hB1lVER8TJTt1U8AY2xFakaZKZwCg10/5ijt4m6aaw=;
        b=R/vJb4Fm/zGYf0XOPh4DWAGN95K6BvFdOd7FXc+Ut/S73fXZnebZoOazTtz9nYVz56
         tH3bSlltZMa69nEpvgnvj7dIJ7u73n5s0ImlAmI/MiW7Po/Yb6xvVEIp5BXkOH6QDqbi
         pCha7Cl+tmI7MOtmbxxW/j9ipbl2zafjx1wgKA05ui5c1C2TMmVjrvjL/qC9W5KoiJd+
         1mmS82e2SZibj70r0CtXme7XRLndOU6HWcJoEIdpf0CdB/2yKiXRwburtUL1vfWhu52u
         rUKIDxrqS7AnEb1MpycCGj82qlHKMqdMhJZVBiexm5iymXEIyOnRIPb/YWl138vnTTyA
         AmdQ==
X-Gm-Message-State: AHQUAuavypnNrURYzkLcjgAnoCvvW9PVFLkbfgNXhA7Fxs+uD/lA7VEA
	ipoYW1UpbpGuDbZaDMYGEPgTjf1B6G4=
X-Received: by 2002:a62:560f:: with SMTP id k15mr30828093pfb.231.1550606395201;
        Tue, 19 Feb 2019 11:59:55 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id i2sm21794066pgl.53.2019.02.19.11.59.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 11:59:54 -0800 (PST)
Date: Wed, 20 Feb 2019 01:29:51 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [Outreachy Kernel][PATCH 2/2] Staging: rts5208: Fix Macro argument
 reuse
Message-ID: <20190219195951.GA16325@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix Macro argument reuse to avoid possible side effects

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rts5208/xd.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index 98c00f268e56..5e9b3805c33a 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -99,11 +99,12 @@
 #define	XD_RW_ADDR			0x01
 #define	XD_ERASE_ADDR			0x02
 
-#define	XD_PAGE_512(xd_card)		\
+#define	XD_PAGE_512(_card)		\
+(typeof(_card) (card) = (_card);	\
 do {					\
-	(xd_card)->block_shift = 5;	\
-	(xd_card)->page_off = 0x1F;	\
-} while (0)
+	(card)->block_shift = 5;	\
+	(card)->page_off = 0x1F;	\
+} while (0))
 
 #define	XD_SET_BAD_NEWBLK(xd_card)	((xd_card)->multi_flag |= 0x01)
 #define	XD_CLR_BAD_NEWBLK(xd_card)	((xd_card)->multi_flag &= ~0x01)
-- 
2.17.1


