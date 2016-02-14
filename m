X-GM-THRID: 6251014829496074240
X-Received: by 10.182.120.106 with SMTP id lb10mr10162089obb.24.1455429885478;
        Sat, 13 Feb 2016 22:04:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.7 with SMTP id g7ls2451670qgg.49.gmail; Sat, 13 Feb
 2016 22:04:44 -0800 (PST)
X-Received: by 10.31.160.209 with SMTP id j200mr9942355vke.6.1455429884496;
        Sat, 13 Feb 2016 22:04:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id ui7si2683640pab.0.2016.02.13.22.04.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 22:04:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id q63so69597035pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 22:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dmud9SCitQ8jQUkdTBy0Od6Wqc2lKjU4LO5zxinzBTQ=;
        b=cnASeA/a7cjaYuTOWN8pR9AbtzeBAnqGmY9GfrMixCgETqrONEJJ3UBvaBhnyWm5TB
         JjfZwnqVFyUzDNWNeHgHU4EXsY0Kj/TBMCyc4XuBnNDpZ0vJsfPdpIY7JMgWFGgIXZFY
         WprqcLvYJeJb5IwaUAohFI/CabCnyUjCC32hBPUhEz4cXaopecdNoMNWOTDki8gGlJJ4
         QK+uRwCwmoGcKwAJB3wsYPcCXjxEKgWMCG452nBs+X1tpkxkzlnPO6Cb7OW/D7AYAupa
         x+qt+ubSt9x3Jp+n/R4wH8t7JpiBF9EHcjHCGGbgaLbu3pvHAEbz0jCtFrSuwsine8Mv
         y5DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dmud9SCitQ8jQUkdTBy0Od6Wqc2lKjU4LO5zxinzBTQ=;
        b=OLMg+r8BxlKwy2vksYD1/h1dbkIHQJx6BaVjEZg33tp4dXBoKOC34WGJ59HZldlAvh
         BAvQWfL/JvJWv4vynduLhmQ9EfjokOCQBHLuoQFSc5ycK21yvTXLpc29weq68xFhIjjJ
         oHL/Nz5kHqU/5Iv4bN/SUPdGzqCl3oa3vQOX5zI6QW+EplxDregDSBCUwDUObJ0oWwBg
         FDAbiJ6/XuQl6pi+DYMjoz11FNNJ+1VaOywATM44aPF+zJBuy9fukapyA/1MeVP2JAar
         jbQnxLFDa47jXP3viMXwwJ+XK/nlBrn85xm0diO0wFWWulNzM3GKTvQVztqH5ljV8y8i
         3KYg==
X-Gm-Message-State: AG10YORbfv+0DYStoAkV3Scq6TlyWuXw+Y1Yng8T3AGT4H2We/kz1IOrMxyj6gt92wA2xQ==
X-Received: by 10.98.87.90 with SMTP id l87mr14398470pfb.70.1455429884306;
        Sat, 13 Feb 2016 22:04:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.135.55])
        by smtp.gmail.com with ESMTPSA id fl9sm29688416pab.30.2016.02.13.22.04.40
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 22:04:43 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 11:34:34 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Remove unused macros
Date: Sun, 14 Feb 2016 11:34:23 +0530
Message-Id: <1455429863-13223-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The macros PlatformProcessHCICommands and PlatformTxBTQueuedPackets
are not used anywhere in the kernel so remove them.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
index 33eabf4..1688f66 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
@@ -77,8 +77,6 @@ if ((BTCoexDbgLevel == _bt_dbg_on_)) {\
 
 #define PlatformZeroMemory(ptr, sz)	memset(ptr, 0, sz)
 
-#define PlatformProcessHCICommands(...)
-#define PlatformTxBTQueuedPackets(...)
 #define PlatformIndicateBTACLData(...)	(RT_STATUS_SUCCESS)
 
 #define GET_UNDECORATED_AVERAGE_RSSI(padapter)	\
-- 
1.9.1


