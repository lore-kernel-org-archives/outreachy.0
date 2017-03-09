X-GM-THRID: 6395514792016084992
X-Received: by 10.99.202.73 with SMTP id o9mr5391807pgi.154.1489074830457;
        Thu, 09 Mar 2017 07:53:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls3283815otb.38.gmail; Thu, 09 Mar
 2017 07:53:50 -0800 (PST)
X-Received: by 10.13.252.194 with SMTP id m185mr5297321ywf.145.1489074829977;
        Thu, 09 Mar 2017 07:53:49 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id c123si1261621pfa.4.2017.03.09.07.53.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 07:53:49 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 77so7200888pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 07:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DW1PrpIB2+WfF8K+ndYLYy5Ll5PxI8+gQ3GOJBKv+sY=;
        b=lHIa0Y/mm2C/8MncZYFMJa/upFTH/+iPFvVa7Rn7IBgd51EADPkwKCMSKfwey8hwY4
         eJZbgw/HNfLHaTZmLeo53tCdKjMVTXuq1pPU8uB+MI0sjKGKY/MGhgNtEa/p6ygcS0jn
         N7SJUn4MEL2Ezt5noTeW7yL4F9cULLEjvS4vGWr+El7WdTnivenLr4YHcF+Go/iOhTeE
         +RQxNgDdJD7m2pKF1FJth+zpE1Q/UW4r9uhvFflD6XF5/CGbIm+L3ICelxUSVwg2vC1a
         5KC+47Ng805NwXKX2ahT8DgvnPJrv72Xi8+6LZUDBwtWE5ANq+inlPp1dpou/aG0GmPD
         qmaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DW1PrpIB2+WfF8K+ndYLYy5Ll5PxI8+gQ3GOJBKv+sY=;
        b=OtoudZJr0Mq/eMEnFFtFjz3cMSrOQuPjfdFjJD4b7+YqD0rmrgnL6K5mKmgcgFCp5I
         e3UoryqWOgU2f4oi0+i8XXg1n1En9flkP3CN307uIHHr9X9toAE698fMrm5Qf9Xum0It
         2rRDHeEV+ejfD03NbhAr7ReQ5cMldbuptyAx+92nV+P70y9PyneKvdCf8qJY6Lr4cDg7
         z2CkV6riSymws0laQds+NPnuFj/EcQ3ksg/uhE+ZXVO06vu3SFxNW//HacOnB5ZIoUym
         C1NJx+IqGh0laqlENJm6ZNlgsZyCe5b/IOk3iAaibWF1tfIXWKifbOryBmDtuXANNGcw
         ZgPw==
X-Gm-Message-State: AMke39lmINf4PGMifViWNmW50fnJL8KOoOVkTlCka5Id8SzHPq4FRTi+CzG/XrMpQRI+HA==
X-Received: by 10.98.21.71 with SMTP id 68mr14874585pfv.16.1489074829647;
        Thu, 09 Mar 2017 07:53:49 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([45.125.141.33])
        by smtp.gmail.com with ESMTPSA id i3sm13352360pfk.47.2017.03.09.07.53.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 07:53:49 -0800 (PST)
Message-ID: <58c17a8d.83c8620a.ba256.e6ac@mx.google.com>
X-Google-Original-Message-ID: <20170309155346.GA16121@<rvarsha016@gmail.com>>
Date: Thu, 9 Mar 2017 21:23:46 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: media: atomisp: Match alignment with open
 parenthesis.
References: <cover.1489074107.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489074107.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch matches alignment with open parenthesis, removes extra space
before '||' operators and fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- Removed extra space before '||' operator.
- Modified commit message.

 drivers/staging/media/atomisp/i2c/gc2235.c  | 4 ++--
 drivers/staging/media/atomisp/i2c/mt9m114.c | 4 ++--
 drivers/staging/media/atomisp/i2c/ov2722.c  | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 38f6de1..4d15e20 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -704,8 +704,8 @@ static int distance(struct gc2235_resolution *res, u32 w, u32 h)
 		return -1;
 	match   = abs(((w_ratio << 13) / h_ratio) - 8192);
 
-	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
-		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
+	if ((w_ratio < 8192) || (h_ratio < 8192) ||
+	    (match > LARGEST_ALLOWED_RATIO_MISMATCH))
 		return -1;
 
 	return w_ratio + h_ratio;
diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.c b/drivers/staging/media/atomisp/i2c/mt9m114.c
index 9742293..1b79cdb 100644
--- a/drivers/staging/media/atomisp/i2c/mt9m114.c
+++ b/drivers/staging/media/atomisp/i2c/mt9m114.c
@@ -620,8 +620,8 @@ static int distance(struct mt9m114_res_struct const *res, u32 w, u32 h)
 		return -1;
 	match   = abs(((w_ratio << 13) / h_ratio) - 8192);
 
-	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
-		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
+	if ((w_ratio < 8192) || (h_ratio < 8192) ||
+	    (match > LARGEST_ALLOWED_RATIO_MISMATCH))
 		return -1;
 
 	return w_ratio + h_ratio;
diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c b/drivers/staging/media/atomisp/i2c/ov2722.c
index adf9766..b7afade 100644
--- a/drivers/staging/media/atomisp/i2c/ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/ov2722.c
@@ -809,8 +809,8 @@ static int distance(struct ov2722_resolution *res, u32 w, u32 h)
 		return -1;
 	match   = abs(((w_ratio << 13) / h_ratio) - 8192);
 
-	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
-		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
+	if ((w_ratio < 8192) || (h_ratio < 8192) ||
+	    (match > LARGEST_ALLOWED_RATIO_MISMATCH))
 		return -1;
 
 	return w_ratio + h_ratio;
-- 
2.9.3


