Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A539841759
	for <outreachy@lists.linux.dev>; Tue, 17 Oct 2023 10:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G6VSBZN9"
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-5a7c93507d5so65655607b3.2
        for <outreachy@lists.linux.dev>; Tue, 17 Oct 2023 03:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697538857; x=1698143657; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HvY9x6aBvA5MhVJoRQNQEJ+7ebQbs2N9TXM39yrfeHo=;
        b=G6VSBZN9jC/0BUhZ1XDVLJg8F8n+xSqYXiROPTRwcjjJ1eecl/WIoS+qw5GJ9PaWQK
         5WzHfa9mHbHdtoTEe5ivsxBMd7FlJ2xcJ1cTna1viBJx0T4OKYnBRp+hf/YHfUA2KHxG
         GUEDx3Gwov/LHhTEszxpTuNumc3ysMXVuq+gU++78SC0zj3YCya6tZqtgwQeGhG446+Z
         wFhtR+TBf+iRbXmU1hoYQl7AglXr+U0QOfgvPerZj/CGICc53zp31vu2IIBb9LxTs36K
         dv6ELX3kW9WWTxjvNZd+wDBuzM183AOymk3e73yD2V0Evi6hDj1dPW5am5R4M3RO2V10
         2xsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697538857; x=1698143657;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HvY9x6aBvA5MhVJoRQNQEJ+7ebQbs2N9TXM39yrfeHo=;
        b=onR8Lstvc8tjHdXAUMcQvrOXdH7GDh395LW3Z0GiWQKADteO0/xex6UjCMe0KyM1AR
         cpyDxOkCWkP0EtDJLo0OJftyxjrsxuXtXAfG0D+WjvIFNn2sly7wpdl8HPletpGUb73O
         TnarDt6uBhLY/p3RkV/opzBnPNqIKRQZf1W1s/7S0hLWXcfmLm0pXn/H+UiUAmUonRsc
         8nIlT+WAAQiKH1kIZHdlJWjvm6ME4JWJDdYaMUyHQvGdoWB7Dwz5x1BHJ+DmdyDfFwWP
         Z0elmxSlVD20Jn8NeNn5NFGT057s5C1pYsPaw6noSONiE78dXYBZ2eLA2SmwU1j4gans
         W8vQ==
X-Gm-Message-State: AOJu0YyBmfECX38kjVG9YxgDKaLnQo5N6UN2IQcn/1uqhQmy4ZWlo6vj
	iZTxe1FvhPUpTQLKnfakJ8WqjyK4rnVQ83a2
X-Google-Smtp-Source: AGHT+IGiUHjtXgcs29SrxHCSh5TTzb+877S7zE/jRff+jJrqr+y/lgYJjRTAWaR+tbhiCfJLUvHksg==
X-Received: by 2002:a05:690c:387:b0:5a8:1e98:49b2 with SMTP id bh7-20020a05690c038700b005a81e9849b2mr1846280ywb.45.1697538857605;
        Tue, 17 Oct 2023 03:34:17 -0700 (PDT)
Received: from gilbert-PC ([105.112.189.86])
        by smtp.gmail.com with ESMTPSA id v4-20020a818504000000b005950e1bbf11sm491344ywf.60.2023.10.17.03.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 03:34:17 -0700 (PDT)
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: outreachy@lists.linux.dev
Cc: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Subject: [PATCH v2 1/4] staging: vt6655: Rename variable bUpdateBBVGA
Date: Tue, 17 Oct 2023 11:34:02 +0100
Message-Id: <9bd935c464671db2654c654964812cc48f4603d3.1697535791.git.gilbertadikankwu@gmail.com>
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

Remove bool Type encoding "b" from variable name and replace camelcase
with snakecase.

Mute checkpatch.pl error:

CHECK: Avoid CamelCase: <bUpdateBBVGA>

Signed-off-by: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
---
 drivers/staging/vt6655/baseband.c    | 2 +-
 drivers/staging/vt6655/channel.c     | 2 +-
 drivers/staging/vt6655/device.h      | 2 +-
 drivers/staging/vt6655/device_main.c | 6 +++---
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 7d47b266b87e..f7824396c5ff 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -2087,7 +2087,7 @@ bool bb_vt3253_init(struct vnt_private *priv)
 		/* {{ RobertYu: 20050104 */
 	} else {
 		/* No VGA Table now */
-		priv->bUpdateBBVGA = false;
+		priv->update_bbvga = false;
 		priv->bbvga[0] = 0x1C;
 	}
 
diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
index 6ac7d470c041..c11bc2dbc356 100644
--- a/drivers/staging/vt6655/channel.c
+++ b/drivers/staging/vt6655/channel.c
@@ -86,7 +86,7 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 		return ret;
 
 	/* Set VGA to max sensitivity */
-	if (priv->bUpdateBBVGA &&
+	if (priv->update_bbvga &&
 	    priv->bbvga_current != priv->bbvga[0]) {
 		priv->bbvga_current = priv->bbvga[0];
 
diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index 68bfadacfa7c..b166d296b82d 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -246,7 +246,7 @@ struct vnt_private {
 	unsigned char byAutoFBCtrl;
 
 	/* For Update BaseBand VGA Gain Offset */
-	bool bUpdateBBVGA;
+	bool update_bbvga;
 	unsigned int	uBBVGADiffCount;
 	unsigned char bbvga_new;
 	unsigned char bbvga_current;
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index b08fcf7e6edc..b654fc24d725 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -179,7 +179,7 @@ device_set_options(struct vnt_private *priv)
 	priv->byBBType = priv->opts.bbp_type;
 	priv->byPacketType = priv->byBBType;
 	priv->byAutoFBCtrl = AUTO_FB_0;
-	priv->bUpdateBBVGA = true;
+	priv->update_bbvga = true;
 	priv->preamble_type = 0;
 
 	pr_debug(" byShortRetryLimit= %d\n", (int)priv->byShortRetryLimit);
@@ -423,7 +423,7 @@ static void device_init_registers(struct vnt_private *priv)
 	/* initialize BBP registers */
 	bb_vt3253_init(priv);
 
-	if (priv->bUpdateBBVGA) {
+	if (priv->update_bbvga) {
 		priv->bbvga_current = priv->bbvga[0];
 		priv->bbvga_new = priv->bbvga_current;
 		bb_set_vga_gain_offset(priv, priv->bbvga[0]);
@@ -1040,7 +1040,7 @@ static void vnt_check_bb_vga(struct vnt_private *priv)
 	long dbm;
 	int i;
 
-	if (!priv->bUpdateBBVGA)
+	if (!priv->update_bbvga)
 		return;
 
 	if (priv->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL)
-- 
2.34.1

