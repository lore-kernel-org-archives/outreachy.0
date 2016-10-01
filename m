X-GM-THRID: 6336577206052978688
X-Received: by 10.36.227.205 with SMTP id d196mr2246976ith.14.1475349364739;
        Sat, 01 Oct 2016 12:16:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.14.207 with SMTP id 198ls1410641ite.7.canary; Sat, 01 Oct
 2016 12:16:03 -0700 (PDT)
X-Received: by 10.66.86.135 with SMTP id p7mr4008159paz.33.1475349363894;
        Sat, 01 Oct 2016 12:16:03 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si6011045par.0.2016.10.01.12.16.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 12:16:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so6514642pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 12:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ezz6Bb6VDcz8WzXt7vrnMeSVvJt5Z9j7Js2kBNTg4H8=;
        b=V7a4FWjPm6gJanI816juKfqWwvv/tp13pUxYHdE28KLmy2VHuj0ACGv2W7xJxFWiU3
         r2WDPVZLU8izvKW+IVZJB1JMTq/xHREL3SRfELQbky1cKaYLlyAHxD3vvgc/aAj3syz3
         smNHsYhQwUtqkUSQ/ONFInRdBZFlvt7sik2mTTAbySZsn9iIudbCMdYR7OdGZS794IEv
         lZ16IWwIg7jUDM6LfYGRD1Hf+E83/oApJ+oYGmJoEWWu3OkAk8PgnZ2QgL78eF6sstxt
         VoLEzuBrtDWwPLNEerCqIkd4JIXJ1VMiqna6b7Y1nqTb/70P3cpCDLc4y6LcWvkxCgk+
         OPVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ezz6Bb6VDcz8WzXt7vrnMeSVvJt5Z9j7Js2kBNTg4H8=;
        b=H3dn/Ap7Cs06xKOmNa73YduDsB0YEZ20JIguuSk7fccxHbLc2T/VX+ORfn2est+aff
         citArXgMVbQTg4yogZ7+kd0E2zJ/p/7e0X97KR2z+6Lkzki6cQ55x2E+D2iayDEHeed9
         p4bLQDu77ccC88H2IshOUjMQd/fw7XgN0SCp/rSW4lCPo99Hv+fph+YXQijK0eTZU+0u
         N4K2xyFdwoVcm7wuGhyCKnIZEgOVA751jTMIRofcKCDfynGR8rq/EHY4z1X62iQsb46q
         TF/9KMeGyLBAXY1qCRCGVzoR088rsvePRsFWaFtI79aCDv6cnNLjvKzYf8DL+9XP6XB5
         qA1w==
X-Gm-Message-State: AA6/9RnHf15nHSCXv5QqoBXMfVx65wQPye2lU5eR8kgq1VQK5TZwpEX6rHDno8vr/3MxfA==
X-Received: by 10.98.151.17 with SMTP id n17mr23212804pfe.73.1475349363727;
        Sat, 01 Oct 2016 12:16:03 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.189.15])
        by smtp.gmail.com with ESMTPSA id a137sm36582481pfa.72.2016.10.01.12.15.54
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 01 Oct 2016 12:16:02 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sun, 02 Oct 2016 00:45:47 +0530
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
Subject: [PATCH 1/5] Staging: iio: sca3000_core: constify attribute_group structures
Date: Sun,  2 Oct 2016 00:45:11 +0530
Message-Id: <1475349315-6155-2-git-send-email-bhumirks@gmail.com>
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
   7745	    864	      8	   8617	   21a9
drivers/staging/iio/accel/sca3000_core.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   7809	    800	      8	   8617	   21a9
drivers/staging/iio/accel/sca3000_core.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/accel/sca3000_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index d626125..774a8bf 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -1010,7 +1010,7 @@ static struct attribute *sca3000_event_attributes[] = {
 	NULL,
 };
 
-static struct attribute_group sca3000_event_attribute_group = {
+static const struct attribute_group sca3000_event_attribute_group = {
 	.attrs = sca3000_event_attributes,
 	.name = "events",
 };
-- 
1.9.1


