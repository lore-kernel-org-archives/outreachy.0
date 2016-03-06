X-GM-THRID: 6255259573485043712
X-Received: by 10.50.97.105 with SMTP id dz9mr5836991igb.8.1457255371212;
        Sun, 06 Mar 2016 01:09:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.99 with SMTP id n90ls1243556qge.4.gmail; Sun, 06 Mar
 2016 01:09:30 -0800 (PST)
X-Received: by 10.13.232.201 with SMTP id r192mr516476ywe.52.1457255370542;
        Sun, 06 Mar 2016 01:09:30 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si2298588pfb.1.2016.03.06.01.09.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 01:09:30 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id q6so1612714pav.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 01:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VcP3Dam57dkXJAG1xp2XVaY8dC11HBDfKC1gs8Oa88k=;
        b=ZDOrubK2Ofev0mX3WMEfFMXSo3LuBH/yV+SkP0ZwANygN4L/vDCFc61Q0/CWo8A0Yq
         O026N9FIz7Uofu3yTjdYjefYcqwld5MR8I2+Ah5JgofiYckXEkqBXG7QIi0ZadZImNS4
         I1LHG8G/X/0FcX0XkQkicx28ncBg93WAkViIm+hEmAzJVjYnSsEZBjXapnR7XQVagQFf
         +tM8s3y4hWYX4e+iXVT0ezQxhQBF6436N0LWPDJCJAPxO98/0CjLMm7mQlui+ZP1E2cH
         NBd3UCnsu3d2LtfKfSx+wn1qEJt7bsMNrcGZlPZ90UrjY5o8Ic+K7fmDlGqLpdbyGxFj
         egVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VcP3Dam57dkXJAG1xp2XVaY8dC11HBDfKC1gs8Oa88k=;
        b=Sqy/wSAFkdkGUulwjBU1FRoGOs2ulgXXvvl5n+Ag7U4jM0oquE/8yg6PLcReAgw6Wf
         HOUFv4gGaUuanYkQFAtzuFo8R6uItle3bguhIlJATdDKl2Uc3QjNoo3I0NFKBm7dc/lU
         b+pV+TeyJfBTvb5HznmV6pewYDmZxGXkSpb8ud2Li/iRFdsmqV9BSwembTf5q8HK9C83
         I8574xb6GApzE1ucKf6CRMvvdK8Xmc8Xj0B/Ed/CF4/0L1gWKv/gGXubQ+kCf5SFJCFB
         2rAR+GeWvsiPFSFf94CqDKpAAIB9W+qNTgeYMPTTeDZS7D0SBpRNr9e7I2PKFi2blMFm
         eJ9g==
X-Gm-Message-State: AD7BkJK4XIMowvfAWuNhDwn/nmfJFhHpwwHJfanNEuklGqo0jmOlO8eidk8kmnylD69eNQ==
X-Received: by 10.66.222.129 with SMTP id qm1mr24842259pac.22.1457255370385;
        Sun, 06 Mar 2016 01:09:30 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([103.224.159.11])
        by smtp.gmail.com with ESMTPSA id xu1sm16724934pab.31.2016.03.06.01.09.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 01:09:29 -0800 (PST)
Date: Sun, 6 Mar 2016 14:39:27 +0530
From: G Pooja Shamili <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: gdm72x: Add spaces before and after '*'
Message-ID: <20160306090926.GA29834@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch.pl error:
CHECK: spaces preferred around that '*'

Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
---
Changes from Version 1:
	* Changed the name in the From: and Signed-off-by: to full name.
	
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


