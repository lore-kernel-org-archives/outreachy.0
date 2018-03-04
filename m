X-GM-THRID: 6529117174550757376
X-Received: by 10.99.1.211 with SMTP id 202mr2410824pgb.53.1520178569577;
        Sun, 04 Mar 2018 07:49:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:3e3:: with SMTP id d90-v6ls5230479pld.7.gmail; Sun,
 04 Mar 2018 07:49:28 -0800 (PST)
X-Google-Smtp-Source: AG47ELsv4YnvpAFb3Y74TAfzrIJRRRgTLwss2G2afp0s78WE2XHBQtuCTawHBWDLMuCncjgwHf/m
X-Received: by 2002:a17:902:bcc3:: with SMTP id o3-v6mr2100135pls.0.1520178568524;
        Sun, 04 Mar 2018 07:49:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520178568; cv=none;
        d=google.com; s=arc-20160816;
        b=lzUmdkfLtZ03dti9t9o3cOR3WniDZwISqvksIDQn1fRX77imlQMXo0bmqxvpUc2b2t
         2+iyF5kNnHWRfSFaocPY2r2JORzb5sYbQb110ckKF0sTFF2Nfeds2/SvttpB6Biy0T0B
         xoFbk3vT1O5Ni4f1DbvAadwfB/0AsE38ZiwwNG5efJtq3WVeRHbSz+Yqt+nwkEfGcH27
         3v4wpxdIrOyRAA73R5aKGtPvoJGojLJNKqTXbGtI+nuw+QmPUPFT4ks/jY33Y0LYmLnP
         QAXJUIDeJ6ppEJ7FK2mLCHRfsFcTydpWZydQSF2jTuZoaLktiWmBARJi0bprS0Z4aeti
         e82w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=8C1OONcXJ8pOFAZK37YJ7mpX0xQ55DZHFoNM1U0uYNM=;
        b=hnpvONqDIWA3yyXnzfrxMYnbDXmOHYW9sgqfaqThTQNyExNdL2kOMaX7ryerz0SbUZ
         qbGoyeZaduXE2aUctmxRoS/PKRWug4wlh2xMsgEVCirJBD56HI+eaIYzCcJVW3CVhMvM
         oM3FuGiEzriZAh4ORw6bE0pQleuV5kOjHMpM55ZXUAN2o4Tev7MjbbTjfxt5egl59owT
         /83CEbxS/ANz76CECwygPoWqAxy2fk+xKNiiZKm52XWy+7nYF5WtATuXBSz/vUqnxTgz
         XKvWYbC6/ikpkPoeXc5eSRgPJ1gV8dx/0HirRoh3nvKSezat+4FNn1v50AvZeIukJd8Y
         n0IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n2Xcv5nL;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id e26si573189pfi.0.2018.03.04.07.49.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 07:49:28 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n2Xcv5nL;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x244.google.com with SMTP id d9-v6so828232plo.8
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 07:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8C1OONcXJ8pOFAZK37YJ7mpX0xQ55DZHFoNM1U0uYNM=;
        b=n2Xcv5nLTgjf/zBDftGNt58Y51s37RETunfWBr5rQtMio99p1pU9liRreDeTI5kXbC
         zLWM5tuQCO8iZ7O82bWyR5xoAHTdYvVZiVC3vRP/OnbhwlkPvE/9QbuDhC2ydkCqVEKx
         JMGaIEMziqiY6bHlsyPixUiMZKyRpzroyjDX67OT6fEpCUFVhFzz+ExGDKhIi+1My0mv
         xpy7DsGoRjRY6A8XZetd2vwu2P10rlw26xJlvrlsNSmr4vl69UTTL37z8cTXaPdr+EKJ
         Oo9/RC6gy9TcgK7Z0Pa5+Pm8q7GXISaFYoruzycr1cc2k/hcegL0GwMwN13P0E0NRuVB
         /zCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8C1OONcXJ8pOFAZK37YJ7mpX0xQ55DZHFoNM1U0uYNM=;
        b=BaPYWCUvOQZVET/lHzMlcdSNLq9eCKbMFWINGEoPfqjtLisvynCmX+MHgsZpKZ34rC
         ct/bAxYAZ7RMRnVo38Fa+4U3B2QDxi7tnqR+yM2Z+lZpVMGq+vUJ22JuR66Mj2aaq+Z7
         A9A165L73upODVjr+2uBHjum+mUqETaXk8iHbbtkWszMi+1XMIzL0Mhw5SEqQS4C+xdt
         BF5UuX9LxA3tDoVZQxF7KDnQRsFxCknzLuYJUux8Mkj94GE5vwcSEMPnG1pFKyZXRC62
         u9QIkEZYUccFiMkAF3KHpbKm4b145PwOpSMJ1LVljBmTzITiJv5krgDGegEX/1ONfJSs
         4x8A==
X-Gm-Message-State: APf1xPBJynF3PX2zTIvdNyazNWXGmL1+3BuQn0NiLAFgUwWBMy+ykSqq
	ke5ZhCW+N1IWN76OLSTOjVo=
X-Received: by 2002:a17:902:710f:: with SMTP id a15-v6mr10278952pll.87.1520178568162;
        Sun, 04 Mar 2018 07:49:28 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id o82sm24847163pfj.163.2018.03.04.07.49.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 07:49:27 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: alan@linux.intel.com
Cc: sakari.ailus@linux.intel.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 3/3] staging: media: Replace "dont" with "don't"
Date: Sun,  4 Mar 2018 21:18:27 +0530
Message-Id: <1520178507-25141-4-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520178507-25141-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520178507-25141-1-git-send-email-arushisinghal19971997@gmail.com>

Replace "dont" with "don't".
"Dont" is not same as "Do not" or "Don't".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/mmu/isp_mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/mmu/isp_mmu.c b/drivers/staging/media/atomisp/pci/atomisp2/mmu/isp_mmu.c
index e36c2a3..f21075c 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/mmu/isp_mmu.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/mmu/isp_mmu.c
@@ -450,7 +450,7 @@ static void mmu_l1_unmap(struct isp_mmu *mmu, phys_addr_t l1_pt,
 			ptr = end;
 		}
 		/*
-		 * use the same L2 page next time, so we dont
+		 * use the same L2 page next time, so we don't
 		 * need to invalidate and free this PT.
 		 */
 		/*      atomisp_set_pte(l1_pt, idx, NULL_PTE); */
-- 
2.7.4


