X-GM-THRID: 6330208455336394752
X-Received: by 10.129.5.216 with SMTP id 207mr2403779ywf.6.1473866509027;
        Wed, 14 Sep 2016 08:21:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls1290311otb.16.gmail; Wed, 14 Sep
 2016 08:21:48 -0700 (PDT)
X-Received: by 10.237.36.19 with SMTP id r19mr2390533qtc.14.1473866508643;
        Wed, 14 Sep 2016 08:21:48 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 142si1317419pfx.2.2016.09.14.08.21.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 08:21:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id z84so925292pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 08:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dHCXRsF8ZlM4pw/CoHO3X/zZP97qaXlre+1baLVt+0w=;
        b=RZgQMwswOJx9p3HgLdE6M1NrReqIvvBRABj19PDUiEpZiU0R/xPxGR6JTVGkhsBJsx
         wNfxlIH3vYaz7Uz0pygygr3wFmkQ0mecnB5ozApSt1B/8Q5GTeFiFgU2bxeXorFWGcg1
         kbKbA7yzxC3x77YV54E7IDe1e2Eh2sE1QpmkbQQ5xhcqSaCxHW5uZINzJX7Ax9SKgxee
         j8KiYyk3MIYe7YUcpplRa5+xSbyNO31U+mfYz4eCNZDmAS8IXuy6HFoCTB1I6u8ZfzBT
         WT+mzujTOLwApdSAH5nqxDptAx380tGVizsaGudUsbZadXYW5vPhFNWkXDQWCCOm7lh7
         vcDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dHCXRsF8ZlM4pw/CoHO3X/zZP97qaXlre+1baLVt+0w=;
        b=OAXuiC6tBFLdyYLsoXR85fgVM3HsVU9ySYTBiLn/OPidK58/Mf/MfPHDTkJdTPaD/V
         Jo1se3AnfY6yMVxSXFg4E1mOvNgbvrSiWDAKP10h/68WbVe2YKrZMiHYVNLnopzGCEox
         QyQzcKy/AbF8zrSkED3e4zwRxNMPItGjJ3/H6pdfLYjo6EshZacS2/sUi8W43WTX4llj
         GohlPWNS4wVh6cgx4i2NM4ZNwgdvu8uXrpvnpxPNNX0qjuXsoyz+fo/EI/3f6gcOp3RP
         i/fLVc39gdVUavkJDRGENRhfx359JPXAOlaOSYqEKaIBSgA5l4inHY3ZtD/jAIWeJ87n
         p0+Q==
X-Gm-Message-State: AE9vXwO6hErTuR5hGli6swCWfj7+gS9eYJZRxpCFBnXfIOGQddc08WxcvWBtxJN0VfrzSA==
X-Received: by 10.98.219.196 with SMTP id f187mr5432315pfg.39.1473866508446;
        Wed, 14 Sep 2016 08:21:48 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id h67sm10319098pfg.32.2016.09.14.08.21.46
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 08:21:47 -0700 (PDT)
Date: Wed, 14 Sep 2016 20:51:37 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: johan.hedberg@gmail.com
Cc: outreachy-kernel@googlegroups.com, gustavo@padovan.org
Subject: [PATCH 2/3] drivers: bluetooth: bfusb Line over 80 characters in
 function
Message-ID: <20160914152128.GA9889@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch remove the warning of checkpatch.pl Line over 80 characters.
to remove this warning break the function argument list into small chunks.


Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/bluetooth/bfusb.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/bluetooth/bfusb.c b/drivers/bluetooth/bfusb.c
index 1c2e16d..9ae179e 100644
--- a/drivers/bluetooth/bfusb.c
+++ b/drivers/bluetooth/bfusb.c
@@ -257,7 +257,8 @@ static int bfusb_rx_submit(struct bfusb_data *data, struct urb *urb)
 	return err;
 }
 
-static inline int bfusb_recv_block(struct bfusb_data *data, int hdr, unsigned char *buf, int len)
+static inline int bfusb_recv_block(struct bfusb_data *data, int hdr,
+				    unsigned char *buf, int len)
 {
 	BT_DBG("bfusb %p hdr 0x%02x data %p len %d", data, hdr, buf, len);
 
@@ -620,7 +621,8 @@ error:
 	return err;
 }
 
-static int bfusb_probe(struct usb_interface *intf, const struct usb_device_id *id)
+static int bfusb_probe(struct usb_interface *intf,
+		       const struct usb_device_id *id)
 {
 	const struct firmware *firmware;
 	struct usb_device *udev = interface_to_usbdev(intf);
-- 
1.9.1


