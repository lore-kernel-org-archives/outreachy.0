X-GM-THRID: 6336577206052978688
X-Received: by 10.13.249.6 with SMTP id j6mr3573847ywf.37.1475349412862;
        Sat, 01 Oct 2016 12:16:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.69.204 with SMTP id c73ls1431705itd.22.gmail; Sat, 01 Oct
 2016 12:16:52 -0700 (PDT)
X-Received: by 10.66.43.36 with SMTP id t4mr3743411pal.115.1475349412366;
        Sat, 01 Oct 2016 12:16:52 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 128si447383pfz.2.2016.10.01.12.16.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 12:16:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id cd13so4460051pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 12:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=o22q4fV1YnLdk5V2OTt/oKLctTE6QVGUCKHwqD+z1ow=;
        b=jJxN8TyRWhdJjbPtu4Maj3x3zHT7MFZ46x1MTWvR7KetKEt//QId59u6OR9oYxwFN0
         sYlgltB1qLS6w5YRUoDb0vnOtniSJRrsl4dYqiBVajPCmHBTumKPCQdd8aLQh/bt+PEn
         mdzj7CBLucJ6RfprcTxh1cFd+BjwJpvpiu6fwyMt27pmjiF7cmqXR7tYy1AOQF4gSR0P
         hN0jX/qvJJWTdE4WbIj50oOd0ClL+mQFpDg3Vrqi8L+zMn1fEkwyWNbUajAjP5I/JHeu
         JMfffbGjGdxYjQ9vnJ5vu2HiSR04gALKqdL4gGrHviRLIuCvzvaWlpPLkaUBdLOpvTn7
         DPrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=o22q4fV1YnLdk5V2OTt/oKLctTE6QVGUCKHwqD+z1ow=;
        b=b4PrbE2dNqdDilG8gFnrGHTZ1r/oh5HO+2CXgbFAyoU6Dgq09eKkPJlbh5m7T2nXtM
         q19920GcyWUbU9Ku/WF4JUvoG2CnCMknTWTsfD4+BTeMCD8dzcMoTsIxjGjWg/fQ4Xa8
         ssgcm7H8SW00PJHwujoAGbMD/rxXVOCM6L5+fyl0P360j6GUIfBXLq0a4MP9w1mYh3bh
         clfEc/2s0z5ht81WHN14Sen8m+PxKRHR6Rl53CTbodgXSLulAqJ7J3aLmmg1f7Oc8HFQ
         WeO+738ayKHHvv5f7FGPMDvrJ9FvHxng1QhsJ97B9OOFcqsDHSoKH9p+8dNXImkePj4t
         piWg==
X-Gm-Message-State: AA6/9RnsNd3d/EtOnUPsjuWLMWEJWZ81t34Hved6LgB/uRwfOnNCV93VjS16KwlaeklkKQ==
X-Received: by 10.66.237.133 with SMTP id vc5mr954308pac.24.1475349412200;
        Sat, 01 Oct 2016 12:16:52 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.189.15])
        by smtp.gmail.com with ESMTPSA id v6sm36614476pfv.8.2016.10.01.12.16.41
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 01 Oct 2016 12:16:51 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sun, 02 Oct 2016 00:46:37 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	joe@perches.com,
	apw@canonical.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 4/5] Staging: iio: addac: constify attribute_group structures
Date: Sun,  2 Oct 2016 00:45:14 +0530
Message-Id: <1475349315-6155-5-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1475349315-6155-1-git-send-email-bhumirks@gmail.com>
References: <1475349315-6155-1-git-send-email-bhumirks@gmail.com>

Check for attribute_group structures that are only stored in the
event_attrs filed of iio_info structure. As the event_attrs field
of iio_info structures is constant, so these attribute_group
structures can also be declared constant.
Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct attribute_group i@p = {...};

@ok1@
identifier r1.i;
position p;
struct iio_info x;
@@
x.event_attrs=&i@p;

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct attribute_group i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct attribute_group i;

File size before:
   text	   data	    bss	    dec	    hex	filename
  11013	   6096	      0	  17109	   42d5
drivers/staging/iio/addac/adt7316.o

File size after:
   text	   data	    bss	    dec	    hex	filename
  11141	   5968	      0	  17109	   42d5
drivers/staging/iio/addac/adt7316.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/addac/adt7316.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 3faffe5..a7d90c8 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -2039,7 +2039,7 @@ static struct attribute *adt7316_event_attributes[] = {
 	NULL,
 };
 
-static struct attribute_group adt7316_event_attribute_group = {
+static const struct attribute_group adt7316_event_attribute_group = {
 	.attrs = adt7316_event_attributes,
 	.name = "events",
 };
@@ -2060,7 +2060,7 @@ static struct attribute *adt7516_event_attributes[] = {
 	NULL,
 };
 
-static struct attribute_group adt7516_event_attribute_group = {
+static const struct attribute_group adt7516_event_attribute_group = {
 	.attrs = adt7516_event_attributes,
 	.name = "events",
 };
-- 
1.9.1


