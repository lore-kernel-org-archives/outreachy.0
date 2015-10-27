X-GM-THRID: 6210219531933057024
X-Received: by 10.68.225.193 with SMTP id rm1mr19427662pbc.2.1445929410571;
        Tue, 27 Oct 2015 00:03:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.136 with SMTP id m8ls3393980qge.72.gmail; Tue, 27 Oct
 2015 00:03:30 -0700 (PDT)
X-Received: by 10.31.54.198 with SMTP id d189mr33301118vka.6.1445929409981;
        Tue, 27 Oct 2015 00:03:29 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si3911774pbc.1.2015.10.27.00.03.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 00:03:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fv9so222978766pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 00:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=YgRnbRT3WddaslVLVguBKZOstPflJyVvrmwF7H0wpC0=;
        b=UB6+MNQssQA0gSAshnKTckqiR5zSLxud25STVW7+aLdl98pp2rH3jYweJQAZU1wkUm
         4RbbdbHNPgWdFxaI6RltUZfT46dfvSQNqkQkDeEiVIv353rtGPmQFqajSSVPm14/BtDS
         Rp9G3Rs4M45XlLhUtTHtpPe1uv8rKESlAtIwRZQbvFhXPuNinzFh6ppHdueDSBEqfJ+A
         DdgTjFXC/K+AGcklamnRj0Ti7yDho2MTY3E1X4o7iylEvu8HwpV16tUzD5069DTPzhlM
         GZfP7lCt2d9D2qnRxNFSkAN270C8M3MkgflkdeJ+XoUH5aoAkqF4R5sxBM6WyAOTt1H7
         pl6w==
X-Received: by 10.66.179.236 with SMTP id dj12mr26150426pac.41.1445929409684;
        Tue, 27 Oct 2015 00:03:29 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.184.86])
        by smtp.gmail.com with ESMTPSA id xa4sm37771026pac.28.2015.10.27.00.03.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 00:03:29 -0700 (PDT)
Date: Tue, 27 Oct 2015 12:33:25 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: rtl871x_mp: Remove unused function
Message-ID: <20151027070325.GA5108@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop unused function that is defined but is not called anywhere.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp.c | 6 ------
 drivers/staging/rtl8712/rtl871x_mp.h | 1 -
 2 files changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 8c20aa6..9adb3b0 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -488,12 +488,6 @@ void r8712_SwitchAntenna(struct _adapter *pAdapter)
 	set_bb_reg(pAdapter, rCCK0_AFESetting, bMaskByte3, cck_ant_sel_val);
 }
 
-void r8712_SetCrystalCap(struct _adapter *pAdapter)
-{
-	set_bb_reg(pAdapter, rFPGA0_AnalogParameter1, bXtalCap,
-		   pAdapter->mppriv.curr_crystalcap);
-}
-
 static void TriggerRFThermalMeter(struct _adapter *pAdapter)
 {
 	/* 0x24: RF Reg[6:5] */
diff --git a/drivers/staging/rtl8712/rtl871x_mp.h b/drivers/staging/rtl8712/rtl871x_mp.h
index 75893f2..3f3b2e7 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.h
+++ b/drivers/staging/rtl8712/rtl871x_mp.h
@@ -272,7 +272,6 @@ void r8712_SetTxAGCOffset(struct _adapter *pAdapter, u32 ulTxAGCOffset);
 void r8712_SetDataRate(struct _adapter *pAdapter);
 void r8712_SwitchBandwidth(struct _adapter *pAdapter);
 void r8712_SwitchAntenna(struct _adapter *pAdapter);
-void r8712_SetCrystalCap(struct _adapter *pAdapter);
 void r8712_GetThermalMeter(struct _adapter *pAdapter, u32 *value);
 void r8712_SetContinuousTx(struct _adapter *pAdapter, u8 bStart);
 void r8712_SetSingleCarrierTx(struct _adapter *pAdapter, u8 bStart);
-- 
1.9.1


