X-GM-THRID: 6209942832976756736
X-Received: by 10.182.236.4 with SMTP id uq4mr7336830obc.3.1445864997627;
        Mon, 26 Oct 2015 06:09:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.168 with SMTP id 37ls1808684qgb.52.gmail; Mon, 26 Oct
 2015 06:09:57 -0700 (PDT)
X-Received: by 10.140.233.208 with SMTP id e199mr29684057qhc.8.1445864997066;
        Mon, 26 Oct 2015 06:09:57 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si3491924pbb.0.2015.10.26.06.09.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hk11so188724387pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 06:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=BR/tItggmAZii7iUAXfMl4EIJrXzk3QRrHO0VGHbV3M=;
        b=dyEgWRc4ZCa3+xLEyrApLZwOnEgWSkp2QzTCLAsM7wTfBtn2PoIT4GMAo+e6YAI8AA
         bsvHz6DRZPP4waZBWRpa9mLo+kGfoo5CatfOyk5mChENWAAVN7n+4GKfLTnhsSZs9nfO
         hwM1qPRIoCwTIKxaG9DLPsiQAynpxgFiz7A4tR9O1bEQHECkq49lgjpuYjDiI2AKnfNX
         oSD2vw4RG5KRX8F68g7GA6GNDWWA1OmSsPx2t5TJ4XYxRaXM4P+Uaw7SxcT43vXmiYKQ
         Sn5Hbaq1ugZWAHAiYBCQYsiGUVAqPlAV6C1B2eJMARIav28K5xdmPZWGSswuEGyDPqtc
         /xpw==
X-Received: by 10.68.94.69 with SMTP id da5mr22389289pbb.63.1445864996949;
        Mon, 26 Oct 2015 06:09:56 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id qn5sm34181086pac.41.2015.10.26.06.09.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:56 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: media: omap4iss: Fixes line break
Date: Mon, 26 Oct 2015 06:09:32 -0700
Message-Id: <2294b32399b02afe399d802b248f035b14fae0a6.1445864494.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: Logical continuations should be on the previous line

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index c143001..bd3662a 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -469,8 +469,8 @@ static int iss_pipeline_pm_power(struct media_entity *entity, int change)
 
 	media_entity_graph_walk_start(&graph, first);
 
-	while ((first = media_entity_graph_walk_next(&graph))
-	       && first != entity)
+	while ((first = media_entity_graph_walk_next(&graph)) &&
+	       first != entity)
 		if (media_entity_type(first) != MEDIA_ENT_T_DEVNODE)
 			iss_pipeline_pm_power_one(first, -change);
 
-- 
1.7.9.5


