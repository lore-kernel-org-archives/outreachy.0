X-GM-THRID: 6671889180677636096
X-Received: by 2002:a24:420a:: with SMTP id i10mr4449899itb.164.1553420252710;
        Sun, 24 Mar 2019 02:37:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:90d:: with SMTP id 13ls3840849itm.2.canary-gmail; Sun,
 24 Mar 2019 02:37:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyn+cH//sBVMQXW2ryULS/Qdpq9WwlO6Dk716jaMOzb1CpnsK8QojMFt3EjZk+2nY8xtPBO
X-Received: by 2002:a24:6514:: with SMTP id u20mr3217528itb.177.1553420251824;
        Sun, 24 Mar 2019 02:37:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553420251; cv=none;
        d=google.com; s=arc-20160816;
        b=rs5DUXoPc5THxuFz9d6aNdjpkMkkaGuobmuYs/zXmdlsutd8jxvBH8OXCgS4rJyM5W
         L58ohEPAz9+f7c/V0BMPikSBAm25GkmDBBZ8DgHbEKveFN+yCsIWirStjAZvhfq7o4uX
         TXI4q5BbzDc2OOxvKpnyccXrpNvki9T78hG3pHRelsaw5whVULL4Dt/DxnPzoKSwxn7Z
         zbs3uukEFQRZA1mchGmYw4SyQlgRaydpdQIdUnUd/k6GJV+7WfzQ1N0z53ENJn0YRjPR
         p8ZNcpzotX7SjrtnVGMit3knaMejgm56OVBgmaTtxbjHUxM3p5Y8QI64Ghc/8vdCAVcL
         TxyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Qaem7ncWomAm3UhYJm9co0wMpTqOZ+jGynzHjI6At40=;
        b=RaNg2fS1LVZuYrrV+PjlnlesRChmuwOuD2CcV5vQO3LEHPOBNDgaXN8pIuulwHKYuV
         oEjCQpw5ZK0lRbmROzccy0NqzUtUJ+jCj3O8oJynE/AzC8XTsHdy2ld3XNOZYTowtHIC
         7LKW6NnCeQDzvkxXO0qTqGHqCrBxpuNkgCj1OoAf8WQ3Fysh9DICz7tdYJs79ErTyCFs
         6wj5YTa+Ni5E099Q++ZdEh1sTUNxRKdfwsIZKEEqulFOYVPyQC+mQRwefUPAZPuyeyEX
         4EDDD8P3kdWr14ITZcIC7Bjdl4B2/hcMMGk4YsKBl7mvlKh/4RKYuxoAfHYJ/0fwYcSe
         aTLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oYGKB3aX;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <anushkacharu9@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id x26si660962iog.4.2019.03.24.02.37.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 02:37:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oYGKB3aX;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id t21so4371908pfe.2
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Mar 2019 02:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Qaem7ncWomAm3UhYJm9co0wMpTqOZ+jGynzHjI6At40=;
        b=oYGKB3aXrc3d8dCtjxG759vna1Y50wt8SMmuo5EAnmYL7LUJj5HdvktfHWdO5Aes48
         vrJkv891AhObIHfZfJYqkYC2wKbjj20sWTPOHRWjiiVq+GCc4IKr7nRJ7X9wKT2vjZ9v
         2bAVm1kJ5VjerEdyclNF5RrLUZsfS721dnUpP8HevrQUQRFkJ0wBufl42wKUzPSB/3IX
         cfwBPJY0N0HNC7IfqpWxfQv88vigSu3eNZxM+wqDJ6zXrETdUGaNB3wJhPZVuMrc/7pI
         ep9rJQNzkyCnL1swfmSLZf5HJiJ4SSBdGrlYOwBSs+5lBOs5e+e4kjz0lc8KmLAv0jCK
         9uVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Qaem7ncWomAm3UhYJm9co0wMpTqOZ+jGynzHjI6At40=;
        b=kT71Dz5E8CL/Kspy8K8+6/XaEH+y48lP4VlEhfGmFb4src1iJrzFPIw5if4BxSu9Qi
         gq5DsZFOtHLtVbgPYVyVKyynRTr6LbysxsQvQ7YXMh652iNKfOi2wkya/gHSNTCe33Ot
         oevkMqPsr+j3RweaSbL46KAicjwMU+mZUL1Dbx8xSc+Eflsa6WLoMBmr56zmVyohbYTB
         GEuB9EYaIgSHl9Zp8/o83YFbhOAqXq4o8qkDTLiv5Ns17iJlrt2TmaY/t9rPGpmg3sub
         1qKJZ4/Qp1W2fv0mytaRILJthiHdiqrrbliSxOcciodiD2qwfpd01KdiQldztBUQvllw
         2kjw==
X-Gm-Message-State: APjAAAVTiuNKGboGRF0e0TCRetFkrMRUm59Fhld1brrmcxgZTz7wBgGO
	/2D1mxKHiZ4plX4LUcLT/YY=
X-Received: by 2002:a63:94:: with SMTP id 142mr17737366pga.277.1553420251164;
        Sun, 24 Mar 2019 02:37:31 -0700 (PDT)
Return-Path: <anushkacharu9@gmail.com>
Received: from localhost.localdomain ([42.110.155.238])
        by smtp.gmail.com with ESMTPSA id w123sm18540851pfw.72.2019.03.24.02.37.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 02:37:30 -0700 (PDT)
From: anushkacharu9@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Anushka Shukla <anushkacharu9@gmail.com>
Subject: [PATCH] staging: vt6656: card.h: fix the comment style
Date: Sun, 24 Mar 2019 15:07:06 +0530
Message-Id: <20190324093706.16308-1-anushkacharu9@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <anushkacharu9@gmail.com>
References: <anushkacharu9@gmail.com>

From: Anushka Shukla <anushkacharu9@gmail.com>

-Fix the comment style
-Replace '//' by '*/' to follow linux kernel coding style

Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
---
 drivers/staging/vt6656/card.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/card.h b/drivers/staging/vt6656/card.h
index 0a91d9ba4688..75cd340c0cce 100644
--- a/drivers/staging/vt6656/card.h
+++ b/drivers/staging/vt6656/card.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


