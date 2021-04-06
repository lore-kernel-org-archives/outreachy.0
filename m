X-GM-THRID: 6947995427572547584
X-Received: by 2002:a05:6402:26c3:: with SMTP id x3mr38805652edd.126.1617711000884;
        Tue, 06 Apr 2021 05:10:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:3592:: with SMTP id y18ls77976edc.0.gmail; Tue, 06
 Apr 2021 05:09:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzV8BFVcfPp/tmllNueVxdnO1+sG6bJrZCsVOUSmbnso0W5Dg94/h2b7izvX3PzP7KoVTBd
X-Received: by 2002:aa7:c5c4:: with SMTP id h4mr36068206eds.375.1617710999522;
        Tue, 06 Apr 2021 05:09:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617710999; cv=none;
        d=google.com; s=arc-20160816;
        b=Uvs3e+dHFgedxPlPkHDVunLcMlcpAKoslEpFvOVE0na32MNdRz9blbHtfpVx2sgYfR
         oUqvxgqIPzujWKe1JYB12x4+ld7Zx4UumqGXw5cUhQWappDE920v1SUgo3YrettucdCa
         O1p8Ie1uAxqcZiU52q1A3nQs/2nQRySr2KhVmgDegXJ+jTkJu5IsmFA3PqBniWK6rc4K
         d0txZ+a0ldxrhCAWym2BP2VJX9j1efvq7mU+caFzi9lVkL/IiuhLvG4YlhgNpMd9r5IY
         /BkKK3cvYjTenmH3o2dCsnxW3kZVSAw1a7V24/LSibJt4GbEDVMCLPKwF/f+MSLw7cBL
         4+Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q9WBuK6OhOs9OaGEgKhL5YcwsAzLgbzYaT8/doodq88=;
        b=dp1nXf+wCZwMXJaBS48zzYZf3rknPW4tdNG0pw5uHAYnoWaeesnIShwmEE8keNSINx
         bX4j5+AVhpfgrspXXj0MtMWVTYIg5lMI8cq+XjMbVNAsqNeydGrw44/MSmdXLpQc16Og
         sgsm31dvBwiak0F9SliV1bK8TEviQtsKa7hiuPyzzeujqullMmm0pnIBJRCU8CFp9X/p
         MZNLHvhTrkW4alcBoIJE2If6YAIjZ2MVIUeIdSGT5ftuAa+jw5JWV1Q6FaFQa5I9rY1d
         cUvp1AFCI9HYOezv76YDVOmd9xBPc7zh4zPEDGl9MPv7IjpoBqcNEQBeFvSFGfzv2aLr
         6fuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lEgLOvzI;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id df6si797643edb.3.2021.04.06.05.09.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 05:09:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lEgLOvzI;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12c.google.com with SMTP id b14so22299508lfv.8
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 05:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Q9WBuK6OhOs9OaGEgKhL5YcwsAzLgbzYaT8/doodq88=;
        b=lEgLOvzIKJ5bhK8vpMojTcxMOI2srsJUbA0cmAWbtDpyYtzKh0OyK4e9qe+f0bBg6G
         VnFiVxTaQEBGun2Pp+Zd7XrHiixkAgnSsXJXDKvx0RlQIn9zlhs006Oe9oSEQTo/47GM
         fVE2Hf4rigm9aNECIAnbYhWOa0/mbvWiNp4rmv/LwNWe3YH7EtURckj6phDmIXZuT5JN
         skxq4o6TQD5J5nWa2CLHAQ5hMvwOX9RVAv13ZzEJPlSMbPKxfmGV4SRUleXzS8yM6IUw
         YtXKBAAR2YWMeX3c4+P3ls8ddbgA2uIE/00O57vXuP9O+pPMD6wgk93Jb+YA6ADTRGuB
         wSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Q9WBuK6OhOs9OaGEgKhL5YcwsAzLgbzYaT8/doodq88=;
        b=SQqajsjcwODtn2QAzoahHEGBMmQQ00eOFsopC9VZPylLV1mPSlDSJGlu/vEGj607PV
         DDjwG+3F5skrTNJVhUPFtL/nlgaU6PU2GGpHDb9Lpj6EGjcTceeYaTU6a1sN5FLICAJH
         zrx3q9N4jt1f6EWIuPORWCaDL9Bg8FgaO8utr4EbttfYbmXpWwY0KfPdu+LHONjMQXzF
         yLDCq++L/tcJg6u7W7kAKs+MBmZ5fmxCBaB59Ilw1uPR/WrjqdHcg2ZTYjLfkzbQCmqn
         a9e/+tTHcSWRW1E1DCEcHqNkI/M+PXR7QQjKbWxq+wRQunbmUlWs19/bfKUzl+37zvHs
         8IGw==
X-Gm-Message-State: AOAM53026HQb5XKOd5W0Uh1cGMA0uv01csLuXoPHoQBUxv1DzL4BfzNs
	x5D384ZxJR/b5vDUoIhVE1NsvEFHDdTPDQ==
X-Received: by 2002:a19:6910:: with SMTP id e16mr20427477lfc.482.1617710998819;
        Tue, 06 Apr 2021 05:09:58 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id g11sm234319lfc.255.2021.04.06.05.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 05:09:58 -0700 (PDT)
Date: Tue, 6 Apr 2021 18:09:56 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: rtl8712: Rewrite NULL comparisons
Message-ID: <74471865b399584d73a18696d2008006301dfd71.1617710602.git.zhansayabagdaulet@gmail.com>
References: <cover.1617710602.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617710602.git.zhansayabagdaulet@gmail.com>

Replace NULL comparisons with boolean negation to be more consistent with
the rest of the Linux kernel code base.
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


