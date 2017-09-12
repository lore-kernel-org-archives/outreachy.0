X-GM-THRID: 6464167912849539072
X-Received: by 10.84.134.35 with SMTP id 32mr4511552plg.35.1505223448725;
        Tue, 12 Sep 2017 06:37:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.210 with SMTP id f201ls1068357ioe.5.gmail; Tue, 12 Sep
 2017 06:37:27 -0700 (PDT)
X-Received: by 10.107.7.196 with SMTP id g65mr5818817ioi.137.1505223447836;
        Tue, 12 Sep 2017 06:37:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505223447; cv=none;
        d=google.com; s=arc-20160816;
        b=iuFJv648mXXTDsrd8/YK+SJ9mqfjPDfrshYIXgoAwiI/6u64mG8LIfxZbzZkBxUgsI
         8LFMYgfPSDpHa+3uAllF3OQjzrsuz4E5RCQEMQcOA+iR+FClCpoHZMfb0BbxWQQAEUNt
         3TDiRZQTyEWD19PqXXXCBzIxTk6J2GVhh1uy+o3YGdVqaglTfmQOs25aLUl0PGtqYtAh
         fEG7G19EUg0aFZK9fjpW11GejQKk5fLUPlbMlqd5j4JKe6Ogt2R+YsZLpxbKk8Effl6h
         1WmuJnsd2faVyE9ExRg27SuM7WejprunATnKWIOjc1ZY2N3ei//abXv6gHN92OsZQJnz
         QWmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=n14+MCOLI3sg2VMUft7FJRoHH15yPLXvM0hICa/dGCU=;
        b=EzeFx52ipHpm+6UVdG/zZ/ncy4XOu1a34FDYYELNryVHVxLO2h+YKjk+L3MMv/QMhB
         WEtqdDfiNv7Ha5u9hvquySg0ZjPjYS2w1Pw5icTX/asXcnh+HfSvaGZ4Skz51pKcp+GJ
         sCkC+2aDW8AxpGu/lnKt9iAmfb2N2UMKYqvFzlJJZh2O8IvoCHFmIQ9/TkQtKAWcPI9R
         QlcgTCPaHvu5kK9UdibXR3HlZssBKu+y1qiW+Wy4jOl73rVlIN+VqebgyglvS0l9ftEa
         xjF80S/8CGeklts9cDLvDEIseu8l2EFZ0OsuI5WuVX4iPjziLfnzvczsD8bI/YcInGYV
         XTug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pg2+uVsn;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y18si414386pfj.18.2017.09.12.06.37.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 06:37:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pg2+uVsn;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v5so6163801pgn.4
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 06:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=n14+MCOLI3sg2VMUft7FJRoHH15yPLXvM0hICa/dGCU=;
        b=pg2+uVsnAhWIiD+8wdIGWwr6ky7PuybxnQuLyD2VXZFG1WbxfgxcIF5W5wdsy7nfdm
         89A2K4hwTxq1mFHopCUBp1A/aOAPXA3rD080sbPFk6yxDgR5R1oRY3HEddWkeDpB3h8o
         HGg5Xqc4GGxglVndp6w2mK+yGaxsdm13H/QzgWMCDg92PGiayaLaP0q9qf381IbeMbep
         WrFYS+/MluDDWh564gpfNnSluwN+222+mnf8fRBlC8dgsJaBW78i3yIztEtiqJuN+lC7
         7MGeDdq3YLYphlTG5lYoAWO3lSkBxrUJ8G70q9wHy5Yju2sUfMdNAiuD0hYhxvKpdJjm
         X4zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=n14+MCOLI3sg2VMUft7FJRoHH15yPLXvM0hICa/dGCU=;
        b=KKTW8OQNdTrdoXfsSeYuq+xVUkjRxyuXGO0hzFvmgkFe8zqBxTmBkNEqYQF8lZrWut
         t94jc2UcHE7HJYBrjC/tdbPYXq/JPLXopJHDixyhy46/Yfl6tvljxsQipr9EtxSVyFz+
         f6rPWAflCPuq1B3NSVGjELbpHLEeJlk8Yn58EUxOilvLvgAM4F9qU+OjXv2PJGna5I2l
         K1XQPOCdaSOxQj7XKlt7GRoV37FsJZv6fzEd0azzcY4K+Uk3pNwaq1HOMSShBE7kBd/C
         t3QvqGRNYVNMeMPBs7zXUThunH4sAII6F8SGmTbhbb5b2ynIlvmEBbjwZsOAxNFXAbPp
         Ug4w==
X-Gm-Message-State: AHPjjUiMqEBI/wqUERQC+SgqYp4GWLldV0t1nnPuNUW+MKkheMgCElIu
	KD6rYWe/7qe6VDX4
X-Google-Smtp-Source: ADKCNb7j+0TEqAkjpQxASkDs3U+ar+eVhkapiGmaOkqHFM7XN/7jlrRtkO1YLT1xsFIIKiWVW1zGMw==
X-Received: by 10.84.238.139 with SMTP id v11mr17048790plk.344.1505223447607;
        Tue, 12 Sep 2017 06:37:27 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id e76sm1980131pfd.149.2017.09.12.06.37.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 12 Sep 2017 06:37:27 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2 06/10] staging: rtl8723bs: Add space after ','
Date: Tue, 12 Sep 2017 19:05:23 +0530
Message-Id: <1505223323-4038-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Space required after ','

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v2:
 -Rebase against staging-testing and solve merge conflicts

 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index b3635e2..22b9e1e 100644
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
 static int rtw_tx_pwr_by_rate;
 
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
 static int rtw_decrypt_phy_file;
 module_param(rtw_decrypt_phy_file, int, 0644);
-MODULE_PARM_DESC(rtw_decrypt_phy_file,"Enable Decrypt PHY File");
+MODULE_PARM_DESC(rtw_decrypt_phy_file, "Enable Decrypt PHY File");
 
 int _netdev_open(struct net_device *pnetdev);
 int netdev_open (struct net_device *pnetdev);
-- 
1.9.1


