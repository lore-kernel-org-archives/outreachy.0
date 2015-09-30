X-GM-THRID: 6200282727557627904
X-Received: by 10.194.6.170 with SMTP id c10mr495403wja.7.1443615818890;
        Wed, 30 Sep 2015 05:23:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.13 with SMTP id eu13ls153200wid.43.gmail; Wed, 30 Sep
 2015 05:23:38 -0700 (PDT)
X-Received: by 10.194.59.166 with SMTP id a6mr497884wjr.6.1443615818480;
        Wed, 30 Sep 2015 05:23:38 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id o5si232188wib.0.2015.09.30.05.23.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 05:23:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ge5so194174060wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 05:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oqe4ZuwLcfB5EGxmKbPhigYBZfzD02pln2ijse71F/s=;
        b=LJKigDzj9s/oEcgbWaBmIJRuhf3t+cHibmiDc/755wN9hOhCjOlNak8Cpa0ineji8e
         umv6BEEx+P3LyXvoo3O1UsJFbEcgP2/tWKoSGbEeRtnnRNAeZjf2WK6a6nSx5UawG1tg
         zDYlsBFDl8lm7vHdpaAcJ8Vp27xA1v6mDUhz5fg9QhVEcIsHBWlKrgwCrt+oBjgdSQxG
         2nRAo5XiAXakBtnw/fahiBORpDlz1pbXXnTFq7K7YIwmr+crVzYrIUJMRJzi8/4qLgiw
         aaRNN1HewPTsJf5VKYgShhwBYjI1DH4E/HoMeeveXk4KtVOCJzj+dizkgPzDqjrMvXhF
         rVNw==
X-Received: by 10.194.184.166 with SMTP id ev6mr4224721wjc.125.1443615818378;
        Wed, 30 Sep 2015 05:23:38 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.43])
        by smtp.gmail.com with ESMTPSA id b5sm389290wjf.16.2015.09.30.05.23.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 05:23:37 -0700 (PDT)
From: aybuke <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke <aybuke.147@gmail.com>
Subject: [PATCH] Staging: octeon: Use preferred kernel type
Date: Wed, 30 Sep 2015 15:23:28 +0300
Message-Id: <1443615808-6064-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 2.1.4

This patch fixes "CHECK: Prefer kernel type 'u8' over 'uint8_t'"
checkpatch.pl issue in ethernet.c file.

Signed-off-by: aybuke <aybuke.147@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 7274fda..7f9518d 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -382,7 +382,7 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
 	    && (cvmx_helper_interface_get_mode(interface) !=
 		CVMX_HELPER_INTERFACE_MODE_SPI)) {
 		int i;
-		uint8_t *ptr = dev->dev_addr;
+		u8 *ptr = dev->dev_addr;
 		uint64_t mac = 0;
 
 		for (i = 0; i < 6; i++)
-- 
2.1.4


