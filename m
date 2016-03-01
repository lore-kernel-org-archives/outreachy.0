X-GM-THRID: 6255366153272557568
X-Received: by 10.98.33.209 with SMTP id o78mr18579331pfj.6.1456865948495;
        Tue, 01 Mar 2016 12:59:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.34 with SMTP id 31ls681274qgy.28.gmail; Tue, 01 Mar
 2016 12:59:07 -0800 (PST)
X-Received: by 10.140.143.200 with SMTP id 191mr18455269qhp.3.1456865947970;
        Tue, 01 Mar 2016 12:59:07 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id y20si2699618pfa.2.2016.03.01.12.59.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 12:59:07 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id w128so74786760pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 12:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oiDudABv8JnFEmzbuMvjzL4EVwq113m501ltkPCyj4A=;
        b=K/j5XaFD27blznPyHRoja71bmk0h0ZA8TYC1ing8MH2ac+F7jPY1f2U0RcdL5H+c7+
         2KCPWxc0abpetAdJax3whdd2xWKlVoRdcRpKTJcFwUdk+muWQeYjVVnF+NKLuX21/46O
         uY8pqamUS/w/DNKTxhN+Hcs/htceFhaVZLPds5QzBPKxG+tTBfzcB+bZifDXJl1JJG3R
         z0fBrEdk/vO314v+eMpim01lf9K7YYFwinoXoJCI22mDBQhhxcRMmLjAIMv5NXKhSz7F
         YHmIot57QjuB+TqUlm5T8/h1zqDD9sE+wvc7GKFO/CVlDFP0zWCXn0wLbAgrFmZNh4JJ
         Igvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oiDudABv8JnFEmzbuMvjzL4EVwq113m501ltkPCyj4A=;
        b=V360Wjk//x6/bswCTYQdL2FRNTJY1jBR+dI1OedozlboqCRlkbAHUKcuFsg39JLHsf
         PbJmyWNd5BmRZILijsd7dNrSysNnAtFmvqHiZia1mwB70qT4lZKp3YZwmnyC9aAu5MqB
         E5+FWmwgx6jf901jcTlbFQmEn6m/qtRDeVnzG5jEGLlklYpOXDoVHZgI07gk6azuPOPm
         pHK8vLfag+CboA4u0tmZkD/k+WhTx0QXGnM6HeiHzPBBJsWpATtRzNQj4stpi26uT1+d
         GfSDnFGHbAOr2cZXO8TkQm2FrCHOP1wlRM7LWQx/z21SR1KQci0op2fEKuQIJ15oDh6p
         XfRQ==
X-Gm-Message-State: AD7BkJJerz9hqIhSIphE/L4KX+CMXvlcCnzwAmxtjj+m2XB84ryzVbuICDm507We22asKg==
X-Received: by 10.98.18.8 with SMTP id a8mr33620759pfj.41.1456865947784;
        Tue, 01 Mar 2016 12:59:07 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r62sm7712970pfb.39.2016.03.01.12.59.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 12:59:07 -0800 (PST)
Date: Wed, 2 Mar 2016 02:28:39 +0530
From: "pooja.shamili" <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Remove the unnecessary parantheses
Message-ID: <20160301205839.GA14661@localhost>
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

Signed-off-by: pooja.shamili <poojashamili@gmail.com>
---
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


