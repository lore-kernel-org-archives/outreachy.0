X-GM-THRID: 6205279628975669248
X-Received: by 10.182.28.73 with SMTP id z9mr60740obg.45.1444779250695;
        Tue, 13 Oct 2015 16:34:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.45 with SMTP id p42ls3449912qge.5.gmail; Tue, 13 Oct
 2015 16:34:10 -0700 (PDT)
X-Received: by 10.140.135.5 with SMTP id 5mr72240qhh.11.1444779250176;
        Tue, 13 Oct 2015 16:34:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id pe1si546068pac.2.2015.10.13.16.34.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 16:34:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id cn9so3751938pad.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 16:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=1z8x/PdaZ0gInl2/3w+4O0jqlhkruaCI0HDhjOplddg=;
        b=SzQdxcgCPsx5An+l1z+s78KeByJL7FgnQQUu8juwCs19o98A3lnG+ETa0kvMo57vEh
         gOdTGJSjuTpjdcE4gskwrV2oxxxZQJnhkolppCFM5ebuurwYnJ58Rj734eyFLFp3oorh
         i/wMAZ7HyhmhDUW5CbTkTJyAe8w7lZaqjnxPGBdX/IMxSYYavMjnvcCJZJgXkweUdryU
         JFJMMypHGTicrCX3MmDP7XKCpQRokDRCN5LtsoJjn4c5/IK9yoW3ckduASlETVoHq/a5
         DtkEOINXulY6URKGf3q4YG1ScXT/Xv7RKEg/ov8FOWw685jKyqegiXw2yyR5nLbMpW1Z
         4GcA==
X-Received: by 10.66.159.66 with SMTP id xa2mr157292pab.28.1444779250032;
        Tue, 13 Oct 2015 16:34:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id sl7sm5866297pbc.54.2015.10.13.16.34.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 16:34:09 -0700 (PDT)
Date: Wed, 14 Oct 2015 05:04:00 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8723au: rtl8723a_bt-coexist: Remove unused
 variable
Message-ID: <20151013233400.GA19682@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

A variable is initialized and then assigned values in the code but is
never used and therefore, should be removed.
Semantic patch used:
@@
type T;
identifier i;
constant C;
position p != e.p;
@@

- T i@p;
  <+... when != i
- i = C;
  ...+>

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
index 049adea..0052a91 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
@@ -5549,7 +5549,7 @@ static s8 btdm_1AntTdmaJudgement(struct rtw_adapter *padapter, u8 retry)
 {
 	struct hal_data_8723a *pHalData;
 	struct btdm_8723a_1ant *pBtdm8723;
-	static s8 up, dn, m = 1, n = 3, WaitCount;
+	static s8 up, dn, m = 1, WaitCount;
 	s8 ret;
 
 	pHalData = GET_HAL_DATA(padapter);
@@ -5560,7 +5560,6 @@ static s8 btdm_1AntTdmaJudgement(struct rtw_adapter *padapter, u8 retry)
 		up = 0;
 		dn = 0;
 		m = 1;
-		n = 3;
 		WaitCount = 0;
 	} else {
 		WaitCount++;
@@ -5575,8 +5574,6 @@ static s8 btdm_1AntTdmaJudgement(struct rtw_adapter *padapter, u8 retry)
 		if (up >= 3*m) {
 			/*  retry = 0 in consecutive 3m*(2s), add WiFi duration */
 			ret = 1;
-
-			n = 3;
 			up = 0;
 			dn = 0;
 			WaitCount = 0;
-- 
2.1.0


