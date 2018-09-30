X-GM-THRID: 6607095314902941696
X-Received: by 2002:a2e:7809:: with SMTP id t9-v6mr190953ljc.27.1538334261086;
        Sun, 30 Sep 2018 12:04:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:cfce:: with SMTP id f197-v6ls1092369lfg.28.gmail; Sun,
 30 Sep 2018 12:04:20 -0700 (PDT)
X-Google-Smtp-Source: ACcGV6042G9/iNeGy14yErEwKho7Ca9oydvcCtqF71L69yw0WQG7tOetRquSx/dbQmW2USa61z3W
X-Received: by 2002:a19:cf4b:: with SMTP id f72-v6mr187262lfg.11.1538334260099;
        Sun, 30 Sep 2018 12:04:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538334260; cv=none;
        d=google.com; s=arc-20160816;
        b=APUtNgUYE6vP2xmdrq2IRiu4nuK/JRZyieLr1dq1w0KswbFyFzy/h85mcXGW2D0SVl
         7INXtN3Mj7cgkXs5fxp92bnBDvR/nsltxpMHsnvpD1WoRWWItdgqimVSxe31Fl+QT1kT
         zv0y31BeUunod0xPRMUbm6YdOCnLd/C/0KPjzjsqoayJv9EPhxiup6wvNmUVYuqAFyzL
         Eh4ibTQP0rLlwlHpRnlGPXguQ396UVwzjs+etPan78GTHfmcgxdpHok0+C0HF1jCnS3q
         5CL/WPoMLqZZCHgRIJTKcS8f3Ip+kybREviUej01CDtJGW3evwCeYHpYX+KJrzpK4lcz
         jpfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=MTKexX3ynYr01XxH9Hf2C+tnUtdDKBdCxdl11pRbBSM=;
        b=xYbvnlRBRVoWb6ARWeHMo2/HiV84OEi5MAZW3Wq2errT1z2Fpu+SLYavXuUs23RGrw
         TOxh3eOehMam75yDpkDMKdeaKd6L3DP2ZiU1thjha//jIESXwcODcGZqre29ypqzVOer
         rU4yC7uJOsvOubhXpTvGEQu9+RnVdBq90YMk+722TrNyivLfbTR10IPBexdBpRRtqkaZ
         9FyMN3p9+mv0yF1MMjtqRYcUoAxkWvcb7rx38pivgvr8qLsZAHgC+FU/QxFDktvuzv3U
         +fazc+UzV+SneoF6b2P+I+im52eU3C4LdUE/NFXS9r55NHOohS0C6n4e9XibvWPcPmc4
         NuZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="da/BNOM3";
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id z8-v6si370012lji.3.2018.09.30.12.04.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 Sep 2018 12:04:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="da/BNOM3";
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id o18-v6so6577837wmc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 30 Sep 2018 12:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=MTKexX3ynYr01XxH9Hf2C+tnUtdDKBdCxdl11pRbBSM=;
        b=da/BNOM3Jg9ViRQAgQhTvw+Er+D2OubFLyhLXS2lPKI0qanOYh/Bme63FsTQrx7U05
         zNKn9X0I73ubxGHZqk4prKWHdUfxyNd0g1EImlBjNYf143eOOF3JCChQdI5ZHOhzmB5u
         g6uTxAmTXEO/lavyclHQUIt2p4bJC9uneqZXMP3AkaCRRYBcgNTt/GzqmWSNeCTsI+l4
         0WlGwnQixV+lk+B28qNr7oTmc+sgTcYwu/2Xpp/kiMOxRdpmvzVjY4O/iLwf14/Jziqx
         IiGRYzLAbEjWfHLoKlQF/AP+dNGy2Khhpi6M9NGecmSb2JI1PngnnSeu3K9G4WUvpt48
         lHNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=MTKexX3ynYr01XxH9Hf2C+tnUtdDKBdCxdl11pRbBSM=;
        b=TKRhnVUQ/SwVzXjhNwmLRWyqKPV8mJygKw3RxoZAjI3P+eOsiGhWrHgdl962zXON7l
         f5DMnNTiRu7Zm82oFny/ViemlNPXtwLcvUz6YGmfctzcHBkbJV8CNfT8u+KhoeXEylku
         OIhQ7nNG0Iyj7XG+lHoXw3T1qlEFwUgTJd212yNMB547gvdKde9YfHFjKuSqJ6RVAK6B
         JINlihG4LgnzOlIX+3wwgpuwiezv2hUZfuVGpzjQIgNjITcC1nM/TEbetB5QJWwYag38
         DueqzMa24h/DXPT6n1H05xzk4wBazKyfA68cRTnM1Y6vpKbZ59XVLjYWcDxUrKn0U04s
         nWOA==
X-Gm-Message-State: ABuFfoi5xykmsb3DUZs3KZivxw78NI425FZlfI1yOdfs0uNYDkFJp5ZY
	95RvGfTLOeX+ZEKm/a102G0=
X-Received: by 2002:a1c:9295:: with SMTP id u143-v6mr6648776wmd.126.1538334259441;
        Sun, 30 Sep 2018 12:04:19 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.home ([77.127.1.188])
        by smtp.gmail.com with ESMTPSA id n4-v6sm10657610wrr.21.2018.09.30.12.04.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 Sep 2018 12:04:18 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	dafna3@gmail.com
Subject: [PATCH 2/3] staging: mt7621-mmc: Fix comparison to NULL
Date: Sun, 30 Sep 2018 22:04:03 +0300
Message-Id: <d4f88bd5e9d515c423f3cbe94d951970abe25b0e.1538333858.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1538333858.git.dafna3@gmail.com>
References: <cover.1538333858.git.dafna3@gmail.com>
In-Reply-To: <cover.1538333858.git.dafna3@gmail.com>
References: <cover.1538333858.git.dafna3@gmail.com>

Replace comparisons of a variable 'x' to NULL with
either 'x' or '!x'.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/mt7621-mmc/sd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
index 8c32cec5950a..f2955fae7b28 100644
--- a/drivers/staging/mt7621-mmc/sd.c
+++ b/drivers/staging/mt7621-mmc/sd.c
@@ -851,8 +851,8 @@ static int msdc_do_request(struct mmc_host *mmc, struct mmc_request *mrq)
 #define SND_DAT 0
 #define SND_CMD 1
 
-	BUG_ON(mmc == NULL);
-	BUG_ON(mrq == NULL);
+	BUG_ON(!mmc);
+	BUG_ON(!mrq);
 
 	host->error = 0;
 
@@ -946,7 +946,7 @@ static int msdc_do_request(struct mmc_host *mmc, struct mmc_request *mrq)
 	}
 
 done:
-	if (data != NULL) {
+	if (data) {
 		host->data = NULL;
 		dma_unmap_sg(mmc_dev(mmc), data->sg, data->sg_len,
 			     mmc_get_dma_dir(data));
@@ -1638,7 +1638,7 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
 	}
 
 	/* transfer complete interrupt */
-	if (data != NULL) {
+	if (data) {
 		if (inten & MSDC_INT_XFER_COMPL) {
 			data->bytes_xfered = host->xfer_size;
 			complete(&host->xfer_done);
@@ -1661,7 +1661,7 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
 	}
 
 	/* command interrupts */
-	if ((cmd != NULL) && (intsts & cmdsts)) {
+	if (cmd && (intsts & cmdsts)) {
 		if ((intsts & MSDC_INT_CMDRDY) || (intsts & MSDC_INT_ACMDRDY) ||
 			(intsts & MSDC_INT_ACMD19_DONE)) {
 			u32 *rsp = &cmd->resp[0];
-- 
2.17.1


