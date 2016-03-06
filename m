X-GM-THRID: 6255366153272557568
X-Received: by 10.66.147.133 with SMTP id tk5mr221737pab.8.1457256968117;
        Sun, 06 Mar 2016 01:36:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.8 with SMTP id 8ls1240359qgg.12.gmail; Sun, 06 Mar 2016
 01:36:07 -0800 (PST)
X-Received: by 10.140.147.139 with SMTP id 133mr12262880qht.21.1457256967246;
        Sun, 06 Mar 2016 01:36:07 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ui7si2382422pab.0.2016.03.06.01.36.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 01:36:07 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so5824508pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 01:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vamBEfMxXw6rtG3m+UbjN38Iqg5ZQ2HTR3dBxP5Xxi8=;
        b=i7Hh4iX1gO6Oga+cdI4amZQ55Za3K6ClO6D2T7bxQnpPeMDpkzzj15Y2VWWxePzRvL
         zdK10U4sQz0xKkSwm5o+YirmcreGOzbPWfBk2OtH9GuSoAdz7AnlDq1x8D1lCLNqakkV
         yxcAb5Haqq7DzneMGsTUKxceApmjmnAeHX9GFJ1ohCyPot4/sEO2Yx2MIUX6bcTCUAdW
         XZL+fvuE44lXdJfad3snSdpdxeXGAaOJyxR5+5KiPWsyUWWeUku2Px87Mz/QnGzWG9Qv
         BpQXCkMWPuxGHnzzOHVVHd/wFOQjTLpKV9cS+Bt1WCiaxQbgEc/oGEgZYA328aTxpw7+
         v4HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vamBEfMxXw6rtG3m+UbjN38Iqg5ZQ2HTR3dBxP5Xxi8=;
        b=CSUC+yQVoyRqcc0YAdrGu07T61BqxcfJ9SdI4OKcV9f8lZTMiXB88Xfge8K3gePYM4
         YhYW6bmdI7yVfjHCY0ACWy7Pq/5ty0eeC3LQh/l22EPFmaO0hBPpUXb3PaWSyp1f9h1a
         IgisbE/VKSql/23UTyDKE2DnFIRRAxMqwwW0H6tjKVQOUBw5irEM2R78BGkXNtt3cc0J
         cbxkeGx5551n//K7z6VGO8g3J3wIS/JnjxkNbBnAYg3NAiNUEimwJH9cPwMNnjjnbb9S
         FmRWqwhd0OqLpxr1PtOz6v4IxzOKoMS+LvnEI/TxXRxU/CBJXR2eCUk2tPKWrBeNvhTH
         N1yg==
X-Gm-Message-State: AD7BkJIjJLbPHqL0NHDOq9cVgtRR7563+JYNjdt2k2xcDleYKb4y2muTYZsaRI8aNWGJAg==
X-Received: by 10.66.251.162 with SMTP id zl2mr25770597pac.116.1457256967051;
        Sun, 06 Mar 2016 01:36:07 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([103.224.159.11])
        by smtp.gmail.com with ESMTPSA id 85sm16867898pfl.18.2016.03.06.01.36.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 01:36:06 -0800 (PST)
Date: Sun, 6 Mar 2016 15:06:03 +0530
From: G Pooja Shamili <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rtl8712: Remove the unnecessary parantheses
Message-ID: <20160306093603.GA32358@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The unnecessary parantheses on the right side of assignments were removed,
as in most cases (expect for ==, >=, <=, !=), they are futile.

This was done using Coccinelle, the semantic patch being:

@@
expression E1,E2,E3;
binary operator bin_op = {==,>=,<=,!=};
@@

E1 =
(
  (
   E2 bin_op E3
  )
|
-(
E2
-)
)
;

Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
---
Changes from Version 2:
	    * Changed the name in the From: and Signed-off-by: to full
	    name.
Changes from Version 1:
	    * Changed the code to remove the redundancy of removing the
	    brackets and adding them again.

 drivers/staging/rtl8712/rtl871x_mp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 44da4fe..c80d59c 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -235,7 +235,7 @@ static u8 set_bb_reg(struct _adapter *pAdapter,
 	if (bitmask != bMaskDWord) {
 		org_value = r8712_bb_reg_read(pAdapter, offset);
 		bit_shift = bitshift(bitmask);
-		new_value = ((org_value & (~bitmask)) | (value << bit_shift));
+		new_value = (org_value & (~bitmask)) | (value << bit_shift);
 	} else {
 		new_value = value;
 	}
@@ -260,7 +260,7 @@ static u8 set_rf_reg(struct _adapter *pAdapter, u8 path, u8 offset, u32 bitmask,
 	if (bitmask != bMaskDWord) {
 		org_value = r8712_rf_reg_read(pAdapter, path, offset);
 		bit_shift = bitshift(bitmask);
-		new_value = ((org_value & (~bitmask)) | (value << bit_shift));
+		new_value = (org_value & (~bitmask)) | (value << bit_shift);
 	} else {
 		new_value = value;
 	}
@@ -327,10 +327,10 @@ void r8712_SetTxAGCOffset(struct _adapter *pAdapter, u32 ulTxAGCOffset)
 {
 	u32 TxAGCOffset_B, TxAGCOffset_C, TxAGCOffset_D, tmpAGC;
 
-	TxAGCOffset_B = (ulTxAGCOffset & 0x000000ff);
+	TxAGCOffset_B = ulTxAGCOffset & 0x000000ff;
 	TxAGCOffset_C = (ulTxAGCOffset & 0x0000ff00) >> 8;
 	TxAGCOffset_D = (ulTxAGCOffset & 0x00ff0000) >> 16;
-	tmpAGC = (TxAGCOffset_D << 8 | TxAGCOffset_C << 4 | TxAGCOffset_B);
+	tmpAGC = TxAGCOffset_D << 8 | TxAGCOffset_C << 4 | TxAGCOffset_B;
 	set_bb_reg(pAdapter, rFPGA0_TxGainStage,
 			(bXBTxAGC | bXCTxAGC | bXDTxAGC), tmpAGC);
 }
-- 
2.1.4


