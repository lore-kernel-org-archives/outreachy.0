Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6504D4C2264
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 14:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792332975; cv=none; b=nX5+6y4zkFsav+ZE5kBXQ2QTN6+de7tlTb3UwPTEWUPW9Fdhg0vPBaGTP5uC9GfJcLSgMPpx0RMu4aoBz7w3UwR9nBMoFGH+UEZ6pQ1uQHpMG2u4mNKbTzJTyfWOmWN4Fc2bUlVFOdDsrgFzI76nMOfsGcLfNnIuO/wKD4rlH6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792332975; c=relaxed/simple;
	bh=+0efL/d5HgWmlvhtS1btQMAIp2DjfmYK7noKBvdE5hQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MvPBoLy6C0GP9llAruvR3sTNvnf0cPp+WuUSQysTjkkBwtp+aToNuqYeoC0hj87L+GfJG5mgRIF9a1bRAM7WUsuNfrqPGxnunZRNjJK7UI0oZgeVv+EwZWhYJVgC/A18T6DY6Sv4oX3yJ7LO/+ZCuTczCYUWy94d546ZZ49fy+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gF8DBDHl; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gF8DBDHl"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4a01933b584so9186145e9.0
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 07:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792332969; x=1792937769; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=QhsdJcCo+/WkuOVJZ+oJc7ZbMY9uosQoFaCm6vyl6e0=;
        b=gF8DBDHllnPYdd7NZ5qHzZecjz5polIEtr8hpDj0FygNTzjGIMWIWMmvarZQ1QKgVD
         VQc6BQXsn5zQkg3flyGnvVdzTY0Dvy/fUwLrpOGbc56ymRwHnAyLwYPGvOWY4nayHcjr
         QXLFtaE8uSJFglB49Zb+Wncmdj3OMuUl88nta2hhPohBWz0TMTdpLFQmdTq3S+VfmjuI
         w0Axr3liNkwhTMyLjV5dxBOKXRiEe6L9Ou7YVsozRFEcJWyekBhwt+DvH9UqHDtcgL84
         kZigtLmfd/d2n1d+ujy4QmK6xqpgZ4hcKMwR1e55H57s80f/A/QvcgVLTw7+LpplcvtO
         D8hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792332969; x=1792937769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QhsdJcCo+/WkuOVJZ+oJc7ZbMY9uosQoFaCm6vyl6e0=;
        b=AmoNn8iMxq4AOJ5H9EKubGzMlo5WnBpld4LYs6KB8SsLiYCbguaLTRnqlTHjb4C+dR
         l2dCVcRfcxsoZheHjWrAHBJyxepwJnoOOgEW5bMTnyfil2Z0WcclYyUBhEUpja3rc3lf
         gy8akXtbLTZtTURAyTF5Wf7RjEnl2AlU+gLTtEP16KjAMutDAFy8v7vM/rM3XmbX008R
         e7K1bPEUxTD3sFSlAgL95v2v1blyfeNDtUvS9Ojf3xGc1jZ1qbXMEuctNDlTNgDFqS17
         cs/uZpW8u7ID9HmP0CArenSDVK3D2VDU5ffm2PgKcdiziBxeBFOTt8cj5JKdVGzuAi2j
         93BQ==
X-Gm-Message-State: AFq9FYIQOhi484QFOUEqyIF5ZeHqo+D/Eclq+hEhGS+3ZdqeEM+df9An
	vxHh6i0BpOhjoAeo5LuJvcAPbpqKVKh+FawKq+zVrHu994eeeMWZq93j4ckxAm8v
X-Gm-Gg: AYBFou19aPb0s1fVMcp9KjQ9rDeF51nADRQLiDrG5R5XzgOSYCVhnxbgZIik8pltK2L
	g2uBuMdL/q1XEPXbUpY9k1gyY5E5XVcQuc4XngdQ1FR8t04NosdUK1Q3MVNVEwm7X+1JHjru92M
	JwikWdahcO3OlFgkISWKpDJtobaQ74TgsMB25MzLPlFBy8h5qlW763y8ZGFkJ1gHDqHwo3qWiMI
	+4E2c9q88OlIb8OeEhcUArjN7jcgjIcehUIZKtZpVT/AxkpRpr9fD8v07PNvYjlBDbEk6SMv+nq
	c5utx/qTpM96E0WWL6XlNpyGrspAVZBVDDrYxh677k2BO/JEKWZZXYGJXaurIP2UgZVaKAUokg/
	umZrnycEQBRy9TqQix+4I2GEUQ35gPiy9BU9qI42xnjXabkOaEoaEwblrqlC+zAt8u7xrDq7vKn
	Cpa591ANZ8GmGlZ1VzbY/55jKcDZ3CM1MD3Z4+D0PSesqMseKFOCFIPb+VAc/FPJGEuPrOV6qV1
	RrMlmRfRTm9u4eosHSpKYrdpIY=
X-Received: by 2002:a05:600c:858c:b0:4a1:d957:733e with SMTP id 5b1f17b1804b1-4a1d95773ccmr63893425e9.26.1792332969114;
        Sun, 18 Oct 2026 07:16:09 -0700 (PDT)
Received: from DESKTOP-0KSTGNI.localdomain ([156.213.131.39])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1c8ce32absm140555935e9.1.2026.10.18.07.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 07:16:08 -0700 (PDT)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: Temitope obabi <obabitemitope765@gmail.com>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-fbdev@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: sm750fb: Remove redundant zero assignments
Date: Sun, 18 Oct 2026 17:15:18 +0300
Message-ID: <20261018141519.10165-1-obabitemitope765@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The sm750_dev structure is allocated with devm_kzalloc() before
sm750fb_setup() is called, so the init_parm fields are already zero.
Remove the four assignments that set them to zero again.

Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 8b93bfeb217b..21744a5a63fb 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -833,10 +833,6 @@ static void sm750fb_setup(struct sm750_dev *sm750_dev, char *src)
 
 	swap = 0;
 
-	sm750_dev->init_parm.chip_clock = 0;
-	sm750_dev->init_parm.mem_clock = 0;
-	sm750_dev->init_parm.master_clock = 0;
-	sm750_dev->init_parm.power_mode = 0;
 	sm750_dev->init_parm.reset_memory = 1;
 
 	/* defaultly turn g_hwcursor on for both view */
-- 
2.53.0

