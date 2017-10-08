X-GM-THRID: 6464167912849539072
X-Received: by 10.84.240.201 with SMTP id l9mr359845plt.16.1507469720739;
        Sun, 08 Oct 2017 06:35:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.117.77 with SMTP id f13ls657430pgn.17.gmail; Sun, 08 Oct
 2017 06:35:19 -0700 (PDT)
X-Received: by 10.159.197.75 with SMTP id d11mr335892plo.56.1507469719580;
        Sun, 08 Oct 2017 06:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507469719; cv=none;
        d=google.com; s=arc-20160816;
        b=z7sEUTBH239mzLwe7NNgNz/eMH5DS/BnCIS8O1PxwPKoXVcF729LalAQtve4NL1Bhe
         iS9l+hIvb0I14YaCB5I1Ln7a2WBw7UWRGJQ5Vn1ElR6YI+ryLz911Z9A0f8RZVThAAQ4
         B05SBqGDFuy1lBCZ6oQkX4u548e+Jf4Zkkc3De0Y6U1UzgLhSHx7Z19o/Nv4bTedjPWO
         OGaYuwuRx+7pAAdczgV+bN161xgApW+cEGl7UFlTrQ2WTZJBuAbp8gc1fecSUvnxzfo8
         1Or3ls+ksGvT+08B1lOZbw0SXfASlKafT53AKU53Wnh9WrU2XI9XSFx/MCU6ht1xglfO
         zCuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=QCZNXzJ1CcPcGHF07qLOgW4WCD0Yyr6jme2Ly3CDzSM=;
        b=fwgUTsI0/eWU7ptpYRNFV3IYjuYAAhGIW1ypo/xcV5Ha9ZeIZXuf3a+XZd1VjF4tDx
         rkgmni0mFoNKx0oEqnZPcildWREffxieHAuld9252Iuk+u5RosTanEA/varg5QyhH+mb
         CxNGToTU4plumRUcpB3Rq251efsKT72lEhvOh3/eFpFTTaw8MjLcIaydEVTS74x27kQx
         5EmCK/e9F59CohIBtenbc8a6viLIMVE8wZWuLZ2Pi6xwt6C96XgkGRUpmBp+YaWiWXln
         oVFOxML9F761Wj5flurlWcnhAUuuNXx68gmiXY8GJeE73cKRmjDIMNhKWZLP2zGz0Eny
         /LXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D6O4GHaG;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id w124si604213pfd.18.2017.10.08.06.35.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 06:35:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D6O4GHaG;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b11so14815398pgn.0
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 06:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QCZNXzJ1CcPcGHF07qLOgW4WCD0Yyr6jme2Ly3CDzSM=;
        b=D6O4GHaGjLiyJSMkimlJfI77H6TCC3ARcYpEv4bW7E8EhPfg70feL4e8GbHXySgl36
         JNLfPOrq0Q1uOuAh+n/RcdGnAunfxRI9PZfubz79iuB3zL60wbgFurxynwTffoSh7c+w
         UDwNpEQYie3VHAWKbsRHa60BtFRK7MRHzbdmEI9d5l+odhqS1MzETIwRev4gAkoBcWqk
         FLpcGBz+kE3WY+HE8CYkZ20gZiib9O9o05fVlaKUcFmlnhfYeCQyZlmJMolaoxAAiEvD
         3dxBeFchzW6I0kR4L9snONu+sAHnjy9ttbL3RdxZMG5ISjq/pGSToSxW+z7EHQF4uguu
         Ei4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QCZNXzJ1CcPcGHF07qLOgW4WCD0Yyr6jme2Ly3CDzSM=;
        b=th2C/yyP6QF7XZ2e6+r/h7dKxykDdxv1tdv26fR3VtRnPbmcXjGfvR4qdxgFo5aa23
         OTcctCSgy4JMwMvMC153ixS6VA0o8Ur8sXloQ1dtoEm+b4EuhrNwGyZstP3thzfjfaKr
         dwRa/Kd86li+Ktv37UJNEkAKruV7TToHYcQvjsICpkOk+Pd5WZyJlxwZgdYdhAdNVhwU
         u/318SSjYK6AFgWkPbjjUG6Qun2J0d9tdTKVCEPXrMPQHJB/0zhE0ALjBQwGbeyP4WQA
         dJJmG5tBrpPNcK1YKZ0bagiIrYcgV8IXn1aIOfbjQYz9yIQ6t++WC+2P3sk5AUlONf/y
         wuhw==
X-Gm-Message-State: AMCzsaW69/ouI8gv6sN52OqA3LzK3DBKE1BNxi6epEvhFiPap6S7KEV9
	Y1GOYiJdOcNKl4ZajXraby9QYwcE
X-Google-Smtp-Source: AOwi7QC1lfPKIogOim4Ytukba2Bk9FeLgZQSWyJH0YI96jV+ldJlIu8Ih8y2YSWLh//rm+dhfLEhHQ==
X-Received: by 10.99.163.97 with SMTP id v33mr6757698pgn.206.1507469719331;
        Sun, 08 Oct 2017 06:35:19 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id m67sm11371890pfc.38.2017.10.08.06.35.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 06:35:18 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v3 06/10] staging: rtl8723bs: Add space after ','
Date: Sun,  8 Oct 2017 19:03:06 +0530
Message-Id: <20171008133306.6138-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Space is required after ',' according to linux-kernel coding style.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Other patches from this patchset have already been merged and only
this one is remaining.
Changes in v3:
 -Change log message and rebase against staging-testing
Changes in v2:
 -Rebase against staging-testing and solve merge conflicts

 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 51df42de9167..33e8098c34dd 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -45,7 +45,7 @@ static int rtw_soft_ap;
 static int rtw_power_mgnt = 1;
 static int rtw_ips_mode = IPS_NORMAL;
 module_param(rtw_ips_mode, int, 0644);
-MODULE_PARM_DESC(rtw_ips_mode,"The default IPS mode");
+MODULE_PARM_DESC(rtw_ips_mode, "The default IPS mode");
 
 static int rtw_smart_ps = 2;
 
@@ -185,7 +185,7 @@ module_param(rtw_hw_wps_pbc, int, 0644);
 
 static uint rtw_max_roaming_times = 2;
 module_param(rtw_max_roaming_times, uint, 0644);
-MODULE_PARM_DESC(rtw_max_roaming_times,"The max roaming times to try");
+MODULE_PARM_DESC(rtw_max_roaming_times, "The max roaming times to try");
 
 module_param(rtw_mc2u_disable, int, 0644);
 
@@ -206,10 +206,10 @@ static int rtw_tx_pwr_lmt_enable;
 static int rtw_tx_pwr_by_rate;
 
 module_param(rtw_tx_pwr_lmt_enable, int, 0644);
-MODULE_PARM_DESC(rtw_tx_pwr_lmt_enable,"0:Disable, 1:Enable, 2: Depend on efuse");
+MODULE_PARM_DESC(rtw_tx_pwr_lmt_enable, "0:Disable, 1:Enable, 2: Depend on efuse");
 
 module_param(rtw_tx_pwr_by_rate, int, 0644);
-MODULE_PARM_DESC(rtw_tx_pwr_by_rate,"0:Disable, 1:Enable, 2: Depend on efuse");
+MODULE_PARM_DESC(rtw_tx_pwr_by_rate, "0:Disable, 1:Enable, 2: Depend on efuse");
 
 char *rtw_phy_file_path = "";
 module_param(rtw_phy_file_path, charp, 0644);
@@ -224,10 +224,10 @@ MODULE_PARM_DESC(rtw_phy_file_path, "The path of phy parameter");
 /*  BIT6 - RF_TXPWR_LMT,		0: non-support, 1: support */
 static int rtw_load_phy_file = (BIT2 | BIT6);
 module_param(rtw_load_phy_file, int, 0644);
-MODULE_PARM_DESC(rtw_load_phy_file,"PHY File Bit Map");
+MODULE_PARM_DESC(rtw_load_phy_file, "PHY File Bit Map");
 static int rtw_decrypt_phy_file;
 module_param(rtw_decrypt_phy_file, int, 0644);
-MODULE_PARM_DESC(rtw_decrypt_phy_file,"Enable Decrypt PHY File");
+MODULE_PARM_DESC(rtw_decrypt_phy_file, "Enable Decrypt PHY File");
 
 int _netdev_open(struct net_device *pnetdev);
 int netdev_open (struct net_device *pnetdev);
-- 
2.11.0


