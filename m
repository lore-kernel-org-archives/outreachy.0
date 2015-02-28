X-GM-THRID: 5141876965376
X-Received: by 10.180.8.67 with SMTP id p3mr1218013wia.7.1425149226782;
        Sat, 28 Feb 2015 10:47:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.197.2 with SMTP id iq2ls287263lac.100.gmail; Sat, 28 Feb
 2015 10:47:05 -0800 (PST)
X-Received: by 10.112.16.102 with SMTP id f6mr273206lbd.19.1425149225063;
        Sat, 28 Feb 2015 10:47:05 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id cl5si345207wib.3.2015.02.28.10.47.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 10:47:05 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id l18so26133970wgh.7
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 10:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XYDivm8xovqR/DLQBy+izPgmH2dgvFExQIDJ6fXAAAA=;
        b=byJqzw7zs42QvkUO9dzc1cwYtn0Z+flxlZnlysSPNsTYeYIXm5vVPUQM9LgR+uZokq
         PJ4FGqheuESzrNexVFQuxeEgCkBrBvnJ25aqT0meEXY/Sz77V9KtosM0gUsyfyEQoKdx
         2LEhbBdcOkouGVXxk8t/MmENGah/zZwfLgMoROACPYfJdspTYi4X/lJ3JtwVl1HkvqLn
         VS46zoVJgJZ34yZj5+tzlEE0VJn7V+qmUdXqtlPY/OlP8u3e7Hb1getMgFRy2nQHGRBi
         PFJbXi6xuddFDphDA20bdRjwnPhftnnIptgnNhLOuZnwn+rged8EQINEga3RzO3GCVPq
         lRqA==
X-Received: by 10.180.85.39 with SMTP id e7mr18739576wiz.90.1425149224940;
        Sat, 28 Feb 2015 10:47:04 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id e18sm11239108wjz.27.2015.02.28.10.47.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 10:47:04 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/3] Staging: rtl8192e: Use ether_addr_copy() instead of memcpy()
Date: Sat, 28 Feb 2015 19:46:57 +0100
Message-Id: <dd7d96168394f44fa9196d10d6c19b967257fbec.1425147647.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425147647.git.ksenija.stanojevic@gmail.com>
References: <cover.1425147647.git.ksenija.stanojevic@gmail.com>

This patch replaces memcpy with ether_addr_copy. 
Also pathole was used to make sure that arguments passed to ether_addr_copy
are aligned to u16.
First argument is iwe.u.ap_addr.sa_data i output of pahole is:
struct iw_event {
	__u16                      len;                  /*     0     2 */
	__u16                      cmd;                  /*     2     2 */

	/* XXX 4 bytes hole, try to pack */

	union iwreq_data           u;                    /*     8    16 */

	/* size: 24, cachelines: 1, members: 3 */
	/* sum members: 20, holes: 1, sum holes: 4 */
	/* last cacheline: 24 bytes */
};
and inside union iwreq_data u is sa_data:
struct sockaddr {
/* typedef sa_family_t -> __kernel_sa_family_t */ short unsigned int sa_family; /*     8     2 */
char       sa_data[14];                                          /*    10    14 */
} ap_addr; /*          16 */

sa_data is a char array of size 14, and the number of bytes copied using 
ether_addr_copy() is 6. 

Second argument is network->bssid and output of pahole is: 
struct rtllib_network {
	u8                         bssid[6];             /*     0     6 */
	u8                         channel;              /*     6     1 */
	u8                         ssid[33];             /*     7    33 */
	u8                         ssid_len;             /*    40     1 */
	u8                         hidden_ssid[33];      /*    41    33 */
	/* --- cacheline 1 boundary (64 bytes) was 10 bytes ago --- */
	u8                         hidden_ssid_len;      /*    74     1 */

	/* XXX 1 byte hole, try to pack */

	struct rtllib_qos_data     qos_data;             /*    76    48 */
	bool                       bWithAironetIE;       /*   124     1 */
	bool                       bCkipSupported;       /*   125     1 */
	bool                       bCcxRmEnable;         /*   126     1 */

	/* XXX 1 byte hole, try to pack */

	/* --- cacheline 2 boundary (128 bytes) --- */
	u16                        CcxRmState[2];        /*   128     4 */
	bool                       bMBssidValid;         /*   132     1 */
	u8                         MBssidMask;           /*   133     1 */
	u8                         MBssid[6];            /*   134     6 */
	bool                       bWithCcxVerNum;       /*   140     1 */
	u8                         BssCcxVerNumber;      /*   141     1 */

	/* XXX 2 bytes hole, try to pack */

	struct rtllib_rx_stats     stats;                /*   144   120 */
	/* --- cacheline 4 boundary (256 bytes) was 8 bytes ago --- */
	u16                        capability;           /*   264     2 */
	u8                         rates[12];            /*   266    12 */
	u8                         rates_len;            /*   278     1 */
	u8                         rates_ex[16];         /*   279    16 */
	u8                         rates_ex_len;         /*   295     1 */
	long unsigned int          last_scanned;         /*   296     8 */
	u8                         mode;                 /*   304     1 */

	/* XXX 3 bytes hole, try to pack */

	u32                        flags;                /*   308     4 */
	u32                        last_associate;       /*   312     4 */
	u32                        time_stamp[2];        /*   316     8 */
	/* --- cacheline 5 boundary (320 bytes) was 4 bytes ago --- */
	u16                        beacon_interval;      /*   324     2 */
	u16                        listen_interval;      /*   326     2 */
	u16                        atim_window;          /*   328     2 */
	u8                         erp_value;            /*   330     1 */
	u8                         wpa_ie[64];           /*   331    64 */

	/* XXX 5 bytes hole, try to pack */

	/* --- cacheline 6 boundary (384 bytes) was 16 bytes ago --- */
	size_t                     wpa_ie_len;           /*   400     8 */
	u8                         rsn_ie[64];           /*   408    64 */
	/* --- cacheline 7 boundary (448 bytes) was 24 bytes ago --- */
	size_t                     rsn_ie_len;           /*   472     8 */
	u8                         wzc_ie[256];          /*   480   256 */
	/* --- cacheline 11 boundary (704 bytes) was 32 bytes ago --- */
	size_t                     wzc_ie_len;           /*   736     8 */
	struct rtllib_tim_parameters tim;                /*   744     2 */
	u8                         dtim_period;          /*   746     1 */
	u8                         dtim_data;            /*   747     1 */

	/* XXX 4 bytes hole, try to pack */

	u64                        last_dtim_sta_time;   /*   752     8 */
	u8                         wmm_info;             /*   760     1 */

	/* XXX 1 byte hole, try to pack */

	struct rtllib_wmm_ac_param wmm_param[4];         /*   762    16 */
	/* --- cacheline 12 boundary (768 bytes) was 10 bytes ago --- */
	u8                         Turbo_Enable;         /*   778     1 */

	/* XXX 1 byte hole, try to pack */

	u16                        CountryIeLen;         /*   780     2 */
	u8                         CountryIeBuf[255];    /*   782   255 */

	/* XXX 3 bytes hole, try to pack */

	/* --- cacheline 16 boundary (1024 bytes) was 16 bytes ago --- */
	struct bss_ht              bssht;                /*  1040    84 */
	/* --- cacheline 17 boundary (1088 bytes) was 36 bytes ago --- */
	bool                       broadcom_cap_exist;   /*  1124     1 */
	bool                       realtek_cap_exit;     /*  1125     1 */
	bool                       marvell_cap_exist;    /*  1126     1 */
	bool                       ralink_cap_exist;     /*  1127     1 */
	bool                       atheros_cap_exist;    /*  1128     1 */
	bool                       cisco_cap_exist;      /*  1129     1 */
	bool                       airgo_cap_exist;      /*  1130     1 */
	bool                       unknown_cap_exist;    /*  1131     1 */
	bool                       berp_info_valid;      /*  1132     1 */
	bool                       buseprotection;       /*  1133     1 */
	bool                       bIsNetgear854T;       /*  1134     1 */
	u8                         SignalStrength;       /*  1135     1 */
	u8                         RSSI;                 /*  1136     1 */

	/* XXX 7 bytes hole, try to pack */

	struct list_head           list;                 /*  1144    16 */
	/* --- cacheline 18 boundary (1152 bytes) was 8 bytes ago --- */

	/* size: 1160, cachelines: 19, members: 61 */
	/* sum members: 1132, holes: 10, sum holes: 28 */
	/* last cacheline: 8 bytes */
};

network->bssid is char array of size 6.

Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_wx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index 02faaf3..d5f4bcb 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -32,7 +32,7 @@
 #include <linux/wireless.h>
 #include <linux/kmod.h>
 #include <linux/module.h>
-
+#include <linux/etherdevice.h>
 #include "rtllib.h"
 struct modes_unit {
 	char *mode_string;
@@ -65,7 +65,7 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 	/* First entry *MUST* be the AP MAC address */
 	iwe.cmd = SIOCGIWAP;
 	iwe.u.ap_addr.sa_family = ARPHRD_ETHER;
-	memcpy(iwe.u.ap_addr.sa_data, network->bssid, ETH_ALEN);
+	ether_addr_copy(iwe.u.ap_addr.sa_data, network->bssid);
 	start = iwe_stream_add_event_rsl(info, start, stop,
 					 &iwe, IW_EV_ADDR_LEN);
 	/* Remaining entries will be displayed in the order we provide them */
-- 
1.9.1


