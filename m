Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD76DEA3
	for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 03:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YOkEGJAJ"
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-543456dbd7bso94341a12.1
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 20:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698636265; x=1699241065; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JiJxLw61ZnvQAeB8p9Ml+AT1YeI+VnsqYImYkKk06Dc=;
        b=YOkEGJAJyYQpqL24oE67GC5GPmh0SHm/Xic2PNJl/d6u3l1Dm0I2oEV8poG2YT3uKG
         L/kS9v2s4tvx5Uvp1gDRzbklknPtCScD4Z0tcB9SPsA5yzKyZLNHJdtewJype4u8AyGJ
         4i8QXZpHFho8XC6VWAJZ0WcLdgu5CWynCxQF9sLAubqi2KEzz+CFP6kLF9d5/ea2iPy9
         RYPnB7q2uycw+i+vfh9wf58BGnI+j2knTm00DfgEPP+U/wElXcn4oRDMoOYrVDlgn/Wo
         68uH6TgEQIArs395zz9vAOD76seVZuuPHN+amh3g79HMhgg2tJ6wanUUZA7+xH2N7aVX
         UVHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698636265; x=1699241065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JiJxLw61ZnvQAeB8p9Ml+AT1YeI+VnsqYImYkKk06Dc=;
        b=xRhJTQser2KwHwZcHuQOoHvjXfKNEZmdUEDTCf+4+OFcKLMzIjLlM8jnicKw6BMh78
         dLai7iuLxvDsl9i1OJ897AEL/JRHr1p2c/VXfGVxldHEN4WQ8/Ld4rRvC5H7yuYsEhk8
         E2KadSzG/4l/37MQ1Tzx9BSqfr4dZSJDR5wjKBBhulAOkf+BnkRyF17Nxmuw8iEI+0Lt
         YFu16FD4q9GqZTpuoGvvz4k4JJe+exneRNVqj1jXYIaeGS1GvZrtsk9mPwGErF9aKHHd
         fmsD1f+yTxuzrIEhDMcpPXT+hYLNk20RirREyLbwsONQSO8b/0ZelTF59UUyMypEll5t
         TX+Q==
X-Gm-Message-State: AOJu0YxD2nePMy4okb936tJtpQ5imwWRkZcDRNuh8lWiBeZhMIVvUzo1
	On80mY7o6l0FQ0GBEBBbRjLUSCQ0pa8U9sr6
X-Google-Smtp-Source: AGHT+IGPGhsWELlPZPrMmXeev1yRFGDdWfmalLz3azCTk6ZTQm3PNRUpvVH0PZU/bgDMzO+SyJJDXA==
X-Received: by 2002:a17:907:728b:b0:9bd:a5a9:34de with SMTP id dt11-20020a170907728b00b009bda5a934demr7576789ejc.23.1698636265449;
        Sun, 29 Oct 2023 20:24:25 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id sd2-20020a170906ce2200b009c762d89c76sm5183240ejb.0.2023.10.29.20.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 20:24:24 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: outreachy@lists.linux.dev,
	gregkh@linuxfoundation.org
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] staging: Remove unnecessary parentheses
Date: Sun, 29 Oct 2023 18:54:05 +0000
Message-Id: <20231029185405.11073-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- Remove the unnecessary parentheses around
'priv->imode == CVMX_HELPER_INTERFACE_MODE_RGMII'

The '==' operator has higher precedence than the '&&' and '||' operators.
Removing the unnecessary parentheses simplifies the code while maintaining
the correct order of operations, making it more readable.

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
---
 drivers/staging/octeon/ethernet-rgmii.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet-rgmii.c b/drivers/staging/octeon/ethernet-rgmii.c
index 0c4fac31540a..15d2c84925ba 100644
--- a/drivers/staging/octeon/ethernet-rgmii.c
+++ b/drivers/staging/octeon/ethernet-rgmii.c
@@ -148,7 +148,7 @@ int cvm_oct_rgmii_open(struct net_device *dev)
 		 */
 		if ((priv->imode == CVMX_HELPER_INTERFACE_MODE_GMII &&
 		     priv->port  == 0) ||
-		    (priv->imode == CVMX_HELPER_INTERFACE_MODE_RGMII)) {
+		    priv->imode == CVMX_HELPER_INTERFACE_MODE_RGMII) {
 			priv->poll = cvm_oct_check_preamble_errors;
 			cvm_oct_check_preamble_errors(dev);
 		}
-- 
2.25.1

