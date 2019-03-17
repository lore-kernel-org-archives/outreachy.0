X-GM-THRID: 6668981360875536384
X-Received: by 2002:a24:5c5:: with SMTP id 188mr8123050itl.3.1552836916871;
        Sun, 17 Mar 2019 08:35:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:194d:: with SMTP id b74ls2739623itb.3.canary-gmail; Sun,
 17 Mar 2019 08:35:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwIJqlqdp2t6UBDP6MrJqSkFqECBQcFamU3EelLt/ERksyw4I1OA/qviABoeupBWEXQsBWa
X-Received: by 2002:a24:2c48:: with SMTP id i69mr8201331iti.12.1552836916028;
        Sun, 17 Mar 2019 08:35:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552836916; cv=none;
        d=google.com; s=arc-20160816;
        b=F95pBTTGIVraazVTXtEQJNJgqOeRAPk64nlkvoQQqtyPRSWGZvnFQLgTZDfq4ybUOi
         cW9BGvIP73HD0bpKeYNMnKwmwUvVeLn+SigmZxklS49PQFwXikhyMZFbLKcMza1UK0L4
         UmMuGbpePjVqCWLUxYQ9ZlqKUFQHT81su6cAd/vTc9ZN8nGJj0gVl/rm1ATL30gq5lEf
         mSqjuQO5EFSXS0lTla/ANzmy4xnnQ7x4jGgnOtvMOWPUjlOAcHiQxPJ/SfJLIKaxzZmp
         UuvllPON5s1LUP4Y8nXCac5Q6eY/EURGpRMRz0wPvr6MVh6vnJJP5VWcCjFSycsJhZni
         BEZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=HG3lG+dRSLkg6KdoCT1pbRItHqOq3qCc/4yK3skRIlY=;
        b=adrQmUmJ3loZ7Jzue3uK3JjoF5pPlXovImGbain52/eRiSvYKXyNxIQRmZLhrJlPvt
         dhQyNN/XoHRRA6YB+q5fiZhZSGsxR5roYcbVVTc22PhnU4DFa/vB74GET9xWS63I+46S
         ITF3e0Nr9tcDWqxLvnKSV+kGj7wCZ9SKXz7604XvSQXBk7mgrrGg+8IMyY/VIHGtpgNt
         4rpLFNPquBBYGMzX4wUpDOT8PkWiqzhv+2Rz9IAY0SqCdfuN9VeEoyYXDMIZIkLNRTY7
         GmyqO/T8Ow55WD089ZN4FkqY18FBBPDVSCuT93I/FU5Ho2C2W/Fp6L/IwdcFLxbQ8LbH
         Voyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JWzsDMwZ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id f19si376097iol.4.2019.03.17.08.35.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 08:35:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JWzsDMwZ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id i7so6434155pgq.0
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 08:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HG3lG+dRSLkg6KdoCT1pbRItHqOq3qCc/4yK3skRIlY=;
        b=JWzsDMwZ2FJyJ7J1PZCnViJSAaUOL+VG2YjyCJPTafFuCTFXDQ0rDyJnIRh/g5z556
         LuVowpHWpkECuIvvR4OsqTZ5t3NKhxZGW2o8wC3vKPdHpEL5A09QAefIz9oWEduir9fh
         5hhoPeI+w18OXTdCZsF+RakEH9EwIMlSqk1dvNfS0N5GfeJCmAiYKvcUCVM8PHIdwAEA
         RFHOKF/KbbJaydRZw1sJFJIBfjF9BqwsA2Z9/227mTCpcB4zmCUGgAahSKtYE/ShCox9
         YwWVEUTWaERLMyi8kOnqnqvv5v41X1UK9/fmlRhHz8AC4jkXIBtu8AY3TPFA/N2HN5Vc
         dQyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=HG3lG+dRSLkg6KdoCT1pbRItHqOq3qCc/4yK3skRIlY=;
        b=ET4L+47DJVli94Eu4Yds6A9RlihDyLdjZcs9S6Z+G5HnNGk/0qgK/s7mNQcli7K3Ax
         3FpS4YFp0hGSu0r9Tce+YzNO+ryJL5nyD/oVK/IRaplD8lIUX2trQii7H31CZK/uKDox
         2M8JffLL0r5zGTUFSARWlKhwq3oFlFbTLC4QNbCcPF/OT3G78GTDiWT1QAp8QdZ/zwD6
         WybstH4GB2eafHaBWFPKJ9EQdVgOOfOVhPTYGCqNdIo0f7iHwq6QY+sxzPG1gPov8Q/R
         frPRatLd8lUD01sbIMEU6PQoY/wZzWuKJ32kpAo+yMfhUUWHOPPaiq6qmeYCwv9hQLMd
         mCbQ==
X-Gm-Message-State: APjAAAXiWMeg2kfzRFsobaaJ1r+qkpzG1TfCjAcpOcIvWhwBG6jVnQvi
	bXkAEVNTq975iHCw9LEl7mfEO5ei
X-Received: by 2002:a65:4341:: with SMTP id k1mr11605105pgq.175.1552836915446;
        Sun, 17 Mar 2019 08:35:15 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:24bf:4cf8:99c9:eab4])
        by smtp.googlemail.com with ESMTPSA id x6sm3336266pfm.140.2019.03.17.08.35.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 08:35:14 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 2/3] Staging: rtl8188eu: core: rtw_recv.c: fix a paranthesis issue around pframe -> list in rtw_recv.c
Date: Sun, 17 Mar 2019 21:05:02 +0530
Message-Id: <20190317153502.16818-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317152736.16374-1-sanjana99reddy99@gmail.com>
References: <20190317152736.16374-1-sanjana99reddy99@gmail.com>

Remove unnecessary parathesis issue around '->' .
Issue found by checkpatch.pl semantic patch results for
rtw_recv.c

CHECK: Remove unnecessary paranthesis around pframe -> list

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v5:
Fix the patch sequence number in [PATCH v4 2/3]

Changes in v4:
Fix the patch version number in [PATCH v3 2/3]

Changes in v3: 
Change the subject line from the [PATCH v2 2/3] 
Change the log message from the [PATCH v2 2/3] 

Changes in v2: 
Remove "From" line from the [PATCH 2/3] 
Change subject line in [PATCH 2/3] 
Change log message in [PATCH 2/3] 
 drivers/staging/rtl8188eu/core/rtw_recv.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 0d04057e6cf6..35684514c79f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1336,7 +1336,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
 	plist = phead->next;
 	pfhdr = list_entry(plist, struct recv_frame, list);
 	prframe = pfhdr;
-	list_del_init(&(prframe->list));
+	list_del_init(&prframe->list);
 
 	if (curfragnum != pfhdr->attrib.frag_num) {
 		/* the first fragment number must be 0 */
@@ -1663,9 +1663,9 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 			break;
 	}
 
-	list_del_init(&(prframe->list));
+	list_del_init(&prframe->list);
 
-	list_add_tail(&(prframe->list), plist);
+	list_add_tail(&prframe->list, plist);
 	return true;
 }
 
@@ -1704,7 +1704,7 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
 				 ("%s: indicate=%d seq=%d amsdu=%d\n",
 				  __func__, preorder_ctrl->indicate_seq, pattrib->seq_num, pattrib->amsdu));
 			plist = plist->next;
-			list_del_init(&(prframe->list));
+			list_del_init(&prframe->list);
 
 			if (SN_EQUAL(preorder_ctrl->indicate_seq, pattrib->seq_num))
 				preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) & 0xFFF;
-- 
2.17.1


