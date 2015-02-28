X-GM-THRID: 5044166459392
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2c1097fb22122cf4,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.189.227 with SMTP id gl3mr2658299lbc.2.1425117080201;
        Sat, 28 Feb 2015 01:51:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.136 with SMTP id o8ls258991lal.74.gmail; Sat, 28 Feb
 2015 01:51:18 -0800 (PST)
X-Received: by 10.112.224.12 with SMTP id qy12mr1563069lbc.10.1425117078487;
        Sat, 28 Feb 2015 01:51:18 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id r6si276686wix.0.2015.02.28.01.51.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 01:51:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widex7 with SMTP id ex7so5105262wid.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 01:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FNGyj2+DSDZzWxLlTm9tYF8QkhGMTqw5F5Vdyx0wBt0=;
        b=T96LKrnToUwB2zM65QDT9NDqdo+E9owNwNh7DDIprfsXR2YzEZyTu8JpZwbq0Ufto6
         YPd6mfTz27jBVFQ+H85nmXbOZ6a+ndUDT8ZeeZ/k2zz2SKOfdwt0e0MTSs779VJDZdw/
         49htHIb9fxRLbtvpkj/mIQG7NnsUHTAKH6kdCsto/DoLAopRVLLOmfEDpoTeNlrLd85t
         OALFVIieN3FY84tCT8OfnIYPyAKgcmPQT5C8d18ZReqRp9oKw3ArzfEefokaaFNXpnnW
         3EMHZu0t7TejlzmK7XE5auVhAGMy93FztqCIs8mRcHhQJKnJpP7wXI6lp7Evjn/dNveI
         HyoQ==
X-Received: by 10.180.77.233 with SMTP id v9mr15414371wiw.28.1425117078413;
        Sat, 28 Feb 2015 01:51:18 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id l6sm9501835wjx.33.2015.02.28.01.51.17
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 01:51:17 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 3/3] Staging: rtl8192u: use __packed instead of __attribute__((packed))
Date: Sat, 28 Feb 2015 10:51:10 +0100
Message-Id: <5715866830cc70cb4eb57869237d8a3955db5e50.1425116974.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425116974.git.ksenija.stanojevic@gmail.com>
References: <cover.1425116974.git.ksenija.stanojevic@gmail.com>

Macro __packed is defined in linux/compiler-gcc.h and is preferred over
__attribute__((packed)). Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
index 094dd2e..0f95fc9 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
@@ -177,7 +177,7 @@ typedef	struct _HT_CAPABILITY_ELE {
 	//Antenna Selection Capabilities
 	u8	ASCap;
 
-} __attribute__ ((packed)) HT_CAPABILITY_ELE, *PHT_CAPABILITY_ELE;
+} __packed HT_CAPABILITY_ELE, *PHT_CAPABILITY_ELE;
 
 //------------------------------------------------------------
 // The HT Information element is present in beacons
@@ -209,7 +209,7 @@ typedef struct _HT_INFORMATION_ELE {
 	u8	Rsvd4:4;
 
 	u8	BasicMSC[16];
-} __attribute__ ((packed)) HT_INFORMATION_ELE, *PHT_INFORMATION_ELE;
+} __packed HT_INFORMATION_ELE, *PHT_INFORMATION_ELE;
 
 //
 // MIMO Power Save control field.
@@ -339,7 +339,7 @@ typedef struct _RT_HIGH_THROUGHPUT {
 	// For IOT issue.
 	u8				IOTPeer;
 	u32				IOTAction;
-} __attribute__ ((packed)) RT_HIGH_THROUGHPUT, *PRT_HIGH_THROUGHPUT;
+} __packed RT_HIGH_THROUGHPUT, *PRT_HIGH_THROUGHPUT;
 
 
 //------------------------------------------------------------
@@ -393,7 +393,7 @@ typedef struct _BSS_HT {
 
 	u8					bdRT2RTAggregation;
 	u8					bdRT2RTLongSlotTime;
-} __attribute__ ((packed)) BSS_HT, *PBSS_HT;
+} __packed BSS_HT, *PBSS_HT;
 
 typedef struct _MIMO_RSSI {
 	u32	EnableAntenna;
-- 
1.9.1


