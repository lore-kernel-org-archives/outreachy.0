X-GM-THRID: 6329773916361326592
X-Received: by 10.31.8.206 with SMTP id 197mr172353vki.11.1473765335506;
        Tue, 13 Sep 2016 04:15:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.234 with SMTP id e97ls1028248otb.40.gmail; Tue, 13 Sep
 2016 04:15:35 -0700 (PDT)
X-Received: by 10.237.33.226 with SMTP id m31mr182484qtc.19.1473765335003;
        Tue, 13 Sep 2016 04:15:35 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id si10si3204550pab.1.2016.09.13.04.15.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 04:15:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id p2so2880167pap.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 04:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HzYNFvh8UcHG17g9+pVSdODx0PkAJoxmNIAGT/hKzfs=;
        b=Ub+c0K2DGllXZQg9adkJrXhNIsHNRB/tYlmnVobvaQTKNm0zOOxvoNh6MdckEMo2bk
         Q+oyxuQ2mu1X6R+yNXWNQqS6oaNo+nS9qJBGAI3VsReAXs5AeoQ11Yg0eHeUyv4KxcLS
         /4yK5xPSpM0CmxQ2eh8cZnF8mgVEyHhZrIe3VXbYi1c/EYjUqmnVd3HEe2VhtN7m93pl
         1zwieCLxSuI0LvCruqBexoIz2p4ijEGLRAojZePo+QhEbn/CkS0KAgO+7qixNeu/2ok7
         ArwCFrmE4BYNiAK9ccgwOVHwrYz7vrb4CroFv9b+3emDXsJ91mhiKBOG6tGzYnAePfIU
         wLwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HzYNFvh8UcHG17g9+pVSdODx0PkAJoxmNIAGT/hKzfs=;
        b=PJzuqp58PNcET+SM/SKtjR+Vg+ZjzAtSyTrqav3dFbPEsoHjGdrCNE86ZRmYtNVaOh
         J0uQcXYQkmhrM1Ns1By0iw1kIh/Tl+0p+GxRdomt2HMI0DibmBeHmlkuee164i1SZyjf
         gPaYwa0dNTKPH4Gv9vlzyluHWi4n+aYNGC1bmB5hkGr+Zols3Sl0YN066Wr+W5LGLBEg
         cXqTmEQ1uysGjrrPsAoF8eBHMApGny28VNfqCxg4Y31HMw8eaGPaguRjZb3HH0Iob5+W
         Z1Bxa+/jvJ1PCYG1Pm3BmMgUj9iXwNGJug7Yqrjzos0co68WI5sKeR3nR0P6voAlsZhn
         Z5xA==
X-Gm-Message-State: AE9vXwPplSYQlnxH0fBkh+IhPAB3y+/pn3ZxCW871Ax20wfQBDgYOd3pdMM0gS3mPksW2A==
X-Received: by 10.66.100.162 with SMTP id ez2mr238423pab.123.1473765334792;
        Tue, 13 Sep 2016 04:15:34 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id p73sm19466440pfj.35.2016.09.13.04.15.32
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 04:15:34 -0700 (PDT)
Date: Tue, 13 Sep 2016 16:45:24 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org
Subject: [PATCH v2 4/6] staging: media: lirc: lirc_imon: Remove a blank line
 before a close parenthesis '}'
Message-ID: <20160913111508.GA10751@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

CHECK: Remove unnecessary space after cast

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
	changes in v2:
		-modify subject
 drivers/staging/media/lirc/lirc_imon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index c12053d..e44f841 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -427,7 +427,7 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
 
 	do {
 		memcpy(context->usb_tx_buf, context->tx.data_buf + offset, 7);
-		context->usb_tx_buf[7] = (unsigned char) seq;
+		context->usb_tx_buf[7] = (unsigned char)seq;
 
 		retval = send_packet(context);
 		if (retval) {
@@ -445,7 +445,7 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
 	if (context->vfd_proto_6p) {
 		/* Send packet #6 */
 		memcpy(context->usb_tx_buf, &vfd_packet6, sizeof(vfd_packet6));
-		context->usb_tx_buf[7] = (unsigned char) seq;
+		context->usb_tx_buf[7] = (unsigned char)seq;
 		retval = send_packet(context);
 		if (retval)
 			dev_err(&context->usbdev->dev,
-- 
1.9.1


