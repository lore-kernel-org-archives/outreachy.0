X-GM-THRID: 6466114198556377088
X-Received: by 10.202.166.219 with SMTP id t88mr14605475oij.112.1505509554063;
        Fri, 15 Sep 2017 14:05:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.70.16 with SMTP id t16ls3602216ioa.27.gmail; Fri, 15 Sep
 2017 14:05:53 -0700 (PDT)
X-Received: by 10.159.252.11 with SMTP id n11mr7342110pls.11.1505509553382;
        Fri, 15 Sep 2017 14:05:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505509553; cv=none;
        d=google.com; s=arc-20160816;
        b=oBRUZaMTelH6tadsqMevDfFvWpvrhyI1jcsMmKUuY6IhLXf7PAhawDebEAlNmppzFu
         P5TaH0lVc3LEwN602Mza2Om8TbV/IGcerMN5TQNHsDhM64fImDfIN5I33BCiP8YgPAaz
         H3p3z4VB8d/KEhyRK6aPdQujon69jIMLXvEzDeVkspHc7KRCoUtooq5iswArEFFVkd/e
         B/H8bHyFPem5CBEE6EROfRnXuaUWkbiC7nWnPV2zhMr0FZahayup73t8An7pxun77viP
         RxmvL+xhsr+HEJAPjPpH5qhpackacB492qHBvuBvIF9Nerxw2Gg/YYl3v38R0dCnRHvS
         oFXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=vQJL2Luijpx0nVGlvcr5jdqOrtFX1Gurj2p2efq11pw=;
        b=NETF3FaSKqYJyrHCwtdQr34NRc50tFLHS0jRROmXedUMd6rIS7j62Zft4xEchZQxUk
         QxIiXFG6xbVCwM3lCI6r5SoqybhC+2YSztqE2Vx//w7Z/7Q/9bgDPFsgg0MGMVxKnvDv
         8f9hoC+BWrJ2ifHuqvmkUx1k9X3d37JheEME+T1BauwTNPJ+itibiHEiy2EpvNq5/3v0
         reianORho/RFB2uMxJcFiJqq9y3iO8MmGnRPrkcqlDWaUMQKkGl/VI2aWR/ER8PVVb3m
         mMbVbPq79D+9ZeX5ineU/wGSNhw9EBBqk7efWPf5iyVa/gtteS4nWcDd4yq++vtxM+Vo
         41mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9rFB+mY;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f189si176133pfa.1.2017.09.15.14.05.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 14:05:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9rFB+mY;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id j16so1882910pga.2
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 14:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vQJL2Luijpx0nVGlvcr5jdqOrtFX1Gurj2p2efq11pw=;
        b=j9rFB+mYqJ4BDo9jHV/DPQK8pIa3qKW+SqOK4yLhEJ7VPnWk/CTtp2NPEgVCwVHhb4
         hDwePSn9+bY8pjN7bl3A+5uvHlowPGQAhCHNCWsR3eZH8xDCMJ+mmXuCJgl7YFPTDcca
         im37E95x/KFoGh2TyW3Ylesv8QyD+mSao3vn2buweml5y5JHVcOBxemDP9BrbDzQ18Cm
         1X/ov43SjdbnJuB+fDkhMW66/19wIh+elHsxOIpiFPuKF3YHiLs6ZinDOy53QFuKY2Ny
         9kjt7BNNONb6pC7G+pg2J1RlOuTk7MXe4mYNknrxT38qci0uYR8Uy52AfOpxb+ddSn/X
         CtwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=vQJL2Luijpx0nVGlvcr5jdqOrtFX1Gurj2p2efq11pw=;
        b=RXE55nzGCyS+qfQJWXDun5AfBYMHq+0ZM2Aps5RtJsXkqKqk4QawNY1f2FU2lRuuXQ
         AUvQFLNe4JEulGuZK4chaZWvdhh98M+P8kOitqkrG/RT9VoX0og0a3Nm9WGqe7M3yqIf
         Xl5mb8izjt1YBYt25My+GqnezsBGApwYSaLHeQ4wX8pYoLvQ2tQsI0gQ5xHWD6EYGU+j
         Wjw8ECfZY37vevb3vr0T4NRpvDGOY6KEekPW20mXkV3IZSWN5Gb4HIMW37qAld1/Dm4l
         OT64u0ZDFONiNyJyrBTagYMOlmh48i+j3hGC8gg3D8hzKhe2FfxqGiodqa/QcvMGe/iB
         pWug==
X-Gm-Message-State: AHPjjUg1ExsYsFHEQuCFCUp3Ofkj1b1IA82FQ3bDyPhHOWg2fx+plVco
	8cg6n5cWTiywXw==
X-Google-Smtp-Source: ADKCNb7ObT06HNWvkbFwFo/Qzxmezw5lOYBfdwRkZd80vVxIJl27RSfvnOHyDIhNjWN8/cnVAZ5+vA==
X-Received: by 10.84.225.130 with SMTP id u2mr29615785plj.44.1505509553144;
        Fri, 15 Sep 2017 14:05:53 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.202.126])
        by smtp.gmail.com with ESMTPSA id t65sm3774234pfk.59.2017.09.15.14.05.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 14:05:52 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: samuel@sortiz.org
Cc: gregkh@linuxfoundation.org,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 1/2] Staging: irda: Don't use assignment inside if statement
Date: Sat, 16 Sep 2017 02:35:47 +0530
Message-Id: <8e370fcae8a6b2dd476f089ddfe2945ffb1f7490.1505508423.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505508423.git.srishtishar@gmail.com>
References: <cover.1505508423.git.srishtishar@gmail.com>

Write assignment statement outside of the if statement. Done
using the following semantic patch by coccinelle.

@@
identifier E;
expression F;
statement S;
@@

-if((E = F))
+E = F;
+if(E)
    S

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/irda/drivers/irda-usb.c | 4 ++--
 drivers/staging/irda/drivers/mcs7780.c  | 9 ++++++---
 drivers/staging/irda/net/irqueue.c      | 3 ++-
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/irda/drivers/irda-usb.c b/drivers/staging/irda/drivers/irda-usb.c
index 723e49b..82bfc05 100644
--- a/drivers/staging/irda/drivers/irda-usb.c
+++ b/drivers/staging/irda/drivers/irda-usb.c
@@ -334,9 +334,9 @@ static void irda_usb_change_speed_xbofs(struct irda_usb_cb *self)
 	urb->transfer_flags = 0;
 
 	/* Irq disabled -> GFP_ATOMIC */
-	if ((ret = usb_submit_urb(urb, GFP_ATOMIC))) {
+	ret = usb_submit_urb(urb, GFP_ATOMIC);
+	if (ret)
 		net_warn_ratelimited("%s(), failed Speed URB\n", __func__);
-	}
 }
 
 /*------------------------------------------------------------------*/
diff --git a/drivers/staging/irda/drivers/mcs7780.c b/drivers/staging/irda/drivers/mcs7780.c
index c3f0b25..2b674d5 100644
--- a/drivers/staging/irda/drivers/mcs7780.c
+++ b/drivers/staging/irda/drivers/mcs7780.c
@@ -605,19 +605,22 @@ static int mcs_speed_change(struct mcs_cb *mcs)
 	if (mcs->new_speed <= 115200) {
 		rval &= ~MCS_FIR;
 
-		if ((rst = (mcs->speed > 115200)))
+		rst = (mcs->speed > 115200);
+		if (rst)
 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);
 
 	} else if (mcs->new_speed <= 1152000) {
 		rval &= ~MCS_FIR;
 
-		if ((rst = !(mcs->speed == 576000 || mcs->speed == 1152000)))
+		rst = !(mcs->speed == 576000 || mcs->speed == 1152000);
+		if (rst)
 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
 
 	} else {
 		rval |= MCS_FIR;
 
-		if ((rst = (mcs->speed != 4000000)))
+		rst = (mcs->speed != 4000000);
+		if (rst)
 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
 
 	}
diff --git a/drivers/staging/irda/net/irqueue.c b/drivers/staging/irda/net/irqueue.c
index 160dc89..5aab072 100644
--- a/drivers/staging/irda/net/irqueue.c
+++ b/drivers/staging/irda/net/irqueue.c
@@ -217,7 +217,8 @@ static __u32 hash( const char* name)
 
 	while(*name) {
 		h = (h<<4) + *name++;
-		if ((g = (h & 0xf0000000)))
+		g = (h & 0xf0000000);
+		if (g)
 			h ^=g>>24;
 		h &=~g;
 	}
-- 
2.7.4


