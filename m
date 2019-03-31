X-GM-THRID: 6674542859228545024
X-Received: by 2002:a05:6830:164b:: with SMTP id h11mr5356526otr.64.1554038134518;
        Sun, 31 Mar 2019 06:15:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5d11:: with SMTP id b17ls1888796oti.8.gmail; Sun, 31 Mar
 2019 06:15:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx97zx9dmG8mnqsh42TV69uNt5hksRq5iJYhFq9r18DHgSyIDb6CNqMv2NZBMuy7upBj9Bw
X-Received: by 2002:a9d:6a53:: with SMTP id h19mr4853417otn.33.1554038133866;
        Sun, 31 Mar 2019 06:15:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554038133; cv=none;
        d=google.com; s=arc-20160816;
        b=wZc0e2Sq72jxUEi91C0LnFLNzQl7TI2TJjRUyY1/IJAlN353xEJrvwxHFY8qKKkX2z
         AmK06LuHYsmF7184+fTH6jU5pEwNTu2gnzofrnC9N8HlLbicaaVdx05TU9JKKVCzUYH0
         aXj2Dg/sakJmPvRkbZk7x/RtHUkfdb8p1L6nCgPQj+Er5A92W1dZTb4HVT8Rdy1XHYdB
         +tEtlXW+Yw8aPF6pBhhprAFGIO74nnywkNcsktxgaIMwOOKBoGgVg8/tHs9cP0DLkXnM
         jDzXLX32+IIcGl55dDXaMDi6rA4ydMKwNyBiQAhKL7weFBqNzi+kQ+ipTzzGLEOwjI/o
         1lBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=JeZyg5G6GWbXf8L8Zlwd2xNY0q68a+L01QZmClg6Qck=;
        b=jo7Hq1cNqrl+SgwnLJBPhFg0s5+pqvBgU3g9EPSPjEZ0mMg5QOI9VGnY3qUe+EmfEo
         00mJVdP15MtKlvv2MWEHcQFBjKUJRL0eq+9cDcr11J73uRdRo9mGzqvOwMzdpr7Q66LB
         +LNCXx3zkmZLZYM4pUNV6Y4Pg8WYG8+rhTXOaPRuxlSerK4lSohUZs+6dZl5/K83qbDn
         9JYBP2uwqKwyX+jdNHb7yfCl93ELG9yoR/JtYMyHfU+EdApC7Wc9DiJ59pH4bQ6V6azO
         M+UVHLYkxloqZuqxPUTXL54r6GCWve0/vCLSq0LBSwWZpyYmO96NCvyLMdUxZmrtbqsr
         OuDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RJvSOpgK;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id 196si339662oii.2.2019.03.31.06.15.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:15:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RJvSOpgK;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id p19so3159745plo.2
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 06:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=JeZyg5G6GWbXf8L8Zlwd2xNY0q68a+L01QZmClg6Qck=;
        b=RJvSOpgKRRO7wYcHrwF/J4BSQEulo4LzfLcZLexGdtnYOpIDYmc2DepD9YTikaXsZs
         DaTKl52queKdNtMR5lWtaQcXJvdhloCVZPdUH7suconmR1rV73/ve4uvUSwDiKLKAW+/
         fxRc5TIbmGGvXBwRngH/irGQIMZZtb+ge1ZmksjRdBHoJeLGciD+zd2CK2fOp0Ub+zx6
         v1xKkKe3CgCPrIh8BtPKY3Pnsx82+L0rErcgTcl69PhdqQcJVcnLvJWIumrH7O6HRhks
         GAOFfH9alWQ0Ei0ejSN8kH0Y1TumntP3ghBEGKPt2mKkA02V2aaLMRr4iz4MAhpP2dd8
         0ckA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=JeZyg5G6GWbXf8L8Zlwd2xNY0q68a+L01QZmClg6Qck=;
        b=fgP16Ir/BbgEwAXjGu1wl0Lnn+TSwE3qKbS+bM/hc0gQCkjLTJ8FpchADUcSCrOyFi
         KIDcGN/qFEOyBKgs+pNm9mYLAXW0mxjS3Rs5k9M/dmy6ttBag7qDfJ2yF2tWnI/aNvP2
         ao7hs024ekaCG+oFC/6Vlr0fj8RQP5p/jO0LnouyaSYYvvbMJfDcFtVI+0uPhngyRjq+
         K8rQwAioiWICA/w+YXbUn5mXvGYolFD0DUqpQZvdSruUg+tdJ93FvFvpBDhMuxUSzX+O
         pTsUIBm8hPT9YI2vRMtTHSopPI5oni1DmFTBg8HF4aFEGBr0nf6bao4LOUolaTeLQlwD
         iSgg==
X-Gm-Message-State: APjAAAUIutbgDxSxIliSy3UzKxPY2xHIH6Y5gqHsdyAqTXWMpyjWvHOi
	55XfygFq95M5j60DAYPOrmAhHz8i
X-Received: by 2002:a17:902:a714:: with SMTP id w20mr60417712plq.331.1554038132958;
        Sun, 31 Mar 2019 06:15:32 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id v6sm10085946pgv.92.2019.03.31.06.15.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 06:15:32 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 5/7] staging: rtlwifi: halmac: halmac_88xx: Compress two lines into one line
Date: Sun, 31 Mar 2019 18:44:51 +0530
Message-Id: <4edea113265bce1352e1f7522c8ddf5e95fd2161.1554037161.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Compresses two lines into one line and remove unnecessary variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c
index 979821e..5811787 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c
@@ -165,7 +165,6 @@ halmac_cfg_rx_aggregation_88xx_sdio(struct halmac_adapter *halmac_adapter,
 u8 halmac_reg_read_8_sdio_88xx(struct halmac_adapter *halmac_adapter,
 			       u32 halmac_offset)
 {
-	u8 value8;
 	void *driver_adapter = NULL;
 	struct halmac_api *halmac_api;
 	enum halmac_ret_status status = HALMAC_RET_SUCCESS;
@@ -190,9 +189,7 @@ u8 halmac_reg_read_8_sdio_88xx(struct halmac_adapter *halmac_adapter,
 		return status;
 	}
 
-	value8 = PLATFORM_SDIO_CMD52_READ(driver_adapter, halmac_offset);
-
-	return value8;
+	return PLATFORM_SDIO_CMD52_READ(driver_adapter, halmac_offset);
 }
 
 /**
-- 
2.7.4


