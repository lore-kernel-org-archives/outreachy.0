X-GM-THRID: 6668981360875536384
X-Received: by 2002:a17:902:6b0b:: with SMTP id o11mr4120626plk.85.1552820328939;
        Sun, 17 Mar 2019 03:58:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6c81:: with SMTP id h123ls5295788pgc.5.gmail; Sun, 17
 Mar 2019 03:58:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwOjZjAB7Z60r07Yhimc2YnHIVItW5FQ3Lp5Wd8gyuld//O3uEKUY5FM6gFWaI+6cwr2DjA
X-Received: by 2002:aa7:80ca:: with SMTP id a10mr4632047pfn.50.1552820328348;
        Sun, 17 Mar 2019 03:58:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820328; cv=none;
        d=google.com; s=arc-20160816;
        b=bLSLf+iyyLHdC3Jqo0PpgIvgBpaVNO1uQbWVHouYpV+TEqggjCzkrfwM6t+P4nU8Oe
         Yg1udo2q6zdluDJbqq4a4DPaQYZR7BHn/aZRJW/vUOHUjcFtcxSeFvYfP+XpjaV33iGM
         5gRHybGmq5B05lAEfGLKad3N+vHmEK1c5SYtTYvPzSCrm2l76Tq3E+/TVa2fqUdBmyZ9
         49ZmRHWo3gC2G/KOcMFQAI4jCBM3C6W0QptV85w40rFY/L+vz6CJ3fZTi1BRvJVryw+6
         62zabyPHw28iMpEk3amLEyqoUdpvs9ouww5C5yLJxIFMTFJgD4ldhiMH4a3AVCWigzrt
         Xnfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ULqYxiXbFNAXd3C35mbqkgkqdlvmve3t4UAQqldzLp4=;
        b=yp1z5D8LsPcORo65oErgy/Y/b/7mLdnD/bFmu8c0fB7Foopqn3Ih7ubt5VSICFQCgZ
         GfHbL/rkBHWbTrVtJbot8KnjwsJnvX5u92sF4YOsCTKJZtbWhSJqfKOtwd0qYSEkEWDk
         9kNmvI+RfnkQDr1VvzG/ELqa1JMldu4ZVZH9khpZwUc0Np4XbyCfwN4dGfa3KyyYXRiJ
         KWXLg0yECkxN9SsL2Uh5iuq5iaylwipzLT4LRHdj75YiD+UPHaFcSurzE2bcKJSz0R6O
         skslc3iUbaXSxKmBHKiWu0uxtHSEaGZHxS0q0AeNOpbLXGWGG63ZVF5odIfpR4rG7WCZ
         pZNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Mmfx/pgb";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id r133si422480pgr.4.2019.03.17.03.58.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:58:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Mmfx/pgb";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id d25so9304771pfn.8
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 03:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ULqYxiXbFNAXd3C35mbqkgkqdlvmve3t4UAQqldzLp4=;
        b=Mmfx/pgbfQX0ZWJJauzYlvFtHAiS0GCrFSdWqG5p+sxKrgFyrNCjCCdy5trUKZr819
         M82RAb2AfkplnqYPHmrr8TU2z/KIeJA/16otII4k6z5dCeD5/xqhnORP8qb9HpIo9mWD
         EaZxcLzcq0xCXBSKTBryvXhP8VU8VvMg4WCd02R/llCKJeZoIYG2/5ZLszGd+c9jkhU1
         hwLmWKlCdZCcmnVu+Ct474v4eCQdxwcb9O2jS/Ny5X4l0HoyvvklnuVHYM0KoX0iRY0F
         pO4Ks+lpFmlBrUXm+tIsP8OZsoHlvpLeXl5k/tqUcS3JNknSHte4lQxnGc/7GKp/lPRx
         k42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ULqYxiXbFNAXd3C35mbqkgkqdlvmve3t4UAQqldzLp4=;
        b=RyE5Ga3Ug0/DDE/vKu7fAApJua+x+HI9iDnv9DpepnBTI0x/6ts5RRBNkyiPbj12Gl
         yfnPDJa/k6CwwjJ3OPkWpyIGfEj6FXfm1z1l+ZwwnwlukxvYtIVAbDTZ8sXEbFzNAcjB
         CUPUiKUqw4uAWUT8ojnOv0vO0gKoZ7z7JhQ+SbdfkK0XdR8/K7g1DK3+Kml9YTHRThKS
         RU/7Uz7/laLo5RSxR45Ivmdx3cmNXQnvHzAGb+f2LPsKrbSfapUmxjXoCbva9xrZQVuH
         dSukVVBsZjP0Z1nwpTz653eAZpg3RDsN9H8DuuDPTyz4QnHSsyX4gTIdMwPhJbd1cKi4
         lvWg==
X-Gm-Message-State: APjAAAXxXbvvxWVR0GnyJaKk10PCF6gWVhSGXt/17K6Kg6zvmeV8RbLE
	d981F5QopFJ394jagzgd7CEol+WASu4=
X-Received: by 2002:a17:902:968a:: with SMTP id n10mr14224325plp.283.1552820328163;
        Sun, 17 Mar 2019 03:58:48 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.100])
        by smtp.googlemail.com with ESMTPSA id g3sm8999835pgg.41.2019.03.17.03.58.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:58:47 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/4] Staging: rtl8188eu: rtw_recv.c: fix a paranthesis issue around pframe -> list in rtw_recv.c
Date: Sun, 17 Mar 2019 16:28:38 +0530
Message-Id: <20190317105838.3112-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

fix a parathesis issue around '->' .Issue found by checkpatch.pl semantic patch results for
rtw_recv.c

CHECK: Remove unnecessary paranthesis around pframe -> list

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v4:
Correct the version the patch sequence number
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


