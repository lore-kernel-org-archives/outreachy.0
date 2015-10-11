X-GM-THRID: 6204428634570096640
X-Received: by 10.180.35.132 with SMTP id h4mr1890902wij.5.1444581115687;
        Sun, 11 Oct 2015 09:31:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.159.82 with SMTP id i79ls418079lfe.102.gmail; Sun, 11 Oct
 2015 09:31:55 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr4697976lbb.11.1444581115036;
        Sun, 11 Oct 2015 09:31:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id hs5si322806wib.1.2015.10.11.09.31.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 09:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id q8so26764664wij.0
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2015 09:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=0NJ6lR6acbr7H+pRO0uLy3yq/5qtesMJIvgi96NsEvQ=;
        b=v0GEQx0xhgoJSX3RrPgPFy1wzX+37TnLIejOOEvjBtC63VMuAyhFlXpcZnwaBEIVEK
         6P4OwieqIx9kClRKH7CSZxeb3+rP0QsydNO1PvYDa4uaP79Dn7u6X/JxxQzblK0udbvP
         2blSS1LbWO/5ZMHpR6D5vzbf6PN+UpTrG+XmEirNEj+Oss+OyMmvOG+oLBZQcUWJBAD6
         vISJkTH6Nb9OmX9JaDXBbvQZ3CAHTTCCepIsXH/CqT2NQZ6Kguhg46Khhzui19QcDZDb
         hlLkWT19A7JvJXLnpB9CTSOObCdEkBf/jfhIuVd0VIy6D0L/nhAq1UtQ/IgN7XSzTE5g
         Absw==
X-Received: by 10.180.11.212 with SMTP id s20mr9654830wib.40.1444581114935;
        Sun, 11 Oct 2015 09:31:54 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id r4sm7358532wia.19.2015.10.11.09.31.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 11 Oct 2015 09:31:54 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] Staging: wilc1000: wilc_msgqueue: Use kmemdup instead of kmalloc and memcpy
Date: Sun, 11 Oct 2015 22:01:37 +0530
Message-Id: <1444581097-19417-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444581097-19417-1-git-send-email-shraddha.6596@gmail.com>
References: <1444581097-19417-1-git-send-email-shraddha.6596@gmail.com>

Replace kmalloc and memcpy with kmemdup.
Problem found using coccicheck

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/wilc1000/wilc_msgqueue.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_msgqueue.c b/drivers/staging/wilc1000/wilc_msgqueue.c
index d5ebd6d..b13809a 100644
--- a/drivers/staging/wilc1000/wilc_msgqueue.c
+++ b/drivers/staging/wilc1000/wilc_msgqueue.c
@@ -80,12 +80,12 @@ int wilc_mq_send(WILC_MsgQueueHandle *pHandle,
 		return -ENOMEM;
 	pstrMessage->u32Length = u32SendBufferSize;
 	pstrMessage->pstrNext = NULL;
-	pstrMessage->pvBuffer = kmalloc(u32SendBufferSize, GFP_ATOMIC);
+	pstrMessage->pvBuffer = kmemdup(pvSendBuffer, u32SendBufferSize,
+					GFP_ATOMIC);
 	if (!pstrMessage->pvBuffer) {
 		result = -ENOMEM;
 		goto ERRORHANDLER;
 	}
-	memcpy(pstrMessage->pvBuffer, pvSendBuffer, u32SendBufferSize);
 
 	/* add it to the message queue */
 	if (!pHandle->pstrMessageList) {
-- 
2.1.4


