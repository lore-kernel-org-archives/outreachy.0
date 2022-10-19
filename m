Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FAE17E
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 08:05:26 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id t10-20020a17090a4e4a00b0020af4bcae10so16286290pjl.3
        for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 01:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C9QGWNDhP5ZPrngUIybZG2Mptl6+RhC40eM72ycmeDI=;
        b=FN8tYj3bOuEZZJcXCtACT9iwnnlNVfNUrZevur4Ejr3LFDKAC07y7kyeX7F1Pew/BV
         o2mzHwUfpgVRpuk5oVWTjysw2vqEu9lG1lvcoCqEOgS37+4dlqPhINY731Q//VmXSXLK
         rjjUW9xXFf7+4PFop9tyrXbOcaEoX34NG79D4oaX1hNvjI9WXWolmq5+s1f0U1daVUAq
         8lGGkI0jLrKiVNT6WhoU6i2gqzESTS2q795R1QjZguzUYTNvEKuUZH/xlFMnT2y5/3nw
         5AxqHAG4v09nNWuDT+XyKMflRmTJAtfGo5Ti/fJbLxDIZWiPYn1me++jAAU8EIhy1Np+
         y7dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C9QGWNDhP5ZPrngUIybZG2Mptl6+RhC40eM72ycmeDI=;
        b=I46Mp/yxLIIyI+Xy3cV9JSKnvw8mrs7tyww0LfOm1x8aYjkCm1tWgrd0KgeWNDYqnp
         MgQ6xyL9TlANS2poF/csXJp0Pqt9Dd2Hotw5ed/GMwb71Y5rBpG3dJkkWmYAQRncMwew
         ndwQS9ileZINFy/brlCpIJAyyOOkYDbh8sEvfd/VJgdtA+Iel7RftGGnYeYmLhC2W/E/
         idTTuQGy6Ecc/AaeNJr+JZ2v+IKb/6n9HkmlBAeCI8zPWTeDfHzKd+1IIN7Muy1nyCwK
         03k9FnLOZ5pkGxbRABNyOPunNI5QDHPPK/HsXv0BVJB+BsMGyY+IQjwJF7ai2bErO26Q
         HipA==
X-Gm-Message-State: ACrzQf1HNbRS/doH5Y1IkuD8lnPAob/rA9w4IM6KMYyBcwiKS666Pvw7
	ixK7Z5rzCwYrWcgRbPo+tlrpUk8JSnJejg==
X-Google-Smtp-Source: AMsMyM5+4RdKCok3zVISIa8piaeKkwIzYQ6LEKM2UPRA+x1iJWoY50P/kVNCKL+DMT/vSugEGd4jfQ==
X-Received: by 2002:a17:90a:f3ca:b0:20a:d4ee:3859 with SMTP id ha10-20020a17090af3ca00b0020ad4ee3859mr8469955pjb.70.1666166725942;
        Wed, 19 Oct 2022 01:05:25 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id q9-20020a638c49000000b0041cd5ddde6fsm9685814pgn.76.2022.10.19.01.05.25
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 01:05:25 -0700 (PDT)
Date: Wed, 19 Oct 2022 01:05:23 -0700
From: Emily Peri <eperi1024@gmail.com>
To: outreachy@lists.linux.dev
Subject: [PATCH] staging: rts5208: Move open parenthesis to next line
Message-ID: <Y0+vw2SZ74AoUPIV@marshmallow>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Changed breakpoint for long line in sd.c to comply with checkpatch
style warning that lines should not end with '('.

Signed-off-by: Emily Peri <eperi1024@gmail.com>
---
 drivers/staging/rts5208/sd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index d1fafd530c80..99e951be2802 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -4501,8 +4501,8 @@ int sd_execute_write_data(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 			sd_card->sd_lock_notify = 1;
 			if (sd_lock_state &&
 			    (sd_card->sd_lock_status & SD_LOCK_1BIT_MODE)) {
-				sd_card->sd_lock_status |= (
-					SD_UNLOCK_POW_ON | SD_SDR_RST);
+				sd_card->sd_lock_status |=
+					(SD_UNLOCK_POW_ON | SD_SDR_RST);
 				if (CHK_SD(sd_card)) {
 					retval = reset_sd(chip);
 					if (retval != STATUS_SUCCESS) {
-- 
2.34.1

