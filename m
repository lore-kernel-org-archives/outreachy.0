X-GM-THRID: 6810978384400613376
X-Received: by 2002:a92:c910:: with SMTP id t16mr1533498ilp.254.1585804485974;
        Wed, 01 Apr 2020 22:14:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:8619:: with SMTP id g25ls1384800ild.7.gmail; Wed, 01 Apr
 2020 22:14:44 -0700 (PDT)
X-Google-Smtp-Source: APiQypJZlI/7p2BjDrFu3i4DQ48poh+XAxqiVk2QkcxdcV1gTPQ+FFpXOAt+8JAMeeb8Tu69U0Ir
X-Received: by 2002:a92:da4a:: with SMTP id p10mr1485511ilq.34.1585804484687;
        Wed, 01 Apr 2020 22:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585804484; cv=none;
        d=google.com; s=arc-20160816;
        b=Db1oSzVQkGh6TtR0eAkcxv4phCA5JhBf6pJf36wdNWGH+d0dZIGwaVl4oh9fbIhu/3
         1wMu8jQVmWgUh7uSz0+O5sEXHEf2IbT7yDty+H5nhDkX3dX5goj5GjTKdh9WDH0SXfW8
         Qi56w8QOS0wB7yblvuAOczd0wYalBGuAXfrO1m7LufYTozc5ZLaL88JIxe5n8jbvLf4b
         PsFxXrwCHH6CoQ/dNVWlij/jjXhntSvm5tWXcIBYPonVVR55vnwHDhkHLQMSDrx6UAPg
         /ZRgZj3Gwo9Z6Ug7e0/2UREm35+8nQ723YlzFkOu+vY74d/QfKQHj3heRFDVmWJqNpjm
         NLeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7uontIDLEn5WXf2eeXkYUwtFfV72srXTcZ3co4p5A64=;
        b=FskwHnUc9tX0rlfEcktszEl5GsHGVaZAB5eH5TpCAT16q63f7uLch/ZMmsv6GBBNkH
         UMfQ4eFEm4d8X7n2Jm+rZbvSv3hVQf5Rdrlhd1Om2btdcSuwmu9/ejjW/HdZ0NQObXYj
         8/rOd01pXfvP0jglON7G9A8llLrnb/kuj0oCfcNpNKAG2xM/MaQYQW9A7V1ayMQq1rcO
         MKKWbgJN+mCcP8uy8Sv2BggCV4NJh0exwx97sN2BOa+pT2VI2bGpYBIE/1/on1FtIwKG
         6MkRoBKfC6SxJbD57KAgiiqHJPm9ozSxqvUm39Ttq43wvUZe30Ad318sXMFr0ejiGJsA
         5Mig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pp79q6s2;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v22si283456ioj.2.2020.04.01.22.14.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 22:14:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pp79q6s2;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id i34so1317514pgl.4
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 22:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7uontIDLEn5WXf2eeXkYUwtFfV72srXTcZ3co4p5A64=;
        b=Pp79q6s2H97E43Qo6yixXlm+ugqv2r24QiWPlvLS0yGyPI7ZHutjDFPHJKRqiwiY2n
         S0rhkKmHq5FSRkOWW8JccUMr26fCW3W1SUCpM/fWoUdJOe13f1fv+HSWXEhn0HUolH8i
         JKzheoHWK++hOMehUWpmAZgwIUBjovND2bgWZS/Hq/dHe38oogQMhdr4Dh1X3qtjxJaj
         821nIRfLgBVK+uWfKA1upFjuEZolyoAfA7B8v6DjwIIzj2ikqNcK9wa+Sn5ApLkRbGXQ
         XIkF/9AerbEEs7UPmkVQeYkMksyOLUjOJK2EPneg5jPySABoBVMkEuN3TbS8qesTt8Dy
         zuVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7uontIDLEn5WXf2eeXkYUwtFfV72srXTcZ3co4p5A64=;
        b=CjOqAk3mq1ScAqf0v+c5cpBeed/m6K3xlgUA6dJ2zVj0j4Tsdf7WxwbWyBZG6n5N8r
         p6NoXLC5dr6caCIwfHtrFJhzLsuoO7+X154BQ0UwyLe279kCp4Ns3c5gNYyewmQ6xECZ
         1YBCjufAY+OOhWiVYwzhjBkX+8dsSlXXbNV1xZqXqCsAVqqPsUTUl8rq1xCcTjWKbWMk
         JMyCMQPgvzBtiqdWBUn6A0pyxQQlR2ZOVQuXnFeFoNrAD5K91tCUXtIUDyW+mREKFAl5
         1w9eMLCXRRapUSvryux8pd65d3L9sXbvhKwDK109xz/b17Nnv57EDul1+rEqRUWXBHRV
         ErNA==
X-Gm-Message-State: AGi0Pub2GOm9JQo+r4OZejJtH7FVQkapO5DB0svpdFXH7mjyC/BMeGN0
	/8YSEQG4bl3NRLvnnzbhDjk=
X-Received: by 2002:a63:9552:: with SMTP id t18mr1692185pgn.342.1585804484070;
        Wed, 01 Apr 2020 22:14:44 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id l1sm2846485pje.9.2020.04.01.22.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 22:14:43 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v4 4/4] Staging: vt6655: Remove BBvExitDeepSleep definition.
Date: Wed,  1 Apr 2020 22:14:36 -0700
Message-Id: <027b00a27e2bef13c1daab3514dc7dc19fa1aa00.1585802818.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585802818.git.briana.oursler@gmail.com>
References: <cover.1585802818.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove function BBvExitDeepSleep that is never called.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
Changes in v4:
	- BBvExitDeepSleep was called by CardbRadioPowerOn(), an unused
	  function in the driver removed in patch 3/3. Check recommended
	  by Julia Lawall.

 drivers/staging/vt6655/baseband.c | 6 ------
 drivers/staging/vt6655/baseband.h | 1 -
 2 files changed, 7 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index b4cdc0b7fee7..b6d4a435edde 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -2384,9 +2384,3 @@ BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
 	BBbWriteEmbedded(priv, 0x0D, 0xB9); /* CR13 */
 }
 
-void
-BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
-{
-	BBbWriteEmbedded(priv, 0x0C, 0x00); /* CR12 */
-	BBbWriteEmbedded(priv, 0x0D, 0x01); /* CR13 */
-}
diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index 0cc2e07829c5..8b738c6afe00 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -70,6 +70,5 @@ void BBvPowerSaveModeOFF(struct vnt_private *priv);
 void BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode);
 void BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode);
 void BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID);
-void BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID);
 
 #endif /* __BASEBAND_H__ */
-- 
2.24.1


