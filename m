Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C978C523A
	for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 08:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jmwq1zf8"
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-9be3b66f254so613621366b.3
        for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 01:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698653813; x=1699258613; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=99HDq8JdZjefO7s5mlmYbkUZBpt/wwnQKYR+T6cySY8=;
        b=Jmwq1zf8T+NacLzjkISOb4qUiWwd4TS+ogORYp+F6a+4TCTVDlraGCVjjM5Pd42krn
         j0RdDV0Bd1E0NzLwlv8wh5bZE7EZPnYfZId48hMYsQ3fFfsnFm6UkXZE/qqToGJTxGUT
         T2Ts4S8SFNCBsucieXxQKj7rmsDhrWlwk2OFbMGn/QWpDE8Kdg2FFXRZGzO1CKhHq5Px
         LmU+oH4mjtX3sAKrPdZ0caz5s2h/7Vkp2Dtyv8UEFlrsiCkIIKpN6ocvk6IydjzkatBj
         2nUW87me5Pt6MBOA0pjuyHT8dSyaXZ7J/fERFZHTQE69RPw8j6jattIDY2mjJrsF2b7w
         rqhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698653813; x=1699258613;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=99HDq8JdZjefO7s5mlmYbkUZBpt/wwnQKYR+T6cySY8=;
        b=vXnhy7+QR4xruSEyHEBr1D9txrve8T0+dEpm9HMqabzqS5YFfdMUB2qaAeHWqlpN/E
         HYK3mAiEZuqkPnpoZBQZnbVi4ljNYyx886WUWpPkonnXlLL6GvaeSclU5Z2dOe+9OkMk
         I9an5CQscWzTcWnXnWzcjVl6BncDskD6cOpKXZMJcplCIbiH9mjdXqojgXO/ycSpDdTJ
         4RvAtcDq3/0+OKZrRxSfPkvm1ZrgyEeO2+ZIoivm985uBeO+hOVBwmN8ukrwzHJYzHy9
         5O3ihUlsrOOGWrBuU1gfb7Bpf2iJiWTNeaLNnSuffDDQ3G88lvHwOB16l+pnItcSpCDC
         anhQ==
X-Gm-Message-State: AOJu0YwycQCuleyAvaB1TEeJNMvylP6Kzu/ZqAT97f96OFEUYdv4F5l9
	/YujZLUZrtyTyEzN/qbcZeNkNg7r5bmboeU/
X-Google-Smtp-Source: AGHT+IGPNL+JyLTWtIftmDUr/OHTL5ZqPtMmxQSmydr0FKFlR/1ctgRAWp7wWf2QL9IMPBrKFbl2HA==
X-Received: by 2002:a17:907:9705:b0:9bf:6200:fe33 with SMTP id jg5-20020a170907970500b009bf6200fe33mr7778274ejc.16.1698653812745;
        Mon, 30 Oct 2023 01:16:52 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id x6-20020a1709064a8600b00977cad140a8sm5582016eju.218.2023.10.30.01.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 01:16:51 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] Subject: staging: fix alignment in function call
Date: Sun, 29 Oct 2023 23:06:12 +0000
Message-Id: <20231029230612.15852-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- Fix alignment in the tty_alloc_driver function call

The alignment in the code did not match the open parenthesis. This
commit corrects the alignment to match the open parenthesis for better
code readability.

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
---
 drivers/staging/gdm724x/gdm_tty.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index 15c246d3b1a3..b62e5e73905e 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -273,7 +273,7 @@ int register_lte_tty_driver(void)
 
 	for (i = 0; i < TTY_MAX_COUNT; i++) {
 		tty_driver = tty_alloc_driver(GDM_TTY_MINOR,
-				TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV);
+					      TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV);
 		if (IS_ERR(tty_driver))
 			return PTR_ERR(tty_driver);
 
-- 
2.25.1

