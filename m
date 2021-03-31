X-GM-THRID: 6945917032908980224
X-Received: by 2002:a2e:b601:: with SMTP id r1mr3260145ljn.271.1617222333779;
        Wed, 31 Mar 2021 13:25:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls2828294lfo.0.gmail; Wed, 31 Mar
 2021 13:25:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxHbIOIb+CI0jh8lCQmP0cCsfeWw008OYnncRaxL1DKcWZRN2viUnBkUz0npDxk38cd9UbM
X-Received: by 2002:a19:f81a:: with SMTP id a26mr3114864lff.647.1617222332020;
        Wed, 31 Mar 2021 13:25:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617222332; cv=none;
        d=google.com; s=arc-20160816;
        b=oPYky1IoTjycBaRhv1Ca6wW5/1SAtnn7ssAGwzeoYIPthIYF6SmoAhlYacJh1yQYqI
         G5E5Kyj+n2Pph7YGl9BFtCTnWY5HXFUxrq4bxqANR4RQNjs44QXZq4YZOnwXOB+Ekg5r
         c7mUjFjVErMvAXJE1oZJJa/rLU6sLuLsSYwBE6QWUAyotcstOu2RdoDRXZHCaybGEilD
         Bcuy8nFw3QjzEFotuOWIodEC2ftAVA5DO9jYotVwUPg3AklKfzn9XzCS5yrvBoJ5dKFq
         hdLT6PyirDbv7SjuUuZNE8hzhnWfWYVgkGUnOEOaz8La8PbTCVyE9nTOBZraWssaew1t
         LzLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=Gi9OUsUoRxjAcioEAF4TQW9mJ2fTHnHNzeSFEtVk1Wk=;
        b=stPke5EKJBW3YgHQosFhParfuHltKYM6vNTan7gjAAiDXLQUnsqkQxjEhheyh6e7PK
         leNwbA1ltWDL4hKHHTEQnSZG63DG/RbOIahpd6d8Q2Tnho7I7XfgtxxcQiLzugwNSrTD
         coMmULgHhGFwZS1LezKTBikjOX4F7OqBjSOiSGLvdPr+xc2wZ4cKO0tA1TKy8E1cPVDE
         tC8MIq8GvasZs+VClB/pzybkm5lybrb6zqAYnvg9zP5KNql8gQdZmtLBoxFdlqhxO6np
         8KqBINnl1CnifD8ttqMzOQXoMFkcJKvOCGJKo60sBvoG8iQUzk4STx31WgZYuJWpxDOF
         yrUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FhezNaAY;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id v203si246373lfa.10.2021.03.31.13.25.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 13:25:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) client-ip=2a00:1450:4864:20::32e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FhezNaAY;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32e.google.com with SMTP id t5-20020a1c77050000b029010e62cea9deso1789612wmi.0
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Mar 2021 13:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Gi9OUsUoRxjAcioEAF4TQW9mJ2fTHnHNzeSFEtVk1Wk=;
        b=FhezNaAYqaHT6VhiYQCDNq6ndWAbOd8uPtZWcvln9/4Ha0ctMuPzJr32kuGiG1RJ1M
         xWXaPh0XHlgJL3tHCQjhyzrRtx4R7n9If58CaT/jwZl1i+TRKFGtDcsbWB1YOPj3PD6A
         xp6r51Wufdf2+DHOM/tdy1zE1W8IZCuMjUFNsqvNGxkLwrZEoepPsRR3MjXT+i1ztSRV
         +N6O7vNuav8nphw+acRW8Zr1Uk16iIEu3YgcsxCRbeXhXaML4FW7Sg+7DA4hEIaZ8bA6
         r/tWEjNWSuU4660KSi5eiN/0Hd4R7Nq5wcGz9Vi3Df9O6wNTvVFLJ/nBQxibjfQ0Rds7
         KwRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Gi9OUsUoRxjAcioEAF4TQW9mJ2fTHnHNzeSFEtVk1Wk=;
        b=Ts/UdZDnGKogFC+zWKoYZmeug5oVGyjJM4MlGwlfJ0b1uN7nQDIbf6QVkbXhGcdWLm
         x3sAz+6XsG3XEa1vHj29ca4zXsXS7Ucg83Ta63n2uXb5IebCVvfCCaWuePykSJANANCa
         ejML5cnDKh9H4PWOpOkiTY8Bzqxe7PRL5qUCj6V6+1mlwOxx5tmQpA3rBjpPVouOPVg3
         3WH9ly3TCM+fn/2cwavIwnShdpnTkVtTQL1djo5ypwYLm63PeaQDyxvq63cePVL5hWlG
         9Qg0OkIMwLv+tVOyZ1NFIRc8kVFw6AubZoWEWxznuI4otRdMv3ceiEx7HfXEdiV8aji7
         C81g==
X-Gm-Message-State: AOAM531LqsFJSt58goctFv2jGudutHzm+Duxl1vNxwCTr66zc0SptxLC
	cCt7tvc9Jg8wJyCALAiLlME=
X-Received: by 2002:a05:600c:4f94:: with SMTP id n20mr4701240wmq.18.1617222331572;
        Wed, 31 Mar 2021 13:25:31 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:87e9:fdd6:2b7a:c720])
        by smtp.gmail.com with ESMTPSA id u3sm6138637wrt.82.2021.03.31.13.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 13:25:31 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: hvaibhav.linux@gmail.com,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: greybus: arche-platform: Fix ending '(' warnings
Date: Wed, 31 Mar 2021 21:24:45 +0100
Message-Id: <20210331202445.108678-1-martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix checkpatch check "CHECK: Lines should not end with a '('"
in arche-platform.c:80 and arche-platform.c:184.

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/greybus/arche-platform.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index eebf0deb39f5..e374dfc0c92f 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -77,9 +77,8 @@ static void arche_platform_set_state(struct arche_platform_drvdata *arche_pdata,
 }
 
 /* Requires arche_pdata->wake_lock is held by calling context */
-static void arche_platform_set_wake_detect_state(
-				struct arche_platform_drvdata *arche_pdata,
-				enum svc_wakedetect_state state)
+static void arche_platform_set_wake_detect_state(struct arche_platform_drvdata *arche_pdata,
+						 enum svc_wakedetect_state state)
 {
 	arche_pdata->wake_detect_state = state;
 }
@@ -181,9 +180,8 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
 						WD_STATE_COLDBOOT_START) {
 					arche_platform_set_wake_detect_state(arche_pdata,
 									     WD_STATE_COLDBOOT_TRIG);
-					spin_unlock_irqrestore(
-						&arche_pdata->wake_lock,
-						flags);
+					spin_unlock_irqrestore(&arche_pdata->wake_lock,
+							       flags);
 					return IRQ_WAKE_THREAD;
 				}
 			}
-- 
2.25.1


