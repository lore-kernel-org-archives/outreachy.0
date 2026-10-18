Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0779331EB3
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 08:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792313425; cv=none; b=lgk5kxd0MWOht9nEpvFwqj+IRKPznJ6zqB8hPp0BjPyX57ST0gyaT+NNCf0N9clwY6qvHM0m3Y7WmtgM/OAD6pI/OD42lkTbAr/3ajMjpJDN2WFvm4/lrBBuyfjp4G5YoKj6GNrEEEtqmBPKcQuSQHOx1bP4yBeQWgu8I/Afo9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792313425; c=relaxed/simple;
	bh=+f2w5tSysfWdjOMGNQyyeCgTvy5N0XJDSICe0CScJPM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tlNjFNfyqBLZaOVCj1+P15Tso38ndEm8X3m+hAf2HPaODPfDBLnu3kwJtMjQzfPJU7WWs0Jt6bSE+2J6IfkSYcMzvEKORCdm02/Y3S3RVlVLsO6F8pi4SxLBGshKdVZUIC7hVENajuLoMBT7pXTi8C+zKxUeWZjMCpTuFl9MlC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fOZFHKUI; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fOZFHKUI"
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-3535bf8b3e0so2419899eec.0
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 01:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792313422; x=1792918222; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1foRyEVgNVxrvVtoWJyDr59yXaxgx8M7G4qkdLHX8oI=;
        b=fOZFHKUIskS8wWaCZdxiQxVJHHjRD6VNC41Cp665UDXeGtRuhy5DTASkSGcI3NnNA7
         Np57y8YJRHVTf3O27B0+KKdXPUTfsA1a4bZrhFxrVBzpuhvEtoPuy8zxq6py7YDXL7YU
         pNzGnzwhJTjg3TyUstRBv1dlgD8qzpiK6jsNy391BnSQDYVQfHDqrH41J7GDIcTbAVah
         X+ATNEGTM43m4l4r7gxmGVoHXvK+Pa0KIlXHbiRXJPEOjK2n5+h92XlE40B+9My6S2SE
         xKRG32SlLK2e5b0km2Ok3IrFK3o+nU5JrSTBPN37HJC/JywpFLFp0m8LwZn2EirotwDe
         pX5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792313422; x=1792918222;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1foRyEVgNVxrvVtoWJyDr59yXaxgx8M7G4qkdLHX8oI=;
        b=G9LweV5jxYyKaHoK926gmzbLd78z1U4ZDk3KUz0/Kaw1HT0LaKQFYkAn3Mk4hNq/b1
         kmQX3FmD4g5mAgbV67K2vEFTzkBxbOpf61BcZ3kVzuNEZo2PxirVZhLDxjEkN4POdgQp
         v6QKv+Wg5yZhBDq1NinMtjalS07PGN/5DivMD0eUfAl0tVb6kk3CU8Fo3i/FyeOMh/E4
         ky5ZKcoZrF4XkL3gBqrA5Hpu2duT1fQ0iinkJAL0/dWTZolnKIRFBdy1En5cFtK942sO
         wVtHhSGm0irbFxTsnpwhN+Kfeb9LKFQDwrC+lpesSlnx89es0GfC9sw0HN7NFghHJMUG
         VpXw==
X-Forwarded-Encrypted: i=1; AKwUvBxn9tPu6EZGB7HY4KztrF0ByCIsKiqlt1ExtKMriHfFlP7d4Me+qPLqzm2PXwkNaoAd5jKFYfGcYxA=@lists.linux.dev
X-Gm-Message-State: AFq9FYJLaa1YHnpxSXXisSkwp3Hb5gd9L6GN2UszPYUAfmjjf6dEioES
	QGvAIMBB2RlYYv+cGA10QnyRcT1dmOVnPbmpyH/O6LTtTQW+hYfsDQ7bDq6RdaZ6
X-Gm-Gg: AYBFou3Cabi8eEZh/7R2GcGnTSt28ykuVvgnMd45OfZ3pLtSM8inF2hkdH6YEz20UjC
	ccdzl1kQC1n1Z0tZbT07L4Q/F5kcUNFXEG7sABYBLJWIhLKugMDYjTkmtWPwxQsJtZ9l3YLpacT
	0aXDGQHU9JMoAlI4+xPKYt+QHvRslDoywX15CsCxQshwSdM42rQl0SmlfZiBHdKZ1Dh0FvHnMJh
	A2pSvdP06pPDEcJgGle5BAsfS5aaO5TP1D4XzzxhnHQTFDcBmY2yQI6LLdTslz1bFfcoi1OZKZz
	52UAnXmSiatqNEaQDouJ+kF8Am66lDy7UFVMf4kBEBuOorBCW+29XsCCh2eAJ055pDy9aMC22Cx
	yauiJReqv+k7MF/aUb/LDiOvwgm1Ano/RVs2HH2Vkjwm2BaC0RoZufxD+299SAxMMESomVIkSoG
	cQrLHYopoXvQ5siO6OCVm5WzD9nXnR/7Hqii4wkLWB30jMFbeFry4RzEx6AX2B2wc9AcxSK5saE
	lDMfQ==
X-Received: by 2002:a05:701b:2608:b0:182:9071:3249 with SMTP id a92af1059eb24-185131076f4mr6206897c88.30.1792313421875;
        Sun, 18 Oct 2026 01:50:21 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:1e01:b34a:8bb9:ed8b])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831ca95700sm19342455c88.23.2026.10.18.01.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 01:50:21 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: johan@kernel.org,
	elder@kernel.org,
	dtwlin@gmail.com,
	vireshk@kernel.org,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>,
	Alex Elder <elder@riscstar.com>
Subject: [PATCH v5] staging: greybus: use %pe in error messages
Date: Sun, 18 Oct 2026 14:19:25 +0530
Message-ID: <20261018084925.11793-1-pavankumaryalagada@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

Use %pe to print the error pointer directly and display its
error name.

Keep PTR_ERR() calls when the numeric error value is needed
for returning the error code.

Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Reviewed-by: Alex Elder <elder@riscstar.com>
---
v5:
- Drop arche-apb-ctrl.c and arche-platform.c changes because the
  files were removed.
- keep only the uart.c change, as the fw-core.c changes are already
  present in staging/staging-next.

v4:
- Return error codes directly instead of storing them in ret,
  as suggested by Julia Lawall.
- Remove the unused ret variable.

v3:
- Extend the %pe conversion throughout Greybus, as suggested by Alex Elder.

v2:
- Use %pe in the firmware management case, as suggested by Jeremy Clifton,
  to match the other cases.

v1: https://lore.kernel.org/outreachy/as0nhVbagZa8Birm@user/T/#t
---
 drivers/staging/greybus/uart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index d47f00751e7a..74c9898c0eed 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -956,7 +956,7 @@ static int gb_tty_init(void)
 	gb_tty_driver = tty_alloc_driver(GB_NUM_MINORS, TTY_DRIVER_REAL_RAW |
 					 TTY_DRIVER_DYNAMIC_DEV);
 	if (IS_ERR(gb_tty_driver)) {
-		pr_err("Can not allocate tty driver\n");
+		pr_err("Can not allocate tty driver: %pe\n", gb_tty_driver);
 		retval = PTR_ERR(gb_tty_driver);
 		goto fail_unregister_dev;
 	}
-- 
2.43.0

