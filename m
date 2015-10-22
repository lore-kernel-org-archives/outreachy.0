X-GM-THRID: 6208528687273345024
X-Received: by 10.50.62.68 with SMTP id w4mr14079778igr.13.1445535730216;
        Thu, 22 Oct 2015 10:42:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.243 with SMTP id 106ls1513740qgn.31.gmail; Thu, 22 Oct
 2015 10:42:09 -0700 (PDT)
X-Received: by 10.13.234.66 with SMTP id t63mr13032260ywe.45.1445535729623;
        Thu, 22 Oct 2015 10:42:09 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id fa8si1832828pab.1.2015.10.22.10.42.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 10:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id z6so92280981pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 10:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=P4/ylwsDOs4tWNwyW3jjGkAyKvNmCh3qKEFmD7rIOzM=;
        b=I+kDeDogkLZO5QSgUguOPr5bglThUD0CXgV6d/EDmjek8yyNpZ47sTXtWtiI84QYsp
         cjTaqD1OhZ00N+3i+AH1dipXneX3lpycWBm3eIp+bL4JEnWDUuzc9B61FUMM4/Scnzti
         lGv41U3/y8stWBwTyc8+zb0KjUO1zflDebN3LTDdWayqXNUMUhtsxDEXtTjPPN8hvX22
         0C619sLvUCRZoKiArh4Pk4MxxNGoSgcAHCSVkvJir/l9uLNNAEEAxvk+rqkHg5kjH5kU
         aNRshpQVZRvEp2j2OuBl55Z0vDFUKtk3REVG6Q+IVQDIqqOv/H3oI2xyGg3lRMBSi17R
         4ESg==
X-Received: by 10.66.162.227 with SMTP id yd3mr18997918pab.53.1445535729457;
        Thu, 22 Oct 2015 10:42:09 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.34.222])
        by smtp.gmail.com with ESMTPSA id ro3sm14831487pbc.69.2015.10.22.10.42.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 10:42:09 -0700 (PDT)
Date: Thu, 22 Oct 2015 23:12:14 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: xgifb: Loop optimization.
Message-ID: <20151022174214.GA17978@navya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Put operations involving loop constants outside
the loop.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index c886dd2..78ee191 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1138,19 +1138,18 @@ static void XGI_LoadDAC(struct vb_device_info *pVBInfo)
 		dl = 0;
 
 		for (n = 0; n < 3; n++) {
+			ah = table[di];
+			al = table[bx];
 			for (o = 0; o < 5; o++) {
 				dh = table[si];
-				ah = table[di];
-				al = table[bx];
 				si++;
 				XGI_WriteDAC(dl, ah, al, dh, pVBInfo);
 			}
 
 			si -= 2;
-
+			dh = table[bx];
+			ah = table[di];
 			for (o = 0; o < 3; o++) {
-				dh = table[bx];
-				ah = table[di];
 				al = table[si];
 				si--;
 				XGI_WriteDAC(dl, ah, al, dh, pVBInfo);
-- 
1.9.1


