Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B8A34F497
	for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 06:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792132703; cv=none; b=hlcxYRHX+dgM4X4dWnXKde6yInCrFYWEHbk/VjsoMS81sFL+rE7CWWak3oWmnxLDL+Yi0ELJANpkpBWNBxIXbLlSZHDCYcGfIU3DjwZuUV6Wk+Cg1xo3nb6x/ZWeJQs2eG9VEfePSgYPGVQSD3wT0zMuF0C2kRPWHlfrWcu3yz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792132703; c=relaxed/simple;
	bh=zbBYNRqIpU/zXlbS3PL2t380sFU4bLeo0x/J25o3/Yk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TXqC/H3p68r0SkmFEJGV88mBfRn1cjWXBZ1gb94IiRi0jrsPNBoHUj587Uc+bZyTXh+x1dwr5mqfK7uJ90nm3hHDtNjiV8HUiDjD9EAlcJf6lf4A5XL1JfNEu7jr14KjTIbqv71NQve1ZDtBjwrDB7OavTDBe9Qnwb/JMlG+nps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=qstliJLE; arc=none smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="qstliJLE"
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-15dd124bbe7so359404c88.1
        for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 23:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792132701; x=1792737501; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=zozTgap9/7XkjDcW6YDxcMncGVIIlLjENhuebqzWUwg=;
        b=qstliJLEucOsreW30IF15uGuN8YWPZ4pqbPvgiFpC1csPelYShi9OvOXm5KPCWmPWY
         IK4qBnd7BVZTMQECASziXQL5LrSOnGuYk++shL5oxa455HTk1KeRbC7K5ldjMplH/UDr
         Wtf2zgp67F6+saB1PVYwBdsfXT5UcKK4ZH8tJcwwfRSOkQksLMywJ1y4Nxaek6BgpRGz
         +m1wJjWYEanDjLVWHWd3U4/kAh7flRF2neFKkvi11ldZpHrhQKQzG/rmpOG+EL0nycId
         Ig2AOhk91S0TiLnbMx714eJNAOz9i3sj2SL+ze8htIRORPO0vUkgWdBkU9vk2Ni+DxSo
         1yrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792132701; x=1792737501;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zozTgap9/7XkjDcW6YDxcMncGVIIlLjENhuebqzWUwg=;
        b=RLT+vELImmTPa7mhOIv1aejIE6LgtF2YTXpVPnPns2yrLl6t7fNFcvLgimQPQQeJOX
         W9rYFradvk7llo3Q+njoWwdoYPpyTfH5nq9ahVEJwH4lgdVV2OXKAK9NTIdBOUrnlDbT
         j8ddp90aSEj23F5wggc0FU6nMLpp13TIX3XqMZ1IrPkJqENXEteK/0DkxX0GsofdoRUQ
         mvaW6jZNFtl/AueS5mQ3IF5Zpf8giwXGOxBgRW8Qul3ucPhPaJNXk+RJ73/FuwW+dgF3
         oqx/lcxlE4tbNpmKg+gmcti2+r48qtCAR0M7MsZl46pDdRZlUC7gO3t2rtX7yDUQuFHR
         K6AQ==
X-Forwarded-Encrypted: i=1; AKwUvBwPCwvP9Ywq4488ZgmseoOIcYsTu6dxRB0vVz7azdaUXGvVFd/hRN/OZOhw6nPZ/9FP3ed/ttbT210=@lists.linux.dev
X-Gm-Message-State: AFq9FYJ74cnjD8e746gmmt5ZR+5JzJIP9miSK511aPa3BQHYARHAfJ3e
	lZkGSSlAZA6IJs/tNdgDUXg6wNxk75WblsKfKULcjyev6NPZxO4y7lcu
X-Gm-Gg: AYBFou1uSHAPbC7ERmzyCcmi3t8iQHXOz5Vngyuevp8doJp9rJeLSF4V0FSjzCs2M+D
	i+O1cmqMlnhoKw7n72XGSAWP0saMc1QpF+0DgWNEmFRKLz8YYnSpzMeeT1J56Y0s3kNdq3ppaSb
	02JgwyBm+BD1T1/LL6M/aWhPQrI/67dfPNbOVX71gwPgsleh0jHdgwQrOHWtuYSVkR+cEoERK1B
	Y4CgBX0A0k7PRTvJVWlKv0+TEy/C1fnxuihqepT34o+5TioJP+nI/G1qYBx3SrLuZtWKH0Hx7KX
	gTmJsmet61PPD5pbNN/WV+L9YcinOmwWCWrMGPbyX//GoAAatOROFxRStHuE2j73Yde3yjXp47c
	cMxF2JW6NXJOu55fxcxrMd36ZA4H4v0mcH3v2DYVCorrpEmM6yZQkpQV31nZHSRrvkxMSkeHJtf
	NnJeNmeXnd56/Kn82BuWhrhya0FOzYlr/zOjr6E0IAfLLnWRFGJ3obAXdqMM3aNz7bF72rUldDr
	OvQDQ==
X-Received: by 2002:a05:701b:2305:b0:14f:505d:813 with SMTP id a92af1059eb24-16a60811423mr29806233c88.41.1792132700064;
        Thu, 15 Oct 2026 23:38:20 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:78ea:36df:1d29:86cb])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-18319d3b880sm2650986c88.10.2026.10.15.23.38.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 23:38:19 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: pure.logic@nexus-software.ie
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	rmfrfs@gmail.com,
	vireshk@kernel.org,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH] staging: greybus: Align function arguments
Date: Fri, 16 Oct 2026 12:06:48 +0530
Message-ID: <20261016063648.22795-1-pavankumaryalagada@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

Align the function arguments to follow the coding style and
improve readability, addressing the alignment warning reported by
checkpatch.pl

Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
 drivers/staging/greybus/loopback.c | 3 ++-
 drivers/staging/greybus/spilib.c   | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index 2a623fc2e99b..0f699afc10f2 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -653,7 +653,8 @@ static int gb_loopback_request_handler(struct gb_operation *operation)
 		}
 
 		if (!gb_operation_response_alloc(operation,
-				len + sizeof(*response), GFP_KERNEL)) {
+						 len + sizeof(*response),
+						 GFP_KERNEL)) {
 			dev_err(dev, "error allocating response\n");
 			return -ENOMEM;
 		}
diff --git a/drivers/staging/greybus/spilib.c b/drivers/staging/greybus/spilib.c
index e4d1ae8308aa..c1982f3fb931 100644
--- a/drivers/staging/greybus/spilib.c
+++ b/drivers/staging/greybus/spilib.c
@@ -160,7 +160,8 @@ static struct spi_transfer *get_next_xfer(struct spi_transfer *xfer,
 
 /* Routines to transfer data */
 static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
-		struct gb_connection *connection, struct spi_message *msg)
+						    struct gb_connection *connection,
+						    struct spi_message *msg)
 {
 	struct gb_spi_transfer_request *request;
 	struct spi_device *dev = msg->spi;
-- 
2.43.0

