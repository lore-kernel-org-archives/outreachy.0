X-GM-THRID: 6255174168530124800
X-Received: by 10.129.116.214 with SMTP id p205mr42377466ywc.55.1456396227856;
        Thu, 25 Feb 2016 02:30:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.229 with SMTP id 92ls344767qgp.65.gmail; Thu, 25 Feb
 2016 02:30:27 -0800 (PST)
X-Received: by 10.129.152.130 with SMTP id p124mr16692809ywg.24.1456396227312;
        Thu, 25 Feb 2016 02:30:27 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ui7si1127804pab.0.2016.02.25.02.30.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 02:30:27 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fl4so30128327pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 02:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7KNYdZX5lLfiEqL29lHE8IJtE09cwBSagqMhO2gAYAY=;
        b=CKpYnm8apPRNF38uK92pkF0EgUUeTajC7HZcjQbJzStJPILB6wnzCEDKmiw1IrG3oN
         gHt20tAG8+Vo7+JRR6nkFj9Yo+jL6Q1ePp01es/bBtHWffY8TQycAy4KCShMgvRqmKCE
         bYqkRFPVq4FTyu3tCiBGsE7y22RxCZB8QIrbAhzd4A27wcIGaxy2XTnCSVl6xpSFU9Qk
         9vquOcNvcKec5srISIgCJpyQk59YRFlmMcW17jhecFSPLrjf4+OcgQNUsZKg3N3Fh/Rj
         C2YyyHWxpqsvEFdDew2qgnNokqge3YoK9QHgI0N5fdd5lr+elOs9YLC965wfcZleokn0
         KuYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=7KNYdZX5lLfiEqL29lHE8IJtE09cwBSagqMhO2gAYAY=;
        b=ZAH0e2mRhM3aXgvsYsnpstfZIrCh65qAZG0k+mrOJfVCdW1ocDTYJj6BMbn+4+O2oz
         GKR6ECcfhDeVAZTLPfJm/ahcUUwx6WsS9193bzQd9losPPJeEhpt5yF9aF8kYzTGTMYx
         vqWhSCq2U56X0aUBLNVHTyXeypeuWc91vE5EKFa3PZRmH0+qMe4gcW0C4Vhf+tjd75jd
         CzDqMnNhIPDhTBX3JiT4NlkZYhEmr/5wd88SmebWW7w0VSJzspaJh5bt/RVra0YivwEp
         WtX06NNCwlvwLQ+FVb9U4lVBHUxFkgxwmNKod8yr+EuZUhJWeqU0dFALyUE3L7W6h0Up
         v4bg==
X-Gm-Message-State: AG10YOTgyu308zDLaOXspohDd7EiBDAjyT5w9wBaxiBSEevIsPA/Pd8DrDI22SE9oShWUw==
X-Received: by 10.66.145.232 with SMTP id sx8mr62066728pab.148.1456396227153;
        Thu, 25 Feb 2016 02:30:27 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l24sm11178341pfb.73.2016.02.25.02.30.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 02:30:26 -0800 (PST)
Date: Thu, 25 Feb 2016 16:00:07 +0530
From: "pooja.shamili" <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: gdm72x: Adding spaces before and after '*'
Message-ID: <20160225103007.GA702@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch.pl error: Spaces preferred around the
'*'

Signed-off-by: pooja.shamili <poojashamili@gmail.com>
---
 drivers/staging/gdm724x/gdm_mux.h | 4 ++--
 drivers/staging/gdm724x/gdm_usb.h | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.h b/drivers/staging/gdm724x/gdm_mux.h
index 3d50383..0871b8f 100644
--- a/drivers/staging/gdm724x/gdm_mux.h
+++ b/drivers/staging/gdm724x/gdm_mux.h
@@ -27,8 +27,8 @@
 
 #define START_FLAG 0xA512485A
 #define MUX_HEADER_SIZE 14
-#define MUX_TX_MAX_SIZE (1024*10)
-#define MUX_RX_MAX_SIZE (1024*30)
+#define MUX_TX_MAX_SIZE (1024 * 10)
+#define MUX_RX_MAX_SIZE (1024 * 30)
 #define AT_PKT_TYPE 0xF011
 #define DM_PKT_TYPE 0xF010
 
diff --git a/drivers/staging/gdm724x/gdm_usb.h b/drivers/staging/gdm724x/gdm_usb.h
index e6486e7..ffb3d99 100644
--- a/drivers/staging/gdm724x/gdm_usb.h
+++ b/drivers/staging/gdm724x/gdm_usb.h
@@ -26,10 +26,10 @@
 #define PM_SUSPEND 1
 #define AUTO_SUSPEND_TIMER 5000 /* ms */
 
-#define RX_BUF_SIZE		(1024*32)
-#define TX_BUF_SIZE		(1024*32)
+#define RX_BUF_SIZE		(1024 * 32)
+#define TX_BUF_SIZE		(1024 * 32)
 #define SDU_BUF_SIZE	2048
-#define MAX_SDU_SIZE	(1024*30)
+#define MAX_SDU_SIZE	(1024 * 30)
 #define MAX_PACKET_IN_MULTI_SDU	256
 
 #define VID_GCT			0x1076
-- 
2.1.4


