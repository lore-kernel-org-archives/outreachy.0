X-GM-THRID: 6660888898978185216
X-Received: by 2002:a9d:5a09:: with SMTP id v9mr3055080oth.17.1550859049953;
        Fri, 22 Feb 2019 10:10:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:590f:: with SMTP id t15ls2856579oth.10.gmail; Fri, 22
 Feb 2019 10:10:49 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbXhbAObjz5KMOts9imQ05wKulj7CC8BCZsBqlM7VoreEqe5LcF7BQplrF/XZrwrrYwet94
X-Received: by 2002:a9d:5f17:: with SMTP id f23mr3091615oti.31.1550859049166;
        Fri, 22 Feb 2019 10:10:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550859049; cv=none;
        d=google.com; s=arc-20160816;
        b=UBBpSLZopN3R7zWzaPHNhAXvJBPy1o2oDAb4PP0b0cDoeRpMKaF/x46yJi9logZhP2
         xxASEHuDJM9mdwxJuqsoA9474U+oVycDxjPnzjOUOQ0TAAKiNDmcMX3DIH0/J2DjBaKQ
         vmuw9i0J/vJegBtDync7FbocDX4jS6UjNIrPQSNqLBLTH0lF3yUPGqbOLa/1uCijKWPg
         45U0ElfFnku4W2f/gXnN9RTsEyGegdclKobNPQlhENRaGPn9QngYvOjpl3q9OMGUhmjx
         s3VRjy6e0j2je3eK5x5YQxgIuGIBuyQ4fTd/2cHmkXlOgoMJPhCRuAcIWNukn/QvUxsz
         ucgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WSWPh1oLymg3IPeRP/XIYN0Pe+dXFhVGJKkyJBejSDA=;
        b=lqEqjV8Mm+88vA4YN4vqPHdcoVzQWnlAs9ih2In1Slw6IWphyGHbKKvJpxxE+Mehd6
         Kb1WZi21lkjeU9HJdVR6bpTwxV1FQOjetK60JEyro0NrDGaGUyKBkD8lJ6P5YK7S3lz8
         4TfErqiE2R5eG7ogNjUxahJwi9nwBD8QmRjkE4RlJlxCYGqdK+c3XmnWb5svc3NGGJif
         7SaVZb28vcZfEoN9IXSm6WyBV8TuPXYKkTl/7m5x63o12sAz0IPkefH0UsiB10DlcxlJ
         T5zwyrdnQ/foemsq52QXd3s+yAoISpdFH6uqwqwCuWg1qRS/hD2gXxFfEXbyhtbV8LuI
         8ccA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DtGPgFzo;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id l6si140718otn.5.2019.02.22.10.10.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 10:10:49 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DtGPgFzo;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id e5so1441255plb.5
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 10:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WSWPh1oLymg3IPeRP/XIYN0Pe+dXFhVGJKkyJBejSDA=;
        b=DtGPgFzo2EgFOgoEKKBuXMnx+Ky4hOfbMrbghm1r3OzH/2yyR7l+Uw9b69m6hIGtdx
         ENQcnexybWZKLzLoY560Md7bOGcNeAZDMvn8gGDfv5r1GBUv6/+7ydpHUGMn+yXAyKsH
         CAHRKCY1KxJVcHaJaVvTusBse4iAjA8DNR8ZVeph2qFSC/KGQt9lUix3Ka4HRevyzOgZ
         auEiEH3zVDV2n925ZADFZncmeB542/QxjrTkjEZl8oGwbcfgdTCreDszzyvVSGCydZNB
         9FlCuoUYouHuki9ZfS3Jzl/wPo8DdqIz53v16OiRTYg7/Hanx25BG5dttZ1p4IXLSRqW
         XJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WSWPh1oLymg3IPeRP/XIYN0Pe+dXFhVGJKkyJBejSDA=;
        b=N0H2fEuDgvTsfESohwMSOuAAy3EwfJ8Bwmrlkm0lnWhz1PB+HPoKS3RhO6G+b7lcMj
         QmnxYbYcY+fAr68K6tz8GjRs66nf81MFRHrtjqF7N8O7MbUfikty9FdgHyZnU9m0AIV7
         9djS8WoBPPwhhVFnvrK+kk8yHUQYwXU4JA0fga9XI+BzGcxqi2tfyBo0S/wYYwe9tvzX
         cZPyAZ8TSEi/PX804W73omx10Z8k4goxzNN3VZ30eRWAzTMMqaftYlFseBNhamMmk84B
         F1eJq2msKvhrivefW1vfDb0CwZPQnAnNbEoKW80atzy8+sLoHeyOBERqoCl0AIlLSpp/
         jliA==
X-Gm-Message-State: AHQUAuYpPk2hnXOLYE/eBmpi1BUYa5kvn6c1ESJYJKExTYSmkDAFx0H0
	FG+O/sXzRH2RqiYWDAOV6zVWWI9ePxA=
X-Received: by 2002:a17:902:8e82:: with SMTP id bg2mr5433146plb.217.1550859048122;
        Fri, 22 Feb 2019 10:10:48 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id t24sm2988968pfh.21.2019.02.22.10.10.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 10:10:47 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bhanusree Pola <bhanusreemahesh@gmail.com>
Subject: [PATCH] Staging: fbtft: Alignment Should match Open Paranthesis
Date: Fri, 22 Feb 2019 23:39:05 +0530
Message-Id: <20190222180905.10618-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Clears the warning found by checkpatch.pl from various files
WARNING:Alignment should match open paranthesis

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1351.c | 2 +-
 drivers/staging/fbtft/fb_tinylcd.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index a8980d9f7557..9ac78ce30619 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -164,7 +164,7 @@ static int set_gamma(struct fbtft_par *par, u32 *curves)
 static int blank(struct fbtft_par *par, bool on)
 {
 	fbtft_par_dbg(DEBUG_BLANK, par, "(%s=%s)\n",
-		__func__, on ? "true" : "false");
+		      __func__, on ? "true" : "false");
 	if (on)
 		write_reg(par, 0xAE);
 	else
diff --git a/drivers/staging/fbtft/fb_tinylcd.c b/drivers/staging/fbtft/fb_tinylcd.c
index e463b0ddf16d..60cda57bcb33 100644
--- a/drivers/staging/fbtft/fb_tinylcd.c
+++ b/drivers/staging/fbtft/fb_tinylcd.c
@@ -38,7 +38,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0xE5, 0x00);
 	write_reg(par, 0xF0, 0x36, 0xA5, 0x53);
 	write_reg(par, 0xE0, 0x00, 0x35, 0x33, 0x00, 0x00, 0x00,
-			     0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
+		  0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
 	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);
 	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 	udelay(250);
-- 
2.17.1


