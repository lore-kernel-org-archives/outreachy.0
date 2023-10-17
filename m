Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A87541751
	for <outreachy@lists.linux.dev>; Tue, 17 Oct 2023 10:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gbz+EYJf"
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-5a86b6391e9so27520337b3.0
        for <outreachy@lists.linux.dev>; Tue, 17 Oct 2023 03:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697538867; x=1698143667; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n2IYm2IJHgZqgLhrQSi41vFLt6AS98aZ4cbdFPTivNc=;
        b=gbz+EYJfwzvJ8MMrkvPrj9zb2qPkW+JPGwWztToL3F893iT7viIbSl4O9TbIo1eugm
         GDFVhACSyhKpuMT3Qm2GvtDYYlRh54vAdGrEvoZaSbl780mp83U3QS0E7K4PB+RLCONs
         RrvrIvsTqaPSPxjZlr2ja0HQ64ayIWxsCYyDFqPuLKRUJbeE5NC7B3ySNmyPaj3d9wV3
         6G376ydAChR6UqVQ6vtI1BYk8dqPoXYqc8qIrwtyx1W3VbH7zGtY10kFo0FLlD2/Cy7J
         qPdA+2cHkcTEm/3qZcDvS+gmBwWyTGeRhZxez0fyoHIajUwilIyeYkYw7EcetTmuPfF+
         AkEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697538867; x=1698143667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n2IYm2IJHgZqgLhrQSi41vFLt6AS98aZ4cbdFPTivNc=;
        b=MMGC8cYACgpbBpcHo1Up6bfKpme5zp9+6r9jHjDuGJThaoLI1/7wiwECr82x1bd19F
         GG7N2Wpg5p68P9+1yfe9id2e3VJINu89YVIk5sOcz9CnuzChuCkun0QQhGo3JXcIu0pS
         g2C2mFl/KRRk3olCl5VuFpHxcglhTa30ZLJssxJDVPEDqnJS5OkwCgQjL98bs7sxmNl0
         +eB12j61rF9QYwSrtSjMduVshBDbNW/5+h8+L0Om2tysoRkDlUI9rN68MGOp0e+1B46z
         y4kMMT6ISuG5XkJDf/Tzm9JBkDFDUy8rw7DpSTY6CMZAtWrJqy3L7IiZuufQnbKMyzH7
         BqkA==
X-Gm-Message-State: AOJu0YyqrnLiA6JVM+M3cimX1+Sq3E51QLj97VfUywYeUfZWiPwvfisk
	DX/5xMSKoRL6okeAhl63Pk//8EbklO/ECVcY
X-Google-Smtp-Source: AGHT+IGCxkELb3G44/nbTdWES67Eu+Jwk0NT7ZK+1PV+ywVJ0/Z149SY1sA76+ne5ZT3IN30naOS7A==
X-Received: by 2002:a81:4981:0:b0:5a7:af51:e274 with SMTP id w123-20020a814981000000b005a7af51e274mr1887147ywa.18.1697538867121;
        Tue, 17 Oct 2023 03:34:27 -0700 (PDT)
Received: from gilbert-PC ([105.112.189.86])
        by smtp.gmail.com with ESMTPSA id v186-20020a0dd3c3000000b0057736c436f1sm491315ywd.141.2023.10.17.03.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 03:34:26 -0700 (PDT)
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: outreachy@lists.linux.dev
Cc: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Subject: [PATCH v2 3/4] staging: vt6655: Rename variable byCurPwr
Date: Tue, 17 Oct 2023 11:34:04 +0100
Message-Id: <4c24962988ac990ae21c95e4a1754cfabfd2db8d.1697535791.git.gilbertadikankwu@gmail.com>
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
with snakecase

Mute checkpatch.pl error:

CHECK: Avoid CamelCase: <byCurPwr>

Signed-off-by: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
---
 drivers/staging/vt6655/channel.c     | 4 ++--
 drivers/staging/vt6655/device.h      | 2 +-
 drivers/staging/vt6655/device_main.c | 2 +-
 drivers/staging/vt6655/rf.c          | 4 ++--
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
index 7b864136a0a8..771c1364b0f0 100644
--- a/drivers/staging/vt6655/channel.c
+++ b/drivers/staging/vt6655/channel.c
@@ -118,9 +118,9 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 		/* set HW default power register */
 		VT6655_MAC_SELECT_PAGE1(priv->port_offset);
 		RFbSetPower(priv, RATE_1M, priv->current_ch);
-		iowrite8(priv->byCurPwr, priv->port_offset + MAC_REG_PWRCCK);
+		iowrite8(priv->cur_pwr, priv->port_offset + MAC_REG_PWRCCK);
 		RFbSetPower(priv, RATE_6M, priv->current_ch);
-		iowrite8(priv->byCurPwr, priv->port_offset + MAC_REG_PWROFDM);
+		iowrite8(priv->cur_pwr, priv->port_offset + MAC_REG_PWROFDM);
 		VT6655_MAC_SELECT_PAGE0(priv->port_offset);
 
 		spin_unlock_irqrestore(&priv->lock, flags);
diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index b3ac6237010b..6df1694d556b 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -264,7 +264,7 @@ struct vnt_private {
 	/* For RF Power table */
 	unsigned char byCCKPwr;
 	unsigned char byOFDMPwrG;
-	unsigned char byCurPwr;
+	unsigned char cur_pwr;
 	char	 byCurPwrdBm;
 	unsigned char abyCCKPwrTbl[CB_MAX_CHANNEL_24G + 1];
 	unsigned char abyOFDMPwrTbl[CB_MAX_CHANNEL + 1];
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index b654fc24d725..2152c6850e61 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -359,7 +359,7 @@ static void device_init_registers(struct vnt_private *priv)
 	RFbInit(priv);
 
 	/* Get Desire Power Value */
-	priv->byCurPwr = 0xFF;
+	priv->cur_pwr = 0xFF;
 	priv->byCCKPwr = SROMbyReadEmbedded(priv->port_offset, EEP_OFS_PWR_CCK);
 	priv->byOFDMPwrG = SROMbyReadEmbedded(priv->port_offset,
 					      EEP_OFS_PWR_OFDMG);
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index bf9a10563b12..d319ec21c97b 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -438,12 +438,12 @@ bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH)
 		break;
 	}
 
-	if (priv->byCurPwr == byPwr)
+	if (priv->cur_pwr == byPwr)
 		return true;
 
 	ret = RFbRawSetPower(priv, byPwr, rate);
 	if (ret)
-		priv->byCurPwr = byPwr;
+		priv->cur_pwr = byPwr;
 
 	return ret;
 }
-- 
2.34.1

