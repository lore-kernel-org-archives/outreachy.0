X-GM-THRID: 7023011661987446784
X-Received: by 2002:a05:600c:a45:: with SMTP id c5mr20157425wmq.79.1635172348152;
        Mon, 25 Oct 2021 07:32:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ef8b:: with SMTP id d11ls1974967wro.2.gmail; Mon, 25 Oct
 2021 07:32:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkLHxSHiVLprSx7Mp3eGDq0AR6bC+ULPodgI5pjL0h/d/AWRTFGcpbpBLB+qSRh+t3Szaj
X-Received: by 2002:adf:ab4b:: with SMTP id r11mr23392619wrc.124.1635172346766;
        Mon, 25 Oct 2021 07:32:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635172346; cv=none;
        d=google.com; s=arc-20160816;
        b=oCmBaQbv04WaDC8nySrYkylKkqLoe9ntiR34l8u0tGVvEVvjgURHWECKk1dPJ9I8r4
         0IYLHKAqMO6Sziim6HZy6iTvnqb3yuaFbUk/Al4ZBai8V9xI0bfZ/+PdJ+9RWapFOiuR
         dN8quN+6gRJFE85G3uRuzkB0USgk02SDSEoODWA2bwzLhu6D9g+NokptNNR3nveJQfkb
         yKZzg+hl4nUGmOmJ3LrZZ3IUkwJImVFH0H+A14YgwcSNfvf+4/sBZ+INkWuJlzuWCY4P
         qzqW8Z6+M3OiU4lp4YkLKKmQrnR7/x+LcnGhNcdv7nFIAyMHAbaML6vImc1Ry/6VyMwM
         gYNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WMuNnARhjHt6/JUj94F/2jFoX5OqvXl5QIdO5Zu2H9E=;
        b=u/d3zvRKE6+TXx9e7pzknuqmggU95EoqVDCfdeg71jZYXaD4W9QoS/gEsiLUruSDbC
         VS6vpnqCWQeNeamuJGR/apEEi7a4MbkwGsmIV4AfLoIdhs4aXCaEvNrW94AtwjDj6dGR
         FYDWr8U8ZB3dfJoQPUDDonR/VISavgelOZM84yCyi8hWVNebO/lE+2UsiFJJ53R0bJy5
         XLUn4hUc+bmfDYLlsSw32KArlv1LXOym2sXi+ldOE5BMw1zf1OxPV08AbRW9EKPoLAcN
         0j3HB8KKuR4dgdNXo9ZPtvb4lmkvkglF4Bo7NHSLWmtNmUlfaeMWcW2M26qWPMFrNTf9
         W4VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EyxP2thH;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id h5si331914wrb.4.2021.10.25.07.32.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 07:32:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EyxP2thH;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x333.google.com with SMTP id g201-20020a1c20d2000000b00327775075f7so5204384wmg.5
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 07:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WMuNnARhjHt6/JUj94F/2jFoX5OqvXl5QIdO5Zu2H9E=;
        b=EyxP2thHsuQUqXfoLtwECPCS5y+h7xJtbCvGUwCoqOZrpChwq0PlLYnTVQwT7v5Myt
         SWOFvU7Tc9POSethN2PaA6ZA1Nab3QdxDsuA1xhfA9xJUzJTWDoRBhI5vtEnc+mKoHRy
         aiVLmRMBqC16W2uOqBdZZ7qupPuyhfidMDZ/cgDrWAgqXpW1IQ5UsGdv5XaFaDxpXBay
         hp1iVwA2ndCoj6hkesZ+2a+tWu3tmv2so8HfPpOk0igiHMqEbxBCFK3j0Fh4XNUnQBCY
         Y9PvAOrGwP9C3oyIQKmaBsjSQt1h65hwFkVSyBPkeJnrixc7G44vidBqNDb8eNVpwslC
         g42g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WMuNnARhjHt6/JUj94F/2jFoX5OqvXl5QIdO5Zu2H9E=;
        b=qAGkn3nkOG8ChII/iD8qcKWTuTE1IxopeTNBwapNC7SrusuYBRjknG+LX509oWYQWD
         +bie81RMDrJNbq/QuZAu471nl43RCqy5HP3NKag6ukskpDkQnVQy+DvSQJJLyK/eCW0v
         KtriHJgvYEzXRfyMxcXpTE2kTMjEXK4NR/eI8qPuX/reNcosco/Pp2JH+kLk9XpkCuKX
         OYeAwcUV67BBFxJeZW5byt9KHHicDLO73sdHqzjYmHZ3z3QCsFa5xdSwYuy5LjZsYnas
         b7mJ1aIw35PNBV3zSC6jPIErcMh365KE6eyZ89JZs1gH9oGg6TPpa7GKoLxlafzUvrvl
         Hlmg==
X-Gm-Message-State: AOAM530LeZQ6orJpoG5FR4AL/yvmtQOQxQ1QWdpwRw5Gq5C4CEYhNO3P
	m+dO+alzjVVJcjIPbVEOaxH8dO0uLM9SHg==
X-Received: by 2002:a05:600c:2199:: with SMTP id e25mr8004109wme.157.1635172346443;
        Mon, 25 Oct 2021 07:32:26 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id x8sm13011500wrr.53.2021.10.25.07.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 07:32:26 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 7/8] staging: vt6655: Rename `dwAL2230PowerTable` array
Date: Mon, 25 Oct 2021 15:31:33 +0100
Message-Id: <69eb06ced0d039b238c1ab6d3fb70b5ee1288a8a.1635171519.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635171518.git.karolinadrobnik@gmail.com>
References: <cover.1635171518.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To align with the kernel coding style, remove the type from
the variable name and do not use CamelCase.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <dwAL2230PowerTable>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index d132a21faf24..1c81c44f086c 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -85,7 +85,7 @@ static const unsigned long al2230_channel_table1[CB_MAX_CHANNEL] = {
 	0x06666100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW  /* channel = 14, Tf = 2412M */
 };
 
-static unsigned long dwAL2230PowerTable[AL2230_PWR_IDX_LEN] = {
+static unsigned long al2230_power_table[AL2230_PWR_IDX_LEN] = {
 	0x04040900 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x04041900 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x04042900 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
@@ -834,7 +834,7 @@ bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
 
 	switch (priv->byRFType) {
 	case RF_AIROHA:
-		ret &= IFRFbWriteEmbedded(priv, dwAL2230PowerTable[byPwr]);
+		ret &= IFRFbWriteEmbedded(priv, al2230_power_table[byPwr]);
 		if (rate <= RATE_11M)
 			ret &= IFRFbWriteEmbedded(priv, 0x0001B400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
 		else
@@ -843,7 +843,7 @@ bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
 		break;
 
 	case RF_AL2230S:
-		ret &= IFRFbWriteEmbedded(priv, dwAL2230PowerTable[byPwr]);
+		ret &= IFRFbWriteEmbedded(priv, al2230_power_table[byPwr]);
 		if (rate <= RATE_11M) {
 			ret &= IFRFbWriteEmbedded(priv, 0x040C1400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
 			ret &= IFRFbWriteEmbedded(priv, 0x00299B00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
-- 
2.30.2


