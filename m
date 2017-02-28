X-GM-THRID: 6390824128052461568
X-Received: by 10.36.57.65 with SMTP id l62mr142657ita.9.1488278712714;
        Tue, 28 Feb 2017 02:45:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.54 with SMTP id 51ls853934otv.20.gmail; Tue, 28 Feb 2017
 02:45:12 -0800 (PST)
X-Received: by 10.157.67.134 with SMTP id t6mr333872ote.83.1488278712313;
        Tue, 28 Feb 2017 02:45:12 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h130si242229pfe.1.2017.02.28.02.45.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 02:45:12 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so1137491pgz.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 02:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kuhSqoqxbndNjZMqpSp0xL5IqLCRNGVGI0POv+hI+Fc=;
        b=FRSkDhVKXpGnkOUiRU9Zl/KBEWbTloYpWKg7U617/nSsCXxFLH0M7bIkgAFTTlN1KI
         UktsnfderzDqTW5toLA0gxoifUBzojcOkHEpive+zlOhZKNFVweRvgs562cSg/gzQQN4
         KlAsVjDYzfen9BW8hq/4IEw/2rGxd6yNXLNNlHB0kT4ZHWla4HkjqH39FLQBr3WD6LBi
         uFb7KlrrP6R1wWydCY0cwqmTVCxLfKwx10jo8Zbg6DcJHERCSEUTnFin1U+7No6na0My
         +BKYu6nbxgK1xFxpIDzPX/OgWHkyxkRP2OnkrE/GPe3xZJvDjmAPiBcKmPg0V4FJH7L1
         vwzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kuhSqoqxbndNjZMqpSp0xL5IqLCRNGVGI0POv+hI+Fc=;
        b=qybL6Y4IMTtJJ1M4FJqGba3WGulHrkjMWrTENXNeeYxb7KLzW8e8RPmy29YgVn2DiJ
         MzZW1vitIXDLkyN54PMUx/tiludwgG8b6RxLn94KR7rEFVxSxOmefTvzIaTX6BbyPYrL
         B6ZufNgbNujc/aH3UNLveyMmFsP5QFqJV4vJYWrMkwURjT7Q7W8K1S+RiSrJZpjJMQdJ
         k1Q+RIXqfX5t0qlhpfEfVCzhH6E1NZ0DiTztHOs4sN2FhmhgAuwZE25EdwnoOgJjxpV3
         QfiyN/xTw5tlwQA+nHKqplMYPGvDIHZ0w8ZPHUynlyZJAPosiwvVDIO1EVuaTX86f0go
         YSmQ==
X-Gm-Message-State: AMke39mmd6PeDK0BgPqt3Lzw+Y3qDE4vfjypzN6PI4ykDIECoe/7FKolmtrVKyz0zM24Yg==
X-Received: by 10.84.141.1 with SMTP id 1mr2300944plu.178.1488278711957;
        Tue, 28 Feb 2017 02:45:11 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x2sm3429448pfa.71.2017.02.28.02.45.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 02:45:10 -0800 (PST)
Date: Tue, 28 Feb 2017 16:15:07 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v7] staging: xgifb: correct the multiple line dereference
Message-ID: <20170228104507.GA30448@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Error reported by checkpatch.pl as "avoid multiple line dereference".
Addition of new variables to make the code more readable.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v7
  - Improve the coding style.
  - Introduced new variables.

 drivers/staging/xgifb/XGI_main_26.c | 29 ++++++-----------------------
 drivers/staging/xgifb/vb_setmode.c  | 11 +++++------
 2 files changed, 11 insertions(+), 29 deletions(-)

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
index 7c7c8c8f1df3..ab84adbc542d 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -221,8 +221,8 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 
 	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
 	       tempbx; (*i)--) {
-		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
-				Ext_InfoFlag;
+		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
+
 		if (infoflag & tempax)
 			return 1;
 
@@ -231,8 +231,8 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 	}
 
 	for ((*i) = 0;; (*i)++) {
-		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
-				Ext_InfoFlag;
+		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
+
 		if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
 				!= tempbx) {
 			return 0;
@@ -5092,8 +5092,7 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
 
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


