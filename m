X-GM-THRID: 6753034664415330304
X-Received: by 2002:ab0:25ce:: with SMTP id y14mr9846517uan.96.1572313418264;
        Mon, 28 Oct 2019 18:43:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:43cb:: with SMTP id q194ls688456vka.2.gmail; Mon, 28 Oct
 2019 18:43:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZnaSK4Gzs92FaHjTbe+NQLMZrkMdmfbha+CDQc8ejao8boaTSH7lSFAVFgsQcCb1ztkak
X-Received: by 2002:a1f:d7c1:: with SMTP id o184mr6665046vkg.19.1572313417151;
        Mon, 28 Oct 2019 18:43:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572313417; cv=none;
        d=google.com; s=arc-20160816;
        b=aLlLTJgaWLhu5K1onWNAAvYrDMAlxofcZDIzkRGH0i4qB1lWeS9vuaIuMPkJcZXjEJ
         mv8xEDuaUWkHBlVXJuMoD3H7agmqrfP2bavKLdaq8Ul4GsoOKWTq6MryWeLAxFudYfxe
         jwHU5M9mXIBoH0M7cNqZbLWppz/6L62NY/ioy3cM0ocYWujMH9mkfbEnI9arUsafVOWY
         lVm4D4Pr6KucVnc1PARQVrPriPIjIt8/yVJ0BTYClSPrLPJS9+kq0iZFgf0l5o/GX3u8
         83YLrVZmsGrJR6pCEHr2oc9+N1q5ovmKe3eM5vRC7VRfdlzjba+jwU2IVBZFwpPDDVOL
         7MnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fiV788X183wD/PJfPt+Y7yn0iwo8M5Gxr89huOLS4Zc=;
        b=0kxBhIhDz/mecBk0VUTegjgkR5XCKu6h3ZpwPsdHyzs44s6YnQm/irn7ZqHNv1uJkT
         WcgJOGbfJLTySqh8IP6/MVKNzj4wX5giOPoB1Q6IRz9KVuUyggDslS3F5bOLSTp9xoPQ
         jaCqwk3VgbpT1nPsLUtffCQkkjjRPhe7x6U3TNaxtbw4eFGxeNaorXiq4fLqVEiyrG8x
         y5QnEhWp+PGxI44jBE/obmKBhVTmamwYn9xPr8xNjrvtwxhkix5ejC7ABGvSFWn4L5IE
         xFXHu61ASMH8YObRJfyBpZbi1FXSB57I5e65Ia8YV6n+xhiMozrT69zM8Lcy8/gPFomW
         88WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G6jovQAe;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id u206si814702vke.2.2019.10.28.18.43.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 18:43:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G6jovQAe;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id a194so10586630qkg.10
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 18:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fiV788X183wD/PJfPt+Y7yn0iwo8M5Gxr89huOLS4Zc=;
        b=G6jovQAe7x6LBX2vtvRWfmgewJF5/FN52paTG1A+n0xjqe1cGSCFKjNNJQnLsSG177
         4MOfLqXcjVtkToCru32J6USc3azmwoO+nO30Bf7JhCFSy9ivk1EhL7dTmttKd9xAQUJe
         OGi3T2uHrRumoQNPaeA7genPoRTBZaVq9APsBRJspeiMxAgFepK396ARq/VEUVcIYpup
         TlGt1KXoSjXIQ5Z9y0VFJkyOuNMp17/AwNnDHG4f9JKOa9bCBqe4kNlhUr1A8GBAdjzN
         6OPW+uv033TPHo90xqBq5KdSXrFCGy2V3RsHaf283k+Q87udaLzUk7YGn5+ErkyQaZjk
         F3ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fiV788X183wD/PJfPt+Y7yn0iwo8M5Gxr89huOLS4Zc=;
        b=f6UPzlyZ7KYrhmwFFkpmk+8N40s5fsHprZGgMhBJltfQgJgnbhz/+8Xx5QzOgOgmRS
         tgak4fAb4Z6y0hMwWWJacXI23Li7laurwk6rk8gekiAe73hRcgBA/FoGCO1M2k7ngwMm
         V6jS0N1fy3TMj3d8Ltb4D2lwh4r6LRIcpunpGXraTT3hBfnFtenlMHYRKfO9GrO65ohV
         VzrEVFwElVqdWyn6NzdfzOuSIV4spqRHBA2BNSada5bWsA9H1ZWVBN0WC5asfoNz7QN9
         iI7ynsC4A/4awrwXW/9zk+aNCK5Ih4xQ7pU13kXfwcZ/DWy2R9ov/WVVSWDXkbE9nRhn
         enrg==
X-Gm-Message-State: APjAAAVYdTovgTVWaE93W2O0KZCR06NExPRm5B/J+WxPXq00/WpXVOS+
	f07+m/hra4VXN1UOZVZcYmpHYdc//0jvHw==
X-Received: by 2002:ae9:e50f:: with SMTP id w15mr718693qkf.436.1572313416435;
        Mon, 28 Oct 2019 18:43:36 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
        by smtp.gmail.com with ESMTPSA id 197sm6698394qkh.80.2019.10.28.18.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 18:43:35 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH 4/5] staging: rts5208: Eliminate the use of Camel Case in file xd.h
Date: Mon, 28 Oct 2019 22:43:15 -0300
Message-Id: <20191029014316.6452-5-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
References: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in file xd.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/xd.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index 57b94129b26f..98c00f268e56 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -36,7 +36,7 @@
 #define	BLK_ERASE_1			0x60
 #define	BLK_ERASE_2			0xD0
 #define READ_STS			0x70
-#define READ_xD_ID			0x9A
+#define READ_XD_ID			0x9A
 #define	COPY_BACK_512			0x8A
 #define	COPY_BACK_2K			0x85
 #define	READ1_1_2			0x30
@@ -72,8 +72,8 @@
 #define	XD_128M_X16_2048		0xC1
 #define	XD_4M_X8_512_1			0xE3
 #define	XD_4M_X8_512_2			0xE5
-#define	xD_1G_X8_512			0xD3
-#define	xD_2G_X8_512			0xD5
+#define	XD_1G_X8_512			0xD3
+#define	XD_2G_X8_512			0xD5
 
 #define	XD_ID_CODE			0xB5
 
-- 
2.20.1


