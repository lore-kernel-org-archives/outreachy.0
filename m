X-GM-THRID: 6477977779126140928
X-Received: by 10.28.145.11 with SMTP id t11mr642382wmd.0.1508271740221;
        Tue, 17 Oct 2017 13:22:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.141.129 with SMTP id o1ls695860wrb.0.gmail; Tue, 17 Oct
 2017 13:22:19 -0700 (PDT)
X-Received: by 10.28.153.144 with SMTP id b138mr537559wme.28.1508271739438;
        Tue, 17 Oct 2017 13:22:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508271739; cv=none;
        d=google.com; s=arc-20160816;
        b=eh6yQqSCt83B2f6cX92e6P3yjjf9b9gAIMFQl8MmSeqWLIx1PT8gigqR/g8W2qYhmM
         nDHSyNguZfH3fQ0MVC2iAunbOztPV13TPVPMKZ9RqznQTJN7X2ssyGhX9NOrp2yT3iCp
         T4IJXr7Z/cX28SjBjUbBpHJdSxEgt4wvXTXAQAqTr1YVS3kMXSfees50u/wk1xuvVoVz
         SBhuonunDWovAKAm3h3q6FonOEzSa/nfrJuDz7L42HPbb5V5JCkRXxeZUXgCFj+hclBu
         6QMfAA1u+BnlJ1pi2dtJJfILmTslOLaoKzRDxd7mB929z9yJFnl36LEOA25SSQEewx5F
         omzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=hWfLEf1qkIyNNR+VDWVczMqGZduwwIm8RpTxSsjuMiQ=;
        b=Pca4GVkvKriTKpdseKMQ2oweXrQIJJQioPo3wxVucc6PDDMG0EFvxj7Wz+nfMmtfL6
         cTbfkafTDAIPdsaplc1YkDw/EUh4jJKu3sBvCMb3F3Z3JtCJ1ezXO1yNI5QchQJWOdvb
         wo0N66uEBTEEN8wj9lLbzIVotKknoPcs+tYIL8WpWsoTdqSNQbjWDpUuEWzssXCFUGJy
         n4L64hH0KiOwp+9CFnM5y3TpatTRhlxo5MQN5gAIIqARG2NebkJoGYue/8LMrYdGKhW6
         1bqJxbIS2Y9dKDfd1QJSxbeNtlR5L00p1rwUoA5dXqWodkG3qyeOgt2pP3N5rGLfUROJ
         1FEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rYCmkcNE;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id l9si542970wrf.4.2017.10.17.13.22.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 13:22:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rYCmkcNE;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u5so2939924wrc.5
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=hWfLEf1qkIyNNR+VDWVczMqGZduwwIm8RpTxSsjuMiQ=;
        b=rYCmkcNEHX2T+Ie0iqw9uNQ76tNKCX2cYv3fDc3Li7MtgpVEAbNQBOZ+V4swcEaJS4
         S+BS3baw1i62biB/8Lx+F5qIP+0mWMT3keNVGdXgveIaNQUQp7opLC9jB36dzfdqAFXn
         JJQ9VRX6J+nvvbHRRXGuFBaU26mWqQOKSgkKXZpn4QXpSEZPb1lclLo2KgrULSWetQMy
         5EQa57XUDulMpsk0ntPPOMWtJ3ICQPsnqtQLJi6AhfTqIgJwXrlZ0Y7UNIfz7m3Dun4l
         VewZf9zdK9A7SGsI8yCsZ0xgk1yaGooThdJMZ8cwBULbvMfnN9T0NCn2QAJO1/HMSqLi
         KpBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=hWfLEf1qkIyNNR+VDWVczMqGZduwwIm8RpTxSsjuMiQ=;
        b=KSDuXcjZwJ2l2OWxf9tRERFcVo2wv2J4BlwePjYybDSWkc3SDrOLoFID0C8mDYATAU
         MZG5ReYzPRB3DvFBkuBLVKpFtQaOZ9AgU3AM6o9CpFgTa76gbMPwwbgmAGosG4F89N+6
         23uCiz8my2rkFuIA3gi9kdlS7/FnCodQyiXs+V8E1ZNSUWzgT+G8iH97olMx6kxqKFpa
         NsOdEXawd1ze5HydoF+xtiTNmUTK00NP/Xp0l5I8EWChq99+W7rZtrSz+Cujj87yyp3L
         CbJM0pPO49bku2QfHltcKGPvtsA8sxuqthT1MIcxE+NjmZpIFtVXxTkpTTt/vJWXnD1f
         MxGQ==
X-Gm-Message-State: AMCzsaVJnRR7F4ROqwnLj/grbB98OPafsLidiWnZPbcn1B78KD/lAlhH
	9WQquMrrAD1ZSsU/ZZfOTdklUA==
X-Google-Smtp-Source: ABhQp+TOhA2zoRkgYGdQ3U/S/bVBD3fdg8/KB5qr8lTXGhBzvt6M/hfia3tADB9BmC5o9hGE5T1C4w==
X-Received: by 10.223.139.145 with SMTP id o17mr4494954wra.107.1508271739144;
        Tue, 17 Oct 2017 13:22:19 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-79-238.residential.rdsnet.ro. [5.12.79.238])
        by smtp.gmail.com with ESMTPSA id e8sm9882696wmc.46.2017.10.17.13.22.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 13:22:18 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 3/3] drm/amd/powerplay: Place the constant on the right side of the test
Date: Tue, 17 Oct 2017 23:22:09 +0300
Message-Id: <3243e74f5c0d1d61cc2fc2e98146032bdca40bcc.1508270576.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1508270576.git.georgiana.chelu93@gmail.com>
References: <cover.1508270576.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1508270576.git.georgiana.chelu93@gmail.com>
References: <cover.1508270576.git.georgiana.chelu93@gmail.com>

Move the constant on the right side of the comparison in order to
make the code easier to read.

Issue found by checkpatch script:
* WARNING: Comparisons should place the constant on the right side of
the test

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* adjusted the subject prefix of the patches

 drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
index 769ac11a9215..f14c7611fad3 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
@@ -1021,7 +1021,7 @@ static int get_vddc_lookup_table(
 
 	table = kzalloc(table_size, GFP_KERNEL);
 
-	if (NULL == table)
+	if (table == NULL)
 		return -ENOMEM;
 
 	table->count = vddc_lookup_pp_tables->ucNumEntries;
@@ -1130,12 +1130,12 @@ int vega10_pp_tables_initialize(struct pp_hwmgr *hwmgr)
 
 	hwmgr->pptable = kzalloc(sizeof(struct phm_ppt_v2_information), GFP_KERNEL);
 
-	PP_ASSERT_WITH_CODE((NULL != hwmgr->pptable),
+	PP_ASSERT_WITH_CODE((hwmgr->pptable != NULL),
 			    "Failed to allocate hwmgr->pptable!", return -ENOMEM);
 
 	powerplay_table = get_powerplay_table(hwmgr);
 
-	PP_ASSERT_WITH_CODE((NULL != powerplay_table),
+	PP_ASSERT_WITH_CODE((powerplay_table != NULL),
 		"Missing PowerPlay Table!", return -1);
 
 	result = check_powerplay_tables(hwmgr, powerplay_table);
@@ -1229,7 +1229,7 @@ int vega10_get_number_of_powerplay_table_entries(struct pp_hwmgr *hwmgr)
 	const ATOM_Vega10_State_Array *state_arrays;
 	const ATOM_Vega10_POWERPLAYTABLE *pp_table = get_powerplay_table(hwmgr);
 
-	PP_ASSERT_WITH_CODE((NULL != pp_table),
+	PP_ASSERT_WITH_CODE((pp_table != NULL),
 			"Missing PowerPlay Table!", return -1);
 	PP_ASSERT_WITH_CODE((pp_table->sHeader.format_revision >=
 			ATOM_Vega10_TABLE_REVISION_VEGA10),
-- 
2.11.0


