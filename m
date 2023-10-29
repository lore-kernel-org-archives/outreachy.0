Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1E9C8C4
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 11:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a1A0HVej"
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-9d10f94f70bso214216266b.3
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 04:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698578732; x=1699183532; darn=lists.linux.dev;
        h=content-transfer-encoding:signed-off-by:mime-version:message-id
         :date:subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qcIE7kVrVmLZ6pZP3xiLvchNa38mGFRB9NSmQcU4aMk=;
        b=a1A0HVejG49I+9QZmObmjTt67iH5Cn1Wy7iO1ZALPn2MNvBnT4b02B9PN//ygewaoS
         2C7/QgJxvTxxsCAZefRGqH+HCohO/kcU49aNL0Wt5LX4mB5iJ3N82upfQ8/FFd3MTsEJ
         tCDCV/ZB6wu0vE0hgysrqVlFVpnrcIf1r11gWNCNmBtlVMe8YgLpYPbV6uwBwMqpUlZZ
         OyQN4AzPrnjd3BGyOuFaYpzg0Z57Ou9QTFZKorVyjpQXlcHfsY0Zw5G6s13rgJPG4Vfj
         dZXyi2kosdGyRFVBwMLMoFZVzyoOWrGc02GWmvsLuY4OWy04FJ6OeB1c7OqZkG2EsDnm
         rrnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698578732; x=1699183532;
        h=content-transfer-encoding:signed-off-by:mime-version:message-id
         :date:subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qcIE7kVrVmLZ6pZP3xiLvchNa38mGFRB9NSmQcU4aMk=;
        b=kWX2FA/qMYgIkheW3ofgju94dxVDexzKWRtR8+xdp2e+XoTJ9mjOphIoHyISJGpsQ6
         o3/pQjX97IHf5ZEQZS/fCQbSWQCQNaVxpsU79GgQxBQfP069znV/YvcuqKoLzq9jIz+A
         0stuizczGrJKPhHNo4uIWCJ6523X10sPOkFnknk7iaqxhiRU04ugf0YHfuWrtcWEquN2
         q5UOIpv9lHSAHLbq7HhYGV5o0koskl2ulHxEu76fWXNO2anB8ph3L3TwpYhxmoI8m1Aj
         lMbPLgw1PHdcfcOX19vfbdoiaLHrKV60hEH6rx/4cs2PkDsD7kQFen3teJSlk6PIheoD
         NILw==
X-Gm-Message-State: AOJu0YwJUBtkSqy+xOn+aIgHlo2JEYtAdRp8UoQvXUxY0XwoES+rji/i
	niZWmwr31QJ4tKoGhGVpEbk=
X-Google-Smtp-Source: AGHT+IG7pxWF2lgtAXA3nuAM8pbXuvY9q6mGpNZWzjhTss8i/kMpKQDMqYeBCUjY+kNnEF3nd/Fzug==
X-Received: by 2002:a17:907:94c8:b0:9be:315d:e607 with SMTP id dn8-20020a17090794c800b009be315de607mr5369747ejc.28.1698578731836;
        Sun, 29 Oct 2023 04:25:31 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id v6-20020a1709067d8600b0099bcf1c07c6sm4145628ejo.138.2023.10.29.04.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 04:25:31 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] Staging: Remove multiple blank lines
Date: Sun, 29 Oct 2023 10:24:20 +0000
Message-Id: <20231029102420.19388-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
Content-Transfer-Encoding: 8bit

Fix multiple blank lines warning
---
 drivers/staging/vt6655/rxtx.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6655/rxtx.h b/drivers/staging/vt6655/rxtx.h
index a67757c9bb5c..be1e5180d57b 100644
--- a/drivers/staging/vt6655/rxtx.h
+++ b/drivers/staging/vt6655/rxtx.h
@@ -19,7 +19,6 @@
 #define DEFAULT_MSDU_LIFETIME_RES_64us	8000 /* 64us */
 #define DEFAULT_MGN_LIFETIME_RES_64us	125  /* 64us */
 
-
 /*---------------------  Export Definitions -------------------------*/
 
 /*---------------------  Export Variables  --------------------------*/
-- 
2.25.1

