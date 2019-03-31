X-GM-THRID: 6674542859228545024
X-Received: by 2002:a17:902:2803:: with SMTP id e3mr1468989plb.76.1554038142695;
        Sun, 31 Mar 2019 06:15:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:534c:: with SMTP id w12ls2704258pgr.8.gmail; Sun, 31 Mar
 2019 06:15:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyq8h+yv4nxHE4u2V7bU+Am9wv+DYmTR1/9K5CDOrLersZ1bsFGxB66pIXLtQExW9ShHEq6
X-Received: by 2002:a63:e953:: with SMTP id q19mr777051pgj.57.1554038142083;
        Sun, 31 Mar 2019 06:15:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554038142; cv=none;
        d=google.com; s=arc-20160816;
        b=zQfL1cLG9UJqirQhPHM8glpKlnl0trX8LbTNWN2C1z1PjJ7YmpPCoL2I7nRZVdkP5m
         yh284QIKc/rKLk4HlPdy8IMy3+nsBsCYorroCcmWcsds+9vF5JxQQOqWaxm71WV0QNWL
         KaeSmQ2UwMKK1U2ESGnBOAFE4S6RFma4r7Wvl0wjLDqGTMrSA3oSr0/z3FV6jYWIZ4Fk
         GR3Qo+uRfrYCZdEdj1H+S0TthVV3OLM7Fn2amnCxmE93sAPACJsSSLm2AtcXRUVo5rTR
         FeYcN1DWfdPc9BjdHr1t30OXE6K6TR5Pyt7ZZLR6k50P65llzn8SBfBYttUSqMZI6f6h
         ekZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=cabqKOX6SSVtAbOHdU+g5pvEbOe6y9bswchhoEpnJXk=;
        b=P0fxzkcAZAWnadYzmX3ei/hEySa0BpOUUU9tFThq5SUocWBVV0KoTMLWyepZ5TeACJ
         ZxU5fw5BeKGFNEVJ9SKaCtTb3AX+WB9c24IqPTN+FmYsphOQWv4UKf9Oxjx3B3ltfDRv
         5+VDniMYcNu8iKmFieTmaNLRR60oWase45LK/eo962CMhUqq90GDL0ATzXq7sn0pRmXm
         ra3lCobkjuBWUAcHGQgyOOitYq2zWVMNabPWyQg411RrSVJn/FMeIWqe9aK9TDFucig5
         a9jrsGoUPukOp6snCAUyyWDf0mt4luL0cA+aT3P++2UghIZU39+4DgCh3uxRbVrrywbq
         /GHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DkHtTpp4;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h2si610180plk.2.2019.03.31.06.15.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:15:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DkHtTpp4;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id f6so3378226pgs.8
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 06:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=cabqKOX6SSVtAbOHdU+g5pvEbOe6y9bswchhoEpnJXk=;
        b=DkHtTpp4lO4mlKhazZF2rlxf0TOQPEvIqcwJUkff2uextaOfKdhK84loTCh2lktW2W
         DVR6ZWhuTCnFMz1/B9IGTmRIGJPjrEgvI20yMhvHT9RkUpMBncKf1nO5b7QaxB3k/aRu
         r/5FRM8onPz/2FsQ32QJDcbJz7qUx+cxBiG5Cq3HjFrmfAIr9ToFI2h2HUCYfhxx+0DN
         ZzPMkm9/FGCGuUEGkARv5+xKa1RqSDfVfK/Pe6zX3PPK95ZCp5pptyHZoisYMSqoJ0jv
         jyMQ8bApfpAxP7/wxvmSq9S+PnfuSDAlcJyNxdWAhdjpgotvASOlaQTPpUZqPHY+1FK5
         pBVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=cabqKOX6SSVtAbOHdU+g5pvEbOe6y9bswchhoEpnJXk=;
        b=Qe49qKuzOwEkQ8jsZjJZtnxweZZ0w5dVtwEjuHYgijPa2qcAQOpsDFQOwAATOVE3o7
         TTmsPafsUDS0b6R+kDea2GyFz3Ndch/IMBx80aqk5sPMzAT0FvmH7/APvouRacsDyPIA
         Yr9QTaBCdxonsdg9wKxDQb8IqcRnfBnE/OSRaI8oX0lyRqn48VvYfVVXLdO2L8z382SO
         Bpsq8k5n0xEs3NsNUNdDBkV9cKqdrYabVivQdnVQsL2u4LA3kf1d9/9hJ7r9EBO4ag5Y
         KjSK0q5utK+i0FT6cmh0/MArXvurRQDW1jVAX6MUxH19TxbvC6aGIWcASO3J+ZEonuS/
         jcuQ==
X-Gm-Message-State: APjAAAUC+MarECwxcX36F3+5Jbo6RkSfJWk8W89TF87gN0q2fIMIcrlg
	rjWxnC8Axbz3gUZBrznGjS0o5M3D
X-Received: by 2002:a62:ac08:: with SMTP id v8mr13695772pfe.42.1554038141570;
        Sun, 31 Mar 2019 06:15:41 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id v6sm10085946pgv.92.2019.03.31.06.15.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 06:15:40 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 7/7] staging: rtlwifi: halmac: Compress two lines into one line
Date: Sun, 31 Mar 2019 18:44:53 +0530
Message-Id: <c28b0b65e4fb6d6f650ae647f2ad17fc4eaf9603.1554036847.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554036847.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554036847.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Compresses two lines into one line and remove unnecessary variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/halmac/halmac_api.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_api.c b/drivers/staging/rtlwifi/halmac/halmac_api.c
index e75eb42..be75731 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_api.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_api.c
@@ -133,7 +133,6 @@ platform_reg_read_8_sdio(void *driver_adapter,
 			 struct halmac_platform_api *halmac_platform_api,
 			 u32 offset)
 {
-	u8 value8;
 	u32 halmac_offset = offset;
 	enum halmac_ret_status status = HALMAC_RET_SUCCESS;
 
@@ -146,10 +145,8 @@ platform_reg_read_8_sdio(void *driver_adapter,
 		return status;
 	}
 
-	value8 = halmac_platform_api->SDIO_CMD52_READ(driver_adapter,
-						      halmac_offset);
-
-	return value8;
+	return halmac_platform_api->SDIO_CMD52_READ(driver_adapter,
+						    halmac_offset);
 }
 
 static enum halmac_ret_status
-- 
2.7.4


