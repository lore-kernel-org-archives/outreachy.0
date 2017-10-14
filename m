X-GM-THRID: 6476749325903855616
X-Received: by 10.46.43.4 with SMTP id q4mr149798lje.13.1507985716367;
        Sat, 14 Oct 2017 05:55:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.17.77 with SMTP id f74ls565246lje.8.gmail; Sat, 14 Oct 2017
 05:55:15 -0700 (PDT)
X-Received: by 10.46.16.131 with SMTP id 3mr151339ljq.8.1507985715143;
        Sat, 14 Oct 2017 05:55:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507985715; cv=none;
        d=google.com; s=arc-20160816;
        b=yNzc3jg4ugiYNcPufEIv5wIYgWboXRC380X4BCGykCSrz6TVvjA++W2biUOKjxrtk6
         fsAev6qK3UYs+YMLcZhPUywQ1yQnsFmwaY34fSvBK+hoD4VaVHSNsaHmYSmuPSsElX9e
         dv+CQOHG1BBWqPDLvpjD3Wj4BE8Jp5ahfwwtwFGXGK76o9M7JP9HlqZYA5mk2Gnt1W2l
         LMK8Udq8WvKj3DEIiPMUTSN+R1jZNYr2Lh6XbH9x3VupYkW7yE7bd5uonNFAaj+7RB9k
         aMzyN8Gd/M5LbD6Qnv9nX5jBCkQC4mqCuyZE/YiHvohjaBh2rHl7B9+f17MNXd7EnlBy
         w3kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=e5wxfQfLqXfwbTIobgngpvJDnz2FBPsDLjTDiI99CRo=;
        b=L1XtsAMpWpAbBVjpcG2MRsi1HIJzu5Zkln+aAVrtFCMF+2wJoYVfOMR8q7gcT0Vot5
         0pc4YYVEe58mqrLYZ2NnyYDioR3c/d/TZ28K0eqhgRwIHruQFx/vwbEJfNeTVwfgmzXo
         oo0XSiOtotXSBG2ql6WCFUimGaucjAy6Li3sED8TSVBdVl1UFoDDPAEQSnAiXxqMsSFf
         aLppJ5095DlKrxpUJFXMmzak4W46Hj0PzN+p3YBt9Bnc1xb5siQxabizjirLtxISfjYC
         ytPb+f+9ec41AMM5Th/UdL9cq8VdjYGj37r9r9oqMX5zbbIjstc8VRzgBlzoEnhP7nxr
         /bmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pYr6NVzy;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id r17si163269ljb.2.2017.10.14.05.55.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 05:55:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pYr6NVzy;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id t69so25794312wmt.2
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 05:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=e5wxfQfLqXfwbTIobgngpvJDnz2FBPsDLjTDiI99CRo=;
        b=pYr6NVzy5X59yrlbyNQSzQ3QYQHK/eFC5McbsSCNNLR9Z++mk06/aL6eA6Kq+rpzlM
         xqO5q6E4AxGSH0jDaNsbZHpEXu0S6Hf9CvrWUvC0OoxA5BiJ0R/lNPVXRO/fTZV3RZby
         y+T9+qCDRcrxnOTNb14gdVpz2X174YQT+qnr9J0js0Xofec5xuUYXOIr0P643XROwM6q
         0KfaBKsbYTW2OXER0gp3HdDOFZPsSxM5ZskS57J/HdyKC6UwMwcD1kn44LrKJcrqRk8d
         9IxgAfcSvF87R+s2JE3LS/Klr1a87kroYu8ZZlboBZDnx/N2e6O+C1vVFUCwNfGOHjsa
         qSng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=e5wxfQfLqXfwbTIobgngpvJDnz2FBPsDLjTDiI99CRo=;
        b=KFq3xXlliP+fVd1aSQK+Q10ZgJix30udW9msbvbdalgUs6yD/K8+dfQ1LvHODsErW5
         GAauGmdamnxSB9evbu9OtNlxaV6WpCbejEwfSA/o0phfBkMuNU4xo0CWyENgcc0pIXZN
         DeeCNJOvGfG7nFq3dwTCgA7+aaIItvx6RNKOpgJJxUfm1RefHa2UBXDUYNxdhkL1Oyh7
         2wy4PQBpJ0WTSihrBK77EACJXPbDz5JZOQ84CrBFbDT36u2sCf5E9NeOAobxqwAWV0L7
         OoV4B/4w9Y3vdx/4Lb4nBUnRxpF/SrE8VEQgqlCyTYcnm8GBZKUuOGz1gf14nLTW/IQo
         sg1A==
X-Gm-Message-State: AMCzsaVfMxzWj0JQdLAeQHd3nxdoX7ef8mNtMVeeaRQwzWjC1c6VD5Rv
	wEMyycHHpqh+cN1WgZeTCx8=
X-Google-Smtp-Source: ABhQp+S0kB9smJko24NfhWstnGNtbZURBpBATMEef2IzSO6or2MwL14NnRXBTtOsWOd6/hhm/vhabA==
X-Received: by 10.28.181.2 with SMTP id e2mr3193344wmf.81.1507985714877;
        Sat, 14 Oct 2017 05:55:14 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([188.25.22.133])
        by smtp.gmail.com with ESMTPSA id 5sm4709241wrt.59.2017.10.14.05.55.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 05:55:14 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>
Subject: [PATCH 1/3] Drivers: gpu: drm: Don't cast kzalloc() return value
Date: Sat, 14 Oct 2017 15:54:40 +0300
Message-Id: <5247f2b512912f0f62b71c69820d868c7d7619e1.1507985001.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1507985001.git.georgiana.chelu93@gmail.com>
References: <cover.1507985001.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1507985001.git.georgiana.chelu93@gmail.com>
References: <cover.1507985001.git.georgiana.chelu93@gmail.com>

The kzalloc function returns a void pointer and the assignment
operator converts it to the type of pointer it is assigned to.
Therefore, there is no need to cast.

Issue found by coccinelle script:
WARNING: casting value returned by memory allocation function
to <struct type> is useless.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
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


