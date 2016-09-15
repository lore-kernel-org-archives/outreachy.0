X-GM-THRID: 6330205612337528832
X-Received: by 10.129.78.134 with SMTP id c128mr5133144ywb.50.1473949443045;
        Thu, 15 Sep 2016 07:24:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.23 with SMTP id 23ls3206795otg.44.gmail; Thu, 15 Sep
 2016 07:24:02 -0700 (PDT)
X-Received: by 10.31.191.194 with SMTP id p185mr2689647vkf.12.1473949442672;
        Thu, 15 Sep 2016 07:24:02 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z4si1236648pam.0.2016.09.15.07.24.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 07:24:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so2296686pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 07:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=piQzkI/u092HVhXXk1J1zf1i7VS7MBxb8ebFN738mFw=;
        b=WPryqxa55s+1ujQu6NN99Vlhdj/c8UeNbX617ibTwv63ibAW2WW8OVIAnxRLGzWarA
         i1aekQsC+dHdN+eYKehgu1eAu/wSzjIhjEXFcH9iD5g6vhdzcAeEKoGiI+2X4YEU8Lpp
         I+8uTKaiqGlhjnjj/lsxhdIIVcz9F2aefQHYrd3anzSssOvYH4Sxc8vDhRZDWy+gKZfX
         4W6yA6TRxA51nohEHgDiaZzXriOAEsUE/wRxwgYLNIqZgJLSHLgroKj779eXJlRBj1Hw
         4WLM2m3540dTfZSe29O4OLGrmqjID1dwLxYp7xw7uczievCd2jE0XnzYOvQlOMuBmbQo
         9YCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=piQzkI/u092HVhXXk1J1zf1i7VS7MBxb8ebFN738mFw=;
        b=h7Ep+J/DytPzg/xN7DezUSSsT5TjIF97MiiazwXQCVC+MeqZvzDSMdBQP2d4Jslvjf
         lF0dEVfrXdiY8+4gwtGTX3jHF3p3YrGw3+myTPaYegYCON4r4nooMx7CGWTR129URpdn
         /lhAYIWUFPtXd6N5K6o1UH+YXRUp7GpQrlU8//MreUIc9/6qMX3raYr6C11AkrEHEf73
         i5EEvQc3bF3y5MuGIvUR6oKIa6V0jBYM7qpgLyxt/kx3sxnvflH+LzEw6MMJ7uNq2q+7
         0yFpwlrGCIUTDahuSaNdpSwCIGUHR3uKUW2hFo2lQSOtpZn53VeRQKC6nwGPp2db/2DA
         CiCA==
X-Gm-Message-State: AE9vXwNaPiN1w3e2FBbV3EqDY4Mr8YEdoQlTAamoS0vPJQTxNLPlJS5cQq1BcQTtJgSDvw==
X-Received: by 10.98.21.85 with SMTP id 82mr13767046pfv.81.1473949442439;
        Thu, 15 Sep 2016 07:24:02 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.155.108])
        by smtp.gmail.com with ESMTPSA id xn11sm5658320pac.38.2016.09.15.07.23.53
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 07:24:01 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Thu, 15 Sep 2016 19:53:45 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: comedi: drivers: Remove unused functions
Date: Thu, 15 Sep 2016 19:53:44 +0530
Message-Id: <1473949424-12322-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The functions s626_get_latch_source, s626_get_load_trig,
s626_set_clk_pol and  s626_set_index_src are not used anywhere in
the kernel. Therefore, remove them. The static unused functions were
detected using Coccinelle but the change was done by hand.
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
@@
func

@script:python depends on !r@
func << r1.func;
p << r1.p;
@@
display(func,p)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
*  Simplify coccinelle script by removing func(...)
  and adding spaces around "<<".

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


