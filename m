Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97016274650
	for <outreachy@lists.linux.dev>; Tue,  9 Jun 2026 01:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780967896; cv=none; b=ApTS4tKI7XJ3yp1CyUpedlsIYY4kAzUaiDnYCQPIupu1WGkOns5A5QE51Fhohy97sZdUElsf1e32o/vi6FoVbwj/k/2nJJWmot6QM9cbO1M62puZ7H3Qj3VWc+TIPUGWXBR9hqekni3SHb1aR/G86R9umiORKs1+NFx9PRoWHzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780967896; c=relaxed/simple;
	bh=RFha6jfVWUCB4v8q6yii0Xy33+yTSsEdHGCnRuiCPxo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bpykL6TNYfomNyYMfwiMHGCn3/nEqGois+WJb6x02PySpj6gv526d8TfhQgT/t3q4h/ys4y4ghJU0a+E2iW79CiIdZpOVi8IpfQTVS5jN3TWM7hd+tXBsM++odCBaZzV8GFPurxaXIchCSK6k0A53qiH1Oo+2FjtmLcSSukvU+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MzlEtMap; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MzlEtMap"
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c8585ecdd71so1738323a12.0
        for <outreachy@lists.linux.dev>; Mon, 08 Jun 2026 18:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780967894; x=1781572694; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1hCrO2Avcbp9+uaFM2AbILaNhKUQvSHPAv3c0qthXT4=;
        b=MzlEtMapG8+0oMqFUsQUsbhDaUVnORabcpbbokd18ddGHweVEyP5dyt1d8trxIFefU
         lARpZAyKIrUmlEHfgZW2rpL2Gbc7ZaMb7zUXFWjrjRL2hSU5NyZ3+dl1Lx9jsRalAxiF
         89o8f+euoDaMmwIzBJ3QHCBzJ8rdYdakZlH5DFNK69oJMVAu6a7E0NCSslARcq+fMUNa
         vvClhJFp6QvJ/nWcQRwdhtJpDuCws47jCOuoJmX0ZmTbmGuHHQGA0pi199lTQEUQaD1S
         X+fYvKQq5/XeliRIKd5zmuBY52tx/mbb6TZIJctgvLIP1d6T0x6XVrkM76chiEvMVaCH
         k7yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780967894; x=1781572694;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1hCrO2Avcbp9+uaFM2AbILaNhKUQvSHPAv3c0qthXT4=;
        b=EevCpW1rlJnQgbIpzdvbXaqITzrWT3Q84PsYsSDpA7zXJB/TuulFGX831EcHZlcR9X
         BrU2tbzr+1HQxlapIan3M9UDMQqdxFcRMDeN4lhF2sQSYlNP/zLqoCXCVE88HZzqq8z8
         9hEDbvO95/7uPbTFQjkVYKedLj1BNp70pIqjJfaNU5+vc1zhj5ZuxNz0t1q0E/d4wOko
         HoIYkSseRgtJcExP9f3XBpqOv36BD4xZyiPUX0EffKZQNQ+lTWevbiuvM/KqJQAgi7tr
         nGrA7H7aWyZCKciO/n5u4KZ2PKqZbh6ne30gj4Ta+Fhj8B6mM2JHwLogb/UhmREkryhN
         L84Q==
X-Forwarded-Encrypted: i=1; AFNElJ83VSlFv8ppF5o6IL5XCYefsEdypurAfOVoYY7EAMbgmm804Xv9csE2nUgMZIsKNmdCww4U9Zp0d7A=@lists.linux.dev
X-Gm-Message-State: AOJu0YyKQIo2RfOGbeuzhJ4y+4DRtG4UuheNt+7v4leiq9j4RLzzIDWD
	OgkNlZ5fMHDjA32Sb9QUNG2qkkXQ3k4TcC6tctRBYG3X/twa5F6p7bTJ
X-Gm-Gg: Acq92OEwWfbL7rTPPeRQuN8cirh2xQRMcmxWZVkQHnWNZgVk8cfM93tfw2oLITLI3k9
	KD+f2lXvmEUi/WWxExdTT79tu3ZpOCEvkh37AshrMOrb8g85nPNr4i/2Ix5C66oPjiekLPj+Qya
	RGE1kUMsdQGcmfDWaHx8i8R3CjD0WEs45JLzmqn4/dgO9/4iFdjJPGNywA0Am8uMxKP5LElCG4w
	aA4h256mNZr3RYSak6t6VgMWHAnsz1+p/xCB3Gsi1fIxPm2qDCELlUtVANsyYX0CBIIErsRiv1I
	I6xhZxfblRG7qCNLKsBBzWXw5ufpS81OENlLtk7XTml6dyLSfSjagym0cHU/Kuhzazat7EUHqzP
	OkJ4FmfviSNdac1HDtJsS6Rz8BS8VxRxrDN9VFW3Lk0O4O6VLKfnTwUwf7yH1560lk8uGBfF7eT
	UBRaR3kFusiDAV7N8S933jYLblImA8IgKIu5DY
X-Received: by 2002:a05:6a00:88e:b0:841:dcb5:e6f2 with SMTP id d2e1a72fcca58-842b1065829mr18026265b3a.23.1780967893821;
        Mon, 08 Jun 2026 18:18:13 -0700 (PDT)
Received: from localhost.localdomain ([2604:3d08:2474:4800::9e30])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842828d6bc5sm18329180b3a.43.2026.06.08.18.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 18:18:13 -0700 (PDT)
From: Brock Haftner <brockhaftner@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy@lists.linux.dev
Cc: linux-fbdev@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Brock Haftner <brockhaftner@gmail.com>
Subject: [PATCH] staging: sm750fb: make g_fbmode array const
Date: Mon,  8 Jun 2026 18:17:36 -0700
Message-ID: <20260609011736.17401-1-brockhaftner@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The g_fbmode array is a static array of constant strings, but the pointer
array itself is not marked as const. Fix the checkpatch.pl warning by
adding the const modifier to the array declaration.

Signed-off-by: Brock Haftner <brockhaftner@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 89c811e0806c..8f533f3b1b42 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -21,7 +21,7 @@
 static int g_hwcursor = 1;
 static int g_noaccel __ro_after_init;
 static int g_nomtrr __ro_after_init;
-static const char *g_fbmode[] = {NULL, NULL};
+static const char * const g_fbmode[] = {NULL, NULL};
 static const char *g_def_fbmode = "1024x768-32@60";
 static char *g_settings;
 static int g_dualview __ro_after_init;
-- 
2.54.0

