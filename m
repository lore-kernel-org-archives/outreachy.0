X-GM-THRID: 6252998244395122688
X-Received: by 10.50.13.69 with SMTP id f5mr8402573igc.7.1455889669941;
        Fri, 19 Feb 2016 05:47:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.213 with SMTP id a204ls161930ioe.99.gmail; Fri, 19 Feb
 2016 05:47:49 -0800 (PST)
X-Received: by 10.107.11.222 with SMTP id 91mr13849066iol.7.1455889669658;
        Fri, 19 Feb 2016 05:47:49 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id 79si1602756pft.0.2016.02.19.05.47.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 05:47:49 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fl4so50755997pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 05:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=hntjUff9emncpe9WRai69yc5r12O2djMy1mO943gics=;
        b=Ts/p1NLjpMN4TrB9ax8pzqzgbVyWGfBDksnEfVmX78+G9y6VTrCwNKHm5J9P33iPiE
         orXtqDMivA4OVGrByfsHSdehQ1pRLiIVaMylKNGlEjPh6PSw65NZ6OekpMjLW/mgRFyB
         T54dBhCCCVqKrUES/2FSeLZngsN+S7DYUmm1ylOpArCJFL2hHHQhiYqcMgDzESrHQcYR
         5G5Ff7CgzkjCh8DB0KxoeJKycoCpG3y4/QT2MvLTDBaiyv2gSI1obCr3/ErLiFfWnNiL
         fKSwnGwrmca3t9MjLOx65vX9hW9+nMOpeGBD67tEKrUJwlVV1NEkAh9vFf7O0rEgdqCP
         plzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=hntjUff9emncpe9WRai69yc5r12O2djMy1mO943gics=;
        b=REDp90RS9TWDWAwfQ5hnknt32tW79PD3DwT2nFbiWghD5cXmJPCeRzar6BMJDvQPB0
         tuR6Bu51PYV0Ox0h4r+W24mgy7sIAXaULscui2X6FZ5Xu4pr2dMS0MmHxQxXHzvsCYnh
         N6NpTMb+HADZPM4gw9i4P7fPj/IIe3RvPQLVnJi8KRCvzi6z8LzJdZ2YLBpkCDnLKzZL
         7smzzuPJ7fOC9VN7VuDYibIyfjcRcXEo/rdYKYppsBOjzAHN+adbhXid1N36+6sN4sPE
         +ZyB4nzV0v63QWJ/TVr+bVT4vbbdCRJsW6iYT016ykRp7qmhxxy+YBMt85/21zihJvhR
         nwdA==
X-Gm-Message-State: AG10YOQfz52oECN3SVKbP99tbAXWTZcuLKycPvnwj/ZlNW0RxGHcdyx2vg07NqIbdVPpDg==
X-Received: by 10.66.190.40 with SMTP id gn8mr18069714pac.64.1455889669549;
        Fri, 19 Feb 2016 05:47:49 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x1sm18073010pfi.42.2016.02.19.05.47.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 05:47:49 -0800 (PST)
Date: Fri, 19 Feb 2016 19:18:19 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtl8712: Place constants on the right side
Message-ID: <20160219134819.GA20027@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move constants to the right of binary operators.
This issue was identified using the Coccinelle script:
misc/compare_const_fl.cocci

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 76f60ba..2ae0ae6 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -85,7 +85,7 @@ static u8 efuse_one_byte_read(struct _adapter *padapter, u16 addr, u8 *data)
 	       (r8712_read8(padapter, EFUSE_CTRL + 2) & 0xFC));
 	r8712_write8(padapter, EFUSE_CTRL + 3, 0x72); /* read cmd */
 	/* wait for complete */
-	while (!(0x80 & r8712_read8(padapter, EFUSE_CTRL + 3)) &&
+	while (!(r8712_read8(padapter, EFUSE_CTRL + 3) & 0x80) &&
 	       (tmpidx < 100))
 		tmpidx++;
 	if (tmpidx < 100) {
@@ -109,7 +109,7 @@ static u8 efuse_one_byte_write(struct _adapter *padapter, u16 addr, u8 data)
 	r8712_write8(padapter, EFUSE_CTRL, data); /* data */
 	r8712_write8(padapter, EFUSE_CTRL + 3, 0xF2); /* write cmd */
 	/* wait for complete */
-	while ((0x80 &  r8712_read8(padapter, EFUSE_CTRL + 3)) &&
+	while ((r8712_read8(padapter, EFUSE_CTRL + 3) &  0x80) &&
 	       (tmpidx < 100))
 		tmpidx++;
 	if (tmpidx < 100)
@@ -131,7 +131,7 @@ static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
 	r8712_write8(padapter, EFUSE_CTRL + 2, tmpv8);
 	if (bRead) {
 		r8712_write8(padapter, EFUSE_CTRL + 3,  0x72); /* read cmd */
-		while (!(0x80 & r8712_read8(padapter, EFUSE_CTRL + 3)) &&
+		while (!(r8712_read8(padapter, EFUSE_CTRL + 3) & 0x80) &&
 		       (tmpidx < 100))
 			tmpidx++;
 		if (tmpidx < 100) {
@@ -144,7 +144,7 @@ static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
 	} else {
 		r8712_write8(padapter, EFUSE_CTRL, *data); /* data */
 		r8712_write8(padapter, EFUSE_CTRL + 3, 0xF2); /* write cmd */
-		while ((0x80 & r8712_read8(padapter, EFUSE_CTRL + 3)) &&
+		while ((r8712_read8(padapter, EFUSE_CTRL + 3) & 0x80) &&
 		       (tmpidx < 100))
 			tmpidx++;
 		if (tmpidx < 100)
--
2.1.4


