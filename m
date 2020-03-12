X-GM-THRID: 6803246482935775232
X-Received: by 2002:a1c:29c2:: with SMTP id p185mr3868224wmp.79.1584004257545;
        Thu, 12 Mar 2020 02:10:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls2022521wmf.2.gmail; Thu, 12
 Mar 2020 02:10:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvg/vDphRBsq6DhqNoej5uoiOVJzv05lQTDrRoxHoQ5y69GxoMDbx8WlSmXeZyIj9UQ3tbx
X-Received: by 2002:a1c:6146:: with SMTP id v67mr3931465wmb.78.1584004255117;
        Thu, 12 Mar 2020 02:10:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584004255; cv=none;
        d=google.com; s=arc-20160816;
        b=Nju8C16ZnuV5FhWfvaaGw3CfbPAkYQU0DtdP5biIe1Pe2VXDF8X0r/3Sh5zspubLhf
         4CZ3inZqr1z7pLXGlseBhH9QvvtWmXzVBi2IU3dxUq1jrbTPKCn1ws/XSCjPdOR9l2mA
         5Pi0Jn8/mMr2PY3Hb0mTwHDYxKZ2iD5v2wjpRse3eAKnX4QeG7Mfp44QyVbJcZjN5JHt
         A1P7bzKI8t8MHtM6/BltahRkEGcKdR2n4+i0lYYNSInu+JeXx3TDvZJ5RjBpnsT81CFf
         UE0Vl/XJPRJlnQ/im69wYMhrAqFiIH2C+/wDeuIMimU5nU9Cp0C1j/kKfCnCCjMykDbh
         2lZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date;
        bh=qpwHe/P29g6p8GFNtpXJFK2SG5IUFvGaEb6ur5Yy2FQ=;
        b=psN50+NUYafm0B6ajL88HbqjEj7uhUWAwMWHErrABk2xKXlb2u6VlE8N8meydKeZzN
         vej6/3s0yAD4sYdwPm5ZHJQWXEDCbuI3Gibn3DSbh7B79u+SAlmC3fwqzd7oksIFkveg
         dhNyoAmJIcHiKUvlXFO69l4I1C7368TbftedLjMb1ksztohQ77NNKF9+/WlzlC8R2Imo
         aRBAeJajO+zj1f/jQXLJdDwdUmEfk7NMdhfowayZ7IP6I2tIwxtQVpgehqqj+cBrXjh2
         GCSx9qvUby7z25VJnSgmNXOzFcxx9UWAujLouMx/Dy1Xms6M6b1TigB0Py7paEUDbOQs
         ojWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id f1si151054wme.1.2020.03.12.02.10.54
        for <outreachy-kernel@googlegroups.com>;
        Thu, 12 Mar 2020 02:10:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 11511 invoked from network); 12 Mar 2020 09:10:54 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.246.223.143)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 12 Mar 2020 09:10:54 -0000
Date: Thu, 12 Mar 2020 14:40:48 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8712: Fixes for simple typos in C comments
Message-ID: <20200312091042.GA4246@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Fixes for simple typos in C comments.
Found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8712/rtl871x_cmd.h  | 2 +-
 drivers/staging/rtl8712/rtl871x_recv.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 98d7fbfce1a5..254182a6ce8e 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -478,7 +478,7 @@ struct drvint_cmd_parm {
 	unsigned char *pbuf;
 };
 
-/*------------------- Below are used for RF/BB tunning ---------------------*/
+/*------------------- Below are used for RF/BB tuning ---------------------*/
 
 struct	setantenna_parm {
 	u8	tx_antset;
diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index 0146a774e19d..e93f356ed2b0 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -53,7 +53,7 @@ struct rx_pkt_attrib {
 	u8	privacy; /* in frame_ctrl field */
 	u8	bdecrypted;
 	int	hdrlen;	 /* the WLAN Header Len */
-	int	encrypt; /* 0 no encrypt. != 0 encrypt algorith */
+	int	encrypt; /* 0 no encrypt. != 0 encrypt algorithm */
 	int	iv_len;
 	int	icv_len;
 	int	priority;
@@ -105,7 +105,7 @@ struct recv_priv {
 	u8 *precv_buf;    /* 4 alignment */
 	struct  __queue	free_recv_buf_queue;
 	u32	free_recv_buf_queue_cnt;
-	/* For the phy informatiom */
+	/* For the phy information */
 	s8 rssi;
 	u8 signal;
 	u8 noise;
-- 
2.20.1


