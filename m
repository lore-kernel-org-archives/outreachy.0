X-GM-THRID: 2568138784768
X-Received: by 10.112.25.7 with SMTP id y7mr1501191lbf.21.1424712493257;
        Mon, 23 Feb 2015 09:28:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.114 with SMTP id r18ls332156wiw.22.gmail; Mon, 23 Feb
 2015 09:28:13 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr1505130wjb.6.1424712493013;
        Mon, 23 Feb 2015 09:28:13 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x241.google.com (mail-we0-x241.google.com. [2a00:1450:400c:c03::241])
        by gmr-mx.google.com with ESMTPS id l8si919453wia.0.2015.02.23.09.28.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 09:28:13 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::241 as permitted sender) client-ip=2a00:1450:400c:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x241.google.com with SMTP id w62so6946244wes.3
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 09:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=DQFvBMJRRLrK2B8GZ7af/myTebL3Wq9UEHeOvh3VbAg=;
        b=fjE26oQStl15AeKaz5U1NiA7uioa3ENp6uYzMsed9GjGSf6nS4zOf2UePrKm2qCfm6
         1g9CY4BdE7/KiqN8LA00KsRtNEVl2R5xvTiRjGLxwxMuuAvhQzZUOkAoNyJdguK71Jps
         eIq1RDNM331OrYHlrFD17flz03q9HajbZ/rDBRANgfDN45X8RmJF3P1sFXsY7yJTWg7w
         UUJoodtYGhhzL4s/0+7uaLXCzwAA3OlPdQEGxcEpKuoD5XLf3bonhpbFquhLhRZTgI9l
         wwplNqgHpHWr09NBd3k7e+etGN4naZn/xTIVUCUkV/c/SYVWHcxxaFLkXHBV7MTPRqVq
         h9tg==
X-Received: by 10.194.20.67 with SMTP id l3mr23947717wje.94.1424712492878;
        Mon, 23 Feb 2015 09:28:12 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id nb9sm16805577wic.3.2015.02.23.09.28.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 09:28:12 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Delete space
Date: Mon, 23 Feb 2015 19:28:06 +0200
Message-Id: <1424712486-23905-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This Error found with checkpatch.pl

ERROR: else should follow close brace '}'

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_xmit.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
index bece9b3..8124d9e 100644
--- a/drivers/staging/rtl8723au/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
@@ -914,8 +914,7 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
 
 			if (psta->qos_option)
 				qos_option = true;
-		}
-		else {
+		} else {
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("fw_state:%x is not allowed to xmit frame\n", get_fwstate(pmlmepriv)));
 			res = _FAIL;
 			goto exit;
-- 
1.9.1


