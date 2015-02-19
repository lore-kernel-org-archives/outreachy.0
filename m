X-GM-THRID: 847410888704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,585d716e84a6542a
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.13.236 with SMTP id fb12mr955127wid.1.1424376353288;
        Thu, 19 Feb 2015 12:05:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.140 with SMTP id ay12ls228241lab.2.gmail; Thu, 19 Feb
 2015 12:05:52 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr815277lbb.19.1424376352740;
        Thu, 19 Feb 2015 12:05:52 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x244.google.com (mail-wg0-x244.google.com. [2a00:1450:400c:c00::244])
        by gmr-mx.google.com with ESMTPS id ev8si6470540wib.3.2015.02.19.12.05.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 12:05:52 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) client-ip=2a00:1450:400c:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x244.google.com with SMTP id y19so2703127wgg.3
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 12:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2MbLweq096/IpNueuJCYTiPje5CuDKjw97KT+E5DetU=;
        b=LLA7Wd0NFwR44saHR+6HAaw5F1VSuohuUk6dYGwE5nOgP7stxEljXod9a6pO/Muvj5
         d1RCRYj/H+98LSXgMFrqR2DeZ/SAx4qds1MW0ZHOcut+WmyOgES9PifXeDFWF5PnC+S5
         koKaNblI3awZ9NEMFsSOPwF8Vf0+LM+ILEv/mCPJFyHSVTQNfDGOLfqzGYp7nAO4IGV4
         paEWoEjHJBq07dGU0yi64lLwZTsaNBwF75xvTy/cuJmwABitNjhL92CcOi0q8JRb3h95
         DshRuqPvxbqaMb1N0BVtqnBhfwDQ86oWp/4IswJGXndpx0aAu8IPUY/2zTgXbe+ICFvp
         p1XQ==
X-Received: by 10.180.35.42 with SMTP id e10mr13547741wij.11.1424376352655;
        Thu, 19 Feb 2015 12:05:52 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id hg7sm38826757wjb.44.2015.02.19.12.05.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 12:05:52 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: drivers: dma: ste_dma40: fix blank line warning
Date: Thu, 19 Feb 2015 22:05:41 +0200
Message-Id: <1424376341-29435-1-git-send-email-haticeerturk27@gmail.com>
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


