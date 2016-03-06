X-GM-THRID: 6259022547869761536
X-Received: by 10.140.157.69 with SMTP id d66mr14228444qhd.13.1457292248855;
        Sun, 06 Mar 2016 11:24:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.33.137 with SMTP id r9ls560162obi.65.gmail; Sun, 06 Mar
 2016 11:24:08 -0800 (PST)
X-Received: by 10.182.22.48 with SMTP id a16mr14340218obf.29.1457292248339;
        Sun, 06 Mar 2016 11:24:08 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id r75si2531965pfr.0.2016.03.06.11.24.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 11:24:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id 1so750260pal.3
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 11:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=01MRta6Kjcc4mUtC9g+SsXDfntUwMNNYWbxQ7HS2cQY=;
        b=EQ6bWdeBMfpVQ8EOp+JR15UiKyr7C5aHO2VpxJ5ihkRUl8mqmjrCJf7CTBSX/+sQC+
         n+NJ5kOLmqteKv+ITxo5G/zLoG7PJK+sG6OGNioUm0/JBh8u+w5sd24Xyu47MOzSJ4sA
         UNQ2OcfJraSvYjgJy5Kw0s+kQ75t6iCpvL+yBRKuM1Ylx6TNOrsGaZPDrc1mVNsi4tuK
         XN/kbyjY3TnwSop9y4OBITk2Xj2YDTYiB3HA9Nd2g9Mch23Zx3QpnW/A0GDOm8xurPD+
         TOcfBufCh59gURE9n6635CrBWoBXFXZAJBS8RUccZRFBWxOuVlvGP8Lx6jK6sstIzzP2
         M6BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=01MRta6Kjcc4mUtC9g+SsXDfntUwMNNYWbxQ7HS2cQY=;
        b=HCkt4rTQZKqA8Zrm8myV1cJxI/A7WUhrpcUa4+PGUmHsAoC3mNl3kBRxspSNqagqOq
         pSy48P0NQmpcmqvnMfLfdCIxBUedU45uI63q80PxeDL1k6NVRdgZAhhRfIacObKe/45N
         HsJ83vpAB9xOEMI+OCOZkOJ+JgNBPHePowIex7qXFy6j8R46dsWgzhEBuIHJX18fZLuG
         6mDAIQaMyLpOxLiAlbmeLJpHJUX0vQflBJfqEgIAFwI1uIZx5v+5hRNB0iDRaoldOTFO
         1sah4fTabdaboQW1llOa0G7Zmqke5m9cmj3//mr+UguBhV7HhRETVyq4ogk/tZ4fPK9R
         zxFA==
X-Gm-Message-State: AD7BkJIUXG4ID3PuC0IMCHvonQHzpsXCxwRas5J3BuCxX/od8TQV29Jdu/QYzenNUF4ZFw==
X-Received: by 10.66.140.70 with SMTP id re6mr28339341pab.100.1457292248176;
        Sun, 06 Mar 2016 11:24:08 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id u64sm19184559pfa.86.2016.03.06.11.24.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 11:24:07 -0800 (PST)
Date: Sun, 6 Mar 2016 16:54:24 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: gs_fpgaboot: Fix multiple coding style issues.
Message-ID: <20160306112424.GA5633@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Fix below coding style issues.
- Fix alignment to match open parenthesis.
- Use space around '+'. 
- Remove unnecessary blank lines. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
index fe3a6bc..96432c5 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
@@ -93,7 +93,6 @@ static int readlength_bitstream(char *bitdata, int *lendata, int *offset)
 	return 0;
 }
 
-
 /*
  * read first 13 bytes to check bitstream magic number
  */
@@ -201,7 +200,7 @@ static int gs_download_image(struct fpgaimage *fimage, enum wbus bus_bytes)
 #endif /* DEBUG_FPGA */
 	if (!xl_supported_prog_bus_width(bus_bytes)) {
 		pr_err("unsupported program bus width %d\n",
-				bus_bytes);
+		       bus_bytes);
 		return -1;
 	}
 
@@ -222,7 +221,7 @@ static int gs_download_image(struct fpgaimage *fimage, enum wbus bus_bytes)
 	pr_info("device init done\n");
 
 	for (i = 0; i < size; i += bus_bytes)
-		xl_shift_bytes_out(bus_bytes, bitdata+i);
+		xl_shift_bytes_out(bus_bytes, bitdata + i);
 
 	pr_info("program done\n");
 
@@ -277,7 +276,7 @@ static int gs_set_download_method(struct fpgaimage *fimage)
 static int init_driver(void)
 {
 	firmware_pdev = platform_device_register_simple("fpgaboot", -1,
-							 NULL, 0);
+							NULL, 0);
 	return PTR_ERR_OR_ZERO(firmware_pdev);
 }
 
@@ -336,7 +335,6 @@ err_out1:
 	kfree(fimage);
 
 	return -1;
-
 }
 
 static int __init gs_fpgaboot_init(void)
-- 
1.8.3.4


