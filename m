X-GM-THRID: 6335774869684224000
X-Received: by 10.98.142.9 with SMTP id k9mr519488pfe.17.1475162540083;
        Thu, 29 Sep 2016 08:22:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.133 with SMTP id z5ls3559234ota.42.gmail; Thu, 29 Sep
 2016 08:22:19 -0700 (PDT)
X-Received: by 10.157.25.165 with SMTP id k34mr535709otk.136.1475162539659;
        Thu, 29 Sep 2016 08:22:19 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si3452076pab.2.2016.09.29.08.22.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 08:22:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so3730942pfy.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 08:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=J32JBqvL9KAuVEXMPYJ3Xkc328iGdAByze50Tl7iAgc=;
        b=P83ydlqwHlEwL978xeXdBAP8X6jzN1V2vPg7HPU7UQYwwD6kLGnDRYyM1ouxwC+354
         K5im5kAHQ2cmza3lsbje5C+7MRtBjaFRhzGRvCYXagTV5HP/OHXMHTM38i8LJ472D0WL
         m0sy71fJ6ubSlwn6ZVroTiA6hbGAxHhlMhxOM+bMXZi6rzbaMzRmzZS+ysvGgeG5CTdW
         wY8KqX7hpEb88vsuPWzYxyvf3DxNZG+PDIxnDPtCADGIOSgrDCCT6+WHFwmKWFsZFBUa
         y7Pj61nUU//E8JipEsMfM5nD78Tj9EOIfTmmG0Ewf05APXZsGMeITkNVxEtZNRe1I/sk
         /c3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=J32JBqvL9KAuVEXMPYJ3Xkc328iGdAByze50Tl7iAgc=;
        b=FN/ISsl2EUDScNNN50GuNyEdDgfLEA9eLuLLStmR0KL4VwPPnKps4d0dSXZvhoUqCU
         0haKTUPFsUCt7dhj6yPnDQd1393zSYRETfHpb/2YjbJ/BsqQwyPWoSgtQ0Jxr/54eFsF
         QZVMM+992wd36t8xcJYYAL73d2bhp2Zpuv3OQKZJAuyuZDC1iF8h390sMVDasyRV1wA5
         ZZy+0w9cmJ4EOweNc610/wwiyvy09XrPwIS2sza10OutZ2BkS5haxRVrJcbGKPJzb5kM
         zxs6M2oYs/L3UkDSKYj978jKFE/T/FfhnotjQtjHSi1l+2iA56Xg2MjFep/vTF0Axwhq
         DQzw==
X-Gm-Message-State: AA6/9RkPR8Q3obBBMlHN7iZrQ1KLkgwxVkhDforaeHmYS2xk5uLip1WH3OMKVBK+WC45CQ==
X-Received: by 10.98.56.148 with SMTP id f142mr3246106pfa.83.1475162538975;
        Thu, 29 Sep 2016 08:22:18 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.181.168])
        by smtp.gmail.com with ESMTPSA id c4sm21210278pab.5.2016.09.29.08.22.09
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 08:22:17 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Thu, 29 Sep 2016 20:52:04 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: speakup: constify attribute_group structures
Date: Thu, 29 Sep 2016 20:52:00 +0530
Message-Id: <1475162520-26744-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Check for attribute_group structures that are only passed as a second
argument to the functions sysfs_remove_group and sysfs_create_group. As
these arguments are constant so, attribute_group structures having this
property  can also be made constant.
Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct attribute_group i@p = {...};

@ok1@
identifier r1.i;
position p;
expression e1;
@@
(
sysfs_remove_group(e1,&i@p)
|
sysfs_create_group(e1,&i@p)
)

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
   7551	   1440	     16	   9007	   232f
drivers/staging/speakup/kobjects.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   7671	   1312	     16	   8999	   2327
drivers/staging/speakup/kobjects.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 4a78d37..e744aa9 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -976,11 +976,11 @@ static struct attribute *i18n_attrs[] = {
  * created for the attributes with the directory being the name of the
  * attribute group.
  */
-static struct attribute_group main_attr_group = {
+static const struct attribute_group main_attr_group = {
 	.attrs = main_attrs,
 };
 
-static struct attribute_group i18n_attr_group = {
+static const struct attribute_group i18n_attr_group = {
 	.attrs = i18n_attrs,
 	.name = "i18n",
 };
-- 
1.9.1


