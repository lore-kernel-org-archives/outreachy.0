X-GM-THRID: 6390824128052461568
X-Received: by 10.107.183.4 with SMTP id h4mr287165iof.16.1488258335638;
        Mon, 27 Feb 2017 21:05:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.17 with SMTP id g17ls2617670ita.21.canary-gmail; Mon, 27
 Feb 2017 21:05:34 -0800 (PST)
X-Received: by 10.99.116.8 with SMTP id p8mr148284pgc.119.1488258334902;
        Mon, 27 Feb 2017 21:05:34 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h130si117458pfe.1.2017.02.27.21.05.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 21:05:34 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so263992pgy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 21:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Yp/nNe35LbrasZnjskajHOdYsmri50IoWqOjGPar/fA=;
        b=LxfSj/qmV9XZX+KvEkUALVnEZZkRfZeXHgoVQGH4AnK8DVdzTRKEataTGAKybp1nXE
         GOkbcUlJa2vYz3tbPz06NSgi+EDPARVvRYk9LDMt1DQA5vpt6PIx9XfgCb7HiVxdPSEp
         jLwaiEhUTsS8fb0fqiC+Gmyyx79EIbSC90zn/zpDjnSmSTcBIKohHW6e4dn1AJdlDeGt
         xjgAZooVlewJcvMag+O4XHFKQYOAMVQjR4vfBHklK8A+9tLUVSoBt0bon2HQm7aFn8Z1
         8xK1TxhfvYWOzrL7GMLfLYZyyPv37NZiM9R1tNfO3zI4yZinkA+4wTHqdzGqtRe/2YkZ
         bmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Yp/nNe35LbrasZnjskajHOdYsmri50IoWqOjGPar/fA=;
        b=Rk1xL9px6gu5y2s8RZOFOBMWsqf5RbHgaytbDsCUkJ/kuR0QqP6Oqrx2x+gEQPBQDS
         JMycvOjTtK+wI/1PeBPVo6fAZBK1hmBgovMo71Bf7Q7A52jSNeXS0fPCczLTD72e472O
         rV51myiT5JKOsaScCyDdZUMpdiJPuU3aYdjvDx9jLrjph2yS/znrKsU0otqaC4rXFwBH
         164agIia7IzoDQ1nSgw95eKQt3y6UFuqJm/OnPMzIBp7kdJf+TzIYj/r9w8pDaeOjizb
         aLziPkGUlTaEK9f7OgrC9PoVq0ZBKO03obLjMKR2OhOEXKMJE8Xs3C3AP5GoaNw+E8ni
         d27Q==
X-Gm-Message-State: AMke39nuqBMb9UawdZzWeTiglymRPfTr3agR4+rSgbpdprtuGKSUjfkqiguIWAMCk2I0/g==
X-Received: by 10.98.155.149 with SMTP id e21mr558481pfk.24.1488258334532;
        Mon, 27 Feb 2017 21:05:34 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l72sm910118pfi.93.2017.02.27.21.05.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 21:05:33 -0800 (PST)
Date: Tue, 28 Feb 2017 10:35:30 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v6] staging: xgifb: correct the multiple line dereference
Message-ID: <20170228050530.GA13332@arushi-HP-Pavilion-Notebook>
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
changes in v6
  - changes done such that no other errors can generate.
  - Improve the coding style.
  - Introduced new variables.
  - type of the variable is changed.

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
index 7c7c8c8f1df3..249a32804c06 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -221,8 +221,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 
 	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
 	       tempbx; (*i)--) {
-		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
-				Ext_InfoFlag;
+		unsigned short j;
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
+		unsigned short m;
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


