X-GM-THRID: 6211302879745015808
X-Received: by 10.107.160.8 with SMTP id j8mr5922187ioe.4.1446182574039;
        Thu, 29 Oct 2015 22:22:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.25.166 with SMTP id d6ls68396igg.43.canary; Thu, 29 Oct
 2015 22:22:53 -0700 (PDT)
X-Received: by 10.68.245.234 with SMTP id xr10mr4663830pbc.7.1446182573601;
        Thu, 29 Oct 2015 22:22:53 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id vy6si566249pbc.1.2015.10.29.22.22.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 22:22:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhk11 with SMTP id hk11so62938756pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 22:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-type:content-transfer-encoding;
        bh=aH9cyxORzHUyM/MVFRMDObLhqeWxO200RY9QSfG8Tso=;
        b=GO9BT2iteyB1w7m/uyxdzxgGGfWPEhVLJ4+ggnCpgshXtKNFvLqdqRoZqe/Poif3/N
         ObvlIJq/tUsI8VzOegbONEUIJmZV5KfZj6G9BMz+gH6arNWGNv5G/E7B6rcw83n9dl4b
         42nEq70cdNOPy0h6HpRU5iRCztjFNjSmdQFkrIwg5GjkfhJoAnoYTbyRT5HP97s2DhEt
         CtX/KbG5yD6TEzKqSl7i/B+9jyHRHHEJ7ff0I3c79luRdVDuJYKOc9mo/w6wDZ3GByRm
         PWmCzYKF/ceDyKLNU77v0l2TaTyj/1PhpFEMTz912j3QCZx6bqNReBzhcVosYGzrylCn
         s2SA==
X-Received: by 10.66.55.42 with SMTP id o10mr6399671pap.124.1446182573457;
        Thu, 29 Oct 2015 22:22:53 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id tj2sm5562117pab.4.2015.10.29.22.22.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 22:22:52 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/2] Staging: comedi: ni_mio_common: Fix endian sparse warning
Date: Thu, 29 Oct 2015 22:22:45 -0700
Message-Id: <59f1545cfe6cadeeb4e23ea099df3dab1ff9e6a3.1446181130.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1446181130.git.ksenija.stanojevic@gmail.com>
References: <cover.1446181130.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Data is pointer of type void and can be used to store any type of data.
In function ni_ai_munge:
barray and array have the same 16 bit offset.
blarray and larray have the same 32 bit offset.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Note:
This function even before my changes had a lot of build warnings.
I think it's because some config options are not enabled, but I 
might be wrong.
Also I think I introduced new warnings because PCIDMA is not set:
drivers/staging/comedi/drivers/ni_mio_common.c:1520:10: warning: unused variable ‘blarray’ [-Wunused-variable]
  __le32 *blarray = data;
          ^
drivers/staging/comedi/drivers/ni_mio_common.c:1519:10: warning: unused variable ‘barray’ [-Wunused-variable]
  __le16 *barray = data;

 drivers/staging/comedi/drivers/ni_mio_common.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 6cc304a..0c034f2 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -1516,13 +1516,15 @@ static void ni_ai_munge(struct comedi_device *dev, struct comedi_subdevice *s,
 	unsigned short *array = data;
 	unsigned int *larray = data;
 	unsigned int i;
+	__le16 *barray = data;
+	__le32 *blarray = data;
 
 	for (i = 0; i < nsamples; i++) {
 #ifdef PCIDMA
 		if (s->subdev_flags & SDF_LSAMPL)
-			larray[i] = le32_to_cpu(larray[i]);
+			larray[i] = le32_to_cpu(blarray[i]);
 		else
-			array[i] = le16_to_cpu(array[i]);
+			array[i] = le16_to_cpu(barray[i]);
 #endif
 		if (s->subdev_flags & SDF_LSAMPL)
 			larray[i] += devpriv->ai_offset[chan_index];
@@ -2574,6 +2576,7 @@ static void ni_ao_munge(struct comedi_device *dev, struct comedi_subdevice *s,
 	unsigned int nsamples = comedi_bytes_to_samples(s, num_bytes);
 	unsigned short *array = data;
 	unsigned int i;
+	__le16 buf, *barray = data;
 
 	for (i = 0; i < nsamples; i++) {
 		unsigned int range = CR_RANGE(cmd->chanlist[chan_index]);
@@ -2586,10 +2589,11 @@ static void ni_ao_munge(struct comedi_device *dev, struct comedi_subdevice *s,
 		if (comedi_range_is_bipolar(s, range))
 			val = comedi_offset_munge(s, val);
 #ifdef PCIDMA
-		val = cpu_to_le16(val);
-#endif
+		buf = cpu_to_le16(val);
+		barray[i] = buf;
+#else
 		array[i] = val;
-
+#endif
 		chan_index++;
 		chan_index %= cmd->chanlist_len;
 	}
-- 
1.9.1


