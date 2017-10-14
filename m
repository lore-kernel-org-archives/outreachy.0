X-GM-THRID: 6476749325903855616
X-Received: by 10.25.67.94 with SMTP id m30mr125310lfj.35.1507985718514;
        Sat, 14 Oct 2017 05:55:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.201.11 with SMTP id z11ls75453lff.16.gmail; Sat, 14 Oct
 2017 05:55:18 -0700 (PDT)
X-Received: by 10.46.95.133 with SMTP id x5mr147267lje.19.1507985717987;
        Sat, 14 Oct 2017 05:55:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507985717; cv=none;
        d=google.com; s=arc-20160816;
        b=QsARuJZbXIfnD2hILuYROsVkNtXKyKVbu/fsyw1937D1w+9Hs4e20IzGjmUG/g6Tkc
         iir5XhfE1X7RRQvQrie9zM0trmeJdonU5v/AmjJQmfQDiFCoFXTuZBBEh6h61PsBA/wX
         8/LRs776k/SK0gYn4LsfPd0VD/RjN9vr5OzkFkAf9QbO1TyOOOlzhRMLau0IlN8He9ww
         xSC00IorKDtchqz5Rj7PthBXlbZ4x1utSHnqEemnDK6OZ2xXD32ti8t5Ftm3cUvHSpgx
         h1hTq4cXmDk6FnKFKOQ3tA1ZfFRHDdLEXtOQPxJoq9ipEpG/uidWnQYUFQ7fpvd1aVVW
         YKoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=CWa0Cu+9kgz7RgMCL5xV9KKcnaCKoC+mvspDXrjOidE=;
        b=uNsVwcanfWlJ6Im8BTytm0PCzk7YwYYTiB0gbFfKwNkN0JcU094oOJmOhYBJXzAc3H
         JMf7vklU04orbGqZTE210wr5crIYPfcmS7so9Rks1N0WgAgk/qoD5Wnbd3WZbjkEwppb
         HAau3GK9im8tyiGfPPYrE3+Z52qSJtZvOFxYEAlnLSbjL7rbWSps29g6dVoopH1QfKG6
         vMA9GrbKBnH15PJ8RGPNLOiVN9dUeIT37tTqfKk9CpUK4WQe29lURLQfhOyBz3h1QE5Y
         +7OcBolo+pVxs9uulI9HCOfv6DXZ+Uyc09G4xEhbEbmhjAkkp2nOVMIp6jvaeZocaedo
         54fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Er+SDB54;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id r17si163269ljb.2.2017.10.14.05.55.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 05:55:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Er+SDB54;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id t69so25794312wmt.2
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 05:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CWa0Cu+9kgz7RgMCL5xV9KKcnaCKoC+mvspDXrjOidE=;
        b=Er+SDB540yG4ZsHfSuq1azxW7vz4VYeUmjGHYybAnxHNCodU5s4KbiJY8x1UAX6GLs
         W5+9ghfl+LFiJJ/iWib730KnJSuhBCCwxnIteXnGKQfywJtOxxvJwjhDgScArLYIkqTV
         Zh069v0phucqCY03m0lo1xpW5GcL8muM2lv5NDxt7BFGx5p4gJ66KM0Bx91jjZgsjiVM
         Rg/BcexiUWyTAituh0yXJQtReDXqDoqkdZBhcs/iNb11FnjOCka8+pf4J0UPh065OnLW
         dueDBtpRPCSQNcYO7ogIIPvcEJTrJTqzmFK+30IyPnW5/DvGY/IGlfhQH2R6uu78ZBUL
         Zqnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=CWa0Cu+9kgz7RgMCL5xV9KKcnaCKoC+mvspDXrjOidE=;
        b=U6bQJ/gslrZe3Lntvt929YfHcRnwBSrl0dWIyFrrshjtNnF5FVDD6MC1jsMV4AwRiI
         AKFk5kGVAlEEfw8436DRmWxt1CLAdBJAqj31PfM1xXn0rD7v9p3XThHwa2l8j8mM0CrP
         JWdUZ0Q+k8BrgOMyXP5T/KbLcNwcXMsHM86XarxAFMqBM+tLqRtDrbK7CxCT3gyVj9qv
         +gLXBYt3Uy8nLtvGAw0Swe0WFByxxvdO3sI4KyK9qSINVjAXN2f+MPGX1zS/sYvpjnrQ
         USgRDvBRmUF9rkeI5LUVy4XAQ840RaMjVv14hrfDNP6cJJbmoDUOTUukdkxXKMSn0PNO
         +jCg==
X-Gm-Message-State: AMCzsaXGy/g3aK1JpjGPmd3lBrPTHaMxx0cR46Hzwkt2nEkPgmkHVzLZ
	fqb7191wcqY/QksRP8t+L9NvQw==
X-Google-Smtp-Source: ABhQp+TDKuuF6I596cAkJnQVfnW12de+HyXXhQ7yUJwYOzYOf2HGyKaYWJn2XAzuF052xpMaFb9Krg==
X-Received: by 10.28.236.203 with SMTP id h72mr3903386wmi.147.1507985717735;
        Sat, 14 Oct 2017 05:55:17 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([188.25.22.133])
        by smtp.gmail.com with ESMTPSA id 10sm5076864wmy.35.2017.10.14.05.55.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 05:55:17 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>
Subject: [PATCH 3/3] Drivers: gpu: drm: Place the constant on the right side of the test
Date: Sat, 14 Oct 2017 15:54:42 +0300
Message-Id: <c563f947a5f787708f2f994b5a88c4c47268aeb4.1507985001.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1507985001.git.georgiana.chelu93@gmail.com>
References: <cover.1507985001.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1507985001.git.georgiana.chelu93@gmail.com>
References: <cover.1507985001.git.georgiana.chelu93@gmail.com>

Move the constant on the right side of the comparison in order to
make the code easier to read.

Issue found by checkpatch script:
* WARNING: Comparisons should place the constant on the right side of
the test

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
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


