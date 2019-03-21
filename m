X-GM-THRID: 6670862390968451072
X-Received: by 2002:a05:660c:908:: with SMTP id s8mr3223766itj.50.1553181184170;
        Thu, 21 Mar 2019 08:13:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:80c6:: with SMTP id h6ls2470259ior.2.gmail; Thu, 21 Mar
 2019 08:13:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4EDd+jDQMWcEx9tvQuxvxm2snHA3BgWrJ6int85i4yPTUM+oI9FZt5i0KmZb/q14Q1JYA
X-Received: by 2002:a6b:c804:: with SMTP id y4mr2461840iof.196.1553181183233;
        Thu, 21 Mar 2019 08:13:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553181183; cv=none;
        d=google.com; s=arc-20160816;
        b=Ydzwzw9NM2vsMJbrQn6JolHyE3QnWQ6TpLICB8MA3TUN6qIBhADsPbxOTIml/jvejb
         3RdFd9H54OP6TY2XxvaKzJwmzW1KFHfwcoRyI0nnD8xTeR2wo9hRm1CQIqQpisqfyjDE
         boVXO4jJP66eLdLiwitG1ylA+vy7nm/LeBr6QMRtCkQ4V/n+XAXuzgItV95d5TXWgY6F
         7IFUN9XkuDeAABeFKffMsD9zWU1SppNg9wt131s36Tw89FXXRYXYbmAb9DBCFBhOg/4y
         VGhdDJc1fDYsKf2PRa3+89sFKyH2Im5UqE4v5XrfiMYlAwCZtxSFrVFBzd31wCN4QONS
         GgvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JWdyDx5/F75QSULdSMxN9hvkJnmhjChb12XYKlGgd1Q=;
        b=B3BDbf8K4+gHgMpDDDfgpHCnAW9axTDpGClhwcapTpvrU1AUmFYC4GtWm2juuXKKoP
         sl7QMeG5nt6fICYjXo2IUPtPR60m2zkZkMft97IRMwnL1P0k7GlBB19K0tN/sB+VTeVn
         Iln1uz94L2YGKqJ227f0rDcElmUb4CV6xM/iCdQjU9UsN+HrE7vSqoPdD3XBpUpfrshK
         6AimK52Eg9yoitMFkYXbderneb2d2akvoTxYMJzXXzQEuWvB0u9Uchh5qD1dlNQZ8r9R
         clVZmxkHbEBM6czM/2DIXrKdvekXmWxsq7D3fz76H/G3pTy+rQocOUWWZIn+hrVtL5Cr
         wcaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TpfcvP+z;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id n6si227371iod.1.2019.03.21.08.13.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 08:13:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TpfcvP+z;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id 9so4240041pfj.13
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 08:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JWdyDx5/F75QSULdSMxN9hvkJnmhjChb12XYKlGgd1Q=;
        b=TpfcvP+zFN1tDU0so6C3x07Nly+QVfI1QYM3pi1Vci1qR7aAY8oszasusUCi4UOo/d
         fhlg7NQbIC1SG8WQAJ0NVKKQnI0wXWYgWK7BL+Dxo+1hzVDr1PMoL00Zclvd1vls+SHS
         Ms6pbxjyQGZuiLI4CGOja5h5P5tVzFcQQT6ZlRDplf28Hmuzahh4wfaiSlRGnIqQ1AvG
         Y6eKwBgMW+ShdQGn6OkG/PW1IJsW0fvFAOcVrBXxxSGvtdnSXOL8Zmw8ASc2bnf7QFtG
         kHjxMkfPCtnxl/sq+YqVLKysYaykaS5s4XfKH9itfvDzcP4UMatPmiNJgGq8RQpe4B1X
         cPBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JWdyDx5/F75QSULdSMxN9hvkJnmhjChb12XYKlGgd1Q=;
        b=ZParqfCarmpvJkS3//FKpnQLNCNvzueyWm59YgKk98LwkSCsY2stJaw8D74/pxDznU
         nijyJnwxvuWbQgCwyoei03Sw+JM94fvr7EFjn+gZ+3bMsNPc2k1KgKfdfsn0uDueMqLi
         /n9QoS8TCaoz6Gp2NRJKR8NnX9i8rT74v11X+LP5Z+t3s5dPVUWpSQtaNZWsxUsxWf/T
         Vs080+LnHzxHtw5T1IHMMXBU29QlPomCJfbtOZc4Vwd0FXWj1aVoIJVFRIj0sVA4wX5j
         Tnv/YEJZ4mf27cEl+L+80+lybFKiB7CZFGH31MW1XI/lTwuavGC3gDrk0SEa68ZEo7bK
         y5Vw==
X-Gm-Message-State: APjAAAVGmzAI0d3IM63rrf4dJA2w6zR3c6WsC0GCSQGZscJ5xVeirH1N
	/7RA1FE9ktYOV7sNGIPXOCBM5ycCtw4=
X-Received: by 2002:a62:2008:: with SMTP id g8mr3723667pfg.121.1553181182729;
        Thu, 21 Mar 2019 08:13:02 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.5])
        by smtp.gmail.com with ESMTPSA id k10sm11557349pgj.11.2019.03.21.08.13.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 08:13:02 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH 1/2] staging: rtl8188eu: core: Remove unnecessary parentheses
Date: Thu, 21 Mar 2019 20:42:45 +0530
Message-Id: <20190321151245.10814-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary parentheses after 'address-of' operator
Issue found with checkpatch.pl

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 90eb1a025051..ddc1620156dd 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -64,10 +64,10 @@ int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 	precvframe = PTR_ALIGN(precvpriv->pallocated_frame_buf, RXFRAME_ALIGN_SZ);
 
 	for (i = 0; i < NR_RECVFRAME; i++) {
-		INIT_LIST_HEAD(&(precvframe->list));
+		INIT_LIST_HEAD(&precvframe->list);
 
-		list_add_tail(&(precvframe->list),
-				     &(precvpriv->free_recv_queue.queue));
+		list_add_tail(&precvframe->list,
+				     &precvpriv->free_recv_queue.queue);
 
 		precvframe->pkt = NULL;
 
@@ -134,9 +134,9 @@ int rtw_free_recvframe(struct recv_frame *precvframe,
 
 	spin_lock_bh(&pfree_recv_queue->lock);
 
-	list_del_init(&(precvframe->list));
+	list_del_init(&precvframe->list);
 
-	list_add_tail(&(precvframe->list), get_list_head(pfree_recv_queue));
+	list_add_tail(&precvframe->list, get_list_head(pfree_recv_queue));
 
 	spin_unlock_bh(&pfree_recv_queue->lock);
 
-- 
2.17.1


