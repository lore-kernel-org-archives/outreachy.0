X-GM-THRID: 6949155933016555520
X-Received: by 2002:ab0:7142:: with SMTP id k2mr10885663uao.124.1617976448731;
        Fri, 09 Apr 2021 06:54:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:70d3:: with SMTP id r19ls849383ual.0.gmail; Fri, 09 Apr
 2021 06:54:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyxkTkh59TFUWVsAYJzL5T5Z4Bn32CAsZbAbhRaJUGNeGpe/W41TzRZgvZvg769dyb07N6L
X-Received: by 2002:ab0:7142:: with SMTP id k2mr10885600uao.124.1617976447735;
        Fri, 09 Apr 2021 06:54:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617976447; cv=none;
        d=google.com; s=arc-20160816;
        b=tPvjRSRHPTMgBw+/Lci6uweMFujCpSbIw5qWIePFYNFsgeC6UdMcaxfy7073CRZYZN
         zKXVDdKZWlRhpiEEbKxjHniVHx89LjRIWTDmMCjqbdio0T7tnppVhqhCJfE+m57QdXax
         1KAMm+hhyRHmQJXu6LkJKOxuDUBDiR+KIpkjVjDXrj+SVM6u0s0ZduEqBkuhNrbijm4O
         6hqSLjBVGBQjqfbdioJGmWRtIv3UY6mZAtqxlJFgm1dCEZFXU6OWM2T5mOHwcC2NBKg/
         NV6YNzp8fqoU3ZTjWMjNssOYd689spnAfkLVWSTgbvjx4BkCvYa0uG43eEbzV9ikBvTc
         nTSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Jxu1wXLzUTMlyWpYlkp0R09G/BZWO4W1YMvr+kxglyE=;
        b=w6pYalV8S+kp256sNJ73p+ZghzDV+6CQdQTtMhQOgN8zA7eXcFHfltOvNTzy3D5jXc
         niWUGR4wDl/CBmc2LlLYro7AfLDSm2d7WWdNptyvmGckDB6e9Mpe2nNO7BXzQKuiE96l
         axkVuHDYNqQ1gpjIkcpuT2uMc5NCafV5kf/z2QrFXpJOgm6Y6WKLbOm2NnE7L0tRln85
         pC+lXDLvlab33agUK2UjN71y/Gi4xEGl2UgrsXXuH7ah02jhxQF6QhToxg0VwCqrmhQs
         LmnTDan7FvBNB++47v5K1WIrxHZQT5b3EWRhMjcj4ddKV7/K364L3SqTpY6Xx8GIyD+C
         jvTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YoLostOr;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com. [2607:f8b0:4864:20::72b])
        by gmr-mx.google.com with ESMTPS id r8si225564uat.1.2021.04.09.06.54.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 06:54:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) client-ip=2607:f8b0:4864:20::72b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YoLostOr;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72b.google.com with SMTP id g15so5834645qkl.4
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 06:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Jxu1wXLzUTMlyWpYlkp0R09G/BZWO4W1YMvr+kxglyE=;
        b=YoLostOrOk+/83vDEZ7NMYNOlGqThHG6PtvSR8NTDZ2V0Dz8mLGz/DgAkn3Y+tAqsp
         exksTB54RI4P7i2E6syq1CqxiyOTJo3txgJH6h84AvFsr2yWt6PxZFtqRVO7wJIxhFzh
         Ivqpjh6gIQZXZIHxMd8TOsEtOob64rWcT06arGCLlVnjNYbK1wzlaDE1IPYedXUIiBbp
         Ir0rYwO2Ly4b0y6ydVbM9SyWTJ5HflsuaiOIOMK4eKxZmeeZ8aDB1OZFneNAd+Qm1PIn
         FI3xAQnQVXRmT6FHrPMA+vkat2c0EPX+hc0s0XYvP+NZGOvFQaMpEEHBvCXqW3Io7+tS
         k0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Jxu1wXLzUTMlyWpYlkp0R09G/BZWO4W1YMvr+kxglyE=;
        b=i1aQv67yUbq+NQbU9OqgWCEICiDy7xjFrHy5vYlIDDwfCAaaInjBt3g/fRQg8H15I7
         LmbGSonCSL175FQwXXiu6JJwjHfPNAD8QK4jb3H6DSRujPoCCNGQ61+t3IjQrGScZVMr
         /Zhwv9c5GCtoilPc2rnjMHuyqvaRPSSEvkJYz04pTyOpsQid4vRFAXg4nsPuBGoXFovi
         dpGCYC603Ao9Gdohx0WPjWrTjF7rBDejucerF1Xrui5gGnwvMDCjfvX432BC2JxjAgm/
         KPnOKH6lZ+Z+xTBAlLl7LzO5/dJDntpW408aioQrdorcE88d7q11vMpzmkK3i+fQZ6A0
         Wdzw==
X-Gm-Message-State: AOAM530QlsReJmtugAgsrhzxWburef2j9+obBTbvi3Jl54X4SxENjDYB
	D6eWG3YkYFFXv+KQVJAdtQo=
X-Received: by 2002:a37:7cd:: with SMTP id 196mr2553037qkh.33.1617976447481;
        Fri, 09 Apr 2021 06:54:07 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([177.220.174.147])
        by smtp.gmail.com with ESMTPSA id l9sm1868895qtv.65.2021.04.09.06.54.06
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Fri, 09 Apr 2021 06:54:07 -0700 (PDT)
Date: Fri, 9 Apr 2021 10:54:04 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	alinesantanacordeiro@gmail.com
Subject: [Outreachy kernel][PATCH] staging: media: hantro: Rewrite macro
 function in lower case
Message-ID: <20210409135404.GA26172@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Rewrite macros resembling functions #define HANTRO_PP_REG_WRITE
and #define HANTRO_PP_RED_WRITE_S in lower case, according with
code style.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/hantro/hantro_postproc.c | 34 +++++++++++++-------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 6d2a8f2a..06279c0 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -12,14 +12,14 @@
 #include "hantro_hw.h"
 #include "hantro_g1_regs.h"
 
-#define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
+#define hantro_pp_reg_write(vpu, reg_name, val) \
 { \
 	hantro_reg_write(vpu, \
 			 &(vpu)->variant->postproc_regs->reg_name, \
 			 val); \
 }
 
-#define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
+#define hantro_pp_reg_write_s(vpu, reg_name, val) \
 { \
 	hantro_reg_write_s(vpu, \
 			   &(vpu)->variant->postproc_regs->reg_name, \
@@ -61,7 +61,7 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
 		return;
 
 	/* Turn on pipeline mode. Must be done first. */
-	HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x1);
+	hantro_pp_reg_write_s(vpu, pipeline_en, 0x1);
 
 	src_pp_fmt = VPU_PP_IN_NV12;
 
@@ -79,19 +79,19 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
 	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
 
-	HANTRO_PP_REG_WRITE(vpu, clk_gate, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, out_endian, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, out_swap32, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, max_burst, 16);
-	HANTRO_PP_REG_WRITE(vpu, out_luma_base, dst_dma);
-	HANTRO_PP_REG_WRITE(vpu, input_width, MB_WIDTH(ctx->dst_fmt.width));
-	HANTRO_PP_REG_WRITE(vpu, input_height, MB_HEIGHT(ctx->dst_fmt.height));
-	HANTRO_PP_REG_WRITE(vpu, input_fmt, src_pp_fmt);
-	HANTRO_PP_REG_WRITE(vpu, output_fmt, dst_pp_fmt);
-	HANTRO_PP_REG_WRITE(vpu, output_width, ctx->dst_fmt.width);
-	HANTRO_PP_REG_WRITE(vpu, output_height, ctx->dst_fmt.height);
-	HANTRO_PP_REG_WRITE(vpu, orig_width, MB_WIDTH(ctx->dst_fmt.width));
-	HANTRO_PP_REG_WRITE(vpu, display_width, ctx->dst_fmt.width);
+	hantro_pp_reg_write(vpu, clk_gate, 0x1);
+	hantro_pp_reg_write(vpu, out_endian, 0x1);
+	hantro_pp_reg_write(vpu, out_swap32, 0x1);
+	hantro_pp_reg_write(vpu, max_burst, 16);
+	hantro_pp_reg_write(vpu, out_luma_base, dst_dma);
+	hantro_pp_reg_write(vpu, input_width, MB_WIDTH(ctx->dst_fmt.width));
+	hantro_pp_reg_write(vpu, input_height, MB_HEIGHT(ctx->dst_fmt.height));
+	hantro_pp_reg_write(vpu, input_fmt, src_pp_fmt);
+	hantro_pp_reg_write(vpu, output_fmt, dst_pp_fmt);
+	hantro_pp_reg_write(vpu, output_width, ctx->dst_fmt.width);
+	hantro_pp_reg_write(vpu, output_height, ctx->dst_fmt.height);
+	hantro_pp_reg_write(vpu, orig_width, MB_WIDTH(ctx->dst_fmt.width));
+	hantro_pp_reg_write(vpu, display_width, ctx->dst_fmt.width);
 }
 
 void hantro_postproc_free(struct hantro_ctx *ctx)
@@ -146,5 +146,5 @@ void hantro_postproc_disable(struct hantro_ctx *ctx)
 	if (!vpu->variant->postproc_regs)
 		return;
 
-	HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x0);
+	hantro_pp_reg_write_s(vpu, pipeline_en, 0x0);
 }
-- 
2.7.4


