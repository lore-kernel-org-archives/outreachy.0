X-GM-THRID: 6395514792016084992
X-Received: by 10.129.44.69 with SMTP id s66mr5605872yws.132.1489071825313;
        Thu, 09 Mar 2017 07:03:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.6 with SMTP id q6ls6744397otc.10.gmail; Thu, 09 Mar
 2017 07:03:44 -0800 (PST)
X-Received: by 10.129.163.208 with SMTP id a199mr5729677ywh.135.1489071824885;
        Thu, 09 Mar 2017 07:03:44 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si873004pfb.0.2017.03.09.07.03.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 07:03:44 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so2613985pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 07:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ge5T0mJvqHFrZKiy9RTtVGhkcvtH/gU+rA0SM9OYpXE=;
        b=OxvySTWAJ6nyvr9RC/pUa9krj65zETCfhqmXyFLRs9N+DtH/3sRrqHsZ90wxJ6GZms
         AY83rsAmeUCpz4iGYr4pefm6m+OtvxBY66ucxVyMCXnYWgp7Www1ad66e7Ge1+5fVKDK
         bJhbfbAWwt1ZhvmSO8m2cNJZClp4yTJqSUDC8A0Xo+8GgLqCGmD5UU37h9h2alYe4ulE
         4hb7vQgDqZgmhUYLA66DbNNJGuSwKMyB/wKRJ21yVLXNB56rH3+vpXJSKjqy4ABVsuiN
         Bc2fftA6/gD36yef6oRkrrfYgCmmdZPfGCT3/dzl6QhBPz5SmbDEDUopRSudPBwZWUdG
         FutA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ge5T0mJvqHFrZKiy9RTtVGhkcvtH/gU+rA0SM9OYpXE=;
        b=oH15epmxH0in9/qPypLoSc+vAil1NtzTy05d8225NS29F8vCux2Dnx7OEgYREXBhko
         S63DIMR0CpLnaBBwNvD/4mgDnH8FZXGe9OZWjVvtHREIpmMJss5Ti5nv3gev08KeNEWH
         P6VIANts/HQEyZhx1UJo6LLCf/Tqa7XpayIilxD09pEZrvCk+3BVJaWb57Vg6VOEQ6OP
         B7n5mbHOVWIZ0iq+7g0o7+qx6E/izq1TRObiMit7se2xOLGDfZChDY4fmC1xuHbjUFOS
         7wYKlj1hBvoLKIJRwBtFRd8jOu7foDz7xQ2WRMcaLM25vJcXK5r0t8p5qSLKi9jx7tx5
         7p7w==
X-Gm-Message-State: AMke39miVCFgGLFHC1aC4AnNdxYpr/p4JNkIhziVg7dasrlYwuzPL+P2zKMTj3DDsSa3cA==
X-Received: by 10.99.176.68 with SMTP id z4mr14008940pgo.18.1489071824511;
        Thu, 09 Mar 2017 07:03:44 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([45.125.141.33])
        by smtp.gmail.com with ESMTPSA id x10sm13142495pff.72.2017.03.09.07.03.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 07:03:44 -0800 (PST)
Message-ID: <58c16ed0.0ac0620a.fbb6d.de95@mx.google.com>
X-Google-Original-Message-ID: <20170309150339.GA15138@<rvarsha016@gmail.com>>
Date: Thu, 9 Mar 2017 20:33:39 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: media: atomisp: Match alignment with open
 parenthesis.
References: <cover.1489069491.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489069491.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch matches alignment with open parenthesis and fixes the
checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c  | 2 +-
 drivers/staging/media/atomisp/i2c/mt9m114.c | 2 +-
 drivers/staging/media/atomisp/i2c/ov2722.c  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 0c3fa70..e07e2c8 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -705,7 +705,7 @@ static int distance(struct gc2235_resolution *res, u32 w, u32 h)
 	match   = abs(((w_ratio << 13) / h_ratio) - (8192));
 
 	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
-		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
+	    (match > LARGEST_ALLOWED_RATIO_MISMATCH))
 		return -1;
 
 	return w_ratio + h_ratio;
diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.c b/drivers/staging/media/atomisp/i2c/mt9m114.c
index 514b112..be2aca5 100644
--- a/drivers/staging/media/atomisp/i2c/mt9m114.c
+++ b/drivers/staging/media/atomisp/i2c/mt9m114.c
@@ -621,7 +621,7 @@ static int distance(struct mt9m114_res_struct const *res, u32 w, u32 h)
 	match   = abs(((w_ratio << 13) / h_ratio) - (8192));
 
 	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
-		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
+	    (match > LARGEST_ALLOWED_RATIO_MISMATCH))
 		return -1;
 
 	return w_ratio + h_ratio;
diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c b/drivers/staging/media/atomisp/i2c/ov2722.c
index f615898..0976236 100644
--- a/drivers/staging/media/atomisp/i2c/ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/ov2722.c
@@ -810,7 +810,7 @@ static int distance(struct ov2722_resolution *res, u32 w, u32 h)
 	match   = abs(((w_ratio << 13) / h_ratio) - (8192));
 
 	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
-		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
+	    (match > LARGEST_ALLOWED_RATIO_MISMATCH))
 		return -1;
 
 	return w_ratio + h_ratio;
-- 
2.9.3


