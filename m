X-GM-THRID: 6255366153272557568
X-Received: by 10.66.150.68 with SMTP id ug4mr12214859pab.33.1457257354081;
        Sun, 06 Mar 2016 01:42:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.22.116 with SMTP id c20ls620769obf.62.gmail; Sun, 06 Mar
 2016 01:42:33 -0800 (PST)
X-Received: by 10.182.22.48 with SMTP id a16mr12715513obf.29.1457257353716;
        Sun, 06 Mar 2016 01:42:33 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id yd9si2241091pab.1.2016.03.06.01.42.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 01:42:33 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x188so3932029pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 01:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1PiPHAI0PYH/UzqZeouM0ptdfzO68pV+Mr0P9w8M2ek=;
        b=lN6OYeFenWTYEkQjosTNMytoJrFblfi+DO7XwvOmVHKozcthxhWZjeN1VeXT7gVF7+
         GlIay4MBVdFoeKM8cyu7JMUwjPw9rZQu3JOu5hcO265KctWN1j6DA7nVLUJixoZJjcIj
         PNgk8OHfNVcr8YrSpt2Gwdtzz6xB9oZakvcLQEuAxcAmILyJINKNlr4l8+So4wEn6UEj
         d5bWRx+FwbXz3feV77msYSkQzvamO1blXzAgwOMl+wCUDkYjcQ+LjK+aXOAKj5LmRUCB
         Xd/PPbYILL9BMBzGB1ALGhn2Uh3Y3FyzDQVONaJh7/Htxo107dICaaRaHh9cxlLVkut7
         Y+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1PiPHAI0PYH/UzqZeouM0ptdfzO68pV+Mr0P9w8M2ek=;
        b=BtdVA4x020b3EeqvDPeqvfQRDe2v1OUwehQ0sentLDgessg3lF75LlRgtyJZx5msgi
         hN5AcQe+ItbKlpBkQ0J3B7Qr7oOSGnP0vNShi4nZiKEvDZ4t2mJzfeSSUSpCCkQ6DolQ
         3cHqrxHEal9mn9m24bDtaB0EbwWkFUBY3AaY++tXWMa8Ly3MZR+cG72q8xJLxohiG1S4
         2uIoaBLc6KRvImZer+ZRBfNWFbEFOCEP3Q/FCJCKoovTCAbWXEteKjZS8SzHevhFPDSO
         wAJKVaPzhzGRAKVahKN44C4zE6KqoGl26V/zYWGOTTcomyYMVhb6ag6mVF2kaKsyt+6N
         hKCg==
X-Gm-Message-State: AD7BkJLP09XfzKfG16zc+bIUb+1mUwKbO0O31oXaF0rQcYRZrf3u/LI7dKoe62M97uD/Sw==
X-Received: by 10.98.75.212 with SMTP id d81mr25385873pfj.148.1457257353528;
        Sun, 06 Mar 2016 01:42:33 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([103.224.159.11])
        by smtp.gmail.com with ESMTPSA id 67sm16917908pfi.2.2016.03.06.01.42.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 01:42:33 -0800 (PST)
Date: Sun, 6 Mar 2016 15:12:30 +0530
From: G Pooja Shamili <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rtl8712: Remove the unnecessary parantheses
Message-ID: <20160306094230.GA657@localhost>
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
	* Modified the code to remove redundancy of removing and adding
	the parenthesis

Changes from Version 1:
	* Changed the name in the From: and Signed-off-by: to full name.

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


