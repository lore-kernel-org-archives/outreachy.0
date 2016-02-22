X-GM-THRID: 6254188564975714304
X-Received: by 10.182.79.134 with SMTP id j6mr28708032obx.4.1456166749820;
        Mon, 22 Feb 2016 10:45:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.153.111 with SMTP id vf15ls659363igb.7.gmail; Mon, 22 Feb
 2016 10:45:49 -0800 (PST)
X-Received: by 10.98.93.217 with SMTP id n86mr28375175pfj.11.1456166749500;
        Mon, 22 Feb 2016 10:45:49 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id u66si3665651pfa.2.2016.02.22.10.45.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 10:45:49 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fl4so95379711pad.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 10:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=rBp1KULtne2UGCYMAHCJX90JFZlN2uDaS7KZfO3jbdQ=;
        b=0qLinvE9aWnD3XqmFwHEvi85cI7BZh6miEzYKNoh2Q9JGYVCm0QyPw/4ieLi/MblVX
         ETz6SJFV54nn/LVuseXd9gLnXAwUJvl2GFjzKd/QwBVQbecshaeJZMqje9i4J27cp19K
         C+Tw44tozYhNI4PlFVJpItVz4gzIt5XWLBJ3gP6rcDbV06GI4itZsjGHjr9p/xQ8SbaO
         zFZn4hSqeF+iW/pSc/0u9Op327enaU4sko5swygze6CSmqV0PE5/0ykZLaYT7hdGjIk7
         8oN60+vL7m09xqY7yKafFoR7XkGlXMOcn2kVTd2qaL8aKCH301uxcoOjzz/lJIW/lBt+
         ykYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=rBp1KULtne2UGCYMAHCJX90JFZlN2uDaS7KZfO3jbdQ=;
        b=ByDmFVcov0IzJq2gS32r8ej2fOk2jR7cKQoIkl67GiR3nkzBOipRWhZ1ZS/C9jUJwf
         +N9X8nxXqE0KGUoSnT/tGOtNRZuDr53FwxANkAqwqC2Q5CCExAU+dAE/v5J+m1/xmLUt
         xcfGmAjaLQx/BzZ/vm09GyaRmvrNPr1gWBYuDRMfjZDiMBWIxFlAFBBaAGxx3SBdXfL7
         XSuBKym8TTecYBaE5ofeV7FODsI58b+kIJ7+/QzhP3+CnH5wg5PEkUtKvuMvNpP1wpwI
         HzOI//zaPS6+XoMPYUIUYEH5XwiH+CXh1ZPt9vheBYItnhX/n7p6fmo3EWIPFoq1zAeq
         dkvw==
X-Gm-Message-State: AG10YOSfYYlqveQqtPm9Qp9NkzTibPN9ZHM+wkMEhppyLM0JTAjoMXJtMZcYPUs6VYDuog==
X-Received: by 10.67.5.68 with SMTP id ck4mr9172573pad.3.1456166749339;
        Mon, 22 Feb 2016 10:45:49 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id 19sm38492527pfb.64.2016.02.22.10.45.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 10:45:48 -0800 (PST)
Date: Tue, 23 Feb 2016 00:15:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: Replace pci_enable_device with
 pcim_enable_device
Message-ID: <20160222184544.GA29097@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace pci_enable_device with pcim_enable-device. Remove unnecessary
pci_disable_device and pci_release_regions from probe and remove
functions in rts5208 driver.

Additionally, an unnecessary platform_set_drvdata() has been removed
since the driver core clears the driver data to NULL after device 
release or on probe failure. There is no need to manually clear the 
device driver data to NULL.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rts5208/rtsx.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 5dfcdfb..b829c42 100644
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
@@ -860,7 +854,6 @@ static int rtsx_probe(struct pci_dev *pci,
 	if (err < 0) {
 		dev_err(&pci->dev, "PCI request regions for %s failed!\n",
 			CR_DRIVER_NAME);
-		pci_disable_device(pci);
 		return err;
 	}
 
@@ -871,8 +864,6 @@ static int rtsx_probe(struct pci_dev *pci,
 	host = scsi_host_alloc(&rtsx_host_template, sizeof(*dev));
 	if (!host) {
 		dev_err(&pci->dev, "Unable to allocate the scsi host\n");
-		pci_release_regions(pci);
-		pci_disable_device(pci);
 		return -ENOMEM;
 	}
 
@@ -1009,8 +1000,6 @@ static void rtsx_remove(struct pci_dev *pci)
 
 	quiesce_and_remove_host(dev);
 	release_everything(dev);
-
-	pci_set_drvdata(pci, NULL);
 }
 
 /* PCI IDs */
-- 
1.9.1


