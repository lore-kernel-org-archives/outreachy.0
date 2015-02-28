X-GM-THRID: 5258052894720
X-Received: by 10.66.252.138 with SMTP id zs10mr19775330pac.3.1425160954955;
        Sat, 28 Feb 2015 14:02:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.227 with SMTP id b90ls1170176qge.49.gmail; Sat, 28 Feb
 2015 14:02:34 -0800 (PST)
X-Received: by 10.140.152.140 with SMTP id 134mr19340309qhy.6.1425160954763;
        Sat, 28 Feb 2015 14:02:34 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id bo1si965989pbc.0.2015.02.28.14.02.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 14:02:34 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so3001755pab.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 14:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=e0IMUYd14rna5si2DaUFEQ4yRiqFtViMbxS5J9u9N0E=;
        b=TZDgc53HK6c/nRJDvQLPNcRCBiYHAJ8lAi4GpdJWSVD+Nics6CXcJ2dTF3Hx1abHzR
         DH4ixmLkv8TrrrSTYFP19Ij21iIUVpExnHOORVxDvKOCNMmm+KhQPH/KHDeK2cOIJCWE
         YcFDpw5JuZlXpCpo2g0Dpu0RkobdxRrre/+Xmmwi861qSQgDxfG0jrlX7t9DHFD85GEh
         bH/PuWXu48ffxkpLUHjorISNKR3oZe3iOvw+zUphPAS8UbKHp0GhbUgQX5wjBzlL6887
         a1jOVj4PFUieG+6wNnpL9yQqo6R0pwRqoZ0/K4X7wawRSIMrzpPX1eWIrbKwKdJlTkqR
         fWPw==
X-Received: by 10.68.95.130 with SMTP id dk2mr34973255pbb.51.1425160954646;
        Sat, 28 Feb 2015 14:02:34 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id ju5sm7701048pbb.27.2015.02.28.14.02.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 14:02:34 -0800 (PST)
Date: Sun, 1 Mar 2015 03:33:47 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: Remove semicolon after if.
Message-ID: <20150228220347.GA5430@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes a semicolon after if and encloses
statements related to that if in brackets. The following
coccinelle script was used to detect the pattern of a
semicolon after if.

@r1@
position p;
@@
if (...);@p
@script:python@
p0 << r1.p;
@@
// Emacs org-mode output
cocci.print_main("", p0)
cocci.print_secs("", p0)

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/comedi/drivers/das1800.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
index 0790a28..c759a84 100644
--- a/drivers/staging/comedi/drivers/das1800.c
+++ b/drivers/staging/comedi/drivers/das1800.c
@@ -492,11 +492,11 @@ static void das1800_handle_fifo_not_empty(struct comedi_device *dev,
 	while (inb(dev->iobase + DAS1800_STATUS) & FNE) {
 		dpnt = inw(dev->iobase + DAS1800_FIFO);
 		/* convert to unsigned type if we are in a bipolar mode */
-		if (!unipolar)
-			;
-		dpnt = munge_bipolar_sample(dev, dpnt);
+		if (!unipolar) {
+		dpnt = mungef_bipolar_sample(dev, dpnt);
 		comedi_buf_write_samples(s, &dpnt, 1);
-
+		}
+	
 		if (cmd->stop_src == TRIG_COUNT &&
 		    s->async->scans_done >= cmd->stop_arg)
 			break;
-- 
1.9.1


