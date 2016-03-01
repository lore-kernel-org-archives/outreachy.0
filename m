X-GM-THRID: 6257098330259587072
X-Received: by 10.66.142.230 with SMTP id rz6mr17346528pab.31.1456844231394;
        Tue, 01 Mar 2016 06:57:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.18 with SMTP id p18ls3168910qge.86.gmail; Tue, 01 Mar
 2016 06:57:10 -0800 (PST)
X-Received: by 10.140.102.69 with SMTP id v63mr34618910qge.14.1456844230820;
        Tue, 01 Mar 2016 06:57:10 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id ui7si4415875pab.0.2016.03.01.06.57.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 06:57:10 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fl4so113425550pad.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 06:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=pQRd0ffdh2OvJEbDqW12g3HmFz/XAhWxVvs29HBDRXs=;
        b=Y8+gGdw5kUAIYZwUzrFls3A3vmbGWs0SIJ5s9nX8sKdSQQTpwjq4SEGGwtnSUjv3O4
         1PGgmoKG8J5az22s1yydY806UMKkmBfSFstqiaXeR588ZuXzj20T9C+G9Q06+YsR2Fs5
         NQv4pIl4Hz5CJHLw+aXE0jWQRGB7FW/fSNYtOfaqmJQ7CZaPl7zSl4A3UZtAO6DMXOla
         3qWGnvjQJNAWWfR1aQ2y6P0y7IH1vfwaBwf9HQWiSQwiuSlRRrRo2Kg/j2kzk4Q67sz2
         UIs3xvoFNS8AnPsYiOgGIWunvkY+0O3mKQXgV49PLts9C1Aqx7OsVBZz59IS4+vangne
         a/Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pQRd0ffdh2OvJEbDqW12g3HmFz/XAhWxVvs29HBDRXs=;
        b=hMLpaw03Lu/lG5w4wCozg8Jw5UBdV8KmIM/sWsGoN86JQIyUWw1b+6WIbZzA3WXc/3
         6hCdLdEFif+2Ve75xLbKwSlF12vYWdO/H8+exOps6JeT6iHjCcSV3mlLeJBzZkTQOz7Q
         hFxybblshk2X2MEWyezU9bSdaVakvyDpSHPJKgZSoO/pme2bfYS7ihW4RwNGixJnTfXJ
         CiPNbzQGy7hQoTYt2dOtwJqE4ZsfrMjcP+/KIkcpdcuK9IwqnU8qk7VHH1U6X7ZMoSwo
         4bHOnTliisPBVwr20sLQ1QQIRHGmmPd1oN5aWp/lJEPUWZGTSjOmLQW6lKczk8HZyo7k
         nevw==
X-Gm-Message-State: AD7BkJLZc3Y0TveA2JV4pM8f6dDkciQnr4xcnIGzsybOCXI0+ymg5HvrFMvqoAPXpK1zwg==
X-Received: by 10.66.132.37 with SMTP id or5mr23289841pab.144.1456844230633;
        Tue, 01 Mar 2016 06:57:10 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.154.42])
        by smtp.gmail.com with ESMTPSA id z67sm46220338pfa.71.2016.03.01.06.57.06
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 06:57:10 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 01 Mar 2016 20:26:58 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192e: Use kzalloc instead of kmalloc and memset
Date: Tue,  1 Mar 2016 20:26:52 +0530
Message-Id: <1456844212-29057-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The code in this patch allocates some memory and then clears it. The
function kzalloc does the both so replace kmalloc and memset with
kzalloc.
Done using coccinelle:

@@
expression e,e1,e2;
@@
- e=kmalloc(e1,e2);
+ e=kzalloc(e1,e2);
if(!e)
  return NULL;
...
- memset(e,...);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_tx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index 58fc70e..1642f29 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -221,12 +221,11 @@ static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
 	struct rtllib_txb *txb;
 	int i;
 
-	txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
+	txb = kzalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
 		      gfp_mask);
 	if (!txb)
 		return NULL;
 
-	memset(txb, 0, sizeof(struct rtllib_txb));
 	txb->nr_frags = nr_frags;
 	txb->frag_size = cpu_to_le16(txb_size);
 
-- 
1.9.1


