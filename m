X-GM-THRID: 6258587617477001216
X-Received: by 10.13.226.84 with SMTP id l81mr9713633ywe.16.1457190983587;
        Sat, 05 Mar 2016 07:16:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.11 with SMTP id j11ls518477ioe.60.gmail; Sat, 05 Mar
 2016 07:16:23 -0800 (PST)
X-Received: by 10.66.220.67 with SMTP id pu3mr9965881pac.19.1457190982972;
        Sat, 05 Mar 2016 07:16:22 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id ff2si2151758pad.2.2016.03.05.07.16.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 07:16:22 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id x188so29098467pfb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 07:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZbHbZf6hFzhpAkzKAuEYyKfdMJyMmkT+BELzE73c+Ds=;
        b=p9VoRw5gOITEWfwtaaXXbdQKkmnRV+vwnHW8Ba5Ux6hBahibyOmb6meuxjs/1P1MeA
         6vw8+4mLN2E1uFa+y00bH3UIw+/MH31xF72fP8aWae8Zcs25+GN51dlZMXRrLPm+kD+V
         by6fxZd5/TmdbRpBHQzEoyOPfvO1LKbau1+lELe1abuZfVoicjo1UtV78BUKlYL+uJHT
         D472q+dLfLGxcexiyPaycnva6neyzXA5vVwXWsP8DBKe0ltosEZazQImB0L7uBBGt/+G
         e8LlTkx/XxejtPmjBvvuoUFQvQwj+d8tPM78+WIkyF/BopszelVvFjMllEm/ZedXpDQF
         sw6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ZbHbZf6hFzhpAkzKAuEYyKfdMJyMmkT+BELzE73c+Ds=;
        b=ICd81Ba1OPD5A0qSMkjhoYF5cDGjnU0RqSI0UfRjgAd4NdJfanNpopATpFwY60fvkU
         NHhqp7eovFtYNJMOR3PxOpEf5a2mYXbUTDR8OmJR7iDiUIX0q5jtVhMXHIlHlZKF0vYv
         9UKaCUfNXecAAq10FaAKvMnXZbe1EkTVY4RhSyx133XohXQn4r9KJt67V6DFkI2YZ9vV
         CY4ep1ij5XoyxwlWfzvdp3RLGlCDpyDcfGZtXE6utXXPRGGjQvGGJVd4Jgyrju/tKwav
         myQKXKoN9E9N+nbliPrMvjGEusBcz4hx64WH070AW+VpcPBETOfWRxrdba99d3b+I6dv
         NXjw==
X-Gm-Message-State: AD7BkJKhMgUQFIFP32d984sDmi4c2X5AhDsIKLd6Mnv7sQpISl/pXtjCRfb/Ixmdr/5HCg==
X-Received: by 10.98.12.8 with SMTP id u8mr20535775pfi.36.1457190982837;
        Sat, 05 Mar 2016 07:16:22 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.160])
        by smtp.gmail.com with ESMTPSA id 9sm13114665pft.44.2016.03.05.07.16.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 07:16:22 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: unisys: visorinput: convert pr_err() to dev_err()
Date: Sat,  5 Mar 2016 23:16:17 +0800
Message-Id: <1457190977-8149-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace pr_err() calls with respective dev_err() counterpart.
Semantic patch used to detect and apply the transformation:

@r exists@
identifier f,s,i;
position p;
@@

f(...,struct s *i,...) {
  <+...
  pr_err@p(...)
  ...+>
}

@s@
identifier r.s, dev;
@@

struct s {
	...
	struct device dev;
	...
};

@t@
identifier r.i, s.dev;
expression fmt;
position r.p;
@@

- pr_err@p(
+ dev_err(&i->dev,
			fmt, ...);

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/unisys/visorinput/visorinput.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/unisys/visorinput/visorinput.c b/drivers/staging/unisys/visorinput/visorinput.c
index 38d4d5b..13c0316 100644
--- a/drivers/staging/unisys/visorinput/visorinput.c
+++ b/drivers/staging/unisys/visorinput/visorinput.c
@@ -222,8 +222,9 @@ static int visorinput_open(struct input_dev *visorinput_dev)
 	struct visorinput_devdata *devdata = input_get_drvdata(visorinput_dev);
 
 	if (!devdata) {
-		pr_err("%s input_get_drvdata(%p) returned NULL\n",
-		       __func__, visorinput_dev);
+		dev_err(&visorinput_dev->dev,
+			"%s input_get_drvdata(%p) returned NULL\n",
+			__func__, visorinput_dev);
 		return -EINVAL;
 	}
 	dev_dbg(&visorinput_dev->dev, "%s opened\n", __func__);
@@ -236,8 +237,9 @@ static void visorinput_close(struct input_dev *visorinput_dev)
 	struct visorinput_devdata *devdata = input_get_drvdata(visorinput_dev);
 
 	if (!devdata) {
-		pr_err("%s input_get_drvdata(%p) returned NULL\n",
-		       __func__, visorinput_dev);
+		dev_err(&visorinput_dev->dev,
+			"%s input_get_drvdata(%p) returned NULL\n",
+			__func__, visorinput_dev);
 		return;
 	}
 	dev_dbg(&visorinput_dev->dev, "%s closed\n", __func__);
-- 
1.9.1


