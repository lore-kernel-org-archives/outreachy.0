X-GM-THRID: 6208828760687378432
X-Received: by 10.66.221.42 with SMTP id qb10mr3016592pac.35.1445605596407;
        Fri, 23 Oct 2015 06:06:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.194 with SMTP id y185ls1183235iod.90.gmail; Fri, 23
 Oct 2015 06:06:35 -0700 (PDT)
X-Received: by 10.50.62.68 with SMTP id w4mr3326966igr.13.1445605595767;
        Fri, 23 Oct 2015 06:06:35 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id sm2si903516pab.0.2015.10.23.06.06.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:06:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hk11so118480508pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 06:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=ri3n/5Us6iJ8m/CI01+REL26iDbQ9tMlWiDSf0/d57M=;
        b=gKbvloOFABG9adTdevROknkhY7T/zDtdxwioBjynV7Dy8Ic+Xx0+lrKQK7V/877Mrx
         OUviKxaQaZQeHrnD29oAXvrdgQUeTLCDSGujIODnbYofavqUMepokoL3mNAGGzWTZ4jJ
         ZY8BUxtSrthGq0lpnogflqqgD8OAj/ehtF3Bbkx3AdGYlraHM9q5ReNUyNYf3MuJ+Qcs
         aqPNoGJ8Gxj9lPNFKrufiUUHQ7U+beb0D2NdZpI2bS9W9g48fFyQVKWU4GFv6RLmnUBy
         6qAuKmOoMsRgn+K/QNaA+ojRmq4QA2gCoEZtnb2nYB3SVoaPtB35E+mLfZqPoCyT4E2Z
         EOmg==
X-Received: by 10.68.182.34 with SMTP id eb2mr5025057pbc.87.1445605595640;
        Fri, 23 Oct 2015 06:06:35 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id pj10sm19019261pbc.59.2015.10.23.06.06.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 06:06:34 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: rtl8723au: Use put_unaligned_le32
Date: Fri, 23 Oct 2015 18:36:28 +0530
Message-Id: <1445605588-16640-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Introduce the use of function put_unaligned_le32.

Coccinelle semantic patch used -

@@ identifier tmp; expression ptr; expression y,e; type T; @@

- tmp = cpu_to_le32(y);

  <+... when != tmp
- memcpy(ptr, (T)&tmp, ...);
+ put_unaligned_le32(y,ptr);
  ...+>
? tmp = e

@@ type T; identifier tmp; @@

- T tmp;
...when != tmp

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/rtl8723au/hal/rtl8723a_cmd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
index 9733aa6..1662c03c 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
@@ -127,8 +127,7 @@ int rtl8723a_set_raid_cmd(struct rtw_adapter *padapter, u32 mask, u8 arg)
 	u8 buf[5];
 
 	memset(buf, 0, 5);
-	mask = cpu_to_le32(mask);
-	memcpy(buf, &mask, 4);
+	put_unaligned_le32(mask, buf);
 	buf[4]  = arg;
 
 	FillH2CCmd(padapter, MACID_CONFIG_EID, 5, buf);
-- 
2.1.4


