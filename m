X-GM-THRID: 2906148306944
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c69ec8befe8a10f7,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.29.66 with SMTP id ju2mr1494962wid.1.1424714596117;
        Mon, 23 Feb 2015 10:03:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.65 with SMTP id b1ls570590laf.99.gmail; Mon, 23 Feb
 2015 10:03:15 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr1544526lai.4.1424714595681;
        Mon, 23 Feb 2015 10:03:15 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x244.google.com (mail-we0-x244.google.com. [2a00:1450:400c:c03::244])
        by gmr-mx.google.com with ESMTPS id ev8si734491wib.3.2015.02.23.10.03.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 10:03:15 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) client-ip=2a00:1450:400c:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so6997784wes.3
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 10:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=EvzlCyyenmAq57Nmu5hnXUhexcVU6awhah04aOaezR8=;
        b=DvEDcwyBsC1j1itJDoBwFUXK3qkeMTdbn9o7mJIGz/fbShtVRFjUs18ZgtB2Uj6CYQ
         LNc6OqzN88sQM+DjqRCqSCBAnMuEFVhAXHRgkvIPIHoVn4HTKbDC2mQpQcw3s9JTaFFf
         GigV4bf6U2WnpMQjrINc32fSxkAQoNSwMKk6lCW4lxBtUu1jH5ly1Eem7ImEJw2Mbse2
         4v6TT1BXIZyaUcHjyT+Lej6zZYSHZPv2qkjRv2ek0F8O5RhOWqH/LzNHU9mMk9EMMEY2
         kj6tZYiE/N5+kh328+zinJRVHoC3d2AeXvY2zr6/fwI9Y3t0Eq/Aj+4aUk3Xhzm4LkHY
         pKGA==
X-Received: by 10.194.80.193 with SMTP id t1mr25402267wjx.8.1424714595567;
        Mon, 23 Feb 2015 10:03:15 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id 18sm56603807wjr.46.2015.02.23.10.03.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 10:03:15 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Add space after '>'
Date: Mon, 23 Feb 2015 20:03:08 +0200
Message-Id: <1424714588-24720-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This Error found with checkpatch.pl

ERROR: spaces required around that '>'

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_xmit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
index d851675..32fbf022 100644
--- a/drivers/staging/rtl8723au/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
@@ -1200,7 +1200,7 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
 		pdata += mem_sz;
 		data_len -= mem_sz;
 
-		if ((pattrib->icv_len >0) && (pattrib->bswenc)) {
+		if ((pattrib->icv_len > 0) && (pattrib->bswenc)) {
 			memcpy(pframe, pattrib->icv, pattrib->icv_len);
 			pframe += pattrib->icv_len;
 		}
-- 
1.9.1


