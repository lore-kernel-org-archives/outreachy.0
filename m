X-GM-THRID: 6211302879745015808
X-Received: by 10.66.244.43 with SMTP id xd11mr10768908pac.28.1446298614025;
        Sat, 31 Oct 2015 06:36:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.53 with SMTP id g50ls1178792qgf.98.gmail; Sat, 31 Oct
 2015 06:36:53 -0700 (PDT)
X-Received: by 10.13.198.1 with SMTP id i1mr4339894ywd.37.1446298613348;
        Sat, 31 Oct 2015 06:36:53 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si1173829pac.2.2015.10.31.06.36.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 06:36:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so105094531pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 06:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6ef8DPJKVQxhWEfcEVJdA8KnfZahkDbIPOBEUZClWZM=;
        b=pfQnSAqsewyztxU6vDILplwZ7XWhvaAxoHqGDFTtZ+8mhTyanfdno+tzmp9xriLHk9
         GkDxF3y+UEJ43RFStkrV8fFqKjaSO3yt9JQP6nyXpzypSgpmyKK8MtkMpTX0ymMKzfhd
         jkt9rk0C6RHCO6ZJ0qsp1boe0I5rFNXpO60Bgqsg1dQ4QgFnA3oV7zr4oflYPncy+ybU
         q5Nhq4+rKIPhZyGNU22yIbTrk/mtPV4MYFRQBaD21aIPBXUtO2ObX03zEsPVaCsvmclN
         0VsnKAldcLAAvhDC/cvdPwf5uE7BpplLsmtYO3sOEoYmD5ctRe6QWlreRQF94hPsOPuw
         1NqQ==
X-Received: by 10.68.197.69 with SMTP id is5mr11593465pbc.83.1446298613210;
        Sat, 31 Oct 2015 06:36:53 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (108-60-106-94.static.wiline.com. [108.60.106.94])
        by smtp.gmail.com with ESMTPSA id cn4sm13962991pbc.94.2015.10.31.06.36.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 31 Oct 2015 06:36:52 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 2/2] Staging: comedi: adl_pci9118: Fix endian sparse warning
Date: Sat, 31 Oct 2015 06:36:44 -0700
Message-Id: <c0d67a6b5eba5c12f87dd7c8ee33241fa1c5fcd1.1446297932.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1446297932.git.ksenija.stanojevic@gmail.com>
References: <cover.1446297932.git.ksenija.stanojevic@gmail.com>

Fix following sparse warning:
warning: cast to restricted __be16

data is pointer of type void and can be used to store any type of data.
barray and array have the same 16 bit offset.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v2:
 - none

 drivers/staging/comedi/drivers/adl_pci9118.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/adl_pci9118.c b/drivers/staging/comedi/drivers/adl_pci9118.c
index 0dff1db..4437ea3 100644
--- a/drivers/staging/comedi/drivers/adl_pci9118.c
+++ b/drivers/staging/comedi/drivers/adl_pci9118.c
@@ -603,10 +603,11 @@ static void pci9118_ai_munge(struct comedi_device *dev,
 	unsigned short *array = data;
 	unsigned int num_samples = comedi_bytes_to_samples(s, num_bytes);
 	unsigned int i;
+	__be16 *barray = data;
 
 	for (i = 0; i < num_samples; i++) {
 		if (devpriv->usedma)
-			array[i] = be16_to_cpu(array[i]);
+			array[i] = be16_to_cpu(barray[i]);
 		if (s->maxdata == 0xffff)
 			array[i] ^= 0x8000;
 		else
-- 
1.9.1


