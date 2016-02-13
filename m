X-GM-THRID: 6250871374774009856
X-Received: by 10.107.157.9 with SMTP id g9mr9243608ioe.26.1455394405688;
        Sat, 13 Feb 2016 12:13:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.236.2 with SMTP id uq2ls1129089obc.11.gmail; Sat, 13 Feb
 2016 12:13:24 -0800 (PST)
X-Received: by 10.182.47.132 with SMTP id d4mr8556363obn.40.1455394404386;
        Sat, 13 Feb 2016 12:13:24 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id ui7si2497154pab.0.2016.02.13.12.13.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 12:13:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fl4so52222564pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 12:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=RkABF1C4P6sjyYkQ6xt/qZwqAGp6fnUgRcH+nxWROS8=;
        b=usaqFd2EheSsJtb5qzvivkHtiMdPpRutL0tAJrBoQJOdvhnx/DhU49XimLlhHehPI/
         N+UiUpPAJY0D0NdKwuMDd34EEzdCaWqsdQvs4TD4mt53ArbA1rNb63XjEP32FmrXrsmE
         UqQdLyCHgwu8mJQPsphFc8p0cW87UfhZtbm4cP59jvqa4CYC+bLnpMm1NoUc2bE15I8K
         oVANsVKRVwENLAOCCI0hSCW87izmAXeE9O6bx8tCB594rwLoLJvCu7TCJ/YJPXpoj6q6
         wPJAYVU8y4IzwkTwSeCQfCnOwQ9aMSw4F6k4MExExYcE+SNqxgG7zBq+MrrmPvqfENkh
         20Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=RkABF1C4P6sjyYkQ6xt/qZwqAGp6fnUgRcH+nxWROS8=;
        b=ZBhRkSc3HXmTVgoqOuxROgXIO0pLo7Eg/ZTOJNF1ke7PyqFSpFxKyvHYlN7t2Bz8GG
         8ekcXOXbbRz57vjF9XL3bsmgLM21APbq9Mc4WRjgp0PQhP2d9Ew3vo/zpo/unwVeCuOV
         qQRUkw9JyYIOiY72lyr4NoZJviaUnpirkW1VscOXDhFH2nDzCTgNpaqS9n6T6Uz/ZOfQ
         5kv5eU7/dfUm5ShSAqTHF+fQHsa09yIuSWoijZENkIfDWkzAeXPUuRcR3cx4nDz9BBdV
         gJFATJ3bT/S3dj2sBZebVoA/PEQvXRQvpErcWxsgYKZlcUMhNA7VIohUdfMzC+SfW91h
         LuJQ==
X-Gm-Message-State: AG10YOSj7AvmlwychNOMt2UUaBe2YWP/i/0fIh/XCBM4aw6uByKWEMPdutrCXAg47oO5Xg==
X-Received: by 10.66.144.134 with SMTP id sm6mr6836274pab.158.1455394404075;
        Sat, 13 Feb 2016 12:13:24 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.169.217])
        by smtp.gmail.com with ESMTPSA id k14sm27991899pfj.0.2016.02.13.12.13.19
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 12:13:23 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 01:42:58 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Remove unused macros
Date: Sun, 14 Feb 2016 01:42:56 +0530
Message-Id: <1455394376-2616-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The macros PlatformAcquireSpinLock and PlatformReleaseSpinLock are not
used anywhere so remove them. Used grep to find occurences.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
index d46d1c7..33eabf4 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
@@ -80,8 +80,6 @@ if ((BTCoexDbgLevel == _bt_dbg_on_)) {\
 #define PlatformProcessHCICommands(...)
 #define PlatformTxBTQueuedPackets(...)
 #define PlatformIndicateBTACLData(...)	(RT_STATUS_SUCCESS)
-#define PlatformAcquireSpinLock(padapter, type)
-#define PlatformReleaseSpinLock(padapter, type)
 
 #define GET_UNDECORATED_AVERAGE_RSSI(padapter)	\
 			(GET_HAL_DATA(padapter)->dmpriv.EntryMinUndecoratedSmoothedPWDB)
-- 
1.9.1


