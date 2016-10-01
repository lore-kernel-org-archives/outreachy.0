X-GM-THRID: 6336577206052978688
X-Received: by 10.157.24.20 with SMTP id b20mr3699493ote.146.1475349380389;
        Sat, 01 Oct 2016 12:16:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.165 with SMTP id 34ls8017643ots.13.gmail; Sat, 01 Oct
 2016 12:16:20 -0700 (PDT)
X-Received: by 10.129.119.70 with SMTP id s67mr3579344ywc.102.1475349379985;
        Sat, 01 Oct 2016 12:16:19 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si6011045par.0.2016.10.01.12.16.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 12:16:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so6514642pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 12:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=nU7HoHbCmOETDLuZPch1fGMBBXXogktE59evd7sBrjo=;
        b=SBGgzYmqDkljRA9cHsR5kgrd/qvOlVopKSYT8f1z2P2c81CEV+rFdgXr5uFDiVMdnf
         +4AMtwdATRdxAdHnQwU/jQGdU6KJihm34cueDspfp88NjDYsrm7Cw9zUrJ3AkC01PQgk
         mV86R7GQJFBtLETDRVVpiksZ2TclYmucQWCjZiKsf/9JC0qmTc7GO+jFNaLPlwt5ow87
         nmbu7fbfTO1STXaWVC77FUj70Pp6qDSNXTYSHKPiUCquzTLylkR5O0eadMa757gbfmMt
         qlYl5BLHG/JFNBdd77qwLIn8n4lbuukRWnIawTgQMn3Shw9jVsuYCJV4+RsXj0FX7xwv
         Cweg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=nU7HoHbCmOETDLuZPch1fGMBBXXogktE59evd7sBrjo=;
        b=g3rnQpGcMCdFrSmR1HlOtSEaQ/T5tK+UChVnG4P/Ywx6T4UjIf7njHFOf6VjX0AHUq
         g8oQhEPzOMSOrupKNoNSLuJehWwTysIpyGiBaJxatrjbIW7Ne+VX0PInCe6ea7iX05QY
         SmmRr2t9QsSM7mWzkKohuW8nmIUs/EaUJZ3AA0MS7240PKCdYaF0YmCi9+1LYuZE41Xw
         OtwqUhqOjpTJiue2nKKjMXMQgkOxvtedmRd2MO701vcpRTcTcKbeGD8Q40uW96OQYz0S
         G/SWlZgcdSBUge5HTgMPHrKM2lsvfgLRQUAByR16wahZWDtiifEZxuXpTKSeFQkXb4xo
         2vxA==
X-Gm-Message-State: AA6/9Rl1HVCmbUmoz12gCGe5DPKIoCSIB1dmX3aamQe/bhDDZuYlhHmrM3oa7Eit1AmI0g==
X-Received: by 10.98.91.197 with SMTP id p188mr23414283pfb.101.1475349379795;
        Sat, 01 Oct 2016 12:16:19 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.189.15])
        by smtp.gmail.com with ESMTPSA id h123sm36578463pfe.87.2016.10.01.12.16.09
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 01 Oct 2016 12:16:18 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sun, 02 Oct 2016 00:46:04 +0530
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
Subject: [PATCH 2/5] Staging: iio: ad7280a: constify attribute_group structures
Date: Sun,  2 Oct 2016 00:45:12 +0530
Message-Id: <1475349315-6155-3-git-send-email-bhumirks@gmail.com>
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
   6271	    672	    776	   7719	   1e27
drivers/staging/iio/adc/ad7280a.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   6335	    608	    776	   7719	   1e27
drivers/staging/iio/adc/ad7280a.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/adc/ad7280a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 977241e..ec54f6e 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -777,7 +777,7 @@ static struct attribute *ad7280_event_attributes[] = {
 	NULL,
 };
 
-static struct attribute_group ad7280_event_attrs_group = {
+static const struct attribute_group ad7280_event_attrs_group = {
 	.attrs = ad7280_event_attributes,
 };
 
-- 
1.9.1


