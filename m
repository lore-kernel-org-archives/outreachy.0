X-GM-THRID: 6390824128052461568
X-Received: by 10.31.158.195 with SMTP id h186mr4423547vke.7.1488248730425;
        Mon, 27 Feb 2017 18:25:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.133 with SMTP id 127ls2608904ith.16.canary-gmail; Mon,
 27 Feb 2017 18:25:29 -0800 (PST)
X-Received: by 10.99.111.143 with SMTP id k137mr7907327pgc.1.1488248729668;
        Mon, 27 Feb 2017 18:25:29 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f7si48307pfk.5.2017.02.27.18.25.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 18:25:29 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so3072729pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 18:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Z18f5ncyLB+P/eFmoidumGoFZGVFiXKUBZjhTDRquZ8=;
        b=e62NHcbo4Tre2yK1eMm4fET9JNsfL1V/31AMxPuiFOYLcwOMvvyR7JAqrZZ1yo7Q50
         iZpwB4vHp6LTbxeM/DyQ2Hru/ji5U1Lvc+aNq1zAmf+/ej83WjY2/4UXzT3FSzgK44Ou
         MCDd9je6YBM2EJUqqlfWX6xKoY4iuRwPNCG9w0n7E5oTBrrMPwNNpHEmdRF2CLHhpQqs
         4ZLU+YbgL0K/v8ieqfXg0jKp8masGbh9Nur560zKMfTMnBWee/+jp0fKJfe4RNA5SDkM
         xUepr+n3prYWwCzJztfsY6L7pAdwID38SoekeRh2ckP5rytY+usw/nboWNHHYr6+C085
         FpgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Z18f5ncyLB+P/eFmoidumGoFZGVFiXKUBZjhTDRquZ8=;
        b=hwlZbX4fMjqlGg/4oD1L615XBOucrxslP55Wx4UVT6F2LfRx7El7ymRRhyX0/Y70Hl
         yMHBnOckivbFQliMHBDO5bv2iaeVURsukzBw2yBhiVGlpHGPI1qYNgjtBxCHwRMPtqVW
         OuCM38YEREasS3V1/RoE0czLEmAwC31+nA0jXW0gwrmyWKPFZ1Sz+tnb0HG+RnC70MUa
         DZDWAtKfmU3wpVivyUJdEGWJgLIhgSNfkdXGcpa8HAsrS7ghF8XEC+AYUaovL+bnXIAw
         7JL+WUHZrkUAn1ZSagd+mw5fmAx6VKoVbLe9qgNcCUytV+9vPt/Ie9OH6C5M2C2cR/I0
         rEGg==
X-Gm-Message-State: AMke39kjV8MX396M3P/EyrgwdjDXCGC/wh3JQk2vP8XDuy34UaGTF8GuR1FsiKmXLiQMJQ==
X-Received: by 10.84.213.137 with SMTP id g9mr28869392pli.114.1488248729427;
        Mon, 27 Feb 2017 18:25:29 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 23sm262389pfw.94.2017.02.27.18.25.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 18:25:28 -0800 (PST)
Date: Tue, 28 Feb 2017 07:55:24 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v5] staging: xgifb: correct the multiple line dereference
Message-ID: <20170228022524.GA12198@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Error reported by checkpatch.pl as "avoid multiple line dereference".
Addition of new variables to make the code more readable and also to
correct about mentioned error as by itroducing new variables line is
not exceeding 80 characters.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v5
  - changes done such that no other errors can generate.
  - Improve the coding style.
  - Introduced new variables.

 drivers/staging/xgifb/XGI_main_26.c | 29 ++++++-----------------------
 drivers/staging/xgifb/vb_setmode.c  | 17 +++++++++++------
 2 files changed, 17 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 69ed137337ce..9870ea3b76b4 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -878,30 +878,13 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
 			}
 
 			if ((filter >= 0) && (filter <= 7)) {
+				const u8 *f = XGI_TV_filter[filter_tb].filter[filter];
 				pr_debug("FilterTable[%d]-%d: %*ph\n",
-					 filter_tb, filter,
-					 4, XGI_TV_filter[filter_tb].
-						   filter[filter]);
-				xgifb_reg_set(
-					XGIPART2,
-					0x35,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][0]));
-				xgifb_reg_set(
-					XGIPART2,
-					0x36,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][1]));
-				xgifb_reg_set(
-					XGIPART2,
-					0x37,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][2]));
-				xgifb_reg_set(
-					XGIPART2,
-					0x38,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][3]));
+					 filter_tb, filter, 4, f);
+				xgifb_reg_set(XGIPART2, 0x35, f[0]);
+				xgifb_reg_set(XGIPART2, 0x36, f[1]);
+				xgifb_reg_set(XGIPART2, 0x37, f[2]);
+				xgifb_reg_set(XGIPART2, 0x38, f[3]);
 			}
 		}
 	}
diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 7c7c8c8f1df3..b18da43319e1 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -221,8 +221,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 
 	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
 	       tempbx; (*i)--) {
-		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
-				Ext_InfoFlag;
+		int j;
+
+		j = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
+		infoflag = j;
+
 		if (infoflag & tempax)
 			return 1;
 
@@ -231,8 +234,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 	}
 
 	for ((*i) = 0;; (*i)++) {
-		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
-				Ext_InfoFlag;
+		int m;
+
+		m = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
+		infoflag = m;
+
 		if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
 				!= tempbx) {
 			return 0;
@@ -5092,8 +5098,7 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
 
 	i = 0;
 	do {
-		if (XGI330_RefIndex[RefreshRateTableIndex + i].
-			ModeID != ModeNo)
+		if (XGI330_RefIndex[RefreshRateTableIndex + i].ModeID != ModeNo)
 			break;
 		temp = XGI330_RefIndex[RefreshRateTableIndex + i].Ext_InfoFlag;
 		temp &= ModeTypeMask;
-- 
2.11.0


