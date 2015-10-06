X-GM-THRID: 6202655737022251008
X-Received: by 10.112.54.197 with SMTP id l5mr6782703lbp.21.1444168327957;
        Tue, 06 Oct 2015 14:52:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.42 with SMTP id bd10ls1164958wib.9.canary; Tue, 06 Oct
 2015 14:52:07 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr3833989wic.4.1444168327623;
        Tue, 06 Oct 2015 14:52:07 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id hs5si670187wib.1.2015.10.06.14.52.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 14:52:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id fx3so2210850wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 14:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=iMaLoNxJ7v5JdJE3XuRQXMtYsZacEERuaeh5XlFPpBE=;
        b=OwOG1OmfXH+JqQ2RvRyUHKMQuXCRAg5bU38TXcMFDIXZZ3TIYBbhAi+TltQxC9RtnE
         /i7U/8zK+3VOFbYneB5r2xLoMDcASUHnaGY0vD8lNNMh9FOVz5NUNhtdz0kxGu3/BSSm
         6DIMMyEiy/ZLAFQHtQUDRc4jvKP0atbMlOZT8Q4wbOx9UPxQyclM/yoru3euj2mGHR58
         E2dleHvCwdnE2rjC2WwyRWqhA8Fx+3hhZ/yzXss56qBXzJnk5PrYjT924+Pq8On76LYJ
         RLBaYUtXJ66MjE93ZOpuLOjPG626+KwzLtaa0w3KpIfHWXC6rDJRTVTR8OvjVSwRo1LH
         vpWg==
X-Received: by 10.194.184.20 with SMTP id eq20mr9667634wjc.22.1444168327530;
        Tue, 06 Oct 2015 14:52:07 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.172])
        by smtp.gmail.com with ESMTPSA id m9sm21446472wib.13.2015.10.06.14.52.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 14:52:06 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: octeon: Fix return description for functions
Date: Wed,  7 Oct 2015 00:51:37 +0300
Message-Id: <1444168297-90793-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Clarify return description for functions

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index a63488e..13ee25d 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -173,7 +173,7 @@ static void cvm_oct_configure_common_hw(void)
  *
  * @work_queue_entry: Work queue entry to free
  *
- * Returns Zero on success, Negative on failure.
+ * Returns 0 on success or a negative error code.
  */
 int cvm_oct_free_work(void *work_queue_entry)
 {
@@ -248,7 +248,7 @@ static struct net_device_stats *cvm_oct_common_get_stats(struct net_device *dev)
  * @dev:     Device to change
  * @new_mtu: The new MTU
  *
- * Returns Zero on success
+ * Returns 0 on success or a negative error code.
  */
 static int cvm_oct_common_change_mtu(struct net_device *dev, int new_mtu)
 {
@@ -411,7 +411,7 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
  * @dev:    The device in question.
  * @addr:   Socket address.
  *
- * Returns Zero on success
+ * Returns 0 on success or a negative error code.
  */
 static int cvm_oct_common_set_mac_address(struct net_device *dev, void *addr)
 {
@@ -426,7 +426,7 @@ static int cvm_oct_common_set_mac_address(struct net_device *dev, void *addr)
  * cvm_oct_common_init - per network device initialization
  * @dev:    Device to initialize
  *
- * Returns Zero on success
+ * Returns 0 on success or a negative error code.
  */
 int cvm_oct_common_init(struct net_device *dev)
 {
-- 
1.9.1


