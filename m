X-GM-THRID: 6676444023813570560
X-Received: by 2002:a25:1282:: with SMTP id 124mr2594936ybs.40.1554480759752;
        Fri, 05 Apr 2019 09:12:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2ac8:: with SMTP id q191ls1561145ybq.11.gmail; Fri, 05
 Apr 2019 09:12:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwB4RvRUz8d6R8cc1LI+aGAUVEeSMCfvwZAiUaniqEbQarw7n4AX1/xkBlfp+tdie9zltUO
X-Received: by 2002:a25:5746:: with SMTP id l67mr3044205ybb.9.1554480758869;
        Fri, 05 Apr 2019 09:12:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554480758; cv=none;
        d=google.com; s=arc-20160816;
        b=SWZs8iAT4jk8j34XBKpwqnCs9Gs31x/lI3/NN5fD0XO5Z6qt9locWA/6bV33+pvzQS
         l3ha5/jtmLeB7T+h61QWBQN+GKdCgb2KDLSB9nMIUdtfuRhbyyS/9f2Hql4RZN3lChYE
         EstR6ksjbC41gNn/jxVoMeQxQozr9rhRG+mElL8vykfnKCudgAM1wMAAAlfhtPVOtAI+
         oWLBKljWSHistcy6bsDyk+B2OuhHiM7kscbUKIRk3V/ug2OT5Gq/CnPXC6YEQBVQbKB2
         k/iRoieOUM/3bWvZqcZOFZYMmmMREJCEBMktTofgNPu/WuEBzg49dxvlkylHSAY5IBYA
         0oLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=sfDMQresdW4c7i2jObMdMG0cjBsOQoCbJdE3iTZYmAM=;
        b=iss9DoViOT8cFCCknTZ5FEwh7dcnKm6VxCcVrd3Y87c+iMimz0uoFOgJyI5pQ24Lyy
         OC/9KR6lpnbwGEoDMtvdOL+IoQcHhX1oP6i+MJp8uXs78yhYFi1ly8KrfZh5kmnOXPJ8
         LbEc0sySvAhKdfrVztuu5Zijovmu5MtV0430WsiIu08xqCgMNmuqT7lyLN1YBImpNBMV
         1XZ1CqR1MGcywa9SmtGbAaCUY0reyHC8tBqA9fmg80ZgTFnNRYtxBx3oQFc2gXUIu8G4
         629IizCXHE1XDlQwGrMYjqLZ0MVRsZ/qQXdlhyPf/tsBOTterhvO0rcYvnEbhKAy2/cy
         50Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NCly7y3+;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 63si419314ybb.4.2019.04.05.09.12.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 09:12:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NCly7y3+;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id g12so3261523pll.11
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Apr 2019 09:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=sfDMQresdW4c7i2jObMdMG0cjBsOQoCbJdE3iTZYmAM=;
        b=NCly7y3+h0mIFIaJaxOdSGHdGNwQEV0ybFZSuXSxKH5jUGqyIQGYzpb4u6OeobMa+L
         xedyncYWYUpPHmXuuCcZh2QRMsRTjmguhDTE/nqeKFWdLEvvn3yRAdsIoDoTLrP/26N/
         e25DhM+whigjoP7ThehRzpvSgqwheqBiv5+m/9MJy9r2rWFuEaulgFP0joucRtw9asZg
         pLR9kX7eiQ3RHQ+jkm8J4Uvmrsl+5D9kXjVWiy14jwr2JAFd7ZyU5IMplfxuoCvLprBg
         C/Shx+wk/cTT79O3zI6u/qDWnDGms0LzVCzw0O9eIaI+SCJ2USBZmBQpNSidI3kC/9KC
         /aCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=sfDMQresdW4c7i2jObMdMG0cjBsOQoCbJdE3iTZYmAM=;
        b=nFTPQHnbBYUgc4mDoE2z2yXn4n6Y6VSmf7779fm5DOSjhVbe+Qo7QVCtf1c2BHHxdq
         NOeI5wNjUUazpzRF/lhP6pPXX9z+KhUfF/bwYraerGsM1L4TY23bbXppldbpCiAPT9UG
         k2aYGZDOstT0QREyOX2IwgcN47ym7tmU3KRAwAyrFZOas8pRkhGE3cfFL1KtAG+YD/LZ
         3vIsAKV+GuKEq3nmH0J11e8laAoz8sWwA160GHgTiZZ4H5U7wxM3xEpG+RLQAQJopSTt
         aRqurSYFsHGSTL0od2Cuq/ZIKhSpDjR7Ws2hKS/MnexHbAqs9ioOjGomM+AMdIaFfcyv
         BZQA==
X-Gm-Message-State: APjAAAXNw2WGn+isMMfCzYV/WW0+2U+mtUlRdWOwQbbcELQ5xm+YAScB
	Zn+a+BkY3eRP0hBvQk3+uh8=
X-Received: by 2002:a17:902:846:: with SMTP id 64mr13880856plk.266.1554480757836;
        Fri, 05 Apr 2019 09:12:37 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id c17sm32336918pfd.76.2019.04.05.09.12.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 09:12:36 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [RESEND PATCH v5 3/4] staging: rtl8712: use list_for_each_entry in function r8712_get_oldest_wlan_network
Date: Fri,  5 Apr 2019 21:42:10 +0530
Message-Id: <20190405161211.8979-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

wlan_network is a list structure. We can avoid using next fileds and
comparison to head of the list in order to iterate over it. Instead
list_for_each_entry macro can be used to do this more tidily.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V5:
        - Use list_for_each_entry
Changes in V4:
        - Change log message
Changes in V3:
        - Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index ad9b1a23abeb..6b352f8436ba 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -276,23 +276,18 @@ static int is_same_network(struct wlan_bssid_ex *src,
 struct	wlan_network *r8712_get_oldest_wlan_network(
 				struct  __queue *scanned_queue)
 {
-	struct list_head *plist, *phead;
+	struct list_head *phead;
 	struct	wlan_network	*pwlan = NULL;
 	struct	wlan_network	*oldest = NULL;
 
 	phead = &scanned_queue->queue;
-	plist = phead->next;
-	while (1) {
-		if (end_of_queue_search(phead, plist) ==  true)
-			break;
-		pwlan = container_of(plist, struct wlan_network, list);
+	list_for_each_entry(pwlan, phead, list) {
 		if (pwlan->fixed != true) {
 			if (oldest == NULL ||
 			    time_after((unsigned long)oldest->last_scanned,
 			    (unsigned long)pwlan->last_scanned))
 				oldest = pwlan;
 		}
-		plist = plist->next;
 	}
 	return oldest;
 }
-- 
2.17.1


