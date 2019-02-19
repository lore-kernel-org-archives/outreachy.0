X-GM-THRID: 6659803062561931264
X-Received: by 2002:a25:24c1:: with SMTP id k184mr5673900ybk.30.1550606233117;
        Tue, 19 Feb 2019 11:57:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:6b0a:: with SMTP id g10ls4569651ybc.13.gmail; Tue, 19
 Feb 2019 11:57:12 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYJoIvmdiQJE4cxpOKqsChOqK6C9NkVdIW1KH0gQe6AE12qeicsf61Q5UPE7B7R31IpVRqE
X-Received: by 2002:a25:3294:: with SMTP id y142mr13913561yby.31.1550606232281;
        Tue, 19 Feb 2019 11:57:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550606232; cv=none;
        d=google.com; s=arc-20160816;
        b=DilmniH2m9Lpaj+XLjNXCGE0UqgcEhbUbMLs8tNN7ZT7eTIrxPRH0RAEK0UPfHrPUk
         AYhQlQhU5Z69vsidvTTQod6Zh5ta/8M58ZILZE2OjkbvJz73Z8Yyvti47sWerkHMh49W
         6IT1uw1kLIwOclzC4y6MaR66jHHIM+0Tgz0d2cWicNZSSglFdu0fo+TFN0H+u9xvPt4X
         gnT++/7toHhpr+X7ovc0aT5ww7MNPkR7E619tMOS8Z1RPhlYbF1A+Bm/j1x9snbyJ1Gz
         b5IvxiLXdAoHcLyq2r9sU9RkBdBdAHRtyHD48QnVEGMT9jtxMPBTyOWymMuXIwkYWZ4+
         xH+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=cqcjBep3iiNBvug5OcvVydLk5gGSwcgdfrm96pgGnQ0=;
        b=K6U2E4MGvlxeyudWxOX1RK5lUMrCnlIHMDRykQ9588Dg4HRGjAZZtMORcGWsE76aNJ
         7km3QGHnqSfToczuv1Bsi6GM/tmiBKlTwgNFsaE4lHZSX6y0KmC8PYGYbSQrOsy5xX1L
         1hUzNCiNAPilmO32QBXOP2HxQybMRTH14z75YPDSBAT1dBKslWl0nL0Dxz+I82pZI9xI
         LRvMK8sp+Rj0qF/0JfEWeWrtkeVnwhJS6na1gNjike/MFdZM/912GeAjIxKtADaOCy2L
         reZiD0YQ1GbaH8aj8HQqpYt7avwvSiZK3PeYiD92I3n5qq2YtGvxTJUpbN/Hlqf1TAL/
         yolg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KuFFKzsK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id h5si711844ybh.4.2019.02.19.11.57.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 11:57:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KuFFKzsK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id y4so10610095pgc.12
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 11:57:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cqcjBep3iiNBvug5OcvVydLk5gGSwcgdfrm96pgGnQ0=;
        b=KuFFKzsKaqGoa3zllYVe+Ccgx1W5OxPL5rb55rJYDPPpesJFaRJytPF0dEyOFfyUec
         9rVR6+ZGRPC5Fw7nuYnlcf0ldUKsoCr2Igy6NrXkoWkuFOVoxM4zj5qpa6RHqo5Kv+MI
         4acs+yrlUtqV9lJShFG9DTiFnLqDzmDZoKvkQNVarwBJGgnhNo65YbkdWMHw9cpKcLZt
         8q5bAmB+lAG4U2RF7m5meOEOZSviVdNB+D5bVW9AyKI4wpY7Cuh6Y/2WN1YekJzcIlRH
         BlRJDPj0YUhjE1nuMly8QIcdYZn3D89f+47riEPF4Ntuf0H6O+nYgiCluECla99qdVov
         MFBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cqcjBep3iiNBvug5OcvVydLk5gGSwcgdfrm96pgGnQ0=;
        b=TbU3RThy9BYbM87DKz5tcaEw+UC1LiOEKuVmR5w6MzeX0eYekr+arLdMqkyv+peTr9
         MQf2BVlllRTts906ql/NM0G7XeXcRXYiCy+NPhdZYVAhyf2AAxLIxYL/asWRof7FNc2h
         nhw8gZizdJucGi1NuwqVyz6QaP0a/3xEh8+6Nm4G+j6My3m1wFi9CeLbj0adeldp4gzu
         opoopJd36VJqfYYWPEvjCSqrMap1sI8tdFRFQQ7+I/RiZYm1rIb2dIumsQtPl7yG1a49
         NIXDoNKWqYVLLfmSiz9dbAYqb8M71lxX/iWLBP77Se+lgBHaT1i8+p9g1fsuyjJlHKMQ
         iNLg==
X-Gm-Message-State: AHQUAubs8hS9p59j6ujsrwoQnfmYduQNx0yCPenTqklK4oMrgp6auc3j
	a17/Nm4nZvxgzhTViS1cFWWvWoGx4aU=
X-Received: by 2002:a63:f07:: with SMTP id e7mr16072668pgl.173.1550606231454;
        Tue, 19 Feb 2019 11:57:11 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id f62sm27021790pgc.67.2019.02.19.11.57.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 11:57:10 -0800 (PST)
Date: Wed, 20 Feb 2019 01:27:08 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [Outreachy Kernel][PATCH 1/2] Staging: rts5208: Fix Avoid Camel Case
 - style
Message-ID: <20190219195708.GA16266@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fixes Avoid Camel Case for various Macros

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rts5208/xd.c | 8 ++++----
 drivers/staging/rts5208/xd.h | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index c5ee04ecd1c9..1187c75d764a 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
 			xd_card->zone_cnt = 32;
 			xd_card->capacity = 1024000;
 			break;
-		case xD_1G_X8_512:
+		case XD_1G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 64;
 			xd_card->capacity = 2048000;
 			break;
-		case xD_2G_X8_512:
+		case XD_2G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 128;
@@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
 		return STATUS_FAIL;
 	}
 
-	retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
+	retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
-	dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n",
+	dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n",
 		id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
 	if (id_buf[2] != XD_ID_CODE)
 		return STATUS_FAIL;
diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index 57b94129b26f..98c00f268e56 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -36,7 +36,7 @@
 #define	BLK_ERASE_1			0x60
 #define	BLK_ERASE_2			0xD0
 #define READ_STS			0x70
-#define READ_xD_ID			0x9A
+#define READ_XD_ID			0x9A
 #define	COPY_BACK_512			0x8A
 #define	COPY_BACK_2K			0x85
 #define	READ1_1_2			0x30
@@ -72,8 +72,8 @@
 #define	XD_128M_X16_2048		0xC1
 #define	XD_4M_X8_512_1			0xE3
 #define	XD_4M_X8_512_2			0xE5
-#define	xD_1G_X8_512			0xD3
-#define	xD_2G_X8_512			0xD5
+#define	XD_1G_X8_512			0xD3
+#define	XD_2G_X8_512			0xD5
 
 #define	XD_ID_CODE			0xB5
 
-- 
2.17.1


