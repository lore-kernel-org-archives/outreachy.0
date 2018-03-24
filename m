X-GM-THRID: 6536501456103538688
X-Received: by 10.99.178.76 with SMTP id t12mr1167272pgo.63.1521897844789;
        Sat, 24 Mar 2018 06:24:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.53.135 with SMTP id c129ls2305419pga.7.gmail; Sat, 24 Mar
 2018 06:24:03 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt6NZJ/C007SP20Wh+F3gwyFcr8AjiRLq5rq/6A1IlFgHK8xQ9adFgi5DIZcjdjI6ZXvNBj
X-Received: by 10.98.34.69 with SMTP id i66mr4213893pfi.54.1521897843937;
        Sat, 24 Mar 2018 06:24:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521897843; cv=none;
        d=google.com; s=arc-20160816;
        b=jgsI06KlXQDLhILfiKFTgejKMxVTz11AhNp/pJ3jn16Napo2CbczNKDuy2GDS9QPn/
         oRjF990xt6S3dm7IMyaCGM+X5kGbJCbXcs08EbyJx3+9/bpWFRRIWvagcX50we367CCv
         putBKCWUWGInk0jjXcy0X8JiRR8kdJI6PU9Ke40z38B/PIKQqSsoDK8l2bVYs20z3Hkz
         CBHavBp7vnxsZnNOPJ3qawIkahBwyYkdPil5frJ+piW03ULq/MLxU3oCK2yG/vd/hJDa
         M3H6KiVls4u2pxlDe4XgM8xF2klLZzxZqfY1ksAnKyHsBPwOALZuht1fLEszDAWr5+AS
         HnZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=LPar2Fh0MdkQbdkp8kDVQjYh1ZWFuSuP8Wbh70V4Qv0=;
        b=qK1SZ2Id76i+8q5QdVvo43UM+qbEQ3uOFe35YPWRjK+agPkL5eSOCA43LOtRlN1v4T
         nii2u0kTXYknDfK2y16/FUiSw11/4/jDK+ICYc4C0M4BY77zBMUU5CGTVI1KPL487bIE
         e4UhzdHp2344uLJVX3gyA1NVmL9ZZ5JOlk7g2C5sa6z/KihXtu/IGJ8OyM/TKYbAgNO8
         jfRq2wo3Blyzv18Q+kJSQWcjNjs5UwUXFvyJCHOIiQ87CN/ZYlBWvQOvRiyG7wJTvkNT
         D58Dy2Qq1YOToTSQD7NuNE10TL6LXglnBVeSYEH53Sp6dFuaE2hVdnplX0vtv0QpNPDW
         /DyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=X3QWd1Yb;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id x6si470915pfx.5.2018.03.24.06.24.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 06:24:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=X3QWd1Yb;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x241.google.com with SMTP id k22-v6so9114139pls.6
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 06:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LPar2Fh0MdkQbdkp8kDVQjYh1ZWFuSuP8Wbh70V4Qv0=;
        b=X3QWd1Yba2SXxf4F0TJGmGfkt9snjof9+FGaSFb+u74FOSPvq5aindgrxycwoIf5OA
         Wx/0OZiKM/oIDnV6n4QgLITa2bFPpn+G6KD8N6u41AmBCTXVkVIuDANyKOyI5RnsyiFC
         Ov9jLWE++VPCvR/B2m0goSL1sG1PaxHdwm7oA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LPar2Fh0MdkQbdkp8kDVQjYh1ZWFuSuP8Wbh70V4Qv0=;
        b=ndxTELlI9ekhp374OvTmBQ0fIX7ewYbaTL9T0o03RuRUsgjHmjhfW+KhWn52jSsC7n
         fQPzX4sNnV5ydhRkP6lUtY58N2D3zXjLnoDWW6olTWLzkApqQhYB8A4xERzTsqWLQ3Jv
         +tPtAQzjwXMOkVmDD9rEjgL3EmaoT6JD8wMhsekHl4ANsIwygMdUCHmCqCQo9tTTvmQW
         rGtgKZwk9KWq0Hb0UHy/FAcB37z4BiXoX+gcDd3nEVqtGdHgGCQVJqJeojDLkBxqU7U8
         VbCID6Pisq3+jE5/I5aw4FCRJ6Vs9RoyCCfu8snWiK7srk4q1BKB+YGKKAI3mq4nMGLa
         St5g==
X-Gm-Message-State: AElRT7F23rIma6by7i19EPqrAaDIQViFJuA7DfcOsYhVguropuZgrA5x
	py65SsssgiJUmO41Bj8XUJgE+g==
X-Received: by 2002:a17:902:566:: with SMTP id 93-v6mr32398585plf.327.1521897843680;
        Sat, 24 Mar 2018 06:24:03 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id k78sm22474303pfk.111.2018.03.24.06.24.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 06:24:03 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2 3/5] staging: media: Replace explicit use of function name
Date: Sat, 24 Mar 2018 13:23:44 +0000
Message-Id: <1521897826-28871-3-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521897826-28871-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521897826-28871-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Replace explicit use of function name in string with %s..., __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Make subject clearer.

 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 65d7242..61fb542 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -743,7 +743,7 @@ static int ipipe_get_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	lut_param->en = lut->en;
 	if (!lut_param->table) {
-		dev_err(dev, "ipipe_get_3d_lut_params: Invalid table ptr\n");
+		dev_err(dev, "%s: Invalid table ptr\n", __func__);
 		return -EINVAL;
 	}
 
-- 
2.7.4


