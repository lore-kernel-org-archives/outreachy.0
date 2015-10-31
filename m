X-GM-THRID: 6211302879745015808
X-Received: by 10.129.39.65 with SMTP id n62mr10579713ywn.13.1446298477950;
        Sat, 31 Oct 2015 06:34:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.234 with SMTP id g103ls870839ioj.55.gmail; Sat, 31 Oct
 2015 06:34:37 -0700 (PDT)
X-Received: by 10.107.134.102 with SMTP id i99mr12270553iod.34.1446298477576;
        Sat, 31 Oct 2015 06:34:37 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id iz5si1033129pbc.2.2015.10.31.06.34.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 06:34:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv9so105034690pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 06:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7Pz48Srq3x6Kis5F4RsxT5QKo4QwLeOGD/L4MQXj3zg=;
        b=jS//18q0xCAUblf+B4GKA5N+S8+EQoUcM9Uc9nZsf1Lgj0lzotvKVeJwIY843H4y2r
         OOatTPTVa/CMBCybSTwWd+OEzwt6kHSG0XquWrkJ9lW0AfmaZkg4nasuddwQIBEKiozv
         Uayvrv3gZSHC7OrEQ7HJU6cWcR+b7jdDGQlti4pIE/wO0eikebZL2c5pwiJCMDCfhfQx
         Wf8GrbPfHot9jwZSrEbFrjBdSUCYHLBfuwLOtaiDOu0zQLUgG2Wf6dqn9nd4vVUcdGhO
         7k7OPbY1J/16ZNg6DkVo/OFgGSA4ut9o2/TCH8pBXh0oFTsgv/RmF1w063BMgkKxlijH
         63nw==
X-Received: by 10.66.100.226 with SMTP id fb2mr15195109pab.72.1446298477463;
        Sat, 31 Oct 2015 06:34:37 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (108-60-106-94.static.wiline.com. [108.60.106.94])
        by smtp.gmail.com with ESMTPSA id yk5sm14065257pac.5.2015.10.31.06.34.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 31 Oct 2015 06:34:36 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 1/2] Staging: comedi: ni_mio_common: Fix endian sparse warning
Date: Sat, 31 Oct 2015 06:34:29 -0700
Message-Id: <bdca5869ceed616f88e28080d251e40fcb49b1df.1446297932.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1446297932.git.ksenija.stanojevic@gmail.com>
References: <cover.1446297932.git.ksenija.stanojevic@gmail.com>

Fix following sparse warnings:
warning: cast to restricted __le32
warning: cast to restricted __le16
warning: incorrect type in assignment (different base types)
expected unsigned short [unsigned] [assigned] val
got restricted __le16 [usertype] <noident>

Data is pointer of type void and can be used to store any type of data.
In function ni_ai_munge:
barray and array have the same 16 bit offset.
blarray and larray have the same 32 bit offset.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v2:
 - fix build warning caused by changes in v1.

 drivers/staging/comedi/drivers/ni_mio_common.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 6cc304a..cbb44fc 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -1516,13 +1516,17 @@ static void ni_ai_munge(struct comedi_device *dev, struct comedi_subdevice *s,
 	unsigned short *array = data;
 	unsigned int *larray = data;
 	unsigned int i;
+#ifdef PCIDMA
+	__le16 *barray = data;
+	__le32 *blarray = data;
+#endif
 
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
@@ -2574,6 +2578,9 @@ static void ni_ao_munge(struct comedi_device *dev, struct comedi_subdevice *s,
 	unsigned int nsamples = comedi_bytes_to_samples(s, num_bytes);
 	unsigned short *array = data;
 	unsigned int i;
+#ifdef PCIDMA
+	__le16 buf, *barray = data;
+#endif
 
 	for (i = 0; i < nsamples; i++) {
 		unsigned int range = CR_RANGE(cmd->chanlist[chan_index]);
@@ -2586,10 +2593,11 @@ static void ni_ao_munge(struct comedi_device *dev, struct comedi_subdevice *s,
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


