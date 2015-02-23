X-GM-THRID: 2850147008512
X-Received: by 10.112.214.234 with SMTP id od10mr1451985lbc.3.1424707740771;
        Mon, 23 Feb 2015 08:09:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.225 with SMTP id fb1ls596169wib.38.canary; Mon, 23 Feb
 2015 08:09:00 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr1414893wib.4.1424707740406;
        Mon, 23 Feb 2015 08:09:00 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id cl5si715626wib.3.2015.02.23.08.09.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 08:09:00 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x241.google.com with SMTP id r20so8162933wiv.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 08:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yUSdRJIkAGm7Lvoy3MEdPMtkvAb0k8giNwNDLxWEYow=;
        b=SgX7qatusroJvloZhrIKUZ5N1VlNGlHJqDnPEcWMZA02mmzgf1bsFQBiJ/6jRNnBxj
         7p4rSWiAhBkcqnKVGb5Y8g17btRjIJU2NnKg8F+n1JZAZaiiKzhfhL8XwRRz9xYvxGf4
         wyoETTfY6ZWtZmhVPB4C0hPPQ1pI4NVkp9iGd2gur4KBkFUIROoJ8QTzwfH2pQsowo0D
         PIEZ8/qeZ12v5iq4QEWvweJ1ItV6BXnTSc+733XdzrBgc4YaDnefn4uZkg6f/IN3pV6C
         ienLyvJfK5pyLM4jmq7C+xpKzPaU95SjvDRUZO/1xqHvyYn/jSyZISglUPZ2hN/hjY9l
         u7ug==
X-Received: by 10.194.175.102 with SMTP id bz6mr24193319wjc.120.1424707740291;
        Mon, 23 Feb 2015 08:09:00 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id p1sm16479324wib.23.2015.02.23.08.08.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 08:08:59 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Add spaces around that '='
Date: Mon, 23 Feb 2015 18:08:53 +0200
Message-Id: <1424707733-23115-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This Error found with checkpatch.pl

ERROR: spaces required around that '='

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
index 2c9fe07..bece9b3 100644
--- a/drivers/staging/rtl8723au/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
@@ -645,7 +645,7 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	int curfragnum, length;
 	u8 *pframe, *payload, mic[8];
-	u8 priority[4]= {0x0, 0x0, 0x0, 0x0};
+	u8 priority[4] = {0x0, 0x0, 0x0, 0x0};
 	u8 hw_hdr_offset = 0;
 	int bmcst = is_multicast_ether_addr(pattrib->ra);
 
@@ -672,7 +672,7 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
 	if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
 		/* encode mic code */
 		if (stainfo) {
-			u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
+			u8 null_key[16] = {0x0, 0x0, 0x0, 0x0,
 					 0x0, 0x0, 0x0, 0x0,
 					 0x0, 0x0, 0x0, 0x0,
 					 0x0, 0x0, 0x0, 0x0};
-- 
1.9.1


