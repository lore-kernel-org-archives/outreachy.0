X-GM-THRID: 6393356071819280384
X-Received: by 10.200.35.170 with SMTP id q39mr2726231qtq.57.1488647536320;
        Sat, 04 Mar 2017 09:12:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.117.143 with SMTP id y137ls1473616itc.9.canary-gmail; Sat,
 04 Mar 2017 09:12:15 -0800 (PST)
X-Received: by 10.99.114.70 with SMTP id c6mr3427349pgn.17.1488647535529;
        Sat, 04 Mar 2017 09:12:15 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si585271pfb.5.2017.03.04.09.12.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:12:15 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id v190so2091160pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Oiu3iJheZubHkL6K7IA+fArV+slUfswd8YH41nUNOAI=;
        b=ejOv4x1yehxTTNllhK+QJSdxdWeSnUBcvEw24g/dGXFMaO90g5SKmrVQiNK11bII7n
         61TGYP6KDB09qww7NnoLfxGUa78ZoI94lZf7tCLo+vmzn6TmpJ9P+9uS+eZw08DtqWBZ
         k0LpRH2A4hG1NZrfgQVC28cyYy23hSlDTPEM8Fga2KGv++VIz0sfYYTA4sha7i+SVtxq
         4rX0M5olOoNT1/Mn04Wv57ZjQIXNDRvhRFLaXokvrgWxK8Oc4s+Q8yW5QY0U+oKEPOcS
         4hAcbDgFmrEo5VBxQDOI6f1LqoJcDtSu4g/3qwmGbBzSiVquckXBKW8TiYYrjm9Cnndj
         pqMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Oiu3iJheZubHkL6K7IA+fArV+slUfswd8YH41nUNOAI=;
        b=E+elN0CCZpuD47g4A8H7VJ1hUswFeD7BxtMZlhn97QswFgEZMjjhFxLa3oOLbSFUmu
         BX8NDabGi8lPo2Mh40LjMmvbX7S2bYhHWPfV7nLNcTWokwINdeabo8+1hBJRuiOMTPrU
         5hLsOg01XcCYDhF6CuMwSDl/+zdSImESbfD1Dqk+EL8QFUmc1gC49Bg3WUI6iEFJDDri
         smWPTyDrLGgfpUr2xjZdNr4MoqGI3CnqnvmY9lWROYW36rQTsLmoRPCkqO6BOMf/jJYB
         CNOc024ZSUi0kteH/jODwaQyUQAESPpk/oKrv4UeV4A+xG9VOB7lBMCJDTUU1wKl7D2z
         Xw2g==
X-Gm-Message-State: AMke39nSDea+IbV1k4TogMgkccgPbdb7qghAHH23PdGHl3KvuWVAsrQEUnydZ9C/3w50mw==
X-Received: by 10.99.181.86 with SMTP id u22mr10345623pgo.120.1488647535207;
        Sat, 04 Mar 2017 09:12:15 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.75])
        by smtp.gmail.com with ESMTPSA id s20sm30277477pfg.11.2017.03.04.09.12.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:12:14 -0800 (PST)
Message-ID: <58baf56e.14d9620a.49f2e.c48b@mx.google.com>
X-Google-Original-Message-ID: <20170304171200.GA5589@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 22:42:00 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 4/9] staging: media: atomisp: Replace 'uint32_t' with
 kernel type u32.
References: <cover.1488642821.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488642821.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Replaced 'uint32_t' with kernel type u32, to fix the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

Changes in v3:
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


