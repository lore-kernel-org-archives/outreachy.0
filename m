X-GM-THRID: 6256248384304185344
X-Received: by 10.107.12.213 with SMTP id 82mr13862103iom.18.1456646338953;
        Sat, 27 Feb 2016 23:58:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.71 with SMTP id sw7ls361549obc.82.gmail; Sat, 27 Feb
 2016 23:58:58 -0800 (PST)
X-Received: by 10.182.247.97 with SMTP id yd1mr8330021obc.9.1456646338615;
        Sat, 27 Feb 2016 23:58:58 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id r75si1363399pfr.0.2016.02.27.23.58.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 23:58:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id 124so12692407pfg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 23:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=EyC8Df7i7zA+3P2c+tBXHx6/IktA12UE2+51zQwjWNU=;
        b=Nnw0t9d0GJlyRvvza1u3I4qW+xCr+CxhauTDv7k778Q+yPZU0aAot72Uw4OgRWv+vp
         8Yz+nVUX3B6Ea4Cq2xnot3ASZYQUEmsnNnDLCFD0mF4wtg7qWo0AbBX4YfjeYnodyGWi
         /jEbeQXfH7F8hT1c5b4pONTpra0m8ZicvYyZkQwbpKBv3ArUJ4QyuUd16xnrsf+N3sBX
         U1VDds3QfqDeJbuqWiSYpLSNooFbqoyNUr/hEPkMViQxwN9AmYh+ntW4KgNeW/gno7ol
         /DOYDy7N7fDzPFL4vj1v/jE/UWApn1cYRj7GTruWijF8FgcLtUK54OisBYkp7iAfoMTE
         kLGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EyC8Df7i7zA+3P2c+tBXHx6/IktA12UE2+51zQwjWNU=;
        b=C+J2Wv2LFpPV9zuraDT5cu2mfD7r26lyX2aWOWZ7uuZupqLyTylWEBM1WA15S2D08c
         qG0sJyq2CDpvlKtD9/Q37nXJNG5dHsnzMIm4hXFGzCyR+p4gIJJeanJTXG4ffTfFwOoY
         IHh/QW6b66tUQWEGGrb3EwsLzwZesyl582XZ1Alu6Ppt13BM+5yXA6CAqcRtKkID0uH5
         QznbBUzWfNhqSN8j7rKYlK+svE5zJaWiAS7FQ+ZxPfIJiKzB5rKoOsT476FbuQ5k7jL4
         /eqPi5edkOy9gMxae6Ic58RR/Zwd4sWt0kVLFFRP/FNFjzKMe/ONZun2IYsIiEgDx3Sg
         hmVA==
X-Gm-Message-State: AD7BkJIua+sx5kkK3FZzWF71oGPpaAiFjzFb+UxQYq4OFhytHjDQAboG4NEOPiHLuXPeZQ==
X-Received: by 10.98.16.86 with SMTP id y83mr13937863pfi.45.1456646338457;
        Sat, 27 Feb 2016 23:58:58 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.149.200])
        by smtp.gmail.com with ESMTPSA id n28sm29950588pfa.45.2016.02.27.23.58.54
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 23:58:57 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 28 Feb 2016 13:28:48 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: comedi: s626.c: Remove unused functions
Date: Sun, 28 Feb 2016 13:28:47 +0530
Message-Id: <1456646327-12548-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The functions s626_get_clk_mult, s626_get_clk_mult, s626_get_enc_mode,
s626_set_index_pol are not used anywhere in the kernel so they can be
removed. This also cleans the code. Grepped to find the occurences.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/comedi/drivers/s626.c | 33 ---------------------------------
 1 file changed, 33 deletions(-)

diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
index 35f0f67..c5e0863 100644
--- a/drivers/staging/comedi/drivers/s626.c
+++ b/drivers/staging/comedi/drivers/s626.c
@@ -1167,12 +1167,6 @@ static void s626_set_clk_mult(struct comedi_device *dev,
 	s626_set_mode(dev, chan, mode, false);
 }
 
-static uint16_t s626_get_clk_mult(struct comedi_device *dev,
-				  unsigned int chan)
-{
-	return S626_GET_STD_CLKMULT(s626_get_mode(dev, chan));
-}
-
 /*
  * Return/set the clock polarity.
  */
@@ -1188,12 +1182,6 @@ static void s626_set_clk_pol(struct comedi_device *dev,
 	s626_set_mode(dev, chan, mode, false);
 }
 
-static uint16_t s626_get_clk_pol(struct comedi_device *dev,
-				 unsigned int chan)
-{
-	return S626_GET_STD_CLKPOL(s626_get_mode(dev, chan));
-}
-
 /*
  * Return/set the encoder mode.
  */
@@ -1209,27 +1197,6 @@ static void s626_set_enc_mode(struct comedi_device *dev,
 	s626_set_mode(dev, chan, mode, false);
 }
 
-static uint16_t s626_get_enc_mode(struct comedi_device *dev,
-				  unsigned int chan)
-{
-	return S626_GET_STD_ENCMODE(s626_get_mode(dev, chan));
-}
-
-/*
- * Return/set the index polarity.
- */
-static void s626_set_index_pol(struct comedi_device *dev,
-			       unsigned int chan, uint16_t value)
-{
-	uint16_t mode;
-
-	mode = s626_get_mode(dev, chan);
-	mode &= ~S626_STDMSK_INDXPOL;
-	mode |= S626_SET_STD_INDXPOL(value != 0);
-
-	s626_set_mode(dev, chan, mode, false);
-}
-
 static uint16_t s626_get_index_pol(struct comedi_device *dev,
 				   unsigned int chan)
 {
-- 
1.9.1


