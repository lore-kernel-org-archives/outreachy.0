X-GM-THRID: 6674230099683835904
X-Received: by 2002:a67:ed05:: with SMTP id l5mr5450820vsp.23.1553967375880;
        Sat, 30 Mar 2019 10:36:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c51:: with SMTP id j78ls906170vka.1.gmail; Sat, 30 Mar
 2019 10:36:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzqq5xKc45ITDrt1Fru2h5hu1lcgF1DZngZ5jR+eVrMV+xknCH5q3fVmVLF3cjpwtCbp861
X-Received: by 2002:a1f:2a48:: with SMTP id q69mr5589082vkq.7.1553967375339;
        Sat, 30 Mar 2019 10:36:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553967375; cv=none;
        d=google.com; s=arc-20160816;
        b=AkMokt5Y3ghHR1aT5txnA3E1kBJDpQO4yzFpZyHvqCQUygHN4PBtJsye9erbvd+gCh
         uFS6XKm/DAAxiAd/7R9slP9QgTxtNq0wu+kRs6yOPCx9z5MhNms27CJPYb77gKlkGHah
         3CVidHPLpKdAPX2mldJs9Nv1cJWR6cpfwmPzBhuEDdjJYWHCeuqqebcMHu+uy4hfC93Q
         y0GG+DtZiidOR7bBtqjcEZhxZ/dCUzyWxA8pXj3LNnQIKnkI3Tmpsjf3VYVyK/gy1Yq6
         lWfc70dWPsyJlCsApwCc0xafro6O3WbkFK581gMUv8nh7qkop3L2/J2gccqm5skESkU9
         Trhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=PEXpj2L+gpDNq1i4Z5sLZSfUj0y792AiYZDeGNwur7E=;
        b=cpHB9bI3rkKFelUOWf9lW4bKYFUmgy/6Ea4i50QGtsLv14XTw8hEZPW1h6SEQ4IZ3R
         eH7w6T8OepQRa62YFJZeL3USJbaE4felVZi+FsAnrMp86OiBCgpr7c3VGxgcQNc/PzUI
         0BX8EAVKMYcCk+sZ/vM8So374O+dnv5cmFRAu3FejL1oT1ZPqXaqP3T9/q4KahEFxjjw
         OlJyQdcE09QtqUJCVulXPdGGD4TfqW+2IwkeDFCmuDbdsMkGu2DS3pcgbU1oqym+hxbV
         WhXLix6ZHarwktch/IgEv2tRx4HKXlNIsCX930ljgJl9du5X650fhx83CovGRR0QQiEt
         i5sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VmkEnluk;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id g14si174172uah.1.2019.03.30.10.36.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:36:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VmkEnluk;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x636.google.com with SMTP id g12so2471885pll.11
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=PEXpj2L+gpDNq1i4Z5sLZSfUj0y792AiYZDeGNwur7E=;
        b=VmkEnlukzBFAm8wp4HsR8lkUPFGyOJ3LUaHGglKsWP1DeRhhXLzUmZ/uHXSZjOP5Up
         6ocBSaHC/ldDVmxa5wTzoeQ3azwqw+OhRTGmnMRhRlpRjsZZWoIlHFnuGtOOR5Bl4kW/
         V3vuUKLvNYtAaWdbPiLB/VS3e4gAHe4QwC+msDMkSLh14SqvbX0911Do01bLBaFEyw2a
         ZgLDGIIxBrZ8IIgKk2pqHQr5jFATMvD+dBYthFUkSTXnvTYZPfVyjX+VfWKWTw9g0pYx
         stmd7GsIYEK4EZYwBYto0WjjpLM0dC9LwGTKQ3T0CCv3RyPWUAt9ER8f02SphOKAzcoz
         ajJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=PEXpj2L+gpDNq1i4Z5sLZSfUj0y792AiYZDeGNwur7E=;
        b=SbSH6MHHWbhOnvU/QNz/bZGL3sdbf6WIFeBKWM2lRvugOTxIrlOEgmLYB/f35iy6a8
         KU2RSYJ36RGJ9OhAMfjFwR2++Wy4RzLdDyFjXFj7EJgJCHYfWZFAExusva+a3tmQHp8X
         o5lFsC37hLzPCYNX5GbMo+B5IhMDnuPitzeFb36zqlLiq6zWcy2sWOX5AyY/UQ0O04Ox
         CUYevRHx1WAPIwGnOCsbYXlacJKmt00UwF+l5tcnUQGlHQllZU2o/uBZ/Vwk434oelkZ
         RJGjRBsXmi3wAUxhm3tx+FYowWPaf5nFrLS2L8l/UM9GOavw/Oq0YcJsXVxWVQpuTh97
         P53w==
X-Gm-Message-State: APjAAAX4k7AonVe/3W+huSvQUeVdCJkWuKS4Z//FBcGovoLIDvwiBFkf
	aNtSqAM27oz6kfbQUNWqPmnAtrx2R6c=
X-Received: by 2002:a17:902:778a:: with SMTP id o10mr24248312pll.135.1553967375035;
        Sat, 30 Mar 2019 10:36:15 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.90])
        by smtp.googlemail.com with ESMTPSA id 66sm9381360pfr.44.2019.03.30.10.36.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:36:14 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/2] staging: wilc1000: wilc_spi.c: Modify return statement.
Date: Sat, 30 Mar 2019 23:06:05 +0530
Message-Id: <20190330173605.5335-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330170116.4761-1-sanjana99reddy99@gmail.com>
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com>

Challenge suggested by coccinelle.
Remove return variable and directly return the value
Issue found using ret.cocci

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v4:
No changes

Changes in v3:
Make a patch series.

Changes in v2: 
Adjust space for last argument in return statement.

 drivers/staging/wilc1000/wilc_spi.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 4a1be9e60d74..47c777c5d1a7 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -934,9 +934,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 	int k = IRG_FLAGS_OFFSET + 5;
 
 	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
-					int_status);
-		return ret;
+		return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
+					 int_status);
 	}
 	ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
 	if (!ret) {
@@ -982,9 +981,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 	u32 tbl_ctl;
 
 	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
-					 val);
-		return ret;
+		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
+					  val);
 	}
 
 	flags = val & (BIT(MAX_NUM_INT) - 1);
-- 
2.17.1


