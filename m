X-GM-THRID: 6201691543779147776
X-Received: by 10.68.206.42 with SMTP id ll10mr4807934pbc.12.1443943853398;
        Sun, 04 Oct 2015 00:30:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.4.39 with SMTP id h7ls905471igh.14.gmail; Sun, 04 Oct 2015
 00:30:53 -0700 (PDT)
X-Received: by 10.107.31.209 with SMTP id f200mr20536446iof.14.1443943853145;
        Sun, 04 Oct 2015 00:30:53 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si2871791pab.1.2015.10.04.00.30.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 00:30:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so148539303pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 00:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=T6ioZPqsJcxBphCCQf8XSoQCg5Ud1RibEiNgqtl8DfA=;
        b=jf3uuEWCaM9S+HNvRCp+CCZ1+BnHB5MIve6vnk54lnaZyPq6VYUfLYWKLDCxnPGRwl
         Z8Nn1lrMA8We66FVNqcL4ySPqIiHQOBC5TiA9EEQkKJWgEFujgKvfh26BdERX8vrr/ms
         HCzRQAZPiKD3O7IkNbZdsdplfbyDQzaaGxQO3dfxIKBD7X6UgXS5JYnPC1tSyZb9abfI
         LOU8PpwI6sbl3giphcULr5dA4JLqTjiJN2ykXlJbQ//GnOC8pRbiWQbB5Ut5bgdpLy4P
         CPvRTY0xAe2KOuR179f3JxPWgVS0r/BryaPQIR3Fr3ul0YXTzAkij7/ipmy1JeweSxFK
         t4pw==
X-Received: by 10.66.216.1 with SMTP id om1mr31400341pac.51.1443943853014;
        Sun, 04 Oct 2015 00:30:53 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id uq1sm4087085pbc.82.2015.10.04.00.30.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 00:30:52 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 7/8] Staging: lustre: obdclass: class_obd: Declare as static
Date: Sun,  4 Oct 2015 13:00:15 +0530
Message-Id: <1443943816-21546-8-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
References: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5610D5AB.0111,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare obd_init_checks as static since it is used only in this
particular file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/class_obd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/class_obd.c b/drivers/staging/lustre/lustre/obdclass/class_obd.c
index 058b859d..3792541 100644
--- a/drivers/staging/lustre/lustre/obdclass/class_obd.c
+++ b/drivers/staging/lustre/lustre/obdclass/class_obd.c
@@ -403,7 +403,7 @@ int class_handle_ioctl(unsigned int cmd, unsigned long arg)
 } /* class_handle_ioctl */
 
 #define OBD_INIT_CHECK
-int obd_init_checks(void)
+static int obd_init_checks(void)
 {
 	__u64 u64val, div64val;
 	char buf[64];
-- 
2.1.4


