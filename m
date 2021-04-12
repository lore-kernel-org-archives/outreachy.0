X-GM-THRID: 6950254575247949824
X-Received: by 2002:ab0:65c5:: with SMTP id n5mr8415682uaq.64.1618232246519;
        Mon, 12 Apr 2021 05:57:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:a4d:: with SMTP id i13ls2512198vss.10.gmail; Mon,
 12 Apr 2021 05:57:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyWql+gZMRLlqmBvkGATTLbebAwW5RQDInT0Y17bJBlYm8BiV+gidKp3NmqE/R6B3N9vnFf
X-Received: by 2002:a67:de08:: with SMTP id q8mr1426673vsk.5.1618232245529;
        Mon, 12 Apr 2021 05:57:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618232245; cv=none;
        d=google.com; s=arc-20160816;
        b=rpUQtBaZ9ByyOQmKASuT0SXiUWHgojONcD4P6yeIY1cezZU+yl1m2TDu4LW6qyfEKv
         7J4XwPsXq0RiWnYrW5TC9ZX/LG6FiW5YcszIBTi8xMM22uxnE0bo0oDxNz41e2e7KUME
         BHtwGeBieQgDxBcuGS50swPDOfq3Wec4oJj/2thKTVbMHglxiL7k8CjOAYfLR+mIWnCq
         P2OMfpZl8/spkDUbTWiCdIP94LgXiTfiX1hs2yMZjf9D/MDoYesFx4AQV2tYX2YAnAvo
         Z4YF/m/xe6qdlQsftvrwc1mBMN7cSSEc2wvCZ5yxLVc741HybZnIMuhi1ijkOss559/v
         cWqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/Yq9d2p6Dmjcfhw+4JZIGQuxSwEH4EO4U1BZYPvkJ9c=;
        b=SiQwTMaFNNZAAFFHL1VNpZ0rNIImLhbDBk7ENLKmsp2YBsvtBBPZQPTee6LKGIqbMY
         eaBDorGOYyeeIfGNZYvFR/bXsBd28QHUT3nlP7AQfieIwJwVmLVUL46BrS1xgMROl5Se
         E5LuPKz3iUU6qd56Ay7OaPi46kGEhLjYcb5j5Y5S/RgGdsK5uEWwT26Y2F/i7EcfvuKH
         mxly/s990GMgHCsel6BR74DAN711ghNGTRbzaikDGSRsmGDsOLr0ox/a5oL7yk2JLtfn
         4z79lD+ZHrQxtt9+kX9vl2loOHH4+Bk0L4RuwLJeplQhMg82yvNPORA8GEt/I8hpYEKM
         1U7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=urmL14La;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com. [2607:f8b0:4864:20::72d])
        by gmr-mx.google.com with ESMTPS id t16si543390vko.2.2021.04.12.05.57.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:57:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) client-ip=2607:f8b0:4864:20::72d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=urmL14La;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72d.google.com with SMTP id d23so1057267qko.12
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/Yq9d2p6Dmjcfhw+4JZIGQuxSwEH4EO4U1BZYPvkJ9c=;
        b=urmL14Laq0tJ/p2X3M+69nR4OCrVPy9daFTXyz7TxnocV5Qn8QOhPrQNglT5LzFtNV
         YeiIwDK20XJ1x1C8CyKnld1NFEw7xIQs4fnyE/CbfsUlfCjYZmp2rNBkkV9QEGSm3bsj
         PI6suYzl8Fw5RBbKh4UYDwk8SYvj6FZhkukw/yEkPBAgKZ0zXMrcOaNr49i2McqwJ4cx
         Csqv+qyNP8E1t4jKXSQrbSzc8bF6XHGQyKvrIju8eb5Tvxuq4hgf9ZSOHeutev+ye4be
         Qhs1/VRYOOMIUFJmcLpMvia55UmH5ErENZ7kj32P0DP8Ctbh01+th6T49ohI5LugHCBT
         GDzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/Yq9d2p6Dmjcfhw+4JZIGQuxSwEH4EO4U1BZYPvkJ9c=;
        b=RKyieQ7yuHQcLvN3H48XEd3LBS11NLZE+NHNoi4NHFMCo5AAogfOqRuJxDDoMn19uv
         ZX0xH92jXckmHjj9Zq5x2uJN4SsMyvhQzGgREbgEVUDb1iD9U3uIAeUDaQyVpdDG1to7
         hyiWFWxfds1GxQO/MBCi1xGJzdKx+6ZOZnoktQMIO/ZYNxg3a18mS7NXDOkkOc+nI5XX
         XKmE14yb+kXh4lkvmytGsGjEnTD66Yasd3PTk+jpPTM9xrHP6Fr9UvwL/4IXM9uhSD9s
         WFxgwxiwFlqbTwzR6KB4UaTsrG7zkHWKOpDRPtUS7blRoenQ12v7jFVHY2yytoy+UJH6
         XXmg==
X-Gm-Message-State: AOAM533eVH68l4OIY2oXVws+EeolrQrtA5lpr3faD+32CdpIYipqidMH
	Qnba+AIV7F98iVEBFInRE/Ra/AzbAHXF9BK7
X-Received: by 2002:a37:274f:: with SMTP id n76mr26839351qkn.15.1618232245054;
        Mon, 12 Apr 2021 05:57:25 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:476a:dfcd:f18f:9ad5])
        by smtp.gmail.com with ESMTPSA id x4sm1406354qkp.78.2021.04.12.05.57.24
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 12 Apr 2021 05:57:24 -0700 (PDT)
Date: Mon, 12 Apr 2021 09:57:22 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH 4/4 v2] staging: media: omap4iss: Replace
 macro function by static inline function in file iss_resizer.c
Message-ID: <431dab7622963701c1d8ba8033bed5aaca11be70.1618231618.git.alinesantanacordeiro@gmail.com>
References: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace macro function by static inline function.
Issue suggested by Julia.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---

Changes since v1:
 - Insert file path in commit message
 - Remove trailing space left during modification
 
 drivers/staging/media/omap4iss/iss_resizer.c | 126 ++++++++++++++-------------
 1 file changed, 65 insertions(+), 61 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_resizer.c b/drivers/staging/media/omap4iss/iss_resizer.c
index 3b6875c..80ca44d 100644
--- a/drivers/staging/media/omap4iss/iss_resizer.c
+++ b/drivers/staging/media/omap4iss/iss_resizer.c
@@ -30,13 +30,17 @@ static const unsigned int resizer_fmts[] = {
  *
  * Also prints other debug information stored in the RESIZER module.
  */
-#define RSZ_PRINT_REGISTER(iss, name)\
-	dev_dbg(iss->dev, "###RSZ " #name "=0x%08x\n", \
-		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_##name))
+static inline rsz_print_register(iss, name)
+{
+	dev_dbg(iss->dev, "###RSZ " #name "=0x%08x\n",
+		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_##name));
+}
 
-#define RZA_PRINT_REGISTER(iss, name)\
-	dev_dbg(iss->dev, "###RZA " #name "=0x%08x\n", \
-		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_##name))
+static inline rza_print_register(iss, name)
+{
+	dev_dbg(iss->dev, "###RZA " #name "=0x%08x\n",
+		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_##name));
+}
 
 static void resizer_print_status(struct iss_resizer_device *resizer)
 {
@@ -44,61 +48,61 @@ static void resizer_print_status(struct iss_resizer_device *resizer)
 
 	dev_dbg(iss->dev, "-------------RESIZER Register dump-------------\n");
 
-	RSZ_PRINT_REGISTER(iss, SYSCONFIG);
-	RSZ_PRINT_REGISTER(iss, IN_FIFO_CTRL);
-	RSZ_PRINT_REGISTER(iss, FRACDIV);
-	RSZ_PRINT_REGISTER(iss, SRC_EN);
-	RSZ_PRINT_REGISTER(iss, SRC_MODE);
-	RSZ_PRINT_REGISTER(iss, SRC_FMT0);
-	RSZ_PRINT_REGISTER(iss, SRC_FMT1);
-	RSZ_PRINT_REGISTER(iss, SRC_VPS);
-	RSZ_PRINT_REGISTER(iss, SRC_VSZ);
-	RSZ_PRINT_REGISTER(iss, SRC_HPS);
-	RSZ_PRINT_REGISTER(iss, SRC_HSZ);
-	RSZ_PRINT_REGISTER(iss, DMA_RZA);
-	RSZ_PRINT_REGISTER(iss, DMA_RZB);
-	RSZ_PRINT_REGISTER(iss, DMA_STA);
-	RSZ_PRINT_REGISTER(iss, GCK_MMR);
-	RSZ_PRINT_REGISTER(iss, GCK_SDR);
-	RSZ_PRINT_REGISTER(iss, IRQ_RZA);
-	RSZ_PRINT_REGISTER(iss, IRQ_RZB);
-	RSZ_PRINT_REGISTER(iss, YUV_Y_MIN);
-	RSZ_PRINT_REGISTER(iss, YUV_Y_MAX);
-	RSZ_PRINT_REGISTER(iss, YUV_C_MIN);
-	RSZ_PRINT_REGISTER(iss, YUV_C_MAX);
-	RSZ_PRINT_REGISTER(iss, SEQ);
-
-	RZA_PRINT_REGISTER(iss, EN);
-	RZA_PRINT_REGISTER(iss, MODE);
-	RZA_PRINT_REGISTER(iss, 420);
-	RZA_PRINT_REGISTER(iss, I_VPS);
-	RZA_PRINT_REGISTER(iss, I_HPS);
-	RZA_PRINT_REGISTER(iss, O_VSZ);
-	RZA_PRINT_REGISTER(iss, O_HSZ);
-	RZA_PRINT_REGISTER(iss, V_PHS_Y);
-	RZA_PRINT_REGISTER(iss, V_PHS_C);
-	RZA_PRINT_REGISTER(iss, V_DIF);
-	RZA_PRINT_REGISTER(iss, V_TYP);
-	RZA_PRINT_REGISTER(iss, V_LPF);
-	RZA_PRINT_REGISTER(iss, H_PHS);
-	RZA_PRINT_REGISTER(iss, H_DIF);
-	RZA_PRINT_REGISTER(iss, H_TYP);
-	RZA_PRINT_REGISTER(iss, H_LPF);
-	RZA_PRINT_REGISTER(iss, DWN_EN);
-	RZA_PRINT_REGISTER(iss, SDR_Y_BAD_H);
-	RZA_PRINT_REGISTER(iss, SDR_Y_BAD_L);
-	RZA_PRINT_REGISTER(iss, SDR_Y_SAD_H);
-	RZA_PRINT_REGISTER(iss, SDR_Y_SAD_L);
-	RZA_PRINT_REGISTER(iss, SDR_Y_OFT);
-	RZA_PRINT_REGISTER(iss, SDR_Y_PTR_S);
-	RZA_PRINT_REGISTER(iss, SDR_Y_PTR_E);
-	RZA_PRINT_REGISTER(iss, SDR_C_BAD_H);
-	RZA_PRINT_REGISTER(iss, SDR_C_BAD_L);
-	RZA_PRINT_REGISTER(iss, SDR_C_SAD_H);
-	RZA_PRINT_REGISTER(iss, SDR_C_SAD_L);
-	RZA_PRINT_REGISTER(iss, SDR_C_OFT);
-	RZA_PRINT_REGISTER(iss, SDR_C_PTR_S);
-	RZA_PRINT_REGISTER(iss, SDR_C_PTR_E);
+	rsz_print_register(iss, SYSCONFIG);
+	rsz_print_register(iss, IN_FIFO_CTRL);
+	rsz_print_register(iss, FRACDIV);
+	rsz_print_register(iss, SRC_EN);
+	rsz_print_register(iss, SRC_MODE);
+	rsz_print_register(iss, SRC_FMT0);
+	rsz_print_register(iss, SRC_FMT1);
+	rsz_print_register(iss, SRC_VPS);
+	rsz_print_register(iss, SRC_VSZ);
+	rsz_print_register(iss, SRC_HPS);
+	rsz_print_register(iss, SRC_HSZ);
+	rsz_print_register(iss, DMA_RZA);
+	rsz_print_register(iss, DMA_RZB);
+	rsz_print_register(iss, DMA_STA);
+	rsz_print_register(iss, GCK_MMR);
+	rsz_print_register(iss, GCK_SDR);
+	rsz_print_register(iss, IRQ_RZA);
+	rsz_print_register(iss, IRQ_RZB);
+	rsz_print_register(iss, YUV_Y_MIN);
+	rsz_print_register(iss, YUV_Y_MAX);
+	rsz_print_register(iss, YUV_C_MIN);
+	rsz_print_register(iss, YUV_C_MAX);
+	rsz_print_register(iss, SEQ);
+
+	rza_print_register(iss, EN);
+	rza_print_register(iss, MODE);
+	rza_print_register(iss, 420);
+	rza_print_register(iss, I_VPS);
+	rza_print_register(iss, I_HPS);
+	rza_print_register(iss, O_VSZ);
+	rza_print_register(iss, O_HSZ);
+	rza_print_register(iss, V_PHS_Y);
+	rza_print_register(iss, V_PHS_C);
+	rza_print_register(iss, V_DIF);
+	rza_print_register(iss, V_TYP);
+	rza_print_register(iss, V_LPF);
+	rza_print_register(iss, H_PHS);
+	rza_print_register(iss, H_DIF);
+	rza_print_register(iss, H_TYP);
+	rza_print_register(iss, H_LPF);
+	rza_print_register(iss, DWN_EN);
+	rza_print_register(iss, SDR_Y_BAD_H);
+	rza_print_register(iss, SDR_Y_BAD_L);
+	rza_print_register(iss, SDR_Y_SAD_H);
+	rza_print_register(iss, SDR_Y_SAD_L);
+	rza_print_register(iss, SDR_Y_OFT);
+	rza_print_register(iss, SDR_Y_PTR_S);
+	rza_print_register(iss, SDR_Y_PTR_E);
+	rza_print_register(iss, SDR_C_BAD_H);
+	rza_print_register(iss, SDR_C_BAD_L);
+	rza_print_register(iss, SDR_C_SAD_H);
+	rza_print_register(iss, SDR_C_SAD_L);
+	rza_print_register(iss, SDR_C_OFT);
+	rza_print_register(iss, SDR_C_PTR_S);
+	rza_print_register(iss, SDR_C_PTR_E);
 
 	dev_dbg(iss->dev, "-----------------------------------------------\n");
 }
-- 
2.7.4


