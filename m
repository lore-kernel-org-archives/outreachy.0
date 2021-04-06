X-GM-THRID: 6947995427572547584
X-Received: by 2002:a05:6402:27d4:: with SMTP id c20mr37501277ede.271.1617706247703;
        Tue, 06 Apr 2021 03:50:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:76d3:: with SMTP id kf19ls5109494ejc.6.gmail; Tue,
 06 Apr 2021 03:50:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyXJTooa/xvyu5Wqp1xUZ+fslbx4OEAqDrks7535A66USHtakWeOCvmEMr2pl/f9alvYVZh
X-Received: by 2002:a17:907:2661:: with SMTP id ci1mr32795897ejc.403.1617706246321;
        Tue, 06 Apr 2021 03:50:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617706246; cv=none;
        d=google.com; s=arc-20160816;
        b=xiyOaI9LdMfj9OdUSJ5UdWGO3HsQPW6qzgC/VhMLBB3L+Ceifr8zLxS2sOTbdtiTG2
         q8Z2J7GtbjBQTZrjrM79L/elyzXK9+cU/DlXY22ei1mVZjo5R3hVdpTeX8cy1aD/JoFX
         qrwCtj0CfiwibgW5N3TciyzPz6uMX9AGtfnzebY9P7wFKjkmtayf2JUYul0CExTaCstk
         RayLfVi8eS6Fq/7HroFEjZtstrCHwF5YcQOqQ0QbTSgsy765mDKjhHKAyX13RUqkijQ9
         Hzx8Tn6cm5K4bovHOEuSeXPqGqBrEgtz3jLc1OeIkHDfsShcKf4NNFu3iw+fUqdPXqIV
         lVyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xqub4sjt54FzRQ/fvsCh/tHtwz+sQViLhigZ2eLngb4=;
        b=Th9fW9WzivlANQxv712/i/e/KSHplSQzRt0TXfC7CAmGOIlgqMMXNtqHiF1efKVASC
         pmIB/rS/vlJZ8PttpmtGDSPKwLfqDK/UeVYxVpvmk5Q98ZYVRwqPy/D07Jckqrdk6Y0I
         sqRfkpGd38qR3cwRNG6zcWSMFHAiOcAXiHlRhE5+qdZWCKrKNFPbdhXfBCYox5PIKsXo
         qTR8km/Z4DAzvlwAq5M8Y9LmFsUA5kh+L8pYRjM+ikEPeFwGG6YqKbq2tn1ONKl+kJ45
         X27l0j66nRiCeJTrsQu1ZCejusYnQlRzARZEAlZDV7yDWSQidjczIanDCn9ZEn1pGGmk
         fvHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r9rPmSK1;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id dj3si1736558edb.0.2021.04.06.03.50.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 03:50:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r9rPmSK1;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22a.google.com with SMTP id u9so15939108ljd.11
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 03:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Xqub4sjt54FzRQ/fvsCh/tHtwz+sQViLhigZ2eLngb4=;
        b=r9rPmSK181dTzIRu5W6qSmFwkzrtbKfqQSHTA3t6rYq2A+KdxCyylz2wmxcThUHcUE
         zThVGoqkt8SQA50Zc6kr47yE2tjG0BP4l/cghORZC8K/kHnQ7iunzjyZx0/xD3rOULv4
         89vbMiwn97pRzkhg43f6gpS8hfl3ppLDIFWhSyvnb0TEogtduBjTjyYkxatAGQRAekPq
         MiiFS74b2EEwG5IoBjT+kzfLeWLXkn2ihPft6fK2RlUPUyG+ZHMjk2bEz4v0uJpuVZmn
         TrO33fcnu99LSnzwUMDv7j2fArKcgROp5aF2UvrasSeblJztqvtW1s5GmjvmtA89u6/P
         XPQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Xqub4sjt54FzRQ/fvsCh/tHtwz+sQViLhigZ2eLngb4=;
        b=WJMXoLR5bJuq1ir/TS025e+s7B5squ/4WcXgzFZZs7TCIkXP8e1knkuml0REt3kJqG
         N9xFaQnK0F2NfpF1irL3OxhMIlFsC8cVgjX7ooV/HttZvEOtfz0QRqMZ1UVXm+PTWJoH
         yzLYtYU88UwtI0Uhe+hR4owr4izzxYfaZmKY5OVj/pCFEQ3/Q0Dmgbx4er/Hi5X0QCN9
         nQfvIVXzF0yD3oB3+Ohx7qusFZtHKGJb3MzAy9Xb8WCI9j7A1IcvFl5ZhHnX83ispDqb
         xBODIGHocNFNzO943y6t2yhst6sr3wEbLclyRIs1vz9ty/KG1yCKNstkg3WVRmfJaJgl
         Sgow==
X-Gm-Message-State: AOAM531ZvRSIswhdZsViGtS/QW4DToPqP7DNZ2GPAYzBCKGEh3WMZhMs
	Ar0T/gXB/2NPXv50XhDUTtohWA4rqO+BaA==
X-Received: by 2002:a2e:9cd5:: with SMTP id g21mr17846362ljj.367.1617706245555;
        Tue, 06 Apr 2021 03:50:45 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id e15sm2235374ljg.54.2021.04.06.03.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 03:50:44 -0700 (PDT)
Date: Tue, 6 Apr 2021 16:50:34 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8712: Rewrite NULL comparisons
Message-ID: <5d2db1d233030ececcdd4934ca9c46cb998c0c5b.1617705825.git.zhansayabagdaulet@gmail.com>
References: <cover.1617705825.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617705825.git.zhansayabagdaulet@gmail.com>

Replace NULL comparisons with boolean negation.
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index 7c9995060a6f..4aa39f4f3b84 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -135,7 +135,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
 static inline u8 *get_rxmem(union recv_frame *precvframe)
 {
 	/* always return rx_head... */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_head;
 }
@@ -143,7 +143,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
 static inline u8 *get_recvframe_data(union recv_frame *precvframe)
 {
 	/* always return rx_data */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_data;
 }
@@ -153,7 +153,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
 	/* used for extract sz bytes from rx_data, update rx_data and return
 	 * the updated rx_data to the caller
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_data += sz;
 	if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
@@ -170,7 +170,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 	 * return the updated rx_tail to the caller
 	 * after putting, rx_tail must be still larger than rx_end.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail += sz;
 	if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
@@ -188,7 +188,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
 	 * updated rx_end to the caller
 	 * after pulling, rx_end must be still larger than rx_data.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail -= sz;
 	if (precvframe->u.hdr.rx_tail < precvframe->u.hdr.rx_data) {
-- 
2.25.1


