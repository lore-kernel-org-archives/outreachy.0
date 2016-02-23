X-GM-THRID: 6254188564975714304
X-Received: by 10.66.139.162 with SMTP id qz2mr31048840pab.1.1456261548409;
        Tue, 23 Feb 2016 13:05:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.200.232 with SMTP id jv8ls1188586obc.53.gmail; Tue, 23 Feb
 2016 13:05:48 -0800 (PST)
X-Received: by 10.182.250.233 with SMTP id zf9mr33887233obc.5.1456261548030;
        Tue, 23 Feb 2016 13:05:48 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ui7si4193864pab.0.2016.02.23.13.05.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 13:05:47 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fy10so116221946pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 13:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ta5/SvaSuhn9qY2vPBiyPYOq06pM9pDretxiQProC78=;
        b=PrJXsMqH9S//TMCf3mORPHiRAQGnk698sNEQt5vpiUaMHtS1V0na6OUlZPuCNQXqyc
         O8jGLPJdRYg3yJV0e1Klbt9smbB7d+xkwAc1RGjd0HVb2x9Vf+xbXrUmf/mLXn/oPvoh
         z/ksPB5lP3ARrebqNGLQ3LJa3IraAL7WCSh1xPX/NFjcy3kP85MfxLK3MxNhx++LNiDB
         CCXXZ18A+ddC3w1hNiNIBILR+vZyjzSkmNrKf7K1fTPRXNfzZgnG51A+OBu/UZb/RbmO
         NgU5lKcdtZ3Mb0Ytxq8YD8L6PSpV+oVIoI9watnquQpEbyeoYeQcCsiwuxaso9vmN0mY
         fQ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ta5/SvaSuhn9qY2vPBiyPYOq06pM9pDretxiQProC78=;
        b=eUw6fSO+JCVFMIV66JcZdoFj7CA5hrV8TngUD6BiHsuxKyciM1X8VJR7pYiDuoQeni
         Msu/81BNB0RfoKmjucON+SXS7Ao2wJ0PM8KVu8yvnPPGBPNEx1d1X7TW2j2C0Kduuhf1
         XnM4GRgxHItIeMMJRbPbvOzr0JbnH4uzFN7tfmylrNBIKiujY/kr9bx9C9JS6oOHqvoV
         Vt0zB5LA28gf777QDCEskUUx9Dkie2RM7bx3LwVnqMCZ0yq2qMbtXwCOUDtNwkX1zSkM
         H64igM8+KrNfYaHggUxmGF79kbYq/cxkmBiiW1PxYQ26Qb/yRqwUh+gefux857y0moth
         tMMQ==
X-Gm-Message-State: AG10YOQ+TH0sPHUUj9GJ8xJ/D/QNd0ab52j2tWH+z6kZgjlRzFmxgyjgkqfRlqWqNfXuiA==
X-Received: by 10.66.90.136 with SMTP id bw8mr49532463pab.52.1456261547753;
        Tue, 23 Feb 2016 13:05:47 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id t12sm46161661pfa.54.2016.02.23.13.05.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 13:05:47 -0800 (PST)
Date: Wed, 24 Feb 2016 02:35:41 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rts5208: Replace pci_enable_device with
 pcim_enable_device
Message-ID: <20160223210002.GA26262@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is automatically freed when 
a driver detaches.

Replace pci_enable_device with pcim_enable_device. Remove unnecessary
pci_disable_device and pci_release_regions from probe and remove
functions in rts5208 driver.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Removal of pci_set_drvdata will be sent in a later patch series

 drivers/staging/rts5208/rtsx.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 5dfcdfb..7882193 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -329,7 +329,6 @@ static int rtsx_suspend(struct pci_dev *pci, pm_message_t state)
 
 	pci_save_state(pci);
 	pci_enable_wake(pci, pci_choose_state(pci, state), 1);
-	pci_disable_device(pci);
 	pci_set_power_state(pci, pci_choose_state(pci, state));
 
 	/* unlock the device pointers */
@@ -353,7 +352,7 @@ static int rtsx_resume(struct pci_dev *pci)
 
 	pci_set_power_state(pci, PCI_D0);
 	pci_restore_state(pci);
-	if (pci_enable_device(pci) < 0) {
+	if (pcim_enable_device(pci) < 0) {
 		dev_err(&dev->pci->dev,
 			"%s: pci_enable_device failed, disabling device\n",
 			CR_DRIVER_NAME);
@@ -403,8 +402,6 @@ static void rtsx_shutdown(struct pci_dev *pci)
 
 	if (chip->msi_en)
 		pci_disable_msi(pci);
-
-	pci_disable_device(pci);
 }
 
 static int rtsx_control_thread(void *__dev)
@@ -656,9 +653,6 @@ static void rtsx_release_resources(struct rtsx_dev *dev)
 	if (dev->remap_addr)
 		iounmap(dev->remap_addr);
 
-	pci_disable_device(dev->pci);
-	pci_release_regions(dev->pci);
-
 	rtsx_release_chip(dev->chip);
 	kfree(dev->chip);
 }
@@ -850,7 +844,7 @@ static int rtsx_probe(struct pci_dev *pci,
 
 	dev_dbg(&pci->dev, "Realtek PCI-E card reader detected\n");
 
-	err = pci_enable_device(pci);
+	err = pcim_enable_device(pci);
 	if (err < 0) {
 		dev_err(&pci->dev, "PCI enable device failed!\n");
 		return err;
@@ -871,8 +865,6 @@ static int rtsx_probe(struct pci_dev *pci,
 	host = scsi_host_alloc(&rtsx_host_template, sizeof(*dev));
 	if (!host) {
 		dev_err(&pci->dev, "Unable to allocate the scsi host\n");
-		pci_release_regions(pci);
-		pci_disable_device(pci);
 		return -ENOMEM;
 	}
 
-- 
1.9.1


