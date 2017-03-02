X-GM-THRID: 6392835608825298944
X-Received: by 10.99.164.9 with SMTP id c9mr4649765pgf.4.1488448029295;
        Thu, 02 Mar 2017 01:47:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.79 with SMTP id c76ls1992018itb.21.gmail; Thu, 02 Mar
 2017 01:47:08 -0800 (PST)
X-Received: by 10.99.166.2 with SMTP id t2mr2575076pge.127.1488448028124;
        Thu, 02 Mar 2017 01:47:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id s64si1368640pfk.0.2017.03.02.01.47.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 01:47:08 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so6322655pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 01:47:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kWwe0RKpgU5tji3VEF+5N4BTXMfD/TE40oTXqo20r20=;
        b=adqYisjYan7rI/8hWFNCWzJLSwyu5DYn+0iIy0Bk+EAgqMW1ezr7VWqoLwK+omtuku
         r4DkkpQhDjVkVgTQ2NPqwiSAb2xd+hnRjdEvq7sUcuRoHrQoLShGjSCFrNvfTQ5DkGad
         oJgBJ8V8i39bdupiDUhZQfJExhEkZuMOdb/6HVr3Uu2w4Az62VVdXUOWiuzj/tCLvGju
         YVEAtUF8lzQM7i3+nxzIQDkLOdPYHqF2nVCHA5PQoyc3DnO9qsd9eC9aVizxflrbKE0q
         NPOMIKedMneQiszdtIWOoac/es5AtlZncKTmAFNjKARa5EyPFAyAU2RkhmIqwppOMM5x
         dSMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kWwe0RKpgU5tji3VEF+5N4BTXMfD/TE40oTXqo20r20=;
        b=QWEGAfhtsnOx0CGyDqMAIid/GWIWpN5SgORew9dwmzAFLp8La40DOLMqIGvQX2fs2c
         JZTl7AZaVwyBMQrHOhPyMe9W5GBCQvV8tDOV5LPlIkg3oqbqm082WZKLoNcqnytzmuTB
         +6ddcbvb9XrjvM0N2Gi3JOMWc/m3BpqQWYP+lFTpdPOe/hcoSYKfetOUGHwJJKxjxzEp
         TgOJMxL3B33sIgK3oYxl72zEdGlHDGJR2BUPWZ9fiz56hUZVyklYlx6dv63arE++xgPK
         vto746B0yIT8XZcNAWTGYUz6MzskW6G6PncvAVmuq8ID3OTwl8+T+ozTxSimE6tBp6ne
         ZUeA==
X-Gm-Message-State: AMke39ljrq2GHbbHPB3fyHiNWKonrFUs8j5ppAE5SWtfo/CfcnVXa3kKvu51sxFrqzHB/g==
X-Received: by 10.98.193.69 with SMTP id i66mr14404727pfg.35.1488448027741;
        Thu, 02 Mar 2017 01:47:07 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x16sm15763329pfk.79.2017.03.02.01.47.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 01:47:06 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	sergio.paracuellos@gmail.com,
	juliana.orod@gmail.com,
	thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: wlan-ng: Fix sparse warning of restricted __le16
Date: Thu,  2 Mar 2017 15:19:01 +0530
Message-Id: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes the following sparse warning:
warning: cast to restricted __le16

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 51 ++++++++++++++++++-------------------
 1 file changed, 25 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 984804b..82d3a70 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -372,10 +372,9 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
 			qualmsg->noise.status =
 			    P80211ENUM_msgitem_status_data_ok;
 
-			qualmsg->link.data = le16_to_cpu(hw->qual.cq_curr_bss);
-			qualmsg->level.data =
-				le16_to_cpu(hw->qual.asl_curr_bss);
-			qualmsg->noise.data = le16_to_cpu(hw->qual.anl_curr_fc);
+			qualmsg->link.data = hw->qual.cq_curr_bss;
+			qualmsg->level.data = hw->qual.asl_curr_bss;
+			qualmsg->noise.data = hw->qual.anl_curr_fc;
 			qualmsg->txrate.data = hw->txrate;
 
 			break;
@@ -603,10 +602,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	}
 
 	/* get all the nic id fields in host byte order */
-	hw->ident_nic.id = le16_to_cpu(hw->ident_nic.id);
-	hw->ident_nic.variant = le16_to_cpu(hw->ident_nic.variant);
-	hw->ident_nic.major = le16_to_cpu(hw->ident_nic.major);
-	hw->ident_nic.minor = le16_to_cpu(hw->ident_nic.minor);
+	hw->ident_nic.id = hw->ident_nic.id;
+	hw->ident_nic.variant = hw->ident_nic.variant;
+	hw->ident_nic.major = hw->ident_nic.major;
+	hw->ident_nic.minor = hw->ident_nic.minor;
 
 	netdev_info(wlandev->netdev, "ident: nic h/w: id=0x%02x %d.%d.%d\n",
 		    hw->ident_nic.id, hw->ident_nic.major,
@@ -622,10 +621,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	}
 
 	/* get all the private fw id fields in host byte order */
-	hw->ident_pri_fw.id = le16_to_cpu(hw->ident_pri_fw.id);
-	hw->ident_pri_fw.variant = le16_to_cpu(hw->ident_pri_fw.variant);
-	hw->ident_pri_fw.major = le16_to_cpu(hw->ident_pri_fw.major);
-	hw->ident_pri_fw.minor = le16_to_cpu(hw->ident_pri_fw.minor);
+	hw->ident_pri_fw.id = hw->ident_pri_fw.id;
+	hw->ident_pri_fw.variant = hw->ident_pri_fw.variant;
+	hw->ident_pri_fw.major = hw->ident_pri_fw.major;
+	hw->ident_pri_fw.minor = hw->ident_pri_fw.minor;
 
 	netdev_info(wlandev->netdev, "ident: pri f/w: id=0x%02x %d.%d.%d\n",
 		    hw->ident_pri_fw.id, hw->ident_pri_fw.major,
@@ -648,10 +647,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	}
 
 	/* get all the station fw id fields in host byte order */
-	hw->ident_sta_fw.id = le16_to_cpu(hw->ident_sta_fw.id);
-	hw->ident_sta_fw.variant = le16_to_cpu(hw->ident_sta_fw.variant);
-	hw->ident_sta_fw.major = le16_to_cpu(hw->ident_sta_fw.major);
-	hw->ident_sta_fw.minor = le16_to_cpu(hw->ident_sta_fw.minor);
+	hw->ident_sta_fw.id = hw->ident_sta_fw.id;
+	hw->ident_sta_fw.variant = hw->ident_sta_fw.variant;
+	hw->ident_sta_fw.major = hw->ident_sta_fw.major;
+	hw->ident_sta_fw.minor = hw->ident_sta_fw.minor;
 
 	/* strip out the 'special' variant bits */
 	hw->mm_mods = hw->ident_sta_fw.variant & GENMASK(15, 14);
@@ -683,11 +682,11 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	/* get all the Compatibility range, modem interface supplier
 	 * fields in byte order
 	 */
-	hw->cap_sup_mfi.role = le16_to_cpu(hw->cap_sup_mfi.role);
-	hw->cap_sup_mfi.id = le16_to_cpu(hw->cap_sup_mfi.id);
-	hw->cap_sup_mfi.variant = le16_to_cpu(hw->cap_sup_mfi.variant);
-	hw->cap_sup_mfi.bottom = le16_to_cpu(hw->cap_sup_mfi.bottom);
-	hw->cap_sup_mfi.top = le16_to_cpu(hw->cap_sup_mfi.top);
+	hw->cap_sup_mfi.role = hw->cap_sup_mfi.role;
+	hw->cap_sup_mfi.id = hw->cap_sup_mfi.id;
+	hw->cap_sup_mfi.variant = hw->cap_sup_mfi.variant;
+	hw->cap_sup_mfi.bottom = hw->cap_sup_mfi.bottom;
+	hw->cap_sup_mfi.top = hw->cap_sup_mfi.top;
 
 	netdev_info(wlandev->netdev,
 		    "MFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
@@ -707,11 +706,11 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	/* get all the Compatibility range, controller interface supplier
 	 * fields in byte order
 	 */
-	hw->cap_sup_cfi.role = le16_to_cpu(hw->cap_sup_cfi.role);
-	hw->cap_sup_cfi.id = le16_to_cpu(hw->cap_sup_cfi.id);
-	hw->cap_sup_cfi.variant = le16_to_cpu(hw->cap_sup_cfi.variant);
-	hw->cap_sup_cfi.bottom = le16_to_cpu(hw->cap_sup_cfi.bottom);
-	hw->cap_sup_cfi.top = le16_to_cpu(hw->cap_sup_cfi.top);
+	hw->cap_sup_cfi.role = hw->cap_sup_cfi.role;
+	hw->cap_sup_cfi.id = hw->cap_sup_cfi.id;
+	hw->cap_sup_cfi.variant = hw->cap_sup_cfi.variant;
+	hw->cap_sup_cfi.bottom = hw->cap_sup_cfi.bottom;
+	hw->cap_sup_cfi.top = hw->cap_sup_cfi.top;
 
 	netdev_info(wlandev->netdev,
 		    "CFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-- 
2.7.4


