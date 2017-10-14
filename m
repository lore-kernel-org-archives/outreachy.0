X-GM-THRID: 6476749325903855616
X-Received: by 10.223.169.144 with SMTP id b16mr379251wrd.26.1507985717236;
        Sat, 14 Oct 2017 05:55:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.159.4 with SMTP id i4ls648369wme.3.gmail; Sat, 14 Oct 2017
 05:55:16 -0700 (PDT)
X-Received: by 10.223.154.112 with SMTP id z103mr399295wrb.0.1507985716714;
        Sat, 14 Oct 2017 05:55:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507985716; cv=none;
        d=google.com; s=arc-20160816;
        b=FHzPHKtB17kvvIpM8ZDIklFbCFCiaDRq4BEjI8NqBXMwXNNoEoSJHaANP8hmcKw68v
         +HNjiWe9jtaRKbCy6VYhvOeRTbJbdy757nuo/Zy0MS1ft//kYI74+iFsHpUFwbAD2IL5
         a+fwzAReZQrVRl0vKqi+j8cgEDoFym2IhEWAX8jC1NuAPQf4qqBadV6/gsxeukPV21pW
         3veOh6h8hi9Kkbh9SaV8FULtHfUJOnmYKEnNFNZ9Sw2iUUi7nNF1y8TzAdMzS32Dl92P
         HcoFmrxHJVEs9R93A/S6AsvdxZOZ/Pj7ohy9F3VRIgWuiGXWd+G93c/dRzhbkb1SclwB
         3RLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=iOhSMa5qyGVaGf6fl/bB1F2eulcze2EnMwv0cJloThg=;
        b=aqR5WSvs5oL5pKO8NSjFrRPiCK/24Y50jvlgGr8RRal90ikCWBAoyGV1qa2Oyq6Xj6
         SB6Do5Z2KegIvSf2eonscXxwFtfkYayjmRl811qWV0zRtPoosdZUB/TiKgT714lmk8P9
         Tu6gKExrHZUB+9CyQ29T5tBACCpVUoq7lZ+rueJpd0kWv5ErwpYUboJ8Z/NvwEw3yCwA
         Gr693COB1bClf8GWjrFOVKLNVPX6mQTY4sfjYwSbOZxocUp7bmKlQRyGM+EKzarG135w
         umYhuQPrb/cTWL0CKJb8EUf+7Er6vcj46Byu7e9QLQB7LpUZ0Ogs7V44yw0u9sKwz5Ic
         incg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uw+uRTtp;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id r15si199834wrc.1.2017.10.14.05.55.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 05:55:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uw+uRTtp;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id v91so1315849wrc.5
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 05:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=iOhSMa5qyGVaGf6fl/bB1F2eulcze2EnMwv0cJloThg=;
        b=Uw+uRTtpIBRk0u+/JkXJBTmBbH4LKVpFhJt1HBQfE31UsJXyP3GJmAQTIcop37Cea+
         YkcxmQ7ufk78fpS5J/hwrqDW/9l5Q+yIw9w+ve6ELfrJAHKO6VUaSQtxBzcw6l1C3rre
         MjHBOHFoShOwGUSc0vFVW+FkVD2yoHLeObKEYhTtz2sq+oggv6L/tsNT//4QPG4zusZw
         XUZ9X0vR0PCytPMYnHk3HIIsibcNjLq7Mf3FoeJ43SM41/on3FXV6w6hUtqjEP+KE0x2
         z+YePt8jdcZU4H6NnRXjc8O1kjP41kxgz8wji8XboI1kPb0FGOQ1t2u95uaiM4tX70qd
         MPAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=iOhSMa5qyGVaGf6fl/bB1F2eulcze2EnMwv0cJloThg=;
        b=QjUegGUkF23t/iqTdP7AeqH2Rgbz+Xak2UmZPGPi7fP7AHvcjBcfZZ9qyJ2IC01ziJ
         Lmtp9OLr7FryWNovkRj16rB/DQyCy97/PxPHNCKi2OxKVW/nba6HFEbOhU2dna0I1hEO
         Ka4imr3YFjJKT7rckOxfDh4CK0ggdDFIJpOH9L3J6ra/kCohajsPA8kyR8RGk9aW1M8l
         s2RC6/yCutfe42w2ezhRVd8aqCM/7QYqx8aFyF9MhAJvik8ofCY3UVN2oph9TOTrDHVh
         b8d07efFSPoDurAKxzpr5PpNRb1hFI2yvu0lY/zUE2ftV5FaRrYonUluWvwWaXrKIjPF
         t4vg==
X-Gm-Message-State: AMCzsaUz0VExT4LQ/QI9S34TifQc+Xw/vtjnWRB1Z6QhUa+SKY5Qmy21
	jkkdoFxFtxvE0ETvOU/Ek4c=
X-Google-Smtp-Source: AOwi7QAqxX4c9pJAGGP3dt/zltb1NRn5DuO6B5Fe4jilKtSPFIF9XO1zP9CvRqg8dYqDa9ozvJG5Ng==
X-Received: by 10.223.192.135 with SMTP id d7mr3560629wrf.128.1507985716404;
        Sat, 14 Oct 2017 05:55:16 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([188.25.22.133])
        by smtp.gmail.com with ESMTPSA id g26sm4950591wra.14.2017.10.14.05.55.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 05:55:15 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>
Subject: [PATCH 2/3] Drivers: gpu: drm: Remove useless variable
Date: Sat, 14 Oct 2017 15:54:41 +0300
Message-Id: <31c903200332c2b3a3ecc29e190eef42edc12ad5.1507985001.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1507985001.git.georgiana.chelu93@gmail.com>
References: <cover.1507985001.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1507985001.git.georgiana.chelu93@gmail.com>
References: <cover.1507985001.git.georgiana.chelu93@gmail.com>

The result variable is initialized at the beginning of the function, but
its value does not change during the function execution. Thus, remove the
variable and return the SUCCESS value, which is 0.

Issue found by coccinelle script:
* Unneeded variable: "result". Return "0"

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
index d968c3834481..769ac11a9215 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
@@ -1174,7 +1174,6 @@ int vega10_pp_tables_initialize(struct pp_hwmgr *hwmgr)
 
 static int vega10_pp_tables_uninitialize(struct pp_hwmgr *hwmgr)
 {
-	int result = 0;
 	struct phm_ppt_v2_information *pp_table_info =
 			(struct phm_ppt_v2_information *)(hwmgr->pptable);
 
@@ -1217,7 +1216,7 @@ static int vega10_pp_tables_uninitialize(struct pp_hwmgr *hwmgr)
 	kfree(hwmgr->pptable);
 	hwmgr->pptable = NULL;
 
-	return result;
+	return 0;
 }
 
 const struct pp_table_func vega10_pptable_funcs = {
-- 
2.11.0


