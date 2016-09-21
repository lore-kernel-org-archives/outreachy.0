X-GM-THRID: 6332934688128106496
X-Received: by 10.129.78.134 with SMTP id c128mr16950752ywb.50.1474501259504;
        Wed, 21 Sep 2016 16:40:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.83 with SMTP id e80ls52727ite.0.gmail; Wed, 21 Sep 2016
 16:40:55 -0700 (PDT)
X-Received: by 10.107.160.17 with SMTP id j17mr7453052ioe.48.1474501255940;
        Wed, 21 Sep 2016 16:40:55 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si7933395pab.2.2016.09.21.16.40.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 16:40:55 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x243.google.com with SMTP id n24so2952399pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 16:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+BfWvbUf3T6OROopmlaU13bVkqej8xX7NHqnk3W60bY=;
        b=qhX92NqcqEbhg+alpsu+oQKkb1eQUPREj6W4G3sFyGhJ8UTv+l5Amy4CnT/BUKVHr1
         DOw4WprHQOhyj0477S1GfF/CUl2/+48B9PVJA0n6v+0z49mBvrlZZEyYziK/Tc+DRTxb
         wJJt6b+nU6BVbz4KpwBAR68SyI9/0rb4c3UhVHKircXvGpKdxo1EDX8n61i/5MAiJfco
         wsgcgQOx9w6opTrePgjetsuT0+zTcSfQ255kDyDJFgQjEhYLrKFHSmliWCkCg+Z+dVi/
         e4FRi/31ot+i7zguMQ46QBQkA0AapCHfHKtvUc8EaBUih2LE2RXi+IbiI2vtY75rkQk9
         O/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+BfWvbUf3T6OROopmlaU13bVkqej8xX7NHqnk3W60bY=;
        b=VyYSNr2NNlzx0GF7sFzveXo1e/Pg9VVhyUB8BtdOk7i0t4CQ/3cOqZ2psxayoQIMRx
         qcx19KTnNnxP0nUK3SMF8cyS04s62N157Ns2ifBpYcojF5gD5syvDlA6fT+bCAjlhcJ6
         ueQ/FFk/Ly9CakyTXXOT52+mEPnNsBQxdcWiDzywMaMm27tucgqOJZepIc2PuNCu70Rx
         hIuh5NDsYXo+f1N6MaRDLZAk+eCusDr0frTVQUKIV+zBoZLPHHzXe1taqM+Kf/kNyk27
         VLj6tKnXOn+abgPUd8kmwu7FUJ4zsffObkY674htHCC3LOjxRHyXYesTIwxb8N23tQVi
         2Zhg==
X-Gm-Message-State: AE9vXwP9z0HrlpjbHxOlZCFN06ezZaW+/63BGACLGy7pjmYs2wSqoYNIPmhf1PNjLDly0AgJ
X-Received: by 10.98.41.131 with SMTP id p125mr70244602pfp.108.1474501255589;
        Wed, 21 Sep 2016 16:40:55 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id z5sm389409pff.3.2016.09.21.16.40.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 16:40:55 -0700 (PDT)
Date: Wed, 21 Sep 2016 16:40:53 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: Align arguments with open parenthesis
Message-ID: <20160921234053.GA2534@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Issue found by checkpatch.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/wlan-ng/prism2fw.c | 49 ++++++++++++++++++++------------------
 1 file changed, 26 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
index 161637b..13f90b7 100644
--- a/drivers/staging/wlan-ng/prism2fw.c
+++ b/drivers/staging/wlan-ng/prism2fw.c
@@ -161,7 +161,7 @@ static hfa384x_caplevel_t priid;
 /* Local Function Declarations */
 
 static int prism2_fwapply(const struct ihex_binrec *rfptr,
-struct wlandevice *wlandev);
+			  struct wlandevice *wlandev);
 
 static int read_fwfile(const struct ihex_binrec *rfptr);
 
@@ -172,13 +172,15 @@ static int read_cardpda(struct pda *pda, struct wlandevice *wlandev);
 static int mkpdrlist(struct pda *pda);
 
 static int plugimage(struct imgchunk *fchunk, unsigned int nfchunks,
-	      struct s3plugrec *s3plug, unsigned int ns3plug, struct pda *pda);
+		     struct s3plugrec *s3plug, unsigned int ns3plug,
+		     struct pda *pda);
 
 static int crcimage(struct imgchunk *fchunk, unsigned int nfchunks,
-	     struct s3crcrec *s3crc, unsigned int ns3crc);
+		    struct s3crcrec *s3crc, unsigned int ns3crc);
 
 static int writeimage(struct wlandevice *wlandev, struct imgchunk *fchunk,
-	       unsigned int nfchunks);
+		      unsigned int nfchunks);
+
 static void free_chunks(struct imgchunk *fchunk, unsigned int *nfchunks);
 
 static void free_srecs(void);
@@ -206,13 +208,13 @@ static int prism2_fwtry(struct usb_device *udev, struct wlandevice *wlandev)
 	const struct firmware *fw_entry = NULL;
 
 	netdev_info(wlandev->netdev, "prism2_usb: Checking for firmware %s\n",
-	       PRISM2_USB_FWFILE);
+		    PRISM2_USB_FWFILE);
 	if (request_ihex_firmware(&fw_entry,
 				  PRISM2_USB_FWFILE, &udev->dev) != 0) {
 		netdev_info(wlandev->netdev,
-		       "prism2_usb: Firmware not available, but not essential\n");
+			    "prism2_usb: Firmware not available, but not essential\n");
 		netdev_info(wlandev->netdev,
-		       "prism2_usb: can continue to use card anyway.\n");
+			    "prism2_usb: can continue to use card anyway.\n");
 		return 1;
 	}
 
@@ -389,7 +391,7 @@ out:
 *	~0	failure
 ----------------------------------------------------------------*/
 static int crcimage(struct imgchunk *fchunk, unsigned int nfchunks,
-	     struct s3crcrec *s3crc, unsigned int ns3crc)
+		    struct s3crcrec *s3crc, unsigned int ns3crc)
 {
 	int result = 0;
 	int i;
@@ -661,7 +663,8 @@ static int mkpdrlist(struct pda *pda)
 *	~0	failure
 ----------------------------------------------------------------*/
 static int plugimage(struct imgchunk *fchunk, unsigned int nfchunks,
-	      struct s3plugrec *s3plug, unsigned int ns3plug, struct pda *pda)
+		     struct s3plugrec *s3plug, unsigned int ns3plug,
+		     struct pda *pda)
 {
 	int result = 0;
 	int i;			/* plug index */
@@ -887,8 +890,8 @@ static int read_fwfile(const struct ihex_binrec *record)
 		case S3ADDR_START:
 			startaddr = *ptr32;
 			pr_debug("  S7 start addr, record=%d addr=0x%08x\n",
-				      rcnt,
-				      startaddr);
+				 rcnt,
+				 startaddr);
 			break;
 		case S3ADDR_PLUG:
 			s3plug[ns3plug].itemcode = *ptr32;
@@ -896,10 +899,10 @@ static int read_fwfile(const struct ihex_binrec *record)
 			s3plug[ns3plug].len = *(ptr32 + 2);
 
 			pr_debug("  S3 plugrec, record=%d itemcode=0x%08x addr=0x%08x len=%d\n",
-				      rcnt,
-				      s3plug[ns3plug].itemcode,
-				      s3plug[ns3plug].addr,
-				      s3plug[ns3plug].len);
+				 rcnt,
+				 s3plug[ns3plug].itemcode,
+				 s3plug[ns3plug].addr,
+				 s3plug[ns3plug].len);
 
 			ns3plug++;
 			if (ns3plug == S3PLUG_MAX) {
@@ -913,10 +916,10 @@ static int read_fwfile(const struct ihex_binrec *record)
 			s3crc[ns3crc].dowrite = *(ptr32 + 2);
 
 			pr_debug("  S3 crcrec, record=%d addr=0x%08x len=%d write=0x%08x\n",
-				      rcnt,
-				      s3crc[ns3crc].addr,
-				      s3crc[ns3crc].len,
-				      s3crc[ns3crc].dowrite);
+				 rcnt,
+				 s3crc[ns3crc].addr,
+				 s3crc[ns3crc].len,
+				 s3crc[ns3crc].dowrite);
 			ns3crc++;
 			if (ns3crc == S3CRC_MAX) {
 				pr_err("S3 crcrec limit reached - aborting\n");
@@ -928,9 +931,9 @@ static int read_fwfile(const struct ihex_binrec *record)
 			s3info[ns3info].type = *(ptr16 + 1);
 
 			pr_debug("  S3 inforec, record=%d len=0x%04x type=0x%04x\n",
-				      rcnt,
-				      s3info[ns3info].len,
-				      s3info[ns3info].type);
+				 rcnt,
+				 s3info[ns3info].len,
+				 s3info[ns3info].type);
 			if (((s3info[ns3info].len - 1) * sizeof(u16)) >
 			   sizeof(s3info[ns3info].info)) {
 				pr_err("S3 inforec length too long - aborting\n");
@@ -983,7 +986,7 @@ static int read_fwfile(const struct ihex_binrec *record)
 *	~0	failure
 ----------------------------------------------------------------*/
 static int writeimage(struct wlandevice *wlandev, struct imgchunk *fchunk,
-	       unsigned int nfchunks)
+		      unsigned int nfchunks)
 {
 	int result = 0;
 	struct p80211msg_p2req_ramdl_state *rstmsg;
-- 
2.7.4


