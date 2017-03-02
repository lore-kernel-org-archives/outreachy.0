X-GM-THRID: 6392991510876389376
X-Received: by 10.157.40.138 with SMTP id s10mr5399099ota.97.1488484344188;
        Thu, 02 Mar 2017 11:52:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.222 with SMTP id 91ls2284283iol.41.gmail; Thu, 02 Mar
 2017 11:52:23 -0800 (PST)
X-Received: by 10.99.163.92 with SMTP id v28mr5953774pgn.147.1488484343637;
        Thu, 02 Mar 2017 11:52:23 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id f7si1699120pfk.5.2017.03.02.11.52.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:52:23 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e66so1971571pfe.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 11:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=aEOtZBgzYnYMV4flwV+G+4vMv5BRlV769u68jq9w6FA=;
        b=OEIIT/4VR84aOAX5irLdYxHyVH/K2YOMVzxi+uRZYG28HUuDBwqL3ne7YPeEwqa4XX
         Zvmz0dSVs7dr0vGi3yttOQ+DefbP8aCJsE+LuNDyk05WTaXJ+q6k/yO1HH//oEfPCpsv
         HCbYKhbjT4cciqdOMV4Cx4jh2fYLHIHPRbPCZ1h48fhz6MDbQV50XdmS6EdwvoEf6UsM
         +lmpUE9exS3ESzlGaPsfC+TZ7c9nfJNKRgLKzUo0LiE9lXI+7lI4gHYp59gQXebXGb0s
         g9Trg4RRufnspa8FQzFdRWvTdNZIjOSC8LfmDxM2F51T2Kksgf5UULgOucXKtXnmHlHl
         pW5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=aEOtZBgzYnYMV4flwV+G+4vMv5BRlV769u68jq9w6FA=;
        b=KhauiNvJ37tnzQafM+DGWFbxxjgvOpb2YF9SCLJL8DPXWnk8C0YrUmLqJXqo5/d69E
         pDES89AstlmRu1OgPEE3O42WACCRNGp+hwT9oJ4RhOU5PYYXZg5d3dvScDvPfn/g3lME
         S8JsDBFGILeleYtLbIytyB8vYcuL1PJqLWd8FMQhDV5hJihJj4Q0UK5rQBCvMmvu0rV5
         Jw97lb7mOJyqwE0fnT93mnOrgQU9/TlUl4TcbQbKq5znyi/g48jXUrk7tQ1YHYRDGNu3
         GTp307cQLVGgh6F83iFO5plvDfI188T5TwZtDeExoXn1s3SiHSUgPzLLzwzSxPmD3jH3
         1u3A==
X-Gm-Message-State: AMke39nPB4NirFh4ngPNSNEwFojiMzrFU8J+2hYTUEycoXxVP2YwHMxM0C2Kv708E+CX+g==
X-Received: by 10.99.124.88 with SMTP id l24mr9924493pgn.37.1488484343496;
        Thu, 02 Mar 2017 11:52:23 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g27sm18657950pfk.95.2017.03.02.11.52.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 11:52:22 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/7] staging: media: Remove multiple assignments
Date: Fri,  3 Mar 2017 01:22:00 +0530
Message-Id: <1488484322-5928-5-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>
References: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>

Remove multiple assignments by factorizing them. Problem found using
checkpatch.pl

CHECK: multiple assignments should be avoided

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 198df22..165dcb3 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -259,7 +259,8 @@ static int gc2235_get_intg_factor(struct i2c_client *client,
 		return -EINVAL;
 
 	/* pixel clock calculattion */
-	buf->vt_pix_clk_freq_mhz = dev->vt_pix_clk_freq_mhz = 30000000;
+	buf->vt_pix_clk_freq_mhz = 30000000;
+	dev->vt_pix_clk_freq_mhz = 30000000;
 
 	/* get integration time */
 	buf->coarse_integration_time_min = GC2235_COARSE_INTG_TIME_MIN;
-- 
2.7.4


