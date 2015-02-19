X-GM-THRID: 847410888704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,585d716e84a6542a,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.199.69 with SMTP id ji5mr818606lbc.0.1424374422249;
        Thu, 19 Feb 2015 11:33:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.134 with SMTP id ky6ls24428lac.76.gmail; Thu, 19 Feb
 2015 11:33:41 -0800 (PST)
X-Received: by 10.112.171.37 with SMTP id ar5mr819606lbc.16.1424374421868;
        Thu, 19 Feb 2015 11:33:41 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x243.google.com (mail-wi0-x243.google.com. [2a00:1450:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id i7si6473797wif.0.2015.02.19.11.33.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 11:33:41 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) client-ip=2a00:1450:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x243.google.com with SMTP id bs8so4122916wib.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 11:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2MbLweq096/IpNueuJCYTiPje5CuDKjw97KT+E5DetU=;
        b=WG09jHlX2Lkrark/ruGzzmQLBScABBRjfh/wlOoSukR2xWpBLxFoLICIBBrJ0t8RBW
         sPT2S9GJAmLhjRkyFzhO7JV3iiMmC+js8kWMWa6Ya4gxSXaRiag6ib/zTjJVAquytXfQ
         oAQpBAC6OvGvvjd5vGM0AMyOqsGXIaXCGfFS7tO8ku7tBzG6iKSuW35SUkMc0HJ/4sh9
         +U0moKZf6oUoQzUIC4mh+sL043du8hfqkzHBz15M81p2N6wQyk/37LR6Sz50e4kadu2f
         fpBbkpaGSPiB5E0kerms8JbGoobHRzjQkl9kvj/Ws3wv6PS+16piMpksGSzRMaoFSgSA
         2jfA==
X-Received: by 10.194.156.133 with SMTP id we5mr12321320wjb.37.1424374421762;
        Thu, 19 Feb 2015 11:33:41 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id m4sm5570585wik.20.2015.02.19.11.33.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 11:33:41 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH 8/8] Staging: drivers: dma: ste_dma40: fix blank line warning
Date: Thu, 19 Feb 2015 21:33:30 +0200
Message-Id: <1424374410-28940-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: Missing a blank line after declarations
checkpatch.pl warning in ste_dm40.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/dma/ste_dma40.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 57dfe05..e4b823d 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -1410,6 +1410,7 @@ static u32 d40_residue(struct d40_chan *d40c)
 			>> D40_MEM_LCSP2_ECNT_POS;
 	else {
 		u32 val = readl(chan_base(d40c) + D40_CHAN_REG_SDELT);
+
 		num_elt = (val & D40_SREG_ELEM_PHY_ECNT_MASK)
 			  >> D40_SREG_ELEM_PHY_ECNT_POS;
 	}
@@ -1758,6 +1759,7 @@ static bool d40_alloc_mask_set(struct d40_phy_res *phy,
 			       bool *first_user)
 {
 	unsigned long flags;
+
 	spin_lock_irqsave(&phy->lock, flags);
 
 	*first_user = ((phy->allocated_src | phy->allocated_dst)
@@ -1893,6 +1895,7 @@ static int d40_allocate_channel(struct d40_chan *d40c, bool *first_phy_user)
 		} else
 			for (j = 0; j < d40c->base->num_phy_chans; j += 8) {
 				int phy_num = j  + event_group * 2;
+
 				for (i = phy_num; i < phy_num + 2; i++) {
 					if (d40_alloc_mask_set(&phys[i],
 							       is_src,
@@ -2411,6 +2414,7 @@ static int d40_alloc_chan_resources(struct dma_chan *chan)
 	struct d40_chan *d40c =
 		container_of(chan, struct d40_chan, chan);
 	bool is_free_phy;
+
 	spin_lock_irqsave(&d40c->lock, flags);
 
 	dma_cookie_init(chan);
-- 
1.9.1


