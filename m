X-GM-THRID: 6336577206052978688
X-Received: by 10.200.53.133 with SMTP id k5mr3629281qtb.34.1475349397285;
        Sat, 01 Oct 2016 12:16:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.151 with SMTP id q23ls6915863otd.18.gmail; Sat, 01 Oct
 2016 12:16:36 -0700 (PDT)
X-Received: by 10.157.40.120 with SMTP id h53mr3684629otd.44.1475349396891;
        Sat, 01 Oct 2016 12:16:36 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id um12si6139790pab.2.2016.10.01.12.16.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 12:16:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so6289625pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 12:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=K2n8+LwpvwH5lvUaN0EN1HZc0KSY2qvCeZvTvWfufhQ=;
        b=xU3bo+9TU2/zmKIAzLFJsOAfXbzQp/km9J8rO8awVHgsDg/qijTzWmzqM758tdBsJC
         gL2gahGyQiD1Gt9fnrGDZgnlKe4gIAtGPqtTiRNOafUgtkVC+z1DG5sAtxjwKZ7ffzov
         BP1JPdv8DDYGUwfACioFmtKNcXsEVcYMlX7CyRQCkCWeujmYds+oa8wBIynHOmnDxTkt
         gJG8jwSzG/WPHikzkG3Rej3j3z1OCEDbJrFcW+8iAQHmb+HfFhspDXs/DmcHed9HLR6I
         rCNjZ/OK/kAWXAzgqNCsOgYQhQBSt9oIMGq8sAUcEY/zQq1zI9eUTidtxwUjkh78zajR
         wSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=K2n8+LwpvwH5lvUaN0EN1HZc0KSY2qvCeZvTvWfufhQ=;
        b=Czmp1yOdppw0ub1072pkZ3s6elpdu0UK5NjrpEI7/reiL5n44XS4qMv4igsvycCc8T
         hGzcG8Zd9xv2I/XZk3mk26mg3C3aA4saGOEx4/PP68vGUYKAcC9HLkrI1Ol1KscpPNZN
         ObKt3oAWXckIqb3/2afSFmH7DdOSjVcDpCf39vBp9mN/s6nkjJMYLje0kCSX+IkmSFok
         lSNCRhrpnmYceNLLnYqUVbkSQ0mNVhScwHzJbC956lP/173v3N/BUfftU6VyZyP1UsQz
         I6JmP47+UDiiF2/fcJUnVelgbW1fhzm5jJBXDjnE5C4GwPUa15fkkqqJi40QEbbYjF1M
         EmYg==
X-Gm-Message-State: AA6/9Rmj8n5kIi+N4arxyiCYHrUGIdLMi7yBUTmhZBS1zs3BrLUniQ0kD/o37WqNgz6Zjg==
X-Received: by 10.66.89.72 with SMTP id bm8mr23120235pab.1.1475349396693;
        Sat, 01 Oct 2016 12:16:36 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.189.15])
        by smtp.gmail.com with ESMTPSA id xv9sm36642256pab.36.2016.10.01.12.16.25
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 01 Oct 2016 12:16:35 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sun, 02 Oct 2016 00:46:20 +0530
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
Subject: [PATCH 3/5] Staging: iio: ad7816: constify attribute_group structures
Date: Sun,  2 Oct 2016 00:45:13 +0530
Message-Id: <1475349315-6155-4-git-send-email-bhumirks@gmail.com>
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
   3295	    768	      0	   4063	    fdf	drivers/staging/iio/adc/ad7816.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   3359	    736	      0	   4095	    fff	drivers/staging/iio/adc/ad7816.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/adc/ad7816.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index d5f0620..4f10225 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -327,7 +327,7 @@ static struct attribute *ad7816_event_attributes[] = {
 	NULL,
 };
 
-static struct attribute_group ad7816_event_attribute_group = {
+static const struct attribute_group ad7816_event_attribute_group = {
 	.attrs = ad7816_event_attributes,
 	.name = "events",
 };
-- 
1.9.1


