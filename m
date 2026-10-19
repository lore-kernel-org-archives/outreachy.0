Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA784FFA5D
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 13:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792418253; cv=none; b=Jmm5QDio6K17sbCByjLKLLBZEyLRJhi6TCD5SX/yDB19fzFJToWUuMYhQ2y98lI0Y92gHB6aVh7JrQpcOLbelJZ2DiTKupXRQWNpIamS9avLR/vci1YpFXx7Q4XCJGYHwHWyxcbiVs3nV/rvJRTfWTAT4s7NPywx7JG46PaTh5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792418253; c=relaxed/simple;
	bh=fjvAi9gBmKMfVEEh1GwhVjdVvjqeXeo/SssrFZSAIlk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F/gnFAoNX7miaAsmHP0Awefg+8FDo+RTlOpdmT1VVDtsXkqE3dzDb2I5k7AQ5g/0QC6Qg37QPNG01O33yRRgoIJjiqB1pMC9FfstwKZ13vy6nlD1NAEIsnUjjG2cKYznCWqhV0gfk4ciqZzYnlZxmqr7FKln+KrvCf4pQmgSyTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZAvcLZ5E; arc=none smtp.client-ip=74.125.82.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZAvcLZ5E"
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-354ba08cfd1so3874688eec.1
        for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 06:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792418249; x=1793023049; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=qHmwVRXgo6cTlOspH9FWDod09fxFDoidqai/OyNIW7c=;
        b=ZAvcLZ5E7dZIw8GXOXZEvUJYejGCxlYorZomf041S6JytZ8lRTsrpJiButwSFyEsMV
         D62Ba6fvtaaWYLX3eLACEJDVN+IuxmJ6pJrtDrrnIjGfACEVHdoKTL5/VvJcZF49tkZV
         kSTaJPlUhHnx2k9tb5orqdi5Idyte4FtxfUYORd/LQWf9nvVnJNBLEw4dG1C2IOqYxs+
         a/XBB227xh8oYeBjr/EbKPiHqtlPqbX2Lg1cs6AUBIM/JdPtGq9W7aksWzb+LBn4RiSc
         1AJKuilVMSvBKLkCQEcYcn/E7WgXFAnWQEnDDf/PbSYS0md/u072dVoTLAmd+MPIYRyS
         9oCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792418249; x=1793023049;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qHmwVRXgo6cTlOspH9FWDod09fxFDoidqai/OyNIW7c=;
        b=IAPEcSteJ3SspLvu8MsdygqTZk1QlKnm/nfJSUZxsVnPyZiAZrQnJaU5A0Rlvoxdwo
         /vo5KBSUxBl+CCt0LyT7Q4rB9hMNRsSglNE8bGjQK0qC7vPm9WcL6/PPfMPGBXkZO/x6
         uxaO2ALkESGZqCg0aYxCxbMQTp7ueky96eFE1Wcha27KD8bNs/WJiwVip/eZoE5o31SQ
         Af/asLKcPST58u3lQSHzZ6DZyEArNK3wdjlPpZw9OK6yWCRmZ2UYWha2NssWVoTHBhl6
         tU7/dPsW0zroGQtalXrQ3U2fScK0sJiJbDlsMx68xQtrXt5etgtPrEi1Oa5ZbgJH7ouF
         RvEw==
X-Forwarded-Encrypted: i=1; AKwUvBxlGrkUHqEAGADVspP/GUMy7Xy5irYZoO8fpOfHlWTHOljPDZKlVY1+D32bxcvrVSUvhMmqwQn8KFc=@lists.linux.dev
X-Gm-Message-State: AFq9FYLMEfgTHpmNSR93PLb62FCV6OVqD8LnWvSCEW51YqsxD7MIQS+n
	sXQDR65HAemu2QLpOmx97QND16nwjq4oy2SPkPKoc7cyz5XTtDpwYQpl
X-Gm-Gg: AYBFou33+bXAH/shQxk2vQYe/kVh0Tvq4p/rVdiBJvLimadwmeNqs+yCpQS921OBDTo
	6sA5hfA+Fb/xXtsTR61bBt0K0UjnbkWogqVn3l64LcIghTQRLXL/ud+eoQ3XBnFEtB4Mx0rqU0K
	U9IVjqhmxYpTo/zXU/fnhfQxaZFpAwioHfBL2HJOP3buJNXTZR/XhYl8WDHnQgLsW0wVrOrwjw2
	fsRDfaSEVMiGRSUaURDgRLydAwWYAoz+gAdjFj+E+JDvHOGO/t7RbrYy75eoFPvKgKIgFznnVoa
	6tjDyY4pgxKpIVzo82ZOOcUc6LEHkqFzdftR6om8g64JVel2G8mwpMmAC1CpmuEDrTazmSrWv+d
	l6YfQA4fXn1UANqEb5JF93YQaM5rJjHsYdQfBXKNCQC2eDetbtNbyLo9kGiEnZzMM1gSOUTVlRb
	LJnowOt0HuGQg+CgcDYd97EoJMlMkgCiA1X9ySB3rOSjuIPwgPZFwAJtYtiMVMrg8nj+pSbo3oz
	/nGPTk=
X-Received: by 2002:a05:701b:4559:20b0:144:eb46:c31 with SMTP id a92af1059eb24-185120abebbmr10668293c88.17.1792418249139;
        Mon, 19 Oct 2026 06:57:29 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:5c3b:b91a:15d0:4481])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831acba710sm39831494c88.13.2026.10.19.06.57.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 06:57:27 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: dtwlin@gmail.com,
	johan@kernel.org,
	elder@kernel.org,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>,
	Alex Elder <elder@riscstar.com>
Subject: [PATCH v6] staging: greybus: remove redundant error message
Date: Mon, 19 Oct 2026 19:27:17 +0530
Message-ID: <20261019135717.40979-1-pavankumaryalagada@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

Remove the error message, as tty_alloc_driver() returns -ENOMEM
when it fails, so printing the message is unnecessary.

Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Reviewed-by: Alex Elder <elder@riscstar.com>
---
v6:
- Remove the redundant error message, as suggested by Johan Hovold

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
 drivers/staging/greybus/uart.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index d47f00751e7a..4de61fca6725 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -956,7 +956,6 @@ static int gb_tty_init(void)
 	gb_tty_driver = tty_alloc_driver(GB_NUM_MINORS, TTY_DRIVER_REAL_RAW |
 					 TTY_DRIVER_DYNAMIC_DEV);
 	if (IS_ERR(gb_tty_driver)) {
-		pr_err("Can not allocate tty driver\n");
 		retval = PTR_ERR(gb_tty_driver);
 		goto fail_unregister_dev;
 	}
-- 
2.43.0

