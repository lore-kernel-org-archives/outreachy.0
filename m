X-GM-THRID: 6255241548273811456
X-Received: by 10.129.108.3 with SMTP id h3mr42458382ywc.31.1456411915337;
        Thu, 25 Feb 2016 06:51:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.103.240 with SMTP id y103ls388042qge.59.gmail; Thu, 25 Feb
 2016 06:51:54 -0800 (PST)
X-Received: by 10.13.221.75 with SMTP id g72mr42485852ywe.34.1456411914726;
        Thu, 25 Feb 2016 06:51:54 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x231.google.com (mail-ig0-x231.google.com. [2607:f8b0:4001:c05::231])
        by gmr-mx.google.com with ESMTPS id i9si242960igg.1.2016.02.25.06.51.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:51:54 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::231 as permitted sender) client-ip=2607:f8b0:4001:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::231 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x231.google.com with SMTP id y8so14964997igp.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=l3Dpdz1qbjipySUnjRn6FxwCxOKubu5TkZOZweh1CKo=;
        b=Mclf1OAYCkg3y0dYAJHp5x8/Gn1/hAE/f5e5YKiYEnjGNKFz9mEOcwaLAbV/q/u3yY
         fhCucpSmD6cly37gyP6eRykN4GFVSZArlPHfOTooVmHwYoXlz7nYTnj0MCr/BZb8P0Rb
         4GCCNgbhlIOybfACBKUW5OIhwhNPkBOXoMOxPYd+WL0vBkgLnCkN+EHUU9GSOL+0BxgH
         Suenyw5KK8wkF+8nxrfbbnNjU57tJs9BYqaWt8Z23C2jvm/fKl6i3gDYhqBFL9U7xTSr
         2k22H1P7fDMLXFBQ0HGgaf1A4O/GHrR+s+zo1ZwTQKmjbqU1EKEps09rQ2hcL/jukXpd
         GKbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=l3Dpdz1qbjipySUnjRn6FxwCxOKubu5TkZOZweh1CKo=;
        b=kKkh3SOZ1Q5KTClB5b5wcOks04y+gc5jKjBMMEAJwOxNtPiGBx99q0Oxqq9Y2Vfnlg
         5s62TSsTwbgNnecnD6eJuRj+cfUUhPsTlcWF82aN2XrVmIsBRQ4poLN/FJPTKwJWsYrL
         jQ4BXrxa0EnTbInrw352+dnn82Scc8176hU6Cm4vWLIFH+WUmHUm513F/ueOjA3Zi+4q
         5EGREAlqRhbQJuuGqgD2h24SlIE89f4tjG6k0dXJdH4vQ6JROrgwVxZ0Jf8b2JTG2tv3
         2gMlMANooIVwx/meKG+UMOiwjXQJsGkVTllRrbmw7MyVhBUY+EAF0MnSoRkhqQ1fNsOa
         sgjA==
X-Gm-Message-State: AG10YOQTsT+W6oKmPAnMPQDec3MVxlDMSg4iVu7zJkOdh+8DbuZmgHg0CSyPp8pGEiitlg==
X-Received: by 10.50.108.112 with SMTP id hj16mr2706400igb.35.1456411914543;
        Thu, 25 Feb 2016 06:51:54 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id c79sm3357546iod.5.2016.02.25.06.51.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:51:54 -0800 (PST)
Date: Thu, 25 Feb 2016 14:51:06 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: mt29f_spinand: Drop void pointer cast
Message-ID: <20160225195106.GA7642@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers need not be cast to other pointer types.
Semantic patch used:

@r@
expression x;
void *e;
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
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index 75fe61c..aa0170e 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -33,7 +33,7 @@ static inline struct spinand_state *mtd_to_state(struct mtd_info *mtd)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct spinand_info *info = nand_get_controller_data(chip);
-	struct spinand_state *state = (struct spinand_state *)info->priv;
+	struct spinand_state *state = info->priv;
 
 	return state;
 }
@@ -749,7 +749,7 @@ static void spinand_cmdfunc(struct mtd_info *mtd, unsigned int command,
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct spinand_info *info = nand_get_controller_data(chip);
-	struct spinand_state *state = (struct spinand_state *)info->priv;
+	struct spinand_state *state = info->priv;
 
 	switch (command) {
 	/*
-- 
2.5.0


