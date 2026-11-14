Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.41
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794642456;
	b=mCYNO4N8AALACrVfvFtyUBQ+SxfQa9Otgj5RcHI6Uabee6ofqTGCvXOePUSuNpCAru70
	 LEaTWz0zI+TVv7FLHcqDbtP6mne5o9b6bs8fqYDiwFAC4/LBvnn5LCctZXOWzGb19u9G2
	 N4nKP0NNGbGMwrwAEChF3/VshEtzO72gmOZrwJP8U41M2K4dM302oGH1h3L7riw72FRBL
	 dpfaVt3mnFc37eyfGc9zyH3Ckzqh0ihfqQqv+YNftKh6bttdQtipGwTzuGSKwXZjdiFzW
	 tJa0yDOQmm8bINlYGOpkwajoJps6vIzCfjIjMvG+aBh2e0nmXFlwODn33vbo5X3BvTw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794642456;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	bh=LoEuyPAEuv/KtMP2tAI822a/WrEKEfAXHtneAA5BxxM=;
	b=bQuPFGbVDVFtE/xD3EkP75cMWAh4q1ULY7rgQngw8hhd0pHevpTV1xqzoBTfheggdcXB
	 A9JFXq0sQWQUnc/3FX3kZOeN3pcUY8b/AeMwKGLnn8Zz1D8x34V3zeVla5OuBpmbAgqTS
	 GQjTUoD06vPZsAClElCwn8m3bp0vqSNZvbhotrIEtBQkhqnpLqz1dhH4zxR6d+CCLLEO9
	 5IsDrBebTVyJ9SKlapwpSx12jnYqe+bXiNkqTYfuUeT3xlg4VRHyKCrauc0tm2sCRRwRY
	 plAMe7TO7qno2Go19mTudzGUtSAYuM7/bG/u17EbQ2eETuaj7TQ/V12R3PYeDLixB9Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=aPjlTAGf;
	arc=none smtp.remote-ip=74.125.82.41
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA73606A329
	for <outreachy@lists.linux.dev>; Sat, 14 Nov 2026 07:47:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 7CA73606A329
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=aPjlTAGf
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-1a2761c69fbso1351755c88.0
        for <outreachy@lists.linux.dev>; Fri, 13 Nov 2026 23:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794642456; x=1795247256; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LoEuyPAEuv/KtMP2tAI822a/WrEKEfAXHtneAA5BxxM=;
        b=aPjlTAGf1V69DyKEdB0Rdan6+l8qBZFT2I1YnYS2WemasItX08isWJt1ciWaIVKfiq
         3UN7gnwoSJmtoHeDZjYY6V8SNk721AqaBX4zFUY38ufWABaOyPr0U3GExeriE+LNTdwd
         skMfAwYwbJbkGOxhsK37Z188OxGuq42rRGP72eo5Gpp1OReh/7VLESbawXxnDaz4dcix
         TJpR6TvRi8acD6QAVGm37TFjXdK82Rx6Rc/fX6FNNNbIECIEta1E8HHw23IwA0DnSEy4
         n62lGFltbug/vv0k3uXA5YEE/z9yNg8glCROku3NhpphlqfnMsFKJdnwis8DNS+RQlFd
         WyNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794642456; x=1795247256;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LoEuyPAEuv/KtMP2tAI822a/WrEKEfAXHtneAA5BxxM=;
        b=VrXqT0Dy/2te3vXpS8BVIa7yrX9UySgvUmDAAk5flp5CPJ94G5dPHmf0/XpBvheRrG
         y8CjpDZ5p+0w/mIhw004kgPRidJFOF8SibDzo9nGf5pC43kyx1MXwsFdkSkpNV/QA7BP
         nqHv/A43WWywF4dU7YvpGujmOrXlG8wbIzKRr8AnTmwlpjeQz4oCMEOdUSW5A9PWNPaK
         SJsNyHReXaFFWsi4eUHZj/eKNT1thEmsgYt6lLdtZ3INye+s0WhDXJAccTrhLklcCkUv
         3NyPCewcCfetgi90UIjLCmT+V8gm9ZESZ9FSEkWVXusow3w6068LigzvqJAQKN22Fvjh
         v0XA==
X-Gm-Message-State: APuU4Z9VNrzgRJVf11DHJ2PAJJBrroESElegTksyEbJV3B5NP72ShOvs
	DGEoO/50grNzR5WSBEhBpsIfIZVUdt+qHbyswvB08hOxuZBOgLzRF/Pi5V92QG2lw2U=
X-Gm-Gg: AYBFou3gnY8k4vIXmyPY7Yg7uUhnk++EyutmcxtVFqWZnE+4kbwtyn+gD1tq4Y7Qtaw
	lh9esEEOy+HZOAwsbHaBIoEwyUagdIpT0Y8MiT9DXfFW3fwGjEGyErmu/9ND5mwf4j4gVgPro+h
	ZzqTc5Rq6C1N7NkMCG1jnp1zzczvuiMGLBcuMYGwUxrLiqSOoGvJYI8m4bqBERbNaJNlurV5HXy
	zfLjfD8eELsxGDs8Pdd7SHGFSlzxxWkYhJPTzGltq/r4Z/PDubSAkEGOadVKIb2rqkYdAfl4Df6
	K8VouBNVp4dUNoui3BobENUVzJjiXm8+C7X9ZmkQYMBcDIYRYrMB39UhKDqdTnWkq+If3YttNp6
	LAHBch3pBN8JyH/bUw+XQYJZZRsBvVg709/j7e3MwPKjopgfC1eIQRMqTAuqPi54ZUirCtuBwLw
	yvlSHdOKJm8d8SPPIUaZjn5Mp6jIqTwNwrT5LmYePZcaQpXx2L+gQeUR8ANfo+EICV82ySHcnyt
	YTCSumVAwFC+dhKaFsBReMLiCs/i1TeM3YvNSmkRnyj8KfefmLWuRZXW4XfsPa11ySwa+l0EMiA
	4FoxuW0dyNragGFu3XHyC7BCNTpcwpOgTp4euZEcV1PmrtjRIxTI0yKXhMgN3QvpobD2+vKVIZC
	/I8/h7O1I5XkzfJ+NkASAaGpIFEes42HqNNgXuAU+ROvh
X-Received: by 2002:a05:701b:2802:b0:1a7:78a3:bda8 with SMTP id a92af1059eb24-1b50318d7abmr4653633c88.27.1794642455503;
        Fri, 13 Nov 2026 23:47:35 -0800 (PST)
Received: from localhost.localdomain ([203.92.58.30])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-379560f5e06sm18467132eec.19.2026.11.13.23.47.32
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 13 Nov 2026 23:47:35 -0800 (PST)
From: Shivani Patel <patelshivani2283@gmail.com>
To: outreachy@lists.linux.dev,
	Andy Shevchenko <andy@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev,
	Shivani Patel <patelshivani2283@gmail.com>
Subject: [PATCH] staging/most: video: add lock documentation comments
Date: Sat, 14 Nov 2026 13:16:58 +0530
Message-ID: <20261114074725.24319-1-patelshivani2283@gmail.com>
X-Mailer: git-send-email 2.50.1
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

---
 drivers/staging/most/video/video.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 3a0445ff6..12ab06919 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -33,6 +33,10 @@ struct most_video_dev {
 	bool mute;
 
 	struct list_head pending_mbos;
+	/*
+	 * Protects the @pending_mbos list and the @mute flag while accessing
+	 * the device from interrupt context and user‑space.
+	 */
 	spinlock_t list_lock;
 
 	struct v4l2_device v4l2_dev;
@@ -40,6 +44,11 @@ struct most_video_dev {
 	struct video_device *vdev;
 	unsigned int ctrl_input;
 
+	/*
+	 * Serialises configuration operations (e.g. start/stop, mute) that are
+	 * performed from process context. This mutex is taken in the open and
+	 * close paths as well as in any ioctls that modify the device state.
+	 */
 	struct mutex lock;
 
 	wait_queue_head_t wait_data;
-- 
2.50.1 (Apple Git-155)

