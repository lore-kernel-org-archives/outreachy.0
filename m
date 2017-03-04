X-GM-THRID: 6393356071819280384
X-Received: by 10.176.90.150 with SMTP id w22mr1695298uae.39.1488638425167;
        Sat, 04 Mar 2017 06:40:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.19 with SMTP id p19ls3666517iod.9.gmail; Sat, 04 Mar
 2017 06:40:24 -0800 (PST)
X-Received: by 10.99.106.131 with SMTP id f125mr3213782pgc.140.1488638424492;
        Sat, 04 Mar 2017 06:40:24 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s64si538848pfk.0.2017.03.04.06.40.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:40:24 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 187so1771904pgb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 06:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AFrC4pldQ55MSPvo0zOw8n2rjLUNlzQmXT6/ANDs5sQ=;
        b=BDhTeVAubFmVxc2UztUMJ+uNs1Ru5cUPYtVmwMToSfpVrTMBDnTxyoN2NQXqRm/Hx8
         6eq5j/x+RzPkt5zY6nLpq7IyOqs7XrQj7fQs6T+WruigjTyOA+YOuMuGKc0lfGh9q6Lv
         yTMqnoFmlKgGfuaJfDMYnXnDeyP2pbfhwxJGzgMSuq63nk+nvmlE3as5R7ylAaj4fkmz
         qStFlTFx+ZDrMoEEtKC+dVd3s7nBYiF2a/AkZAZFqq3qlx1XUylOxyZCLWefe3Zy5JKG
         ZCF/ctGd36OLSIoJrzHekej/dRXLe2qxYWei687Kh2j8kvlvrVltThR/yWigAPOY1rp5
         lVPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AFrC4pldQ55MSPvo0zOw8n2rjLUNlzQmXT6/ANDs5sQ=;
        b=HvOabiNejg4skcup4Z0Q4T7oFi4ZXeC1cjirivlMgasNnMzcaxctpNFsloJbCaVngf
         29JcsHiqyM4w3r1EgAh5tqZTY3DebRywNKtAksWqBOxmWn1vMQcQrRmabHTACBVAKSS5
         YiPVlPG11znoJ0hymTJKqG6v8dNBNG67spx3GkRy6NwoUMW/0/Djc22CkcOiPLrqVpY8
         T36QzHti42U0758BkQWSqrYbMXqWHhDk/N8iALV0AdKUFgxy8HWxvkbku9Qre9DjP+Yh
         C10qgNJP1YcZ63oGNKAi5EMath9ddhsTuhH3W059ujx6Hjlp77mWhTlrzXppYnCNbbu2
         4MJw==
X-Gm-Message-State: AMke39nl2KNZDaK5Iwt7elu6RI4isIywAQaZxUelNnLefLNMjUv0FY/QQzO38EDiT7LNLQ==
X-Received: by 10.84.216.93 with SMTP id f29mr12310051plj.10.1488638424145;
        Sat, 04 Mar 2017 06:40:24 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.6])
        by smtp.gmail.com with ESMTPSA id 73sm29744681pfh.56.2017.03.04.06.40.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 06:40:23 -0800 (PST)
Message-ID: <58bad1d7.cc07620a.f30c7.bbff@mx.google.com>
X-Google-Original-Message-ID: <20170304144020.GA4470@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 20:10:20 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 4/9] staging: media: atomisp: Replace 'uint32_t' with
 kernel type u32.
References: <cover.1488636852.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488636852.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Replaced 'uint32_t' with kernel type u32, to fix the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

 .../pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c      | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
index 5ff2529..46b702e 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
@@ -43,9 +43,9 @@ static const int32_t div_lut_intercepts[BNLM_DIV_LUT_SIZE] = {
 static inline void
 bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut_val, const uint32_t lut_size)
 {
-	uint32_t blk, i;
-	const uint32_t block_size = 16;
-	const uint32_t total_blocks = ISP_VEC_NELEMS / block_size;
+	u32 blk, i;
+	const u32 block_size = 16;
+	const u32 total_blocks = ISP_VEC_NELEMS / block_size;
 
 	/* Create VMEM LUTs from the threshold and value arrays.
 	 *
@@ -79,7 +79,7 @@ bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut
 
 	/* Copy data from first block to all blocks */
 	for (blk = 1; blk < total_blocks; blk++) {
-		uint32_t blk_offset = blk * block_size;
+		u32 blk_offset = blk * block_size;
 		for (i = 1; i < lut_size; i++) {
 			lut->thr[0][blk_offset + i] = lut->thr[0][i];
 			lut->val[0][blk_offset + i] = lut->val[0][i];
-- 
2.9.3


