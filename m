X-GM-THRID: 6203640071663386624
X-Received: by 10.180.210.212 with SMTP id mw20mr1930230wic.3.1444397511937;
        Fri, 09 Oct 2015 06:31:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.105.104 with SMTP id gl8ls354534wib.41.gmail; Fri, 09 Oct
 2015 06:31:51 -0700 (PDT)
X-Received: by 10.194.109.233 with SMTP id hv9mr2631625wjb.1.1444397511605;
        Fri, 09 Oct 2015 06:31:51 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id w4si333140wiz.0.2015.10.09.06.31.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 06:31:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id gb1so68213081wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 06:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fiYeUzJ5IdM7hAYHxCvJZiO3I4Pa+r9s6IZeBDbdme4=;
        b=ER4U0N8PtMU3mDvsSKxdgddjTHJeOSXwZC584RPlXj4BNIk1YNe5U3ga2j8So8vVVN
         3Hy1fZkRlSdZMl8s3i5ev4pHoEJFuZzHEyyzTBofTF8iPlqJuxe/ByFdEkK9/Ey1aZro
         /sH9Y+7/lLn830nKI3Uu4b14DeHhjNR+Q8s2srlhrfkHuoc7izc+KpUQJPMyYBIODdtf
         nOZ3FltNAn58E92TPbQdo9hfq9wiX5EoV6IHXxJJ5hpM7bksG+J9WspRoxJmwTYQ/a6E
         IIISWnzJ6EnLLFkkMgNQxv/wcpggw4vsRHdgEuZUwyVQkhpYxXBJ6U+WemtubCk7Ttve
         oEGw==
X-Received: by 10.194.111.198 with SMTP id ik6mr15871434wjb.96.1444397511520;
        Fri, 09 Oct 2015 06:31:51 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.45])
        by smtp.gmail.com with ESMTPSA id hk5sm2191467wjb.6.2015.10.09.06.31.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 06:31:50 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 2/2] Staging: skein: Remove space after cast
Date: Fri,  9 Oct 2015 16:31:38 +0300
Message-Id: <1444397498-5082-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1444397498-5082-1-git-send-email-aybuke.147@gmail.com>
References: <1444397498-5082-1-git-send-email-aybuke.147@gmail.com>

Remove unnecessary space after cast. Problem found using checkpatch.pl
CHECK: No space is necessary after a cast.

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/skein/skein_generic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/skein/skein_generic.c b/drivers/staging/skein/skein_generic.c
index c112694..e29b9ab 100644
--- a/drivers/staging/skein/skein_generic.c
+++ b/drivers/staging/skein/skein_generic.c
@@ -22,7 +22,7 @@
 
 static int skein256_init(struct shash_desc *desc)
 {
-	return skein_256_init((struct skein_256_ctx *) shash_desc_ctx(desc),
+	return skein_256_init((struct skein_256_ctx *)shash_desc_ctx(desc),
 			SKEIN256_DIGEST_BIT_SIZE);
 }
 
-- 
1.9.1


