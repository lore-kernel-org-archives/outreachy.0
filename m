X-GM-THRID: 6668981360875536384
X-Received: by 2002:a02:5693:: with SMTP id u19mr5553493jad.5.1552753563071;
        Sat, 16 Mar 2019 09:26:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7d48:: with SMTP id d8ls394995ioq.6.gmail; Sat, 16 Mar
 2019 09:26:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwamLi56Bb86NeqrIhb0dCK3/RRF8nllmX/NkxdEDU/ReIUQdzqdVp3rdnl+Ms48vnOeAcx
X-Received: by 2002:a5d:9b95:: with SMTP id r21mr6161209iom.38.1552753562114;
        Sat, 16 Mar 2019 09:26:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552753562; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZSA+CPlLMPy3mTL8iqtvB877PudW8iSjbIpAiA2++koB3yRk+pU0teptPHiJYHVA3
         ql+ltY/jyUJR13QmQjJjFAsvSeIsweeAVH9Qa34OjrzTh6R/xgKTaTo1V9YpqQN+UZCm
         +UVFmMJmug3kVbEv+7t8YE/3fgFa5Tx9a5geYqACZubrgfk3U/l9vCDyg0BpvIYwUvu4
         YVkZqb/na0qG08Y6XZ/tcSuYKyZRRzlvj//yC8b53OKs4dsoEDrSGiqKjhStJv+8g6re
         ZiMqFM/0vYaxGQ4AQyq3Rzr/z9MarX/IBWwWwEuPSmXbZUeKn/y7ZyWk673JQaSeCbPD
         b/QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=2DUN2KuGDrpo9az5RAbNiHh+lFHnM8QoZrlo+Gcmnps=;
        b=jWUZQJuoX7utYzG8jzOx8EQ1xtXKRJVd6sUot522csdx/KwxUBYv5h7OwT8j1xR1U/
         RTAAAIPyfqG6aYzBbuN2A3Ogl5xiobUNK6nVmtjp/nEeHD+UKWpb6SM7rbg3woAwm2gB
         hDoD3xsrPdurbm0N+L1UDvnV8oDZO++d1ZSfznIbsdQqBnqWHzi7x8euJpbB0W9aplUC
         WhcGkk4cmFqKJv1zp4mkDZUNpJZlLUwxIAzOuz9J77hNf7zkuyLNO57OjzW6YatA2BLV
         vNezwSNpi4ZksTPVyavhCDx4RcdkiVa3+8jUy9WjTyGZRc2wIW3cv1JQ2SBPsT6zxIA5
         +ydQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bNKu4jdn;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id k26si205599ioh.5.2019.03.16.09.26.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 09:26:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bNKu4jdn;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id 125so8486341pgc.12
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 09:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2DUN2KuGDrpo9az5RAbNiHh+lFHnM8QoZrlo+Gcmnps=;
        b=bNKu4jdnHuT9AZ9F7wuhUBjdyipo2fAZNxpZ4eI4+MwXDlSwqpabyYMPv1jxhpx2dE
         K5ctjjCGumVZutTyocu6XF4EYuLJ6Or0+6XCxIX8ydvmJLk/hU+GQKDsdySJPAvCDo6i
         Jg+8B+gYKoNFA68cV4qYgFAIi9VYlBK4PizlLCgkuWf+jIbTKSIrmthQBrDvok8IJuKh
         sFKSVhfHtQNSVv4Q/zRQAyKNkb6REZ7r1ZMUetcd5yqgt0FR5mPlM6JeKBEF5cJxBfEr
         u/81P6duitKYovty9isDtrlt/IhN3JeOoN14V/Ay7XK9VUW85Wr2bbz1+PyXsmFrGPj6
         6aqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=2DUN2KuGDrpo9az5RAbNiHh+lFHnM8QoZrlo+Gcmnps=;
        b=Wn2wpB1ZXbrCHms/DmG8h8L0+R59K8z99vHx6RvfeO1e7PhTS/h7GGsSuxW4y5rvZO
         x0GV3Ub0w8tArqQer6qsf10rNpqYIaksoFXSB/npXrne8fBKBsejFI5D7f1wHI435s9M
         sVvbSkrHnyU/8n0RpVHRS5Xfv/DGOXTnReqcLCQJfVtDctzAhLbKWmc1XnPtUj8ChLSR
         fJf+b0XxGJ1E9wJiWBXotDOj58lkTX1GN1Gyf3XHtAKBc9wHk6Ykk5EWllTcdVxCgmSN
         y/2T5bq3/wx+bEfXE1FQuE6EC3SaOOMqNkrWjtaI0uKc2MOU6si4bVxIfI4KlGoCT7w6
         uaYw==
X-Gm-Message-State: APjAAAW7dqPLvH4RTqqVDTyf9gm/gxshzteKQymrZFuskiJXN7aTkm/3
	17+0JDsB3H3WKvk++pkrIWUh/ZiPjQI=
X-Received: by 2002:a65:4389:: with SMTP id m9mr8942584pgp.8.1552753561446;
        Sat, 16 Mar 2019 09:26:01 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.23])
        by smtp.googlemail.com with ESMTPSA id b15sm8059294pgd.44.2019.03.16.09.25.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 09:26:00 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] Staging: rtl8188eu: rtw_recv.c: fix a paranthesis -> parenthesis issue.
Date: Sat, 16 Mar 2019 21:55:49 +0530
Message-Id: <20190316162549.19083-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

Fix a paranthesis -> parenthesis issue which removed check after compiled using
checkpatch.pl

CHECK: Remove unnecessary paranthesis -> paranthesis.

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


