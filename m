X-GM-THRID: 9490543935488
X-Received: by 10.182.104.37 with SMTP id gb5mr96223805obb.45.1426985626108;
        Sat, 21 Mar 2015 17:53:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.228 with SMTP id p91ls2003720qgp.36.gmail; Sat, 21 Mar
 2015 17:53:45 -0700 (PDT)
X-Received: by 10.140.152.136 with SMTP id 130mr54327118qhy.3.1426985625938;
        Sat, 21 Mar 2015 17:53:45 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id ri9si1198570pdb.1.2015.03.21.17.53.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:53:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pacwe9 with SMTP id we9so149685474pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=MhzpaeAp3I3a+fTkrG/1FEphco9LdVWifKrnepQR0As=;
        b=MTd95Kh6oING5Ke/O07ZrcV0g11kFjOrt9DQ/iBQL3d3JvsLr5tMxAxrbpDc7fk0O6
         XoYkru6GNWb4Y09EJs1De8L1lVf7eKo65Ng9aTr1HcA108fTyeAeut/FNp5/B7c7yCpo
         AU1HN9OYVlOFdx915PxwmCCipqjG/Kx1Y/B8FrevRFQQsubWYxTI7r2vpmbnfpnFilXz
         gh8p5OqbxODlX073h5FuwuWckVGuwDc5jK5CdPOpW1jrM7Unwo1I88zb5fR3mBeW3+bu
         /RzNvgl5in47i1tJyJvbq1zdebBj3pFjNflOyp1dbE4kzW104is1c0OdUkqSu9vA+LbM
         FNzw==
X-Received: by 10.70.134.102 with SMTP id pj6mr122536494pdb.95.1426985625819;
        Sat, 21 Mar 2015 17:53:45 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id fk4sm3017058pbb.80.2015.03.21.17.53.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:53:44 -0700 (PDT)
Date: Sun, 22 Mar 2015 06:21:44 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 06/10] Staging: rtl8712: Fix invalid assignment '|=' in
 hal_init.c
Message-ID: <3fa09bc6e840b02c55047b267f496f309e1aea88.1426983594.git.vatikaharlalka@gmail.com>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following Sparse errors in hal_init.c:

drivers/staging/rtl8712/hal_init.c:198:49: warning: invalid assignment: |=
drivers/staging/rtl8712/hal_init.c:198:49: left side has type unsigned int
drivers/staging/rtl8712/hal_init.c:198:49: right side has type restricted __le32
drivers/staging/rtl8712/hal_init.c:200:41: warning: invalid assignment: |=
drivers/staging/rtl8712/hal_init.c:200:41: left side has type unsigned int
drivers/staging/rtl8712/hal_init.c:200:41: right side has type restricted __le32
drivers/staging/rtl8712/hal_init.c:227:49: warning: invalid assignment: |=
drivers/staging/rtl8712/hal_init.c:227:49: left side has type unsigned int
drivers/staging/rtl8712/hal_init.c:227:49: right side has type restricted __le32
drivers/staging/rtl8712/hal_init.c:229:41: warning: invalid assignment: |=
drivers/staging/rtl8712/hal_init.c:229:41: left side has type unsigned int
drivers/staging/rtl8712/hal_init.c:229:41: right side has type restricted __le32
drivers/staging/rtl8712/hal_init.c:281:33: warning: invalid assignment: |=
drivers/staging/rtl8712/hal_init.c:281:33: left side has type unsigned int
drivers/staging/rtl8712/hal_init.c:281:33: right side has type restricted __le32
drivers/staging/rtl8712/hal_init.c:282:33: warning: invalid assignment: |=
drivers/staging/rtl8712/hal_init.c:282:33: left side has type unsigned int
drivers/staging/rtl8712/hal_init.c:282:33: right side has type restricted __le32

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 7c5956a..954b6fe 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -195,9 +195,9 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 				dump_imem_sz = MAX_DUMP_FWSZ;
 			else {
 				dump_imem_sz = imem_sz;
-				ptx_desc->txdw0 |= cpu_to_le32(BIT(28));
+				ptx_desc->txdw0 |= BIT(28);
 			}
-			ptx_desc->txdw0 |= cpu_to_le32(dump_imem_sz &
+			ptx_desc->txdw0 |= (dump_imem_sz &
 						       0x0000ffff);
 			memcpy(ppayload, ptr, dump_imem_sz);
 			r8712_write_mem(padapter, RTL8712_DMA_VOQ,
@@ -224,9 +224,9 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 				dump_emem_sz = MAX_DUMP_FWSZ;
 			else {
 				dump_emem_sz = emem_sz;
-				ptx_desc->txdw0 |= cpu_to_le32(BIT(28));
+				ptx_desc->txdw0 |= BIT(28);
 			}
-			ptx_desc->txdw0 |= cpu_to_le32(dump_emem_sz &
+			ptx_desc->txdw0 |= (dump_emem_sz &
 						       0x0000ffff);
 			memcpy(ppayload, ptr, dump_emem_sz);
 			r8712_write_mem(padapter, RTL8712_DMA_VOQ,
@@ -278,8 +278,8 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 		}
 		/* 5.Download DMEM code size and Load EMEM Code Section */
 		memset(ptx_desc, 0, TXDESC_SIZE);
-		ptx_desc->txdw0 |= cpu_to_le32(fwhdr.fw_priv_sz&0x0000ffff);
-		ptx_desc->txdw0 |= cpu_to_le32(BIT(28));
+		ptx_desc->txdw0 |= fwhdr.fw_priv_sz&0x0000ffff;
+		ptx_desc->txdw0 |= BIT(28);
 		memcpy(ppayload, &fwhdr.fwpriv, fwhdr.fw_priv_sz);
 		r8712_write_mem(padapter, RTL8712_DMA_VOQ,
 			  fwhdr.fw_priv_sz + TXDESC_SIZE, (u8 *)ptx_desc);
-- 
1.9.1


