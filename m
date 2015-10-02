X-GM-THRID: 6201124004329160704
X-Received: by 10.112.40.17 with SMTP id t17mr2863448lbk.10.1443811693809;
        Fri, 02 Oct 2015 11:48:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.4 with SMTP id m4ls429803wib.10.gmail; Fri, 02 Oct 2015
 11:48:13 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr2912402wjb.3.1443811693496;
        Fri, 02 Oct 2015 11:48:13 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id c7si2493wiy.3.2015.10.02.11.48.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 11:48:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id ge5so45441998wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 11:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=aDpss/7BVae9wmdFetAkfMvwDbkaif8h+MQ+ctP6Tdo=;
        b=jbHaUAG7WMPthkG9p5be1+sOGnHFlwUJ96X+VfG8jo0DCJWC6NJUvy1Uolz/nKxT2o
         7hneO/DYt7y210dw9a9LDTyWm1ut+z50jIW7AaNiPpxFtwFqQWcJPgDWY4nJU7+Umlx3
         XNJ3RKv17daJfLJ0TIi7QMSbm9Fd7Zt/eFkqoWF4O2yFASXebsY42QQbanlRYF0wvmC6
         ECVywz9FXi8k6vIDPtVnV7hH9++l4KWEBJP1P147MZzU2WFrIKQP3HboeerEl0f4SZNe
         eKBqjYmvHT+i6rg5oSJLS2Z95gsjC6DP/9w18Z7wi+h0V/ZANV5qJjCydbdGhogAu3af
         frZg==
X-Received: by 10.180.8.36 with SMTP id o4mr419442wia.82.1443811693396;
        Fri, 02 Oct 2015 11:48:13 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id mc20sm322806wic.16.2015.10.02.11.48.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 11:48:12 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: octeon: Remove excess parameter from doc
Date: Fri,  2 Oct 2015 21:48:03 +0300
Message-Id: <1443811683-50291-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix "Excess function parameter 'addr' description in
'cvm_oct_set_mac_filter'" kernel-doc warning

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index a8da250..87ab6c6 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -367,7 +367,6 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
 /**
  * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
  * @dev:    The device in question.
- * @addr:   Address structure to change it too.
  *
  * Returns Zero on success
  */
-- 
1.9.1


