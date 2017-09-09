X-GM-THRID: 6463794397966237696
X-Received: by 10.202.80.11 with SMTP id e11mr3574662oib.2.1504969410603;
        Sat, 09 Sep 2017 08:03:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.31 with SMTP id k31ls1924183iod.41.gmail; Sat, 09 Sep
 2017 08:03:29 -0700 (PDT)
X-Received: by 10.99.147.17 with SMTP id b17mr3896835pge.170.1504969409702;
        Sat, 09 Sep 2017 08:03:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504969409; cv=none;
        d=google.com; s=arc-20160816;
        b=manmevjWABoI4xtBC/15U/kzK6TAI+PYDl6rq6ZpxjPufaytaSCnKqHiUR2UVa01vc
         ktiLr0TM5cNL+5QqbqoYQbVx+/YSiVOL/2fbMnBk5sPMOHjtO9l0/kSuNHvu7PyCusFW
         YeJBchh8ETfSmzhkM5iZ8VGxOFq1CHTQv/hzjMEGW2QZtvoROPHbHP/YX50RHqLXhh5o
         mMmcLb1Z5vCmw/e2AxWL0+HPUqWNyyLhHSGq7qrFo37zIokeqKU4XxSteYw+Moi5krHB
         4KMtZyzkzZpeF/QXPm+C9s6+448PWYHgBbpMJ5mBBnjeFf1xBZSupbwNrQT7EsIoSHPF
         Lxww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=WmLtIbSr46nQFxEOEAKp15yEfow+vxLQettsZe+SIxY=;
        b=pPUBG/PAyYfJ5iJ9xgyK5cGhKZca4kBnmJ79TlXAPUe0cn+lhMGqK2p/nCJQIiz5kr
         usIBjO5L8OVW0E4ENHCsm87iWAQ87J6Zn4oNM0A/sRMMUuXzE2A9Pqkf0KCJTWuxOddL
         t2nEaW+jnNgSU4GvWbiaMiadWkiqkD+s4InxNsK304q4msw3zRaGu/JCfRZ8bw4TD+Ny
         EzyUkiBjKuIeeu0eoEzwoL4qq7iEPEitsgCqoEtqyaHZq7vBUDQHnRCUJLGX8qVC5s1A
         tnzB44PgWuB3C2lMDVOb59Nl/9xXsxzb3LJl1jQ/qLHmEJeKB4TBOe0JOI35/cr+U46K
         0Gdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jj31eQW6;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id o12si466620pfg.19.2017.09.09.08.03.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 08:03:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jj31eQW6;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id i130so621428pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 08:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WmLtIbSr46nQFxEOEAKp15yEfow+vxLQettsZe+SIxY=;
        b=Jj31eQW6pZMv8GV+pVyY1o/Di5x/gvvIUe40QtKPMDjmBaHbe+BFyQc0cCaVWjD0df
         wCcSibQM+UEmbcE8u+/8r3/4pweejNd0VlbqhK9m5J54GGxClLgFRuiX61HYBBavq1p0
         CirNjDYTNYsjaXjrp4m/ad48vqA9puVIQ3027tHIMOkUhSyNgctOqY7VxbQtESAeTuts
         uozxGm68oPFWYJS6x9Tgj6DdoABVDV7or7WBj6IfwMs6e1eTD9sOIK5c8URXvM54j/ky
         9YvzxB8QlmZU8fxM2fv8kGWuoALgvjN3/SRfFcxwx3Z5oJEeKrbK508yhxmmOaJJwMby
         POnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WmLtIbSr46nQFxEOEAKp15yEfow+vxLQettsZe+SIxY=;
        b=MQCp9HGk3TvSc7K+6/hufAuxgFYyytH9lKjcHWAXuk7fMFKEoDiMwmEY8F0+IJkfBN
         WB3oJiRmTweBTAgZS7CTao8C92Mma0tRXqqBweZIR9TOB2efFMnGi27jCDzKLtvKBj7v
         1J+0qY8UR43d+XiofipwE9DLinpuXKXklVuAZXtprnpNx92qJ/QYHQgVA/Ma5pDpb09W
         TJGfMj8i3DMe1W/zVy86s6rTz2Rd+9KR0JqojTNV2j0CK5B2KWqbRGIlUBshsvkzXQjk
         qjuWZ2O+YKZudEkSJfCGRJp8nv3uahY8oseyQMmomKPkDW++FFenN0K5LOv3u5tfYo4E
         KPhg==
X-Gm-Message-State: AHPjjUie2kdXEUmYZlo+BGEDSsranhsS3FDnVs0w1Q0Qx2yqqo+h3v57
	RwwTf6f5BDr13w==
X-Google-Smtp-Source: ADKCNb6nIIdFGBhYbPdU+MHUiegpTpT/GdZgJpytvIwPpB73kO78E7k+FWbpq05qtLzP8kWRjafkQQ==
X-Received: by 10.98.159.76 with SMTP id g73mr6478897pfe.293.1504969409378;
        Sat, 09 Sep 2017 08:03:29 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id t65sm8403063pfk.59.2017.09.09.08.03.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 08:03:28 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: rtl8723bs: Do not initialise statics to 0
Date: Sat,  9 Sep 2017 20:31:21 +0530
Message-Id: <1504969281-8480-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Static variables are initialised to 0 by gcc

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 48 ++++++++++++++---------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 0215899..1686af0 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -24,9 +24,9 @@
 MODULE_VERSION(DRIVERVERSION);
 
 /* module param defaults */
-static int rtw_chip_version = 0x00;
+static int rtw_chip_version;
 static int rtw_rfintfs = HWPI;
-static int rtw_lbkmode = 0;/* RTL8712_AIR_TRX; */
+static int rtw_lbkmode;/* RTL8712_AIR_TRX; */
 
 
 static int rtw_network_mode = Ndis802_11IBSS;/* Ndis802_11Infrastructure;infra, ad-hoc, auto */
@@ -40,7 +40,7 @@
 static int rtw_preamble = PREAMBLE_LONG;/* long, short, auto */
 static int rtw_scan_mode = 1;/* active, passive */
 static int rtw_adhoc_tx_pwr = 1;
-static int rtw_soft_ap = 0;
+static int rtw_soft_ap;
 /* int smart_ps = 1; */
 static int rtw_power_mgnt = 1;
 static int rtw_ips_mode = IPS_NORMAL;
@@ -61,18 +61,18 @@
 /* int qos_enable = 0; */
 static int rtw_ack_policy = NORMAL_ACK;
 
-static int rtw_software_encrypt = 0;
-static int rtw_software_decrypt = 0;
+static int rtw_software_encrypt;
+static int rtw_software_decrypt;
 
-static int rtw_acm_method = 0;/*  0:By SW 1:By HW. */
+static int rtw_acm_method;/*  0:By SW 1:By HW. */
 
 static int rtw_wmm_enable = 1;/*  default is set to enable the wmm. */
-static int rtw_uapsd_enable = 0;
+static int rtw_uapsd_enable;
 static int rtw_uapsd_max_sp = NO_LIMIT;
-static int rtw_uapsd_acbk_en = 0;
-static int rtw_uapsd_acbe_en = 0;
-static int rtw_uapsd_acvi_en = 0;
-static int rtw_uapsd_acvo_en = 0;
+static int rtw_uapsd_acbk_en;
+static int rtw_uapsd_acbe_en;
+static int rtw_uapsd_acvi_en;
+static int rtw_uapsd_acvo_en;
 
 int rtw_ht_enable = 1;
 /*  0: 20 MHz, 1: 40 MHz, 2: 80 MHz, 3: 160MHz, 4: 80+80MHz */
@@ -81,7 +81,7 @@
 static int rtw_bw_mode = 0x21;
 static int rtw_ampdu_enable = 1;/* for enable tx_ampdu ,0: disable, 0x1:enable (but wifi_spec should be 0), 0x2: force enable (don't care wifi_spec) */
 static int rtw_rx_stbc = 1;/*  0: disable, 1:enable 2.4g */
-static int rtw_ampdu_amsdu = 0;/*  0: disabled, 1:enabled, 2:auto . There is an IOT issu with DLINK DIR-629 when the flag turn on */
+static int rtw_ampdu_amsdu;/*  0: disabled, 1:enabled, 2:auto . There is an IOT issu with DLINK DIR-629 when the flag turn on */
 /*  Short GI support Bit Map */
 /*  BIT0 - 20MHz, 0: non-support, 1: support */
 /*  BIT1 - 40MHz, 0: non-support, 1: support */
@@ -99,8 +99,8 @@
 
 /* int rf_config = RF_1T2R;  1T2R */
 static int rtw_rf_config = RF_MAX_TYPE;  /* auto */
-static int rtw_low_power = 0;
-static int rtw_wifi_spec = 0;
+static int rtw_low_power;
+static int rtw_wifi_spec;
 static int rtw_channel_plan = RT_CHANNEL_DOMAIN_MAX;
 
 static int rtw_btcoex_enable = 1;
@@ -116,29 +116,29 @@
 static int rtw_AcceptAddbaReq = true;/*  0:Reject AP's Add BA req, 1:Accept AP's Add BA req. */
 
 static int rtw_antdiv_cfg = 1; /*  0:OFF , 1:ON, 2:decide by Efuse config */
-static int rtw_antdiv_type = 0 ; /* 0:decide by efuse  1: for 88EE, 1Tx and 1RxCG are diversity.(2 Ant with SPDT), 2:  for 88EE, 1Tx and 2Rx are diversity.(2 Ant, Tx and RxCG are both on aux port, RxCS is on main port), 3: for 88EE, 1Tx and 1RxCG are fixed.(1Ant, Tx and RxCG are both on aux port) */
+static int rtw_antdiv_type; /* 0:decide by efuse  1: for 88EE, 1Tx and 1RxCG are diversity.(2 Ant with SPDT), 2:  for 88EE, 1Tx and 2Rx are diversity.(2 Ant, Tx and RxCG are both on aux port, RxCS is on main port), 3: for 88EE, 1Tx and 1RxCG are fixed.(1Ant, Tx and RxCG are both on aux port) */
 
 
-static int rtw_enusbss = 0;/* 0:disable, 1:enable */
+static int rtw_enusbss;/* 0:disable, 1:enable */
 
 static int rtw_hwpdn_mode =2;/* 0:disable, 1:enable, 2: by EFUSE config */
 
 #ifdef CONFIG_HW_PWRP_DETECTION
 static int rtw_hwpwrp_detect = 1;
 #else
-static int rtw_hwpwrp_detect = 0; /* HW power  ping detect 0:disable , 1:enable */
+static int rtw_hwpwrp_detect; /* HW power  ping detect 0:disable , 1:enable */
 #endif
 
-static int rtw_hw_wps_pbc = 0;
+static int rtw_hw_wps_pbc;
 
 int rtw_mc2u_disable = 0;
 
-static int rtw_80211d = 0;
+static int rtw_80211d;
 
 #ifdef CONFIG_QOS_OPTIMIZATION
 static int rtw_qos_opt_enable = 1;/* 0: disable, 1:enable */
 #else
-static int rtw_qos_opt_enable = 0;/* 0: disable, 1:enable */
+static int rtw_qos_opt_enable;/* 0: disable, 1:enable */
 #endif
 module_param(rtw_qos_opt_enable, int, 0644);
 
@@ -192,7 +192,7 @@
 module_param(rtw_80211d, int, 0644);
 MODULE_PARM_DESC(rtw_80211d, "Enable 802.11d mechanism");
 
-static uint rtw_notch_filter = 0;
+static uint rtw_notch_filter;
 module_param(rtw_notch_filter, uint, 0644);
 MODULE_PARM_DESC(rtw_notch_filter, "0:Disable, 1:Enable, 2:Enable only for P2P");
 
@@ -202,8 +202,8 @@
 module_param(rtw_hiq_filter, uint, 0644);
 MODULE_PARM_DESC(rtw_hiq_filter, "0:allow all, 1:allow special, 2:deny all");
 
-static int rtw_tx_pwr_lmt_enable = 0;
-static int rtw_tx_pwr_by_rate = 0;
+static int rtw_tx_pwr_lmt_enable;
+static int rtw_tx_pwr_by_rate;
 
 module_param(rtw_tx_pwr_lmt_enable, int, 0644);
 MODULE_PARM_DESC(rtw_tx_pwr_lmt_enable,"0:Disable, 1:Enable, 2: Depend on efuse");
@@ -225,7 +225,7 @@
 static int rtw_load_phy_file = (BIT2|BIT6);
 module_param(rtw_load_phy_file, int, 0644);
 MODULE_PARM_DESC(rtw_load_phy_file,"PHY File Bit Map");
-static int rtw_decrypt_phy_file = 0;
+static int rtw_decrypt_phy_file;
 module_param(rtw_decrypt_phy_file, int, 0644);
 MODULE_PARM_DESC(rtw_decrypt_phy_file,"Enable Decrypt PHY File");
 
-- 
1.9.1


