X-GM-THRID: 6255221801010331648
X-Received: by 10.182.87.2 with SMTP id t2mr41309060obz.20.1456407318092;
        Thu, 25 Feb 2016 05:35:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.85 with SMTP id y79ls396078qgy.63.gmail; Thu, 25 Feb
 2016 05:35:17 -0800 (PST)
X-Received: by 10.13.215.140 with SMTP id z134mr43659687ywd.7.1456407317360;
        Thu, 25 Feb 2016 05:35:17 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x22b.google.com (mail-ig0-x22b.google.com. [2607:f8b0:4001:c05::22b])
        by gmr-mx.google.com with ESMTPS id iq8si230540igb.0.2016.02.25.05.35.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:35:17 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22b as permitted sender) client-ip=2607:f8b0:4001:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22b as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22b.google.com with SMTP id y8so13329780igp.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 05:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HdHLogWIyAaNc+JtVTSp2iyMWViNwFX7w1YYoQwjcjw=;
        b=FPLWNdsBIjMV+bbVwUTGMa5o3aRcsLCdYeD94wOv39Ag0pqRM0bJXFugx2rVp6zvzN
         Ev3o5DIRDTBC7O4lPuXQ0XCPxda1BUWk1a+aTDWTp2o4yHeXZsd499I4slokJVXBrnY6
         d9hcK+DEVOGY+UBsfQvDq45QERgNUdrQUQxpM7pCZ9TPMVO7+EixoOBMPVrb1PK9/ByP
         3MIY++IHLVn+ep99/JtfOZx1UqJyHLmNcOAlMR3FZwJlTuhSfA2PjVDZQFDDmytPRWgt
         12eV+KXD2Nl6+NE3MYFGxG3TLNGeflF/sZESZq8u2bpLUZPaIgS7biad/Js4u/qQQ54k
         HGNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HdHLogWIyAaNc+JtVTSp2iyMWViNwFX7w1YYoQwjcjw=;
        b=SN0D7+5D7FDriM4s+DF1J3ppy97p7L1swTgGEraA7xBPZ5BLkv33EAWc+CB0sZV75w
         i3Kczrepcbww9gv5fydt5v+kzGpS9y3M/Ec7d4D6QndtBOJIOofEWfwvk/wgIGK/Vxyn
         Fdg1ErTpN50eXQzh/2ncU9ZqVDTPnVxpWwMsPlukf0mbPVhFluvxe94RAlYsodOo7l7N
         7P0ku8i7jyLwAqFXjdGbfljrDi+CG4Rs7QjFiRf85R79xj2/D8hENbwjz/tyZJm1w0jU
         9Wg6DNKlOetoMkmJKUTsA2skqlUvp+3SUSLqeKPR7uJ7pmSqc78uqTHJxJliGGhLM7EY
         ghqA==
X-Gm-Message-State: AG10YOTmCy2SdGGeqRzmZTZzJ67er3cTwPh/+jn/3CX42Cm+xNAyDwCLCVwODS3YBYoAWQ==
X-Received: by 10.50.32.2 with SMTP id e2mr2859949igi.73.1456407317150;
        Thu, 25 Feb 2016 05:35:17 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id s38sm3231812ioe.33.2016.02.25.05.35.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:35:16 -0800 (PST)
Date: Thu, 25 Feb 2016 13:34:28 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fbtft: fbtft-bus.c: Drop unneeded void pointer cast
Message-ID: <20160225183428.GA6010@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unneeded cast on the void pointer par->txbuf.buf .
Semantic patch used:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x) [...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/fbtft/fbtft-bus.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
index 58449ad8..303be8e 100644
--- a/drivers/staging/fbtft/fbtft-bus.c
+++ b/drivers/staging/fbtft/fbtft-bus.c
@@ -125,7 +125,7 @@ EXPORT_SYMBOL(fbtft_write_reg8_bus9);
 int fbtft_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
 {
 	u16 *vmem16;
-	u16 *txbuf16 = (u16 *)par->txbuf.buf;
+	u16 *txbuf16 = par->txbuf.buf;
 	size_t remain;
 	size_t to_copy;
 	size_t tx_array_size;
@@ -150,7 +150,7 @@ int fbtft_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
 	tx_array_size = par->txbuf.len / 2;
 
 	if (par->startbyte) {
-		txbuf16 = (u16 *)(par->txbuf.buf + 1);
+		txbuf16 = par->txbuf.buf + 1;
 		tx_array_size -= 2;
 		*(u8 *)(par->txbuf.buf) = par->startbyte | 0x2;
 		startbyte_size = 1;
-- 
2.5.0


