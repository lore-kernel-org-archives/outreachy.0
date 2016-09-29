X-GM-THRID: 6335766380437045248
X-Received: by 10.200.43.103 with SMTP id 36mr468889qtv.74.1475160564169;
        Thu, 29 Sep 2016 07:49:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.6 with SMTP id w6ls3479357otb.39.gmail; Thu, 29 Sep
 2016 07:49:23 -0700 (PDT)
X-Received: by 10.157.43.169 with SMTP id u38mr485268ota.117.1475160563707;
        Thu, 29 Sep 2016 07:49:23 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id x73si683795pfd.1.2016.09.29.07.49.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 07:49:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id cd13so1713572pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 07:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7gSx80jkJyy+azw6r4NDKaxcMefuPOrF+08/BZAVQeY=;
        b=QL3aNhAjV1M0gfZro7imfDoK1mumDTVYcocty4Q+9JF7GcbcRlGtyRs9lNylYeABIy
         QMgDMZWPYQnvOcAzcQdMu4mMKPlbSRuccXzC6p6Ah+EUVqI/H0gx6IqnSahpr+55bMiS
         FphQsTzYWmJTQKrZLoKBm6dkfc1Vm7p561yQH4Vhwl6AWrQm71F53kiS2xbo+2Dad9+6
         u+U9udxJQUaSgGr58IlKnaOaWYoLkYHpx46QwtoxUlPYZxNtpYCz0Ewv1ZBUiVjkzjjd
         2ydC5EElUMV95HrPXAAymMPpKWH5uv9AieN4b9DjSTc+OWQV2EsHWV51ySSxEwECoZKM
         vayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7gSx80jkJyy+azw6r4NDKaxcMefuPOrF+08/BZAVQeY=;
        b=H0ZOZ9mQyzXUsYxyMat6PiFrGBxzsQVgrMcjiBqUoIb4BxyUykLWttqNhEN0c86T+m
         3zgOQ484USLoj16Ct9g6RXdXv04IdWe461Kik4OJsHBeYFwqYqjCbOOqI7wSOS20hKNz
         SYdmwZSiHG7r3MV8uA18VkX6469pJRQfg59oqf2JKQpusDXwuT/D1avp9TJ3AQrY58b9
         uQmxyq5EPXsv63XWcE5UPi0LcUGwK+XJPrpTafUUgv149HUsFb9ylX9pvN/515BB6St/
         CzVsYwUOjBOXI1F1wW/BPzgT7eHU4Le2bBl+se8HNKzEDgHUF4wdXvflWwBJgEr6IUFm
         hUng==
X-Gm-Message-State: AA6/9RmW+xPLkh6IwpzulX5h0SLUjhRwPTwasF+s+EHAS6fl0/Kk0ZyZh+83lCUhEs1yxg==
X-Received: by 10.66.134.16 with SMTP id pg16mr3047474pab.166.1475160563104;
        Thu, 29 Sep 2016 07:49:23 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.181.168])
        by smtp.gmail.com with ESMTPSA id h82sm20981427pfh.22.2016.09.29.07.49.13
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 07:49:21 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Thu, 29 Sep 2016 20:18:55 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	markh@compro.net,
	gregkh@linuxfoundation.org,
	lidza.louina@gmail.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: dgnc: constify attribute_group structures
Date: Thu, 29 Sep 2016 20:18:54 +0530
Message-Id: <1475160534-23482-1-git-send-email-bhumirks@gmail.com>
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
   6248	   1024	      0	   7272	   1c68
drivers/staging/dgnc/dgnc_sysfs.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   6288	    960	      0	   7248	   1c50
drivers/staging/dgnc/dgnc_sysfs.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/dgnc/dgnc_sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
index a83e0e4..290bf6e 100644
--- a/drivers/staging/dgnc/dgnc_sysfs.c
+++ b/drivers/staging/dgnc/dgnc_sysfs.c
@@ -677,7 +677,7 @@ static struct attribute *dgnc_sysfs_tty_entries[] = {
 	NULL
 };
 
-static struct attribute_group dgnc_tty_attribute_group = {
+static const struct attribute_group dgnc_tty_attribute_group = {
 	.name = NULL,
 	.attrs = dgnc_sysfs_tty_entries,
 };
-- 
1.9.1


