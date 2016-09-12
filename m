X-GM-THRID: 6329500123331035136
X-Received: by 10.36.115.205 with SMTP id y196mr12163158itb.2.1473701587507;
        Mon, 12 Sep 2016 10:33:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.134 with SMTP id 128ls3313070ith.10.canary; Mon, 12 Sep
 2016 10:33:06 -0700 (PDT)
X-Received: by 10.98.207.69 with SMTP id b66mr16718124pfg.14.1473701586282;
        Mon, 12 Sep 2016 10:33:06 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id z4si2573603pam.0.2016.09.12.10.33.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:33:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id pp5so8050577pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 10:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=3289LaPR9k7tQfBsKuAlqT/inXDi/ZRSR7NVVhF38qI=;
        b=sX6J9Q63QQMoWdSLLtJ4iUh3OfPqHO6r3LchyuZxBuXHiKlVoV7S/k4mZWGi3OPWBX
         1BOOeuXhiPja5YvTwLu1/eRsrgZ7uUE0I9R8ycAJCwTaUnoLWu8r6hnb26iILS3jPdI1
         9C/iveUd+6zP6p3t9AuJwVVJxu6svH9gSpIOzPMLjzPRbroKpwIqhYgGyIMGuvy5IZYm
         lx1Kuev4hj1WTP/YpTst1HJnvSiw9ombyqzFCisf0PhFXRslLfWRDFB42Dy/83WnjMAO
         IAAvdrbM+y/Gn8lCvHbYURHjttcCdBi4V9m+TB1Rx84hVLsrbDiKW/gNbOJyqSkZayd5
         GibA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=3289LaPR9k7tQfBsKuAlqT/inXDi/ZRSR7NVVhF38qI=;
        b=Deh8ty5C+g2VvnUOCMT88jNK60UBVK6ipm1izqxcbDF9zrIoul/lKt0eID+5zwO7RS
         InEn7ivghOTCdbEFY+Kf5LMEj9d2PHUbKgcca5KLiWkVqcyZ+lfFMVVxDQ2gQt7qhQLI
         pG3128Wt7kXO/Ft+Bx1jyJV47x8i01zG7fiMXjMBtxkCI6GtuZT+QAGOL2gmt2GBgoO/
         wQMyayuFVda7hZLis4PrVQjiXnU8bfof2jCq06C3XhrX0v3R1TVQSLlbsziyPEpKnMNF
         E7BC1kHmK8Q9vLwj3RT8ixwKXVTB/9KS4KULjQNDMS4qYCxacaUV7jnaKGZZr9hh8K5j
         x4zg==
X-Gm-Message-State: AE9vXwOZqmTLrycZvGy4pF1SCpGuhCbNsaHGz5POOuY+lOtgMvS55irbP440LAs8J01Fdg==
X-Received: by 10.66.126.131 with SMTP id my3mr35991888pab.115.1473701586103;
        Mon, 12 Sep 2016 10:33:06 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.128.242])
        by smtp.gmail.com with ESMTPSA id x126sm25944275pfx.61.2016.09.12.10.32.58
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 10:33:04 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 12 Sep 2016 23:02:48 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: bhumirks@gmail.com,
	hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	abbotti@mev.co.uk,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: comedi: drivers: Delete NULL check before pci_dev_put
Date: Mon, 12 Sep 2016 23:02:47 +0530
Message-Id: <1473701567-23860-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The function pci_dev_put checks whether its argument is NULL and returns
immediately. Therefore, NULL test before the call if not needed.
Found using coccinelle:
@@
expression x;
@@

- if(x)
- pci_dev_put(x);
+ pci_dev_put(x);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/comedi/drivers/adl_pci9118.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/adl_pci9118.c b/drivers/staging/comedi/drivers/adl_pci9118.c
index be70bd3..86450c0 100644
--- a/drivers/staging/comedi/drivers/adl_pci9118.c
+++ b/drivers/staging/comedi/drivers/adl_pci9118.c
@@ -1693,8 +1693,7 @@ static void pci9118_detach(struct comedi_device *dev)
 		pci9118_reset(dev);
 	comedi_pci_detach(dev);
 	pci9118_free_dma(dev);
-	if (pcidev)
-		pci_dev_put(pcidev);
+	pci_dev_put(pcidev);
 }
 
 static struct comedi_driver adl_pci9118_driver = {
-- 
1.9.1


