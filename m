X-GM-THRID: 6668981360875536384
X-Received: by 2002:a1f:bc4:: with SMTP id 187mr6366090vkl.1.1552764563148;
        Sat, 16 Mar 2019 12:29:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2c98:: with SMTP id w24ls2197382uaj.1.gmail; Sat, 16 Mar
 2019 12:29:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzAN63IFsXm+caskumZxKOb6Vl9fy6jjzlD6jeFDkLtQk7OeJLOZIlUSipzCvKfGxoeWE4C
X-Received: by 2002:a9f:2d84:: with SMTP id v4mr6489781uaj.22.1552764562288;
        Sat, 16 Mar 2019 12:29:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552764562; cv=none;
        d=google.com; s=arc-20160816;
        b=t/CDmft+puvX3eCpD85BTvPvZEESkzMTM+OHhukNtu4vAxPN69P8DwehGx5Mfi8Bl/
         PwFnktJsMDeKGN7UZBAcn2Xj/gQAwHJ0oWmUI0DcMUP34a7eT0VKm01qtyPq1Jzq4J8b
         YM0Re2cZyWPx6jA/Kj6XaReqlZCC7M6nv4XKcU7VaW5xC0TbPWx4AbYVN10KHkfKa56o
         rb29xx1R1oHYX2QPCSp1AutVXxJyUvVriH2tNXYhIxEIr6K0ooogPSAAo809SgnjVCtq
         yuLsICuCzW74GS/Dw/uFEWYJCLhAKh//KRmWluwvJwM91M0EPWOpejhe3GQJS/5b/FMU
         u9UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=da/fNRvX1FcZZTviZO5/EVFDP1US+lXkXVaLHXuDTrE=;
        b=LWAncPmqu8ReSFmEGoloGl62uSSp52XThB4Nhno/8olD/khHh+bKDW6x6AHoduKb8R
         91TAGqWI/GC0aCVLfJTs7pcpfng/uCpWS71x61En8iTJrbAvE1yll/n2gc6Hg6uDEQbY
         ohCPatFwL4FEjp2+Jh3XyENh7zwRJ/a9HIsaVUP2B9c1X+npGs/LPuI0yduc7pT4Sa8/
         XzRKwjPXZmQls0EsLrk5KBKtauo2GGG1QdeeH6zIG/dQaE1s3B8GdjfNplpLOzclM5F+
         Mk4LzFFaNPqodO7sm9Hc56D4VHDOtLoPLVbjgaW9ijEZKuKQcUCnYiysDBsBgQAyyP9r
         IpSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hxuQirSi;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 12si82023vkg.3.2019.03.16.12.29.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:29:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hxuQirSi;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id s23so8555704pfe.13
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 12:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=da/fNRvX1FcZZTviZO5/EVFDP1US+lXkXVaLHXuDTrE=;
        b=hxuQirSiFYp/kSqSGoXqE3h1kglmXjx9JdplS1jfedp8dIHwYES6wDgsEayPuy3bQt
         vXXbqQ+5AVW9AXnbUo1iXL6m+/n4GZekC9J4+f17yKKlPRjP0KxI2BeIvabSx/exEfKp
         SOTo8+9G7XzyEjaFZ1gldskCyyVpgku0wPlRMslLC4JKqhyzsGjeJagNxSFKwQCZRWUd
         JmIWWXnI1ZbLJR80NF2Sfij4PSMKd1W5Nn3IDkzqGNPiQgtktWOkFYc9w8XcJoOWpf/g
         qcFZ2TVWgITL9WPY176N9rbul+Ajfra6h/LWa1hmscp1tPmbEZOfTw/ITL5UQNq7c7Jo
         MVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=da/fNRvX1FcZZTviZO5/EVFDP1US+lXkXVaLHXuDTrE=;
        b=RPd5JkYsyFi3E/wHmbFB5mXrqtXkW9EP2YNKqDioefQGfNGEmDsL/rU8cVjFL3FoSd
         ZhLMfJeJQ0vApQgpSPUkWlfhpMhfmgvpml531NpL9YlVGjVLDwMhELWxW2ICeFGkqFST
         cw/8D1nMBqVdGtfyOBc5RJT+eKXy1Nf/eNiIFxQqwsvEstBm9PcEgk+t8Mmp3cMa56uy
         0wqw3P6LexduEDhjcsEd0+ks+/GAdr5brDzG2U1yWGIl39mwKZ4g1zUjUcXl4SmHvuX1
         n+z71f8a/CJrCyysPi17DQRRjnATfOgyPkXGyQbyKk/EGnGYOIPbFnPkMYM6C4TlWWTz
         ckLw==
X-Gm-Message-State: APjAAAUAOQEizZRj4wTL9sj2dl+WYAbFiIHb8ONk/TersAJjMzpBlMTC
	0lCPB11oLd48DJK3ZUubWQs=
X-Received: by 2002:a62:b40b:: with SMTP id h11mr10713153pfn.108.1552764561415;
        Sat, 16 Mar 2019 12:29:21 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.92])
        by smtp.googlemail.com with ESMTPSA id a1sm8290145pfn.26.2019.03.16.12.29.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:29:20 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/3] Staging: rtl8188eu: rtw_recv.c: fix a paranthesis issue around pframe -> list in rtw_recv.c
Date: Sun, 17 Mar 2019 00:59:10 +0530
Message-Id: <20190316192910.23259-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

fix a parathesis issue around '->' .Issue found by checkpatch.pl semantic patch results for
rtw_recv.c

CHECK: Remove unnecessary paranthesis around pframe -> list

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v3:
Change the subject line from the [PATCH v2 2/3]
Change the log message from the [PATCH v2 2/3]

Changes in v2:
Remove "From" line from the [PATCH 2/3]
Change subject line from [PATCH 2/3]
Change log message in [PATCH 2/3]

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


