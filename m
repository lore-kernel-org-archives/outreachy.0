X-GM-THRID: 6477977779126140928
X-Received: by 10.80.167.162 with SMTP id i31mr3615834edc.9.1508271736865;
        Tue, 17 Oct 2017 13:22:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.219.194 with SMTP id s2ls1091446edk.5.gmail; Tue, 17 Oct
 2017 13:22:16 -0700 (PDT)
X-Received: by 10.80.152.61 with SMTP id g58mr3614662edb.5.1508271736143;
        Tue, 17 Oct 2017 13:22:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508271736; cv=none;
        d=google.com; s=arc-20160816;
        b=ZG7OUQ/b6CVAJrroJphWxCClKR4EBVQDFS7lXGENXCJp93n0mj7Ck97w+OommtX0BE
         5zDh333FxRqZpomdIV7+iOx5OzwYdzrIYniBp3HrWAMCEnCYzeslIljuWvO8PCwXtCPN
         h9X6BRphnmnjkM2LypG3tXlnCs8qUIE6rE5mUfIczc/GvtvexlxO7VrKMDRA9aJ+qwbr
         aRGnGso21bufOYsE5hLDipg3J0pN3ryxaIvRnqZMOpaDOLUcDWyQwYF99GInCnypxNcR
         O8VIlEzAGvTEI2m2t9zLzsn2KllUb6s8MtZjW+2AlWbTWi/uuRe3kkTSpRGzqYCuy+k+
         SoYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=WUHyY+AGHHfcZY1Wyn2mpZ81DTj4CqeSPehGYti0obQ=;
        b=j1iHc+XKLIzBZ8xNS4alayumomjZTINLS/yDzNtzB+GDSnGWn6mQ4QjmgO3dsVVKU5
         SVlz9BUymfwc2BrRSYMnFA6jSb8NYFM7BwctYgx6De+Dhs04AmhiKTgKMNa5VpAC+Vab
         bq2XytmoekPVxkXq+tEnQsmmG2pfX/BXHRSiVwTGs7NrTukpTW8HhsrAJNyv/6DRMcBc
         KGSCN9zidMGs4bPJIroELoffTXcBOYCq5SzQRB955dT/4gZSjIfLZCv9OTRcwoOtRzCW
         aMOgCbsjK98lXYv8HAKX/Z0xXW0Z/cjXUG0KBQC31SfVCx3Uu9qVj1ggisCSJ2Sj+VQ9
         vM5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jjr+mm2+;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::22c as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x22c.google.com (mail-wr0-x22c.google.com. [2a00:1450:400c:c0c::22c])
        by gmr-mx.google.com with ESMTPS id a57si458488edd.3.2017.10.17.13.22.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 13:22:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::22c as permitted sender) client-ip=2a00:1450:400c:c0c::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jjr+mm2+;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::22c as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x22c.google.com with SMTP id g90so2940651wrd.6
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=WUHyY+AGHHfcZY1Wyn2mpZ81DTj4CqeSPehGYti0obQ=;
        b=jjr+mm2+WR35PC4lR5AZsmLM6NjhXywgP9BJNgVVWrtKMYQ1INuN8TIi1qvzI+DNnA
         YmrUJ6QDucl6DlVi3DW5VkD5N8WKkNFkIbomymU7DXF+DNU3EwavfZxpcUE1J3CilUgq
         p3GRgRgiPTIpXbn6CrXk+fT7/vOUczRRwVTxLnzfibB4sGOvHhuLbYvRPUmEXx+hT4SL
         UFkQURy4XFPqbqiUnYBeNRndneeF1WYzdoThbwpf0C/2H+uMxULZBGyhO/6ZNkFsVf4u
         fFsAEqcP2YRf4mBchq6t9wDLHHU2/tv/NohrxnoLfNL9BVCPOGnRSgAoATxB7YUAAczl
         IOIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=WUHyY+AGHHfcZY1Wyn2mpZ81DTj4CqeSPehGYti0obQ=;
        b=B7alxSCbDqpkPpUUNxVl0bcjSAcVN47ZWRpRo8c05owOpiKfOgL0fPWZl0cmzqzfmT
         rCPHWB52Csek07g713e5oxAQP552UZinzGI0YLzjf+soB72VL9BDwuu84vpKMbKYVRxB
         Oi43t+4zOCIw6GvSpoMDd2FSh87mVVxogt5zY+XqDIOxYOczqs/MCSUB/+cuoCqISZm7
         Fmp7s0/X+nLAUiZfMLU/EQWxdyQGb0BdB4rfT6gxBAkoxnwiE3z5s+Du1sEwFPHa0ytr
         bDyuTnXQhJeCUrQkQm1QptQYq5AHY8WsYH5ovvBVtK3SqqcSrRZvPLSsifS3GLqN/Ghn
         GvSg==
X-Gm-Message-State: AMCzsaUibLPFpYPm/T6IWz9ChFUZiOTLpwtYIrsLQnGBKwsPIb0mfFk4
	x86lEieML+6HQn1sI41ZYv8=
X-Google-Smtp-Source: ABhQp+TwJ+BhEL/0ToD0SUq2+YKwa4xYngY3i/YZVF7arLeyz8MfS1HMcXprKmhTK/X5TTPMs5KCnQ==
X-Received: by 10.223.157.141 with SMTP id p13mr4925881wre.92.1508271735924;
        Tue, 17 Oct 2017 13:22:15 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-79-238.residential.rdsnet.ro. [5.12.79.238])
        by smtp.gmail.com with ESMTPSA id 17sm21564613wru.32.2017.10.17.13.22.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 13:22:15 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 1/3] drm/amd/powerplay: Don't cast kzalloc() return value
Date: Tue, 17 Oct 2017 23:22:07 +0300
Message-Id: <1ed92beca6ec32898f81c02b26fb887e33c2c530.1508270576.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1508270576.git.georgiana.chelu93@gmail.com>
References: <cover.1508270576.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1508270576.git.georgiana.chelu93@gmail.com>
References: <cover.1508270576.git.georgiana.chelu93@gmail.com>

The kzalloc function returns a void pointer and the assignment
operator converts it to the type of pointer it is assigned to.
Therefore, there is no need to cast.

Issue found by alloc_cast.cocci:
* WARNING: casting value returned by memory allocation function
to <struct type> is useless.

Path to the cocci script: scripts/coccinelle/api/alloc/alloc_cast.cocci

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* adjusted the subject prefix of the patches
* added the cocci script used to generate the patches

 .../amd/powerplay/hwmgr/vega10_processpptables.c   | 24 ++++++++--------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
index e343df190375..d968c3834481 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
@@ -291,8 +291,7 @@ static int get_mm_clock_voltage_table(
 	table_size = sizeof(uint32_t) +
 			sizeof(phm_ppt_v1_mm_clock_voltage_dependency_record) *
 			mm_dependency_table->ucNumEntries;
-	mm_table = (phm_ppt_v1_mm_clock_voltage_dependency_table *)
-			kzalloc(table_size, GFP_KERNEL);
+	mm_table = kzalloc(table_size, GFP_KERNEL);
 
 	if (!mm_table)
 		return -ENOMEM;
@@ -519,8 +518,7 @@ static int get_socclk_voltage_dependency_table(
 			sizeof(phm_ppt_v1_clock_voltage_dependency_record) *
 			clk_dep_table->ucNumEntries;
 
-	clk_table = (phm_ppt_v1_clock_voltage_dependency_table *)
-			kzalloc(table_size, GFP_KERNEL);
+	clk_table = kzalloc(table_size, GFP_KERNEL);
 
 	if (!clk_table)
 		return -ENOMEM;
@@ -554,8 +552,7 @@ static int get_mclk_voltage_dependency_table(
 			sizeof(phm_ppt_v1_clock_voltage_dependency_record) *
 			mclk_dep_table->ucNumEntries;
 
-	mclk_table = (phm_ppt_v1_clock_voltage_dependency_table *)
-			kzalloc(table_size, GFP_KERNEL);
+	mclk_table = kzalloc(table_size, GFP_KERNEL);
 
 	if (!mclk_table)
 		return -ENOMEM;
@@ -596,8 +593,7 @@ static int get_gfxclk_voltage_dependency_table(
 			sizeof(phm_ppt_v1_clock_voltage_dependency_record) *
 			clk_dep_table->ucNumEntries;
 
-	clk_table = (struct phm_ppt_v1_clock_voltage_dependency_table *)
-			kzalloc(table_size, GFP_KERNEL);
+	clk_table = kzalloc(table_size, GFP_KERNEL);
 
 	if (!clk_table)
 		return -ENOMEM;
@@ -663,8 +659,7 @@ static int get_pix_clk_voltage_dependency_table(
 			sizeof(phm_ppt_v1_clock_voltage_dependency_record) *
 			clk_dep_table->ucNumEntries;
 
-	clk_table = (struct phm_ppt_v1_clock_voltage_dependency_table *)
-			kzalloc(table_size, GFP_KERNEL);
+	clk_table = kzalloc(table_size, GFP_KERNEL);
 
 	if (!clk_table)
 		return -ENOMEM;
@@ -728,8 +723,7 @@ static int get_dcefclk_voltage_dependency_table(
 			sizeof(phm_ppt_v1_clock_voltage_dependency_record) *
 			num_entries;
 
-	clk_table = (struct phm_ppt_v1_clock_voltage_dependency_table *)
-			kzalloc(table_size, GFP_KERNEL);
+	clk_table = kzalloc(table_size, GFP_KERNEL);
 
 	if (!clk_table)
 		return -ENOMEM;
@@ -772,8 +766,7 @@ static int get_pcie_table(struct pp_hwmgr *hwmgr,
 			sizeof(struct phm_ppt_v1_pcie_record) *
 			atom_pcie_table->ucNumEntries;
 
-	pcie_table = (struct phm_ppt_v1_pcie_table *)
-			kzalloc(table_size, GFP_KERNEL);
+	pcie_table = kzalloc(table_size, GFP_KERNEL);
 
 	if (!pcie_table)
 		return -ENOMEM;
@@ -1026,8 +1019,7 @@ static int get_vddc_lookup_table(
 	table_size = sizeof(uint32_t) +
 			sizeof(phm_ppt_v1_voltage_lookup_record) * max_levels;
 
-	table = (phm_ppt_v1_voltage_lookup_table *)
-			kzalloc(table_size, GFP_KERNEL);
+	table = kzalloc(table_size, GFP_KERNEL);
 
 	if (NULL == table)
 		return -ENOMEM;
-- 
2.11.0


