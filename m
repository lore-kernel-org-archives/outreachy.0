X-GM-THRID: 7706460028928
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,103d15814f33cc8f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.62.193 with SMTP id y41mr38365910yhc.38.1426090285308;
        Wed, 11 Mar 2015 09:11:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.147.104 with SMTP id tj8ls424201igb.9.canary; Wed, 11 Mar
 2015 09:11:24 -0700 (PDT)
X-Received: by 10.50.92.67 with SMTP id ck3mr2875857igb.5.1426090284622;
        Wed, 11 Mar 2015 09:11:24 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id gb13si779765pac.2.2015.03.11.09.11.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 09:11:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id fp1so12275670pdb.7
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 09:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=J4jJfFHK03vCKVMQGNwCjsxAUtvBvYWC0MBNrlOnowk=;
        b=W1xhdfsOEf2f76Fu/zfinh6JwfLBF9M3ncxEkPiR62HI1xgiuOs/gSWFSyTM/577KL
         ZRHJ/auJkr3NX4neSBkDa983CevPuWkiGcMPy9zDZKMApxjS6Cxqgm3Mc7st5U+o4Gm+
         YzxD7QMUCPTOceG1Xma3cOQOC4TZMD5J9j6ZAfdij2LIMtJ99ID8OsjhBgN0YPXxecYp
         wYUBSaGrH9Xiw0mcnhPStVzZUimK5aUh0PPQJuRC8DWOt0iVwT5VgSZwcQ2P9DWj0MIQ
         dSUBRF08wDz6cf7ECDwZHtKlE/ytRh2YY+jGJ9LFd2p25QFSiELz+ss0p6Yiy0jFm+ht
         cD4A==
X-Received: by 10.66.124.164 with SMTP id mj4mr80620210pab.83.1426090283494;
        Wed, 11 Mar 2015 09:11:23 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id yt8sm6819222pab.22.2015.03.11.09.11.20
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 09:11:22 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: iskaranth@gmail.com
Subject: [PATCH] staging: sm750fb: Add void to function definition with no arguments
Date: Thu, 12 Mar 2015 01:11:00 +0900
Message-Id: <1426090260-9460-1-git-send-email-iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0

Found by checkpatch.pl - ERROR: Bad function definition

A function with no arguments allows for variadic arguments. Add
void in between the empty parentheses to indicate that the function
takes no arguments.

changes made using coccinelle script:
@@
type T;
identifier f;
@@
T f(
+void
 ) {
...
}

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c    |  6 +++---
 drivers/staging/sm750fb/ddk750_display.c |  2 +-
 drivers/staging/sm750fb/ddk750_dvi.c     |  4 ++--
 drivers/staging/sm750fb/ddk750_power.c   |  2 +-
 drivers/staging/sm750fb/ddk750_sii164.c  | 14 +++++++-------
 drivers/staging/sm750fb/sm750_hw.c       |  4 ++--
 6 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index b71169e..3c77207 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -11,7 +11,7 @@ typedef struct _pllcalparam{
 pllcalparam;
 
 
-logical_chip_type_t getChipType()
+logical_chip_type_t getChipType(void)
 {
 	unsigned short physicalID;
 	char physicalRev;
@@ -91,7 +91,7 @@ unsigned int getPllValue(clock_type_t clockType, pll_value_t *pPLL)
 }
 
 
-unsigned int getChipClock()
+unsigned int getChipClock(void)
 {
     pll_value_t pll;
 #if 1
@@ -232,7 +232,7 @@ void setMasterClock(unsigned int frequency)
 }
 
 
-unsigned int ddk750_getVMSize()
+unsigned int ddk750_getVMSize(void)
 {
 	unsigned int reg;
 	unsigned int data;
diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index a282a94..c84196a 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -273,7 +273,7 @@ void ddk750_setLogicalDispOut(disp_output_t output)
 }
 
 
-int ddk750_initDVIDisp()
+int ddk750_initDVIDisp(void)
 {
     /* Initialize DVI. If the dviInit fail and the VendorID or the DeviceID are
        not zeroed, then set the failure flag. If it is zeroe, it might mean
diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index 1c083e7..f5932bb 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -62,7 +62,7 @@ int dviInit(
  *  Output:
  *      Vendor ID
  */
-unsigned short dviGetVendorID()
+unsigned short dviGetVendorID(void)
 {
     dvi_ctrl_device_t *pCurrentDviCtrl;
 
@@ -82,7 +82,7 @@ unsigned short dviGetVendorID()
  *  Output:
  *      Device ID
  */
-unsigned short dviGetDeviceID()
+unsigned short dviGetDeviceID(void)
 {
     dvi_ctrl_device_t *pCurrentDviCtrl;
 
diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 98dfcbd..cbb9767 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -15,7 +15,7 @@ void ddk750_setDPMS(DPMS_t state)
 	}
 }
 
-unsigned int getPowerMode()
+unsigned int getPowerMode(void)
 {
 	if(getChipType() == SM750LE)
 		return 0;
diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index faf8250..3d224d6 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -34,7 +34,7 @@ static char *gDviCtrlChipName = "Silicon Image SiI 164";
  *  Output:
  *      Vendor ID
  */
-unsigned short sii164GetVendorID()
+unsigned short sii164GetVendorID(void)
 {
     unsigned short vendorID;
 
@@ -51,7 +51,7 @@ unsigned short sii164GetVendorID()
  *  Output:
  *      Device ID
  */
-unsigned short sii164GetDeviceID()
+unsigned short sii164GetDeviceID(void)
 {
     unsigned short deviceID;
 
@@ -264,7 +264,7 @@ long sii164InitChip(
  *  sii164ResetChip
  *      This function resets the DVI Controller Chip.
  */
-void sii164ResetChip()
+void sii164ResetChip(void)
 {
     /* Power down */
     sii164SetPower(0);
@@ -277,7 +277,7 @@ void sii164ResetChip()
  *      This function returns a char string name of the current DVI Controller chip.
  *      It's convenient for application need to display the chip name.
  */
-char *sii164GetChipString()
+char *sii164GetChipString(void)
 {
     return gDviCtrlChipName;
 }
@@ -375,7 +375,7 @@ void sii164EnableHotPlugDetection(
  *      0   - Not Connected
  *      1   - Connected
  */
-unsigned char sii164IsConnected()
+unsigned char sii164IsConnected(void)
 {
     unsigned char hotPlugValue;
 
@@ -394,7 +394,7 @@ unsigned char sii164IsConnected()
  *      0   - No interrupt
  *      1   - Interrupt occurs
  */
-unsigned char sii164CheckInterrupt()
+unsigned char sii164CheckInterrupt(void)
 {
     unsigned char detectReg;
 
@@ -409,7 +409,7 @@ unsigned char sii164CheckInterrupt()
  *  sii164ClearInterrupt
  *      Clear the hot plug interrupt.
  */
-void sii164ClearInterrupt()
+void sii164ClearInterrupt(void)
 {
     unsigned char detectReg;
 
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index c44a50b..3050847 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -581,7 +581,7 @@ void hw_sm750_initAccel(struct lynx_share * share)
 	share->accel.de_init(&share->accel);
 }
 
-int hw_sm750le_deWait()
+int hw_sm750le_deWait(void)
 {
 	int i=0x10000000;
 	while(i--){
@@ -598,7 +598,7 @@ int hw_sm750le_deWait()
 }
 
 
-int hw_sm750_deWait()
+int hw_sm750_deWait(void)
 {
 	int i=0x10000000;
 	while(i--){
-- 
2.1.0


