Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F0F41757
	for <outreachy@lists.linux.dev>; Tue, 17 Oct 2023 10:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B/4IcYLd"
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-d9ad67058fcso5702054276.1
        for <outreachy@lists.linux.dev>; Tue, 17 Oct 2023 03:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697538862; x=1698143662; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=izdWRaFanHQ8azSd91/9giaIXLaVsk5MY9ErGFWUe5M=;
        b=B/4IcYLd5lmajAnrwRkrA8eTeBCNmLpqt+k67JhIoCDNIJL22jdPGfvy4DG4Uqexon
         vBlL5/9QhKrXSlGa6+vSbnNrquDauPWsl2d8GDY/xs389dvmpvfTCBRXVd5ClViAUqHt
         Ac13KS9WrqrpqtSOCbAqgr6mporJSl6XdHafWm+dxpYOaFV8MEFVp/7M5JQAMSKsEMwx
         3lqeN7a72cYyUoRQYK2Ef5nlm19ItCfcKxc3qnCMJrcL1IBwzMBkEvEu3GFOh+5aa6X3
         RgZxiZihto0Y9Fpc0jTP2wrhJ6f7L+n2sJSAWs38A3XZPRpIQxVPiBdH57DaYnMEcFG1
         PpVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697538862; x=1698143662;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=izdWRaFanHQ8azSd91/9giaIXLaVsk5MY9ErGFWUe5M=;
        b=DZxXnx76iy/cfUds6MNV/qNbgJ0+xi1447aKHdQ9Yfjcw/wBPYx4gJ6OS2Q/n5shYN
         a5bQqBV5Wry5NcgknGsJOXtBXCa7Xj4Vqtc+i6lA/zHjpCuIh0hG9rhkTANYDiLE2kfh
         +sR+UwlFBFgny8U/P694fBFnuJf4NrvJINCmR4ZzSoUfMrUxp69IS9DVagHMl1+uE2aN
         OlLcVL483GiKaDmpai8d5pa7/IfqCZFD+A21c4Fgnw8N+3q0We2/bTukmKnoXHo8Z+4f
         Go8SHSKnvlKUm1MlWdVCa8lNwxhIx0wSUsQHSs7fMKiQ6iWDxt7iY8RuB19AzXwN131M
         jvCQ==
X-Gm-Message-State: AOJu0Ywq4ZcmPYtJ2YVyFyGlSNCbmQmLgr7H+Jzc0upgnRbTGiPuJ6rl
	AsxTXUXMpQJqncq1tu9fTrSn02k1eY7L789B
X-Google-Smtp-Source: AGHT+IEy0BEwUups1npcQ7XB9AduAj5HV30i6bkRfdGEzLS22IbUsmq9Iwka5H+WRwysl4Nj3xHCIw==
X-Received: by 2002:a25:9391:0:b0:d7e:8175:4fa9 with SMTP id a17-20020a259391000000b00d7e81754fa9mr1689027ybm.4.1697538862326;
        Tue, 17 Oct 2023 03:34:22 -0700 (PDT)
Received: from gilbert-PC ([105.112.189.86])
        by smtp.gmail.com with ESMTPSA id s78-20020a25aa54000000b00d974c72068fsm419280ybi.4.2023.10.17.03.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 03:34:21 -0700 (PDT)
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: outreachy@lists.linux.dev
Cc: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Subject: [PATCH v2 2/4] staging: vt6655: Rename variable byCurrentCh
Date: Tue, 17 Oct 2023 11:34:03 +0100
Message-Id: <cd4c073d0e67e2ce6ed9f38a7add9bbd2fe760ce.1697535791.git.gilbertadikankwu@gmail.com>
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

Mute checkpatch.pl error:

CHECK: Avoid CamelCase: <byCurrentCh>

Signed-off-by: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
---
 drivers/staging/vt6655/channel.c | 12 ++++++------
 drivers/staging/vt6655/device.h  |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
index c11bc2dbc356..7b864136a0a8 100644
--- a/drivers/staging/vt6655/channel.c
+++ b/drivers/staging/vt6655/channel.c
@@ -82,7 +82,7 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 {
 	bool ret = true;
 
-	if (priv->byCurrentCh == ch->hw_value)
+	if (priv->current_ch == ch->hw_value)
 		return ret;
 
 	/* Set VGA to max sensitivity */
@@ -100,7 +100,7 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 	 * it is for better TX throughput
 	 */
 
-	priv->byCurrentCh = ch->hw_value;
+	priv->current_ch = ch->hw_value;
 	ret &= RFbSelectChannel(priv, priv->rf_type,
 				ch->hw_value);
 
@@ -117,9 +117,9 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 
 		/* set HW default power register */
 		VT6655_MAC_SELECT_PAGE1(priv->port_offset);
-		RFbSetPower(priv, RATE_1M, priv->byCurrentCh);
+		RFbSetPower(priv, RATE_1M, priv->current_ch);
 		iowrite8(priv->byCurPwr, priv->port_offset + MAC_REG_PWRCCK);
-		RFbSetPower(priv, RATE_6M, priv->byCurrentCh);
+		RFbSetPower(priv, RATE_6M, priv->current_ch);
 		iowrite8(priv->byCurPwr, priv->port_offset + MAC_REG_PWROFDM);
 		VT6655_MAC_SELECT_PAGE0(priv->port_offset);
 
@@ -127,9 +127,9 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 	}
 
 	if (priv->byBBType == BB_TYPE_11B)
-		RFbSetPower(priv, RATE_1M, priv->byCurrentCh);
+		RFbSetPower(priv, RATE_1M, priv->current_ch);
 	else
-		RFbSetPower(priv, RATE_6M, priv->byCurrentCh);
+		RFbSetPower(priv, RATE_6M, priv->current_ch);
 
 	return ret;
 }
diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index b166d296b82d..b3ac6237010b 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -239,7 +239,7 @@ struct vnt_private {
 	bool bIsBeaconBufReadySet;
 	unsigned int	cbBeaconBufReadySetCnt;
 	bool bFixRate;
-	u16 byCurrentCh;
+	u16 current_ch;
 
 	bool bAES;
 
-- 
2.34.1

