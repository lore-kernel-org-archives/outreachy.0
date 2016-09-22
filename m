X-GM-THRID: 6332965623002300416
X-Received: by 10.66.50.6 with SMTP id y6mr5619452pan.5.1474508462337;
        Wed, 21 Sep 2016 18:41:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.25.138 with SMTP id 132ls5340894ioz.13.gmail; Wed, 21 Sep
 2016 18:41:00 -0700 (PDT)
X-Received: by 10.36.37.139 with SMTP id g133mr1916799itg.0.1474508460369;
        Wed, 21 Sep 2016 18:41:00 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f12si280390pfk.0.2016.09.21.18.41.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 18:41:00 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x243.google.com with SMTP id 21so3071548pfy.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 18:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=urzfRke0GnN4YH4F8ShM2pIWeFIAs8geVYN6fAwRF7k=;
        b=po6zKljqmEyeyuK4vqo9+oaW6aQTtAyb1FXruEfmfEpc7dk+v4mtpXBtJZCoLIM8Wn
         yXBpR4aoGlRyJRRpCB9T1xNLWsNppJ/gETTNxBPoo4nR+4zLRyem1UfxyN3pfQy3aqTP
         sgew4ItoWJdZsAP7NKyYdaQnI6U8ZRtuCNB0o7SKWRrqz0dPGUn0az1lfnV/huX5EgjH
         u09l5yGhh3kSvxl0aHjfYFbbmPiP34++aKUx026Da8gAUj3ass9SGSBs7cgr819yrc5b
         bHZufsA2LCEIxyJpZLfB7aA/inlRxlYxw+wgrBL30QFMhTHx8Qr8ICeZzt/Fj9OKEUVo
         S2/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=urzfRke0GnN4YH4F8ShM2pIWeFIAs8geVYN6fAwRF7k=;
        b=mXmCkIJeRASEDf4KeFlXFoynnmlR0YLadm9YVOK1MnvfKbViqIuh9Py68c2uIdt/CR
         sml+DGHQoI4hZiAKdaNkUR/2s/pi1w6uv+Thg8D8JeJ1GvqmEaq7qAvFr3AjVqJ7WgZ4
         hXglZXWxlJlw/EhVomid9v+X5zXmdvtSd39M0K0LoSK8R81keKldk6AjMZrqnWp44v2n
         YWv2xExoBk5WF4lh4WdmW3PaeEy00QkJM7tjlz2iy2HkQSG9ZxWByChafrR415XNqlpb
         1EmJ7jGskCrww0nHI87KGqETk8fkOEmh3byPR6mRSjPq3xX8RkF/pZZAvjEeEqQz2C6V
         5OjA==
X-Gm-Message-State: AE9vXwMYVHYsegFLPfa4z25D1QNjPwvGgFGvaAqUpl/W9DlXl7LSVcir1W5hRtKlTsGCpKNz
X-Received: by 10.98.37.130 with SMTP id l124mr69146852pfl.60.1474508459921;
        Wed, 21 Sep 2016 18:40:59 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id y1sm611089pfd.90.2016.09.21.18.40.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 18:40:59 -0700 (PDT)
Date: Wed, 21 Sep 2016 18:40:58 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: End block comments with */ on new line
Message-ID: <20160922014058.GA24631@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Warning found by checkpatch. Also cleans up the start of the
comment for less noise and easier reading.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/wlan-ng/prism2fw.c | 44 +++++++++++++++++++-------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
index e2fba30..fdf69fb 100644
--- a/drivers/staging/wlan-ng/prism2fw.c
+++ b/drivers/staging/wlan-ng/prism2fw.c
@@ -190,7 +190,7 @@ static int validate_identity(void);
 /*================================================================*/
 /* Function Definitions */
 
-/*----------------------------------------------------------------
+/*
 * prism2_fwtry
 *
 * Try and get firmware into memory
@@ -202,7 +202,7 @@ static int validate_identity(void);
 * Returns:
 *	0	- success
 *	~0	- failure
-----------------------------------------------------------------*/
+*/
 static int prism2_fwtry(struct usb_device *udev, struct wlandevice *wlandev)
 {
 	const struct firmware *fw_entry = NULL;
@@ -227,7 +227,7 @@ static int prism2_fwtry(struct usb_device *udev, struct wlandevice *wlandev)
 	return 0;
 }
 
-/*----------------------------------------------------------------
+/*
 * prism2_fwapply
 *
 * Apply the firmware loaded into memory
@@ -239,7 +239,7 @@ static int prism2_fwtry(struct usb_device *udev, struct wlandevice *wlandev)
 * Returns:
 *	0	- success
 *	~0	- failure
-----------------------------------------------------------------*/
+*/
 static int prism2_fwapply(const struct ihex_binrec *rfptr,
 			  struct wlandevice *wlandev)
 {
@@ -373,7 +373,7 @@ out:
 	return result;
 }
 
-/*----------------------------------------------------------------
+/*
 * crcimage
 *
 * Adds a CRC16 in the two bytes prior to each block identified by
@@ -389,7 +389,7 @@ out:
 * Returns:
 *	0	success
 *	~0	failure
-----------------------------------------------------------------*/
+*/
 static int crcimage(struct imgchunk *fchunk, unsigned int nfchunks,
 		    struct s3crcrec *s3crc, unsigned int ns3crc)
 {
@@ -440,7 +440,7 @@ static int crcimage(struct imgchunk *fchunk, unsigned int nfchunks,
 	return result;
 }
 
-/*----------------------------------------------------------------
+/*
 * free_chunks
 *
 * Clears the chunklist data structures in preparation for a new file.
@@ -450,7 +450,7 @@ static int crcimage(struct imgchunk *fchunk, unsigned int nfchunks,
 *
 * Returns:
 *	nothing
-----------------------------------------------------------------*/
+*/
 static void free_chunks(struct imgchunk *fchunk, unsigned int *nfchunks)
 {
 	int i;
@@ -463,7 +463,7 @@ static void free_chunks(struct imgchunk *fchunk, unsigned int *nfchunks)
 
 }
 
-/*----------------------------------------------------------------
+/*
 * free_srecs
 *
 * Clears the srec data structures in preparation for a new file.
@@ -473,7 +473,7 @@ static void free_chunks(struct imgchunk *fchunk, unsigned int *nfchunks)
 *
 * Returns:
 *	nothing
-----------------------------------------------------------------*/
+*/
 static void free_srecs(void)
 {
 	ns3data = 0;
@@ -487,7 +487,7 @@ static void free_srecs(void)
 	startaddr = 0;
 }
 
-/*----------------------------------------------------------------
+/*
 * mkimage
 *
 * Scans the currently loaded set of S records for data residing
@@ -500,7 +500,7 @@ static void free_srecs(void)
 * Returns:
 *	0	- success
 *	~0	- failure (probably an errno)
-----------------------------------------------------------------*/
+*/
 static int mkimage(struct imgchunk *clist, unsigned int *ccnt)
 {
 	int result = 0;
@@ -578,7 +578,7 @@ static int mkimage(struct imgchunk *clist, unsigned int *ccnt)
 	return result;
 }
 
-/*----------------------------------------------------------------
+/*
 * mkpdrlist
 *
 * Reads a raw PDA and builds an array of pdrec_t structures.
@@ -591,7 +591,7 @@ static int mkimage(struct imgchunk *clist, unsigned int *ccnt)
 * Returns:
 *	0	- success
 *	~0	- failure (probably an errno)
-----------------------------------------------------------------*/
+*/
 static int mkpdrlist(struct pda *pda)
 {
 	u16 *pda16 = (u16 *)pda->buf;
@@ -645,7 +645,7 @@ static int mkpdrlist(struct pda *pda)
 	return 0;
 }
 
-/*----------------------------------------------------------------
+/*
 * plugimage
 *
 * Plugs the given image using the given plug records from the given
@@ -661,7 +661,7 @@ static int mkpdrlist(struct pda *pda)
 * Returns:
 *	0	success
 *	~0	failure
-----------------------------------------------------------------*/
+*/
 static int plugimage(struct imgchunk *fchunk, unsigned int nfchunks,
 		     struct s3plugrec *s3plug, unsigned int ns3plug,
 		     struct pda *pda)
@@ -751,7 +751,7 @@ static int plugimage(struct imgchunk *fchunk, unsigned int nfchunks,
 
 }
 
-/*----------------------------------------------------------------
+/*
 * read_cardpda
 *
 * Sends the command for the driver to read the pda from the card
@@ -768,7 +768,7 @@ static int plugimage(struct imgchunk *fchunk, unsigned int nfchunks,
 * Returns:
 *	0	- success
 *	~0	- failure (probably an errno)
-----------------------------------------------------------------*/
+*/
 static int read_cardpda(struct pda *pda, struct wlandevice *wlandev)
 {
 	int result = 0;
@@ -804,7 +804,7 @@ static int read_cardpda(struct pda *pda, struct wlandevice *wlandev)
 	return result;
 }
 
-/*----------------------------------------------------------------
+/*
 * read_fwfile
 *
 * Reads the given fw file which should have been compiled from an srec
@@ -863,7 +863,7 @@ static int read_cardpda(struct pda *pda, struct wlandevice *wlandev)
 * Returns:
 *	0	- success
 *	~0	- failure (probably an errno)
-----------------------------------------------------------------*/
+*/
 static int read_fwfile(const struct ihex_binrec *record)
 {
 	int		i;
@@ -970,7 +970,7 @@ static int read_fwfile(const struct ihex_binrec *record)
 	return 0;
 }
 
-/*----------------------------------------------------------------
+/*
 * writeimage
 *
 * Takes the chunks, builds p80211 messages and sends them down
@@ -984,7 +984,7 @@ static int read_fwfile(const struct ihex_binrec *record)
 * Returns:
 *	0	success
 *	~0	failure
-----------------------------------------------------------------*/
+*/
 static int writeimage(struct wlandevice *wlandev, struct imgchunk *fchunk,
 		      unsigned int nfchunks)
 {
-- 
2.7.4


