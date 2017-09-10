X-GM-THRID: 6464167912849539072
X-Received: by 10.36.92.144 with SMTP id q138mr5167367itb.56.1505064851490;
        Sun, 10 Sep 2017 10:34:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.92.200 with SMTP id q191ls4409901itb.4.gmail; Sun, 10 Sep
 2017 10:34:10 -0700 (PDT)
X-Received: by 10.129.183.31 with SMTP id v31mr6097296ywh.172.1505064850920;
        Sun, 10 Sep 2017 10:34:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505064850; cv=none;
        d=google.com; s=arc-20160816;
        b=JQFNFilY9MEzWYoBGGkeYj9zz5OeBz3ZcDLMWxdmtPXgAl1AHBoH0Z8Vt/1rvQRJSk
         fHrZsFaKQvOgN2NdCNFAPIb1ZKmrKd2ul/TpPAy5iCMLJxF8XVgC1Bs09ljSXUNWRUWA
         W9OnzvH6qDP607BATVxhYhMdr9NphskkW6JZyC+q06wXnS67R8tizaFoGpgYD+LVC9xN
         rbMS85n7XpF5MXLKbZ6LCYcDe02XTVgz3MkliiEyieeG0g6nnSTXvE/fQWbq38yw4FPg
         PTguloOZ9Zf/va013qY4kYXUPiTnyWkDu2pigE93UrJekx3QGiL76cw5q66cLKNHNBcb
         gDsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=YDEMgTylSYtg/QcLYU+CD22LzJ5GC4BuVUyXPdZkCew=;
        b=lAlMvDrfvVIbejGgecUIJlrDMcpE+S7BTivamreUtjQXkgxZJw9uJlJyv4ZCG8njL2
         U/FcSb9uAezsKNYbBBYkRPi0o0hjspoCB0aE2YdBB+lZrpYJuGL+qhdIfGNdEaGWklJ/
         t52qkbQyYK/xaT3m1n/vxaiXXYiUrcSW6JZORAgCFNqilXTEMd3pnX44J3QUQ60WdFrq
         7tsPqMELucNozWfjJ4lHmX9oNOwBIr3SeBqxUclEo3QMJ4zeWirPRgjRiBpbtRQ3l5Q8
         ChvGKM0Z3AS6hwnr8z/7xBgnGKSu2XTuOMA4r4s7DJXFoJ2c3a4kCnEutgJjPzl/nXLI
         zTGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ekflQYvv;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id c19si693439pfk.9.2017.09.10.10.34.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 10:34:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ekflQYvv;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q76so3949252pfq.5
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 10:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YDEMgTylSYtg/QcLYU+CD22LzJ5GC4BuVUyXPdZkCew=;
        b=ekflQYvvny58BO7KM7jn4vnglxWGnpj28VJZt/joP+sNQxti6N5FLFVBUpahrmkXhZ
         BCxo330Q638fZ1m37u8NMVio4o07tVN4UBjybFB1EdAOwXbpup6trC5/mpk2UXU2M4Uo
         f8q+aMrkhRiIZV/vXNbkAYNVRtnFhyq6M3wiDa+miUsHHvzVtB+z/EdWV3vs/lSSSyBz
         j6rIDToKBuTppF1k+CBqvQD9gEpgq1PVoV/RkUK7MnIOPNA4eGAMS6X8cOYtPYl372H6
         veCR9nVUSdkXIezIAbz5u9z2XvrZRZOcCpVR8ZasOMxTGIi/KzatyodheGwfsd1WBvJH
         nWSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=YDEMgTylSYtg/QcLYU+CD22LzJ5GC4BuVUyXPdZkCew=;
        b=fqE1d1IYbgbP7Ljk5RRlcqj36fo4mP03oTwj3wAo6Zq2mFeHAOc1Bns8Kb8rioS6lS
         zJEqJReUwU2T5gaKjE5H/QqAqrnwjVCmOlQWY1m1n9E9nlovlPHc18gRL48WunIsxF4e
         nlS4ik76KTv4h85Le3qrmtrZfbizHuq0+vjggHcWEyXU0nAxmTUbGw6g6guzs5EQcvhK
         Tu9UZIUTOSbujJ0/wQ7AzB3dJqf1MmFJIPSg1zap3ok0C3GZOADAl5Q9FZTZW2fyhezf
         qnZAo6KguRTJtVU4FIWZ9213T7dPYVTb6YhElONYnPaLUzb1Lz7afKrx5ddu6e1Z86AL
         rBXg==
X-Gm-Message-State: AHPjjUi1sPZxyU/USKPhyWJgNIBo4f22tltWoGerb6BuhV5GqApI+RwZ
	6uKcxdOoJCPjGw==
X-Google-Smtp-Source: ADKCNb6FX1+LlSedfZXX1dtv8CpRPTlwpb+We7WVrD8zfgzHmgJPDpskw0beltbS9PJGK0W8H2lqAw==
X-Received: by 10.98.93.85 with SMTP id r82mr9617126pfb.327.1505064850678;
        Sun, 10 Sep 2017 10:34:10 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id q23sm1442277pfk.182.2017.09.10.10.34.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 10:34:10 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 06/10] staging: rtl8723bs: Add space after ','
Date: Sun, 10 Sep 2017 23:02:02 +0530
Message-Id: <f38c5d1ba5518dce605cd9eb5d7adbdee3f7544d.1505052882.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Space required after ','

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index b320df8..ecb01cf 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -45,7 +45,7 @@
 static int rtw_power_mgnt = 1;
 static int rtw_ips_mode = IPS_NORMAL;
 module_param(rtw_ips_mode, int, 0644);
-MODULE_PARM_DESC(rtw_ips_mode,"The default IPS mode");
+MODULE_PARM_DESC(rtw_ips_mode, "The default IPS mode");
 
 static int rtw_smart_ps = 2;
 
@@ -185,7 +185,7 @@
 
 static uint rtw_max_roaming_times = 2;
 module_param(rtw_max_roaming_times, uint, 0644);
-MODULE_PARM_DESC(rtw_max_roaming_times,"The max roaming times to try");
+MODULE_PARM_DESC(rtw_max_roaming_times, "The max roaming times to try");
 
 module_param(rtw_mc2u_disable, int, 0644);
 
@@ -206,10 +206,10 @@
 static int rtw_tx_pwr_by_rate = 0;
 
 module_param(rtw_tx_pwr_lmt_enable, int, 0644);
-MODULE_PARM_DESC(rtw_tx_pwr_lmt_enable,"0:Disable, 1:Enable, 2: Depend on efuse");
+MODULE_PARM_DESC(rtw_tx_pwr_lmt_enable, "0:Disable, 1:Enable, 2: Depend on efuse");
 
 module_param(rtw_tx_pwr_by_rate, int, 0644);
-MODULE_PARM_DESC(rtw_tx_pwr_by_rate,"0:Disable, 1:Enable, 2: Depend on efuse");
+MODULE_PARM_DESC(rtw_tx_pwr_by_rate, "0:Disable, 1:Enable, 2: Depend on efuse");
 
 char *rtw_phy_file_path = "";
 module_param(rtw_phy_file_path, charp, 0644);
@@ -224,10 +224,10 @@
 /*  BIT6 - RF_TXPWR_LMT,		0: non-support, 1: support */
 static int rtw_load_phy_file = (BIT2 | BIT6);
 module_param(rtw_load_phy_file, int, 0644);
-MODULE_PARM_DESC(rtw_load_phy_file,"PHY File Bit Map");
+MODULE_PARM_DESC(rtw_load_phy_file, "PHY File Bit Map");
 static int rtw_decrypt_phy_file = 0;
 module_param(rtw_decrypt_phy_file, int, 0644);
-MODULE_PARM_DESC(rtw_decrypt_phy_file,"Enable Decrypt PHY File");
+MODULE_PARM_DESC(rtw_decrypt_phy_file, "Enable Decrypt PHY File");
 
 int _netdev_open(struct net_device *pnetdev);
 int netdev_open (struct net_device *pnetdev);
-- 
1.9.1


