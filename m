X-GM-THRID: 6753034664415330304
X-Received: by 2002:a25:3851:: with SMTP id f78mr16196151yba.331.1572313421602;
        Mon, 28 Oct 2019 18:43:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:e192:: with SMTP id k140ls2886223ywe.6.gmail; Mon, 28
 Oct 2019 18:43:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzqDRnY6DIwBpr4h9w156aRRXoiNbFsirzbWmXKPs2fiMqeH4EmDHEX1RkV8SjQUcwMJYqi
X-Received: by 2002:a81:7403:: with SMTP id p3mr746822ywc.106.1572313420019;
        Mon, 28 Oct 2019 18:43:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572313420; cv=none;
        d=google.com; s=arc-20160816;
        b=dfAU0DpVa3afspUFdtFs4ruv9+O6e44lKEzuvE9uMTlYLcYSsK4z4gP7IfrA4odgeH
         n4xAKCGud8WS/7JKvvUpT03edahvTGGOfHFZk1k+IbM/n/uIl9xbo1nvpxBlT817i3Ti
         PwzrhdqMTj9uND9RPC1przmSmfzINpvLsXjyEDGiz+JP+znA6NXoxpJ4jLAW4VOm/K/m
         QzZh3DRQfYemrzoCS5RGLn+XPojYvE7qc7aYnWSnGcOAzhgppq7A6cLvj0RJKg83pYFn
         F09bfaoYwgIvLqvet/VRNgA+z2jcqLydWMg8ZnvjI9syXP6oRXJcotZuaQGEpxxplTZV
         KJGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
        b=Xw3lQxtxJFwYyKG/OTv4ZH7j0Lb4Vn+fXUXhbXcVaSkuHg2ymouvApoQ9d6z/TffTz
         IeCln9Zl9gxWGBwig2soj+l+9blkVujqkQ+ouZo331OGK4xXAGMOWigdGgNUAgYfaYqy
         EEaRfZQdWBfzhCK0FPG6/ckGj/aVDjqNjGaMfd0cQ0B+skLeSmw/GTmMzMPz74JxLywm
         BnD/GpQhihBHFIA1uHaoO3A0RieyjweE2aGTqjx9KSfVbcVYyNVxAyYF2IYDT2//bq94
         QKLfG0Ddb/+MvPr7+YDytCboHSrKN4k1WSJ+JjGme7Bbcma7sqKht9ZkPcN/E/HNd3Yv
         ayUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YTKQ5eL3;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id u8si80952ybc.2.2019.10.28.18.43.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 18:43:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YTKQ5eL3;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id x21so558562qto.12
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 18:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
        b=YTKQ5eL3jNc2ylypKneapURZFnFOC7if9/ntbG+5qwp8Rc8G83PNiMQjG2qeGkKWIE
         WROILV8irXpeXLAzcVzVegChTLAxwfB0Rh0WWVjW2SPrq1fZ4vrNWRzt2zL0NgN8mvpp
         FUFTBShNt+Z3UmEWhl/WVLJOBlNNV07Vv4vESyc5K0g25MA6fRQ41jPPI8H3L8Qx6Hve
         CLkYAe+439/eKzHHDIDz1Yu7MPb3DgANyvJrpd+83ud+MPjNTP2ZRiCP1f8elguyxtTV
         /vmO2RTy01PqhsbmG4mb5XHGS950hQIEBNWf2x7CKhvDhnFwzZclfIu3hgehAG/o6nx1
         pEyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
        b=legGxshctgUlSCOXQau2cORk/DSYbx7NzO8VC44BsO45d0sz9HSkLG2TLpRnDLYKbu
         w6e0d/yOdwOLegBjgerBKonZD2fX41QZpQsW/crNIfbPBhsF4WRC5Cn33f1NY+Wsb4uF
         QvXT9KIuMd/KgJQ/TSuxDUBboWVtjvZv95Gzt4ZGynH9O9Ma3rHg+7afTQkty0FfPThR
         zBLr74FM5VsMgU9arw5wq4rDF0tSdNH1WtOlmPw32lUzy13bjgK7rlnceEKhQXPHsUkz
         FzrS0lzpX7MpMyjb8YGKAgIqUOU5yMSs7OOZaRTxS0gmMmCA45+fijjdp3ULdXcOs3bo
         LfnQ==
X-Gm-Message-State: APjAAAUvI/0yDhxMaa87C9Bf2faMFtScpPI6/jx12EYgi7MNK0hxsnR6
	jwrnTu3X9p/mJ7l0yaiqyOT8suyjuX1+6w==
X-Received: by 2002:a0c:94d7:: with SMTP id k23mr19000528qvk.200.1572313419369;
        Mon, 28 Oct 2019 18:43:39 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
        by smtp.gmail.com with ESMTPSA id 197sm6698394qkh.80.2019.10.28.18.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 18:43:38 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH 5/5] staging: rts5208: Eliminate the use of Camel Case in file sd.h
Date: Mon, 28 Oct 2019 22:43:16 -0300
Message-Id: <20191029014316.6452-6-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
References: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in file sd.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/sd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
index dc9e8cad7a74..f4ff62653b56 100644
--- a/drivers/staging/rts5208/sd.h
+++ b/drivers/staging/rts5208/sd.h
@@ -232,7 +232,7 @@
 #define DCM_LOW_FREQUENCY_MODE   0x01
 
 #define DCM_HIGH_FREQUENCY_MODE_SET  0x0C
-#define DCM_Low_FREQUENCY_MODE_SET   0x00
+#define DCM_LOW_FREQUENCY_MODE_SET   0x00
 
 #define MULTIPLY_BY_1    0x00
 #define MULTIPLY_BY_2    0x01
-- 
2.20.1


