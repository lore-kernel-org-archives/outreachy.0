X-GM-THRID: 6251161839379415040
X-Received: by 10.66.139.138 with SMTP id qy10mr14837724pab.46.1455526756656;
        Mon, 15 Feb 2016 00:59:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.8.65 with SMTP id p1ls718652iga.4.canary; Mon, 15 Feb 2016
 00:59:16 -0800 (PST)
X-Received: by 10.66.121.132 with SMTP id lk4mr15794095pab.9.1455526756383;
        Mon, 15 Feb 2016 00:59:16 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si3224589pab.0.2016.02.15.00.59.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 00:59:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 71so7256889pfv.1
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 00:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=HRloR1st0nAsQc3nCfsYoZnLRNtjrMgflO/CXZV1FIw=;
        b=FNBu1GrNe6tnZM0t4CAR5OpSng0m7sAxdvKfWjK9NRGrPo1YqpjOeKEbaZ3+wnh9Td
         9XjSb0NyewLyeOBIUuRzfYDdqsIDWAEorZ4c/K67Djxx7IeAdvmz1J8hHhXq/sLxXi0K
         7zmjksB2Nc/7fptmQLhTXLUrC2Q6QkQHBJFK0m0Z5bK0FWcdP79lFnJ4ImA5jYct9peG
         XpTd008x8ghTs8zweG+pL4CGkYMfiKM898iD19okm/oRK8hrCqdZXNgA1e92tT79iBqh
         v8LaZeNKdcXxPZn6aunS9mdrALkxuVs22h7n65+Ck+jVhVAfcieeHx/EorEbeh5Jdqgr
         Bj9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=HRloR1st0nAsQc3nCfsYoZnLRNtjrMgflO/CXZV1FIw=;
        b=KCWA7yb8TjDaCW9biy4bDj05vUtj4FETdobUJwewbcc+sr3NjB8OCJBthm5T8aYEga
         ZFrbMq5/CKzBk3MxzgbVa8nI7vpD8cQkoDvHHA65yPNP1UDrx/ikb3auCTuo5UUrRwQN
         kBTkZ5vfoTcJIpGueFD+OmEFGwaaPYv4emc/PUwA63UALE4nC3lOJcqlbWXQbhLaexct
         jXGXa//7x/A8Mub9uNzybDxoh372kO5hmuxgaSU80rsJSA47/LbQB6RCYFo7GZvT/1K0
         r8x26rIT7sShjS0UaMkIx96pPBBfERHRcaUJeWezMd+OIdi3NVuESgHq3xeo+OCxFsDR
         is4A==
X-Gm-Message-State: AG10YOSfgY+p21YSjMsr+zqjnDhEMbSumeKLL6kyCDo8gqesTYlKpncomp9C8QCmLiogtQ==
X-Received: by 10.98.40.200 with SMTP id o191mr21983998pfo.83.1455526756271;
        Mon, 15 Feb 2016 00:59:16 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.132.55])
        by smtp.gmail.com with ESMTPSA id r87sm36735407pfa.61.2016.02.15.00.59.12
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 00:59:15 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 15 Feb 2016 14:29:06 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 2/2] Staging: rtl8188eu: core: rtw_xmit.c: Remove NULL test before vfree
Date: Mon, 15 Feb 2016 14:28:22 +0530
Message-Id: <d84fe0419dceb2f9afe17f145d98ded85d8468b2.1455526161.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455526161.git.bhumirks@gmail.com>
References: <cover.1455526161.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455526161.git.bhumirks@gmail.com>
References: <cover.1455526161.git.bhumirks@gmail.com>

The function vfree tests whether the argument is NULL and returns
immediately. So NULL test is not needed before vfree. Also remove blank
line between function calls.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes since v1:
* Remove blank line between function calls.
* Correct errors in commit message.
Changes since v2:
*Add file name to subject line.

 drivers/staging/rtl8188eu/core/rtw_xmit.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index d5ce1e2..f2dd7a6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -247,11 +247,8 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 		pxmitbuf++;
 	}
 
-	if (pxmitpriv->pallocated_frame_buf)
-		vfree(pxmitpriv->pallocated_frame_buf);
-
-	if (pxmitpriv->pallocated_xmitbuf)
-		vfree(pxmitpriv->pallocated_xmitbuf);
+	vfree(pxmitpriv->pallocated_frame_buf);
+	vfree(pxmitpriv->pallocated_xmitbuf);
 
 	/*  free xmit extension buff */
 	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmit_extbuf;
-- 
1.9.1


