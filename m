Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.182
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793873573;
	b=zwuEeAyBsoMgyWN2umYpcEZM3WoccxtrHIRwQEr2Rl4Z7ubLbcG05ZKldn75ORuHt7Y/
	 OcHHPabr1sZORZPQwl1mSMyr7ZJ8bJUIdLMq9BSqPayNAkBVoiewrOj2b75JjZdKjd6ca
	 XovArdc1ToIzxRwpRp5kHAmq2O/KTkaIJ9S3W/tr8Ej9fQjTTp0c6Bu1J4NIOZcUfUOEn
	 NkOg0RsNLeAJSu8ra1Fy7jM3TxXXFNOXxnNLZkbPjw2fDs+oAQGPVkKhj8dfPuCSaZRj0
	 4jDjUnvi7+z+4kNYn8pb8UULF812XSL+kzNDuUke80Yo79EmljVSgj6UctAdG0YfTeA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793873573;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=P+/zfjidL1R10zub9C45JZCt5+i82Kyb9zsDu0eixEE=;
	b=RrpDGM7lswqDZULF/NSGzi6xC+5Vb5DTae7X1pofK2vycfXK9g/cStMqe3DQRXOX2D1O
	 qNooTE0MBm8fJTYsr1HZ1fMqAfZc6qynLbZp/zejkK8NefAl3aJoBj3mxif1fbOza+Mh4
	 UU6NIfnlyWcz5nVmtS3UBXe+0mvkcmVgv92Byv7zg/Hx6S5abalr6DBfbsc1jWyH5zHtF
	 Q9+4EofPoKC3NE0RvkRcshHRCG7QO44znbBqAqHFjJfxV6KKxjosrrlf2BOHDuBwfseDq
	 143c7cD9RTI676Zuz9x5z2ULhOZrUVgBbSD3k1JcF38Pio/MjVwHDvrXiD16kdtvjEA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b="Uhil/rYd";
	arc=none smtp.remote-ip=74.125.82.182
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B4F606EE89
	for <outreachy@lists.linux.dev>; Thu,  5 Nov 2026 10:12:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org C5B4F606EE89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Uhil/rYd
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-36661f953e4so2325176eec.1
        for <outreachy@lists.linux.dev>; Thu, 05 Nov 2026 02:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793873572; x=1794478372; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=P+/zfjidL1R10zub9C45JZCt5+i82Kyb9zsDu0eixEE=;
        b=Uhil/rYdzzdzznA7I/mc+Av9KMnDeZU712gSpRiyB1WDvIQPgEJeBJGRH2woXW4VGR
         0ekpp4UGYw6wV7W6sCE2vLsFj9wr+X1JW50hpZCIs8+6hTOZhd1PZga3bbqNDpiUgD9l
         VqBTPav8KN6uI9lkhSoDwu8zTCt9tn2uaTqbrosONni+yxCKir38ja+rNkklfzA/2uN+
         feF05TqjpV3PgoRiVWuZb/GieGVJ9EhxH+oIopiRz3P/ePRPsgWPDuuwMbcGJMR/u3nO
         7K9ZSCiMf9dQx6kSXOtoQacEz8GWZU3P+5HhO5dOLEgIB4FrYt73tl69WqSBrL9VoITx
         wjqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793873572; x=1794478372;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=P+/zfjidL1R10zub9C45JZCt5+i82Kyb9zsDu0eixEE=;
        b=HS48PQJnnqyhmRIYN0jY8qGJ/lzZClr3pCM8EXcXoKoNAPS+iLgQYvvwJY36ydMrc2
         IpGniXQY+WnQtafWUFiTJ8DXc4qGLxmuBLLl3v8S7rdwK1ZsHy8DRzTmBiHuril8strF
         flOWzKfNELvxFzxbo4311Rwuwx7KxurcCSxdMClgSxGQee9NOEVIVmk+1ISudilMM48o
         ydywtQOu1hZFA2F8ZqA2+3Su/NRK5Qmpv8Rjb8YTFuzy4oyDhh2fu5UXTjGRla2y8pt7
         X7n4gRo10XS9VYPpqzTy3w9hnoNQxkseTi4Onn2PDqyJHp5O6+AgDwBJo/og5WodFAdm
         0Eng==
X-Gm-Message-State: APuU4Z92bIbGfMY+5abpNChKkVnZo7q2gu+TNYXlzBgSmtCX3pxaUI95
	9NYzsJ9e6+fTOTwEg7hFx0K2qQ0MNEIdt/r2qeZLgI95dq1S+yTLohg0dxIffjAJu/w=
X-Gm-Gg: AYBFou2kf6sSRwNRAlTSp8zNP330FV2LQt+VzpkfBgp19Pzc+UewM6ST47t8DEcJVEj
	FvWtiNueGVuQSFLF65fDw0UtHWalu6wyhjv2rGaHGNCeLhL8gp2I0fLpbnX8FmPUDpab1AZfvs+
	jyrn0PGVFlIrelxbK3sFhJyeHsDZZIgAFP1cirJqJorm73SbD5TpRGE4ljao7tNkEy3iHAF1lts
	CarChjDJ7c+J4ra7FLb92JTo2/bL/r8cN8Dy9/2j+nuhLeXc2o7LY/vI6x+P36UZ10qamXa1Lj3
	CmEoDh/JPVq+OwTrWKbPwXY56bOYty6rPm89byjR0mE9SceVlku/C5PXp7QP549DphrvHeXMhYO
	lehF7X5tdaKRMwy+O2pqylasWlMyZvsBHmNKhtUJsbcOG2qmMx0QSuY0SV73qDS5VXt0DJv7AJC
	ii5VFJDe0bLV9wFu4SjcITstjvsXNyaX5m4i8sWbvgTMLLrdYOb8EWb6IIL4hpa6RtCevkyhnwH
	lrGBctnEjvFY1ExADtP68RqCcq2qTQQd8s9HtpckACiZlXG6oczve4+8xbUSLKK35m61UzbmByL
	Vj/sLJ/wMk1wIwoMBk5zgxfpL0YBmWNFYwnLnoDJIyMDZEltbV4=
X-Received: by 2002:a05:7301:d589:b0:36c:9e26:88b6 with SMTP id 5a478bee46e88-36c9e268949mr9074147eec.9.1793873571639;
        Thu, 05 Nov 2026 02:12:51 -0800 (PST)
Received: from Anonymous.localdomain ([223.181.63.2])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36ca38a6d3dsm18812234eec.7.2026.11.05.02.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 02:12:51 -0800 (PST)
From: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
To: outreachy@lists.linux.dev
Cc: parthiban.veerasooran@microchip.com,
	christian.gromm@microchip.com,
	gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Hussain Sitamouwala <husainsitamuwala21@gmail.com>
Subject: [PATCH] staging: most: video: document lock fields
Date: Thu,  5 Nov 2026 10:12:22 +0000
Message-ID: <20261105101222.5478-1-husainsitamuwala21@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix checkpatch.pl checks:

CHECK: spinlock_t definition without comment
CHECK: struct mutex definition without comment

Add a comment to each lock in struct most_video_dev describing what it
protects. No functional change.

Signed-off-by: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
---
 drivers/staging/most/video/video.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 3a0445ff62f4..d60be8a741ed 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -33,14 +33,14 @@ struct most_video_dev {
 	bool mute;
 
 	struct list_head pending_mbos;
-	spinlock_t list_lock;
+	spinlock_t list_lock; /* protects pending_mbos */
 
 	struct v4l2_device v4l2_dev;
 	atomic_t access_ref;
 	struct video_device *vdev;
 	unsigned int ctrl_input;
 
-	struct mutex lock;
+	struct mutex lock; /* serialization lock used by the V4L2 core */
 
 	wait_queue_head_t wait_data;
 };
-- 
2.53.0

