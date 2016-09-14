X-GM-THRID: 6330205612337528832
X-Received: by 10.129.105.6 with SMTP id e6mr2245385ywc.8.1473865847660;
        Wed, 14 Sep 2016 08:10:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls1415420otc.1.gmail; Wed, 14 Sep
 2016 08:10:47 -0700 (PDT)
X-Received: by 10.13.214.83 with SMTP id y80mr2306532ywd.33.1473865847256;
        Wed, 14 Sep 2016 08:10:47 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si1248560pab.2.2016.09.14.08.10.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 08:10:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g202so920049pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 08:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=598cFPZdU4nkYm5Aclc70sYa1DwWV4YIw0MbumV58DE=;
        b=Y0PV9cu25GcY34nraPfX48wt9Qi5lBIsXzr9amKHAxpvIxw5c4HgNmgxwXxtN41DWb
         nkQayK4Zq4Wk267d4EZyH7Lf15bbMqIzAC/2hdiPeaKAcnvJSiuZWyd56BujaV3EvySX
         kTNSEnCSoeJ2Ob7Kua9a659dp3IBB84dwJxZbuqiGaLp+7pN8XItjJkp+q8Qs7JNK3uY
         qrPBz+JwPLnKUumnf+xoh6cQPHHvm3iJ0f1RBEWvReoiRIUQ1MEJKGtqaVPZRHcbYjs0
         nKIm3tqlHMZIP/Q+IgcgqQrlKg4Mwa31YrNsftplGF+ZnXK1RI2nvycmmGUQ9QQDz7zm
         jf/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=598cFPZdU4nkYm5Aclc70sYa1DwWV4YIw0MbumV58DE=;
        b=H/04wSqW1NptXQaDkw4Yza/h+2XzVDxj4g9EUsMuVbeXQuUHNBW5D8ewfuuCkCjzKn
         1vk+Lyle6/Sx39A1tBu/oo/vIG+54UVSzUHbedh6OjtZcQhhGMQfRI7WadZCllZEkZ22
         c+6511pyqSBYVoJ9t66jp1ayzF/YBPBYJ44G3Rs3A+2OB3MOHqflmWlhTts+QVuFU78y
         Sf1rdsGCvlmXZb/HqV9pjVrRnc0PaIz/RS4a9e2n4Oe3KotrOrOxApiMmSQ3LUTKeD9G
         jz62OfeAwqwxCdjIPbjdToYqrBopBiCrqEKXjl5in84Knq+SEiL8HxhKtwEycEhxBi3Z
         EfUg==
X-Gm-Message-State: AE9vXwO6JfkOvYzws6ryKfhqwCCds70cp6J7pm2S9FK6Phn6tWRsXyWeT4ArJmW9VizcDg==
X-Received: by 10.98.133.202 with SMTP id m71mr5336554pfk.155.1473865847033;
        Wed, 14 Sep 2016 08:10:47 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.141.25])
        by smtp.gmail.com with ESMTPSA id 70sm38965387pfw.92.2016.09.14.08.10.35
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 08:10:45 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Wed, 14 Sep 2016 20:40:25 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: comedi: drivers: Remove unused functions
Date: Wed, 14 Sep 2016 20:39:53 +0530
Message-Id: <1473865793-20468-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The functions s626_get_latch_source, s626_get_load_trig,
s626_set_clk_pol and  s626_set_index_src are not used anywhere in
the kernel. Therefore, remove them. The static unused functions were
detected using Coccinelle but the changes were done by hand.
Script used :

@initialize:python@
@@
def display(name,p):
	print(name,p[0].file)

@r1@
identifier func;
type T;
position p;
@@
static T func@p(...)
{
...
}

@r@
identifier r1.func;
position p;
@@
(
 func(...)
|
 func
)

@script:python depends on !r@
func<<r1.func;
p<<r1.p;
@@
display(func,p)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/comedi/drivers/s626.c | 51 -----------------------------------
 1 file changed, 51 deletions(-)

diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
index 6d89ca0..670d55c 100644
--- a/drivers/staging/comedi/drivers/s626.c
+++ b/drivers/staging/comedi/drivers/s626.c
@@ -1034,14 +1034,6 @@ static uint16_t s626_get_enable(struct comedi_device *dev,
 }
 #endif
 
-#ifdef unused
-static uint16_t s626_get_latch_source(struct comedi_device *dev,
-				      unsigned int chan)
-{
-	return S626_GET_CRB_LATCHSRC(s626_debi_read(dev, S626_LP_CRB(chan)));
-}
-#endif
-
 /*
  * Return/set the event that will trigger transfer of the preload
  * register into the counter.  0=ThisCntr_Index, 1=ThisCntr_Overflow,
@@ -1066,19 +1058,6 @@ static void s626_set_load_trig(struct comedi_device *dev,
 	s626_debi_replace(dev, reg, ~mask, set);
 }
 
-#ifdef unused
-static uint16_t s626_get_load_trig(struct comedi_device *dev,
-				   unsigned int chan)
-{
-	if (chan < 3)
-		return S626_GET_CRA_LOADSRC_A(s626_debi_read(dev,
-							S626_LP_CRA(chan)));
-	else
-		return S626_GET_CRB_LOADSRC_B(s626_debi_read(dev,
-							S626_LP_CRB(chan)));
-}
-#endif
-
 /*
  * Return/set counter interrupt source and clear any captured
  * index/overflow events.  int_source: 0=Disabled, 1=OverflowOnly,
@@ -1168,21 +1147,6 @@ static void s626_set_clk_mult(struct comedi_device *dev,
 }
 
 /*
- * Return/set the clock polarity.
- */
-static void s626_set_clk_pol(struct comedi_device *dev,
-			     unsigned int chan, uint16_t value)
-{
-	uint16_t mode;
-
-	mode = s626_get_mode(dev, chan);
-	mode &= ~S626_STDMSK_CLKPOL;
-	mode |= S626_SET_STD_CLKPOL(value);
-
-	s626_set_mode(dev, chan, mode, false);
-}
-
-/*
  * Return/set the encoder mode.
  */
 static void s626_set_enc_mode(struct comedi_device *dev,
@@ -1203,21 +1167,6 @@ static uint16_t s626_get_index_pol(struct comedi_device *dev,
 	return S626_GET_STD_INDXPOL(s626_get_mode(dev, chan));
 }
 
-/*
- * Return/set the index source.
- */
-static void s626_set_index_src(struct comedi_device *dev,
-			       unsigned int chan, uint16_t value)
-{
-	uint16_t mode;
-
-	mode = s626_get_mode(dev, chan);
-	mode &= ~S626_STDMSK_INDXSRC;
-	mode |= S626_SET_STD_INDXSRC(value != 0);
-
-	s626_set_mode(dev, chan, mode, false);
-}
-
 static uint16_t s626_get_index_src(struct comedi_device *dev,
 				   unsigned int chan)
 {
-- 
1.9.1


