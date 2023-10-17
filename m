Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983884175D
	for <outreachy@lists.linux.dev>; Tue, 17 Oct 2023 10:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HagqcZTD"
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-5a7b91faf40so66745117b3.1
        for <outreachy@lists.linux.dev>; Tue, 17 Oct 2023 03:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697538872; x=1698143672; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BM4Q1Vnc/0W8axRuOl3n1yPV7eDUAdwd9TGgc08N9CQ=;
        b=HagqcZTDn8YsXCdG7JP453hQEygHUzSOZvlC48C3iwifl0S24dMxHUSBeY+AJ8lG+5
         CtPjftsqnNKw/Mz8QTsPw0fYq3PS/a6E/o9Vb0pGn0q+jm1aJSmPgZx01aVDpzaWA8SC
         HEF4YmEICsr41Vya/Wol7Reqi6JU6mRqr3SNdc9nDcWGlHENSH1is5iWgRilZo/YbI6+
         NN202V/Ci6Wjq/Lkd301uqq7/ezcAbB0RuuYnFLmUzWQIGOZK+xL35s47kLR/WCaS5tA
         Pa4iOogUVyA7wjPMTlEWP6Q0PJsYLrjuSdk25570ln0dpQ2ZCuRzW78g62RjBofczg4X
         4Tew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697538872; x=1698143672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BM4Q1Vnc/0W8axRuOl3n1yPV7eDUAdwd9TGgc08N9CQ=;
        b=BjclhA91ueSnLND2dhU/00CH+Xo32eWij8oxBYThcuJ40WnevDp5+qty63xpsvQmze
         d3Q3k27Fh5MprRLLUkRj3iIDT47GJGsBYWFBwsgsLUYETxiQucTjB6MhENMlJMee/1KL
         D5b/yWU0xdeOoqdv6i9vI3gcXn0zyLXf1V7TkP3hk63lZ4Y5u/YR/EcjVDxrw6LFnhVp
         QjfkA29jbrDOtmOuIy+7efmLePp3yFXwqV6UTW5PBIG13vT+HUFHn03G6mm9uJtZe1BP
         FU0kA7G4QRLF3yARkhGcRbLdGkJNcejD3V1slaK4pjQ1lQQc52XounjSu0RLXc/m8RkL
         A+Pg==
X-Gm-Message-State: AOJu0YwamXAyq8UkquF16SgS9ZciWZUuyqxR6KEE/gT5xW4WlAKM6l1f
	8+8fuhubz6P+XKfV9lVdTYjfMLlgHlHBtL6E
X-Google-Smtp-Source: AGHT+IEPaQ/byYHjQwUBbLrRHtMd7b1osZrpDLf43QqIVPuUTWECNaHBf1N0jVTXU5J2l4us9N+0GQ==
X-Received: by 2002:a25:8402:0:b0:d9a:4bc3:226e with SMTP id u2-20020a258402000000b00d9a4bc3226emr1531157ybk.37.1697538872568;
        Tue, 17 Oct 2023 03:34:32 -0700 (PDT)
Received: from gilbert-PC ([105.112.189.86])
        by smtp.gmail.com with ESMTPSA id p13-20020a056902014d00b00d9a3fe483cfsm406686ybh.23.2023.10.17.03.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 03:34:32 -0700 (PDT)
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: outreachy@lists.linux.dev
Cc: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Subject: [PATCH v2 4/4] staging: vt6655: Rename variable byBBPreEDRSSI
Date: Tue, 17 Oct 2023 11:34:05 +0100
Message-Id: <d525f5837bb343001447646fe17746370256694f.1697535791.git.gilbertadikankwu@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1697535791.git.gilbertadikankwu@gmail.com>
References: <cover.1697535791.git.gilbertadikankwu@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove byte Type encoding "by" from variable name and replace camelcase
with snakecase.

Mute checkpatch error:

CHECK: Avoid CamelCase: <byBBPreEDRSSI>

Signed-off-by: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
---
 drivers/staging/vt6655/device.h | 2 +-
 drivers/staging/vt6655/dpc.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index 6df1694d556b..2b5f9bf6aa5d 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -253,7 +253,7 @@ struct vnt_private {
 	unsigned char bbvga[BB_VGA_LEVEL];
 	long                    dbm_threshold[BB_VGA_LEVEL];
 
-	unsigned char byBBPreEDRSSI;
+	unsigned char bb_pre_edrssi;
 	unsigned char byBBPreEDIndex;
 
 	unsigned long dwDiagRefCount;
diff --git a/drivers/staging/vt6655/dpc.c b/drivers/staging/vt6655/dpc.c
index c6ed3537f439..7ada188e2048 100644
--- a/drivers/staging/vt6655/dpc.c
+++ b/drivers/staging/vt6655/dpc.c
@@ -79,7 +79,7 @@ static bool vnt_rx_data(struct vnt_private *priv, struct sk_buff *skb,
 
 	RFvRSSITodBm(priv, *rssi, &rx_dbm);
 
-	priv->byBBPreEDRSSI = (u8)rx_dbm + 1;
+	priv->bb_pre_edrssi = (u8)rx_dbm + 1;
 	priv->current_rssi = *rssi;
 
 	skb_pull(skb, 4);
-- 
2.34.1

