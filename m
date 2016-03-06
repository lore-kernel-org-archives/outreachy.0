X-GM-THRID: 6258963918666858496
X-Received: by 10.66.191.230 with SMTP id hb6mr13543217pac.25.1457278597821;
        Sun, 06 Mar 2016 07:36:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.236.2 with SMTP id uq2ls550876obc.11.gmail; Sun, 06 Mar
 2016 07:36:37 -0800 (PST)
X-Received: by 10.182.65.106 with SMTP id w10mr13198347obs.6.1457278597480;
        Sun, 06 Mar 2016 07:36:37 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id 12si2398181pfb.1.2016.03.06.07.36.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 07:36:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fy10so63315822pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 07:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dsvCYv51eZzaexovMXUIwfFeDNB1ZjC6a0zwGzLjvv0=;
        b=K48eIVdGpOJ3+gXEynYg2ZQWHDClX70G898+QyGAn43YA5A+xg/CzFpmuGZ/GuW5st
         QyluxAaEgK8q2SJTuOTDbiB0XoIuldUpEKpY2YaxRwi6XRZEeuFnqc8oY2QJH7hUvOd1
         RzF8sCLm7RBd7ly74F3+1QIIoJJYVsh+wCTuQGfpon3JQ6/IU5kYuU2ZBotyMEcWTgDU
         tgQQ8zpOCidvKTcm1eL38LmnFx/+JRsY3vQi9F3xBLLa/2DmWtOPB8gxPV7OQR1JiXxm
         9Ul52pDiQECMFyXLJdRtEY48gzgZkWzra0G4DVnYNW/P9ZnLJ29JytVaF6TK9YNxJuqC
         BltA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dsvCYv51eZzaexovMXUIwfFeDNB1ZjC6a0zwGzLjvv0=;
        b=lSkZO5QC8zrVnwqxtEJ2BLU8PCvUgfmQyhwDHJgUGomyjCujA0q1b6WkNy75DhPQ9Y
         QVGmV1jwGaQUDhl60oWgkw2icxMzEr488uu76usbPidKc4pAI8+Kut/wzELZVSLyHyhP
         g2BK+WuyDJSfd9SnaYvLTe0nH9/0uyZIjJnMIv1+l4azAJtWHSPrIPwJLGx1ISwgq8Ul
         2G4Xwpk+jkc8v6zdbFnN9wGOUgBPhrKViju8sUzEC0y3srYrY81hEcXpN6WQh7UVvofQ
         xN6QmPxswHoA+vAbgpk5QrpcMykqGq8eMQYGD37ESZ5iXko/eM5fZ42UzAmm9lknptVx
         1VgA==
X-Gm-Message-State: AD7BkJKhhgbGl305cpd2QLlemfdhDlAcTLWVVqNW3xkiot4MbpyCuv0abZbnQkHqDwQL8A==
X-Received: by 10.66.141.11 with SMTP id rk11mr27318930pab.75.1457278597305;
        Sun, 06 Mar 2016 07:36:37 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.181.247])
        by smtp.gmail.com with ESMTPSA id 79sm18409355pfq.65.2016.03.06.07.36.32
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 07:36:36 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 06 Mar 2016 21:06:26 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192e: Use list_first_entry instead of list_entry
Date: Sun,  6 Mar 2016 21:06:25 +0530
Message-Id: <1457278585-16295-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replaces list_entry with list_first_entry as it makes the
code more clear.
Done using coccinelle:

@@
expression e;
@@
(
- list_entry(e->next,
+ list_first_entry(e,
  ...)
|
- list_entry(e->prev,
+ list_last_entry(e,
  ...)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 2 +-
 drivers/staging/rtl8192e/rtllib_rx.c      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 2c8a526..22ee936 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -371,7 +371,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
 				((TxRxSelect == TX_DIR) ? DIR_UP : DIR_DOWN);
 
 	if (!list_empty(pUnusedList)) {
-		(*ppTS) = list_entry(pUnusedList->next,
+		(*ppTS) = list_first_entry(pUnusedList,
 			  struct ts_common_info, List);
 		list_del_init(&(*ppTS)->List);
 		if (TxRxSelect == TX_DIR) {
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index af64bd3..5893005 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -461,11 +461,11 @@ static bool AddReorderEntry(struct rx_ts_record *pTS,
 
 	while (pList->next != &pTS->RxPendingPktList) {
 		if (SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)
-		    list_entry(pList->next, struct rx_reorder_entry,
+		    list_first_entry(pList, struct rx_reorder_entry,
 		    List))->SeqNum))
 			pList = pList->next;
 		else if (SN_EQUAL(pReorderEntry->SeqNum,
-			((struct rx_reorder_entry *)list_entry(pList->next,
+			((struct rx_reorder_entry *)list_first_entry(pList,
 			struct rx_reorder_entry, List))->SeqNum))
 				return false;
 		else
-- 
1.9.1


