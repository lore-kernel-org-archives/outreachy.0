X-GM-THRID: 6668981360875536384
X-Received: by 2002:a67:788c:: with SMTP id t134mr5363865vsc.18.1552743444638;
        Sat, 16 Mar 2019 06:37:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab84:: with SMTP id u126ls1980780vke.0.gmail; Sat, 16
 Mar 2019 06:37:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz1KCFmdD+ZQKlKcHUzNto1ZKCyT8QhEq+Nm0g1sfcw9UqKBk2NJFt5TrtETQt2037qaks6
X-Received: by 2002:a1f:bc4:: with SMTP id 187mr5467953vkl.1.1552743443846;
        Sat, 16 Mar 2019 06:37:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552743443; cv=none;
        d=google.com; s=arc-20160816;
        b=TdlwKTLm+PVF/112roBiKeB2Cf9zRqFict1/SeJ4cYMQRHByKahJbwp/N4f/TsAJst
         6f9tyCzrZvnDqKJX39JPPUegqZ9ih7JmEWQNIv37mrZRKnkI+q9+psFos9U/Vjm9RzUu
         Dr0P/Y+Qe0ARAW8ojrwrtGC7ArJLOsc+gVXVR9RjV7MMZJyXBtk3giNkW0n+MJLxTv6U
         /r+i9CWavUkDRl4H05Pt/B015HKdUNb5jD2Sw4ItlJ4ysLsNPKymlnngIdIR9W68nDai
         /soKLsFpJFoD8luFa8jkfvnakmPmHNUmt4k+61Ld0eCC59ZQn2LT9saJ7UW+hutdSPUg
         hgSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=i8zWsBGhM56fL/JpDqDpD4C45EImMqmkE0hYym7P+ws=;
        b=ijmjGZk9QV2mA91WhEwxK/QAEF0G84mv2NgQW1koth3WJw3ykQMxG1NqNbTtWi7tRp
         CNzfm2OSMjqi2pFzN7jHkxsubuJYHLiwx5T3lZsO0kgvPc/jtvFU3aUGu+yFsfyF4JY9
         u64MCF5pHJghACl3g6gODQDSvgi8A+HkTA6LeYyia2H14YPz0g2NHElBq/OsOs8FwgET
         kInJxiQGoMLyXtCzs4TqPz67lkL2qy4Jl01iRl49kcvmgjkV6f+Ln+LW3bix2N8Y0DBj
         8Q6EJiEH7FCuzOVoxMBaUdOQgacnptkgk9IfJN7D7yi5NXNO21MiHOcSrYjkKmMMLU/h
         T48Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsuUHoRf;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u12si362336uaa.1.2019.03.16.06.37.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:37:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsuUHoRf;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id v1so3639154pgi.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=i8zWsBGhM56fL/JpDqDpD4C45EImMqmkE0hYym7P+ws=;
        b=bsuUHoRft2h/FHUjTUQiyk9GOjvO/Mb7rCq2Iy1W1GDPWtUt612Xq7ZGhcHf8Mh6o/
         N40D1/cpSDjhTOY5zoGghVg2vHkfJQgUZauXXPIsSPzlmiYdX8urt8rZdzKSyLpPnXke
         /y/WjoQfAtIx9RbfR0gW/fPMaod6moxgkhMnCLe67L2wxlqGcVFcfZrn6/q/xS40PFvu
         cEIcHvti+ks8VeIinNIcoAG8PmZ35YQyOTPMwFnATWtpVmVsvgBM3SEdk17AR1g4AJcj
         JRfmyKxLD35HBCs+h/GTjkB/f5IE6t0XgbgK0B4k2vcK+7T9z1TTGZ9az2RlJ416TARr
         XtUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=i8zWsBGhM56fL/JpDqDpD4C45EImMqmkE0hYym7P+ws=;
        b=ALEEgzxaYX7MGsXeW5+P+t8dUIT4pQjBpEizC3smsXDglIriAilwgfegVbgYMEQBhm
         YlU0jqBhES8AweTmMe7oG5gncnl3CIXF5Q8wA5EtwRD+sV2oQt11FOJVaQkiBwKzBGkQ
         x5/RrENToRUy40Gtgzp4cmjbjA5HmJ4y+r5zi5o4zul30SypWpUiZTD1TVOAL+U4mjvl
         5PaQM0bKGlS4lfTvByAnDj03bQoboncaNZqgbF2ZHVj7m2PS4OPVpNJOxOVd9fSRpL7i
         AEwumo8kbrZD3WGHFAzegqKy2faXZaXmt7EiYNJnlhjxdycFDDDDiwrfIrvJJm0/Y6Gw
         RQ4A==
X-Gm-Message-State: APjAAAVQLZoeXfs13dj+ykQNZCdn8hzGQpBbS9EzTaTxwUPUATVymHCK
	7V8YHSR4KR5p3/LGxJu8y/mMa6wY1jM=
X-Received: by 2002:a17:902:2888:: with SMTP id f8mr9964755plb.244.1552743443003;
        Sat, 16 Mar 2019 06:37:23 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.23])
        by smtp.googlemail.com with ESMTPSA id i64sm2321019pfb.112.2019.03.16.06.37.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:37:22 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Sanjana <sanjana99reddy99@gmail.com>
Subject: [PATCH 2/3] Staging: rtl8188eu: rtw_recv.c: fix a paranthesis issue
Date: Sat, 16 Mar 2019 19:07:11 +0530
Message-Id: <20190316133711.8968-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

From: Sanjana <sanjana99reddy99@gmail.com>

This patch fixes the checkpatch.pl CHECK in rtw_recv.c file:

CHECK: Unnecessary paranthesis around prframe->list

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 0d04057e6cf6..fc72e797f8e5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -64,9 +64,9 @@ int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 	precvframe = PTR_ALIGN(precvpriv->pallocated_frame_buf, RXFRAME_ALIGN_SZ);
 
 	for (i = 0; i < NR_RECVFRAME; i++) {
-		INIT_LIST_HEAD(&(precvframe->list));
+		INIT_LIST_HEAD(&precvframe->list);
 
-		list_add_tail(&(precvframe->list),
+		list_add_tail(&precvframe->list,
 				     &(precvpriv->free_recv_queue.queue));
 
 		precvframe->pkt = NULL;
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
+	list_add_tail(&prframe->list), plist;
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


