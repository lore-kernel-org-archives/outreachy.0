Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35387EA3
	for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 02:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HdbQd6W3"
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-53de8fc1ad8so6336752a12.0
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 19:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698633249; x=1699238049; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KRXa/zbF4vYKkzuaUXnbHFd6Z+zigzcxvvOXbJ5eZUE=;
        b=HdbQd6W3puu7nR74eYD3yPZ8B/IPj9c2sypOn6+ylbh8rMDtZCbQSE6xpd5VpClrBM
         Rz9fMA8EWe82Zd74VzQHVUz1Ws+7tmhrCncHkThVPpUPjF7n76G2PBtQIRjPwMtjtqkG
         /TIMitPeheHgiMp4AoLksDEO8BX5GTbET/EotEDw+XGtK9+amJaEzbE3FXBv1z7cs0/f
         gotv7g4SaCZ/ru420c9uPebK6s9rw7u93e0sBZLuCRUKQ3kLc+tWy1APcJ+UHl9iwla9
         s9UfIhxDOPqVO10HpR8dUAzJo3QZOgQ1idPsVahRcJRJcD33K2E2NH3PRkzLa1V2vZOC
         4vLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698633249; x=1699238049;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KRXa/zbF4vYKkzuaUXnbHFd6Z+zigzcxvvOXbJ5eZUE=;
        b=SHx4c9JfkdKX9egeO6M1dMmCcCiHkEqWuqbMbdERjsk5YxSqziz2rKioKJCXtizI0Q
         CttGhxJ5fYoj8j51o1nknykSnAt+KTZsKHyMO44T0XlHsre63bn0CZNLvHeBydsRdbZj
         i15RmRIkwx8m16b61+7+6B73X4kK1ilkHBCyfmu/THPP9DJeHAymx6AMtFqfiU6a6hMF
         FGCJOOoYFJlPW93wV6L+SkSyqsyFIvwm1SaYW8zPrhk7d+HzTaWm3+hHf/UXjpRlvkJn
         derswXW0sQA+D+5Idz2nmJfgsY7eyl0+RVNboIyHHLqfsXgmU3y0Zp+nq386gUmOVJj8
         +Ddw==
X-Gm-Message-State: AOJu0YyFhFt+9XqDjP8NN6MBVvcpsW0FPludk8kKN2BF2qWGAjRiP8Xs
	qY3/dcncToT8ki5I0CRGaZui6F5wQJm7et9/
X-Google-Smtp-Source: AGHT+IEUJtWr1NHGpvAjX+zkSw5f2ohI3oPmjMwO9WP/evhOedjjnGsuU6iRganasxFMFPldRJGPTw==
X-Received: by 2002:a05:6402:4305:b0:540:a5a1:745e with SMTP id m5-20020a056402430500b00540a5a1745emr7955086edc.14.1698633248767;
        Sun, 29 Oct 2023 19:34:08 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id v24-20020a50d098000000b005432f45bee9sm670706edd.19.2023.10.29.19.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 19:34:08 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: outreachy@lists.linux.dev,
	gregkh@linuxfoundation.org
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] staging: vme: enhance the help paragraphs for clarity
Date: Sun, 29 Oct 2023 18:03:46 +0000
Message-Id: <20231029180346.8570-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- Revise the help paragraphs to fully describe the config symbol

These changes were made to enhance the clarity of the help text, ensuring
users can better understand the configuration options, their purposes, and
their relevance to their specific hardware setups.

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
---
 drivers/staging/vme_user/Kconfig | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vme_user/Kconfig b/drivers/staging/vme_user/Kconfig
index d65cc5510649..65a3e769090d 100644
--- a/drivers/staging/vme_user/Kconfig
+++ b/drivers/staging/vme_user/Kconfig
@@ -4,6 +4,11 @@ menuconfig VME_BUS
 	depends on PCI
 	help
 	  If you say Y here you get support for the VME bridge Framework.
+          The VME Bridge Framework provides a set of tools and drivers
+          for VMEbus systems, allowing seamless integration of VME devices
+          with your PCI-enabled hardware. Select 'Y' to enable this feature
+          if you have VMEbus-based hardware or intend to use VME devices in
+          your system.
 
 if VME_BUS
 
@@ -14,7 +19,10 @@ config VME_TSI148
 	depends on HAS_DMA
 	help
 	 If you say Y here you get support for the Tundra TSI148 VME bridge
-	 chip.
+	 chip. This bridge chip provides compatibility for VMEbus systems, allowing
+         communication with various VME devices. If you have hardware that
+         includes the Tundra TSI148 VME bridge, or if you plan to use VME
+         devices with your system, choose 'Y' to enable this feature.
 
 config VME_FAKE
 	tristate "Fake"
-- 
2.25.1

