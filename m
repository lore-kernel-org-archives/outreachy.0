X-GM-THRID: 6200057062957776896
X-Received: by 10.180.149.210 with SMTP id uc18mr3099877wib.4.1443563276538;
        Tue, 29 Sep 2015 14:47:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.100 with SMTP id gt4ls31973wib.34.gmail; Tue, 29 Sep
 2015 14:47:55 -0700 (PDT)
X-Received: by 10.180.208.7 with SMTP id ma7mr130109wic.5.1443563275706;
        Tue, 29 Sep 2015 14:47:55 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id c7si754458wiy.3.2015.09.29.14.47.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 14:47:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id ge5so169656344wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 14:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=WKpaUJSm0Qi1nGPGacE2GY3njTJgEgyq2G87zrce54w=;
        b=Se47VY50XSho4fcwt9pT3aGk7JHWANVtZV/KAMVyGeUen31wJArE96n+zUu1PwAQLH
         xH9uRJ5HbRsM5t3gtwyjP0DPAxTNMMVCPHTPqAhOmpchTln3djrQ3M+VOMSq4pYajk2l
         tS981vR38uXnLz/mCbLEKiUfTYIU1xlenLKnnHbz/6jbXESIzbOFzcBvDDWeBMBKusrO
         wkugFOBbaMNJ+mH87kYwaT8nU7zooWeoy2Rhega9ekN+47tA3/3RwpsXbe9WCDCam/WP
         t5m/vxBC3ioL/pg+F9H9BQkuWRfp1o3tYsYnhMeMvoB0SX+69/9AxaX3/4e4B5IpmaBi
         i0wg==
X-Received: by 10.180.11.165 with SMTP id r5mr915689wib.43.1443563275619;
        Tue, 29 Sep 2015 14:47:55 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.104.234])
        by smtp.gmail.com with ESMTPSA id x7sm25959806wia.5.2015.09.29.14.47.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 14:47:55 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging:emxx_udc: Fixed comparison style warnings
Date: Tue, 29 Sep 2015 14:47:25 -0700
Message-Id: <1443563245-42929-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixed 'Comparisons should place the constant on the right side of the
test' Warnings

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 38 ++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index b6b76ff..d70300b 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -595,7 +595,7 @@ static int EP0_out_OverBytes(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
 	union usb_reg_access  Temp32;
 	union usb_reg_access  *pBuf32 = (union usb_reg_access *)pBuf;
 
-	if ((0 < length) && (length < sizeof(u32))) {
+	if ((length > 0) && (length < sizeof(u32))) {
 		Temp32.dw = _nbu2ss_readl(&udc->p_regs->EP0_READ);
 		for (i = 0 ; i < length ; i++)
 			pBuf32->byte.DATA[i] = Temp32.byte.DATA[i];
@@ -641,7 +641,7 @@ static int EP0_in_OverBytes(struct nbu2ss_udc *udc, u8 *pBuf, u32 iRemainSize)
 	union usb_reg_access  Temp32;
 	union usb_reg_access  *pBuf32 = (union usb_reg_access *)pBuf;
 
-	if ((0 < iRemainSize) && (iRemainSize < sizeof(u32))) {
+	if ((iRemainSize > 0) && (iRemainSize < sizeof(u32))) {
 		for (i = 0 ; i < iRemainSize ; i++)
 			Temp32.byte.DATA[i] = pBuf32->byte.DATA[i];
 		_nbu2ss_ep_in_end(udc, 0, Temp32.dw, iRemainSize);
@@ -778,7 +778,7 @@ static int _nbu2ss_ep0_out_transfer(
 		req->req.actual += result;
 		iRecvLength -= result;
 
-		if ((0 < iRecvLength) && (iRecvLength < sizeof(u32))) {
+		if ((iRecvLength > 0) && (iRecvLength < sizeof(u32))) {
 			pBuffer += result;
 			iRemainSize -= result;
 
@@ -857,11 +857,11 @@ static int _nbu2ss_out_dma(
 	dmacnt = (length / mpkt);
 	lmpkt = (length % mpkt) & ~(u32)0x03;
 
-	if (DMA_MAX_COUNT < dmacnt) {
+	if (dmacnt > DMA_MAX_COUNT) {
 		dmacnt = DMA_MAX_COUNT;
 		lmpkt = 0;
-	} else if (0 != lmpkt) {
-		if (0 == dmacnt)
+	} else if (lmpkt != 0) {
+		if (dmacnt == 0)
 			burst = 0;	/* Burst OFF */
 		dmacnt++;
 	}
@@ -872,7 +872,7 @@ static int _nbu2ss_out_dma(
 	data = ((dmacnt & 0xff) << 16) | DCR1_EPn_DIR0 | DCR1_EPn_REQEN;
 	_nbu2ss_writel(&preg->EP_DCR[num].EP_DCR1, data);
 
-	if (0 == burst) {
+	if (burst == 0) {
 		_nbu2ss_writel(&preg->EP_REGS[num].EP_LEN_DCNT, 0);
 		_nbu2ss_bitclr(&preg->EP_REGS[num].EP_DMA_CTRL, EPn_BURST_SET);
 	} else {
@@ -1447,7 +1447,7 @@ static int _nbu2ss_set_feature_device(
 
 	switch (selector) {
 	case USB_DEVICE_REMOTE_WAKEUP:
-		if (0x0000 == wIndex) {
+		if (wIndex == 0x0000) {
 			udc->remote_wakeup = U2F_ENABLE;
 			result = 0;
 		}
@@ -1504,8 +1504,8 @@ static inline int _nbu2ss_req_feature(struct nbu2ss_udc *udc, bool bset)
 	u8	ep_adrs;
 	int	result = -EOPNOTSUPP;
 
-	if ((0x0000 != udc->ctrl.wLength) ||
-			(USB_DIR_OUT != direction)) {
+	if ((udc->ctrl.wLength != 0x0000) ||
+			(direction != USB_DIR_OUT)) {
 		return -EINVAL;
 	}
 
@@ -1518,7 +1518,7 @@ static inline int _nbu2ss_req_feature(struct nbu2ss_udc *udc, bool bset)
 
 	case USB_RECIP_ENDPOINT:
 		if (0x0000 == (wIndex & 0xFF70)) {
-			if (USB_ENDPOINT_HALT == selector) {
+			if (selector == USB_ENDPOINT_HALT) {
 				ep_adrs = wIndex & 0xFF;
 				if (bset == FALSE) {
 					_nbu2ss_endpoint_toggle_reset(
@@ -1597,8 +1597,8 @@ static int std_req_get_status(struct nbu2ss_udc *udc)
 	u8	ep_adrs;
 	int	result = -EINVAL;
 
-	if ((0x0000 != udc->ctrl.wValue)
-		|| (USB_DIR_IN != direction)) {
+	if ((udc->ctrl.wValue != 0x0000)
+		|| (direction != USB_DIR_IN)) {
 
 		return result;
 	}
@@ -1662,9 +1662,9 @@ static int std_req_set_address(struct nbu2ss_udc *udc)
 	int		result = 0;
 	u32		wValue = udc->ctrl.wValue;
 
-	if ((0x00 != udc->ctrl.bRequestType)	||
-		(0x0000 != udc->ctrl.wIndex)	||
-		(0x0000 != udc->ctrl.wLength)) {
+	if ((udc->ctrl.bRequestType != 0x00)	||
+		(udc->ctrl.wIndex != 0x0000)	||
+		(udc->ctrl.wLength != 0x0000)) {
 		return -EINVAL;
 	}
 
@@ -1684,9 +1684,9 @@ static int std_req_set_configuration(struct nbu2ss_udc *udc)
 {
 	u32 ConfigValue = (u32)(udc->ctrl.wValue & 0x00ff);
 
-	if ((0x0000 != udc->ctrl.wIndex)	||
-		(0x0000 != udc->ctrl.wLength)	||
-		(0x00 != udc->ctrl.bRequestType)) {
+	if ((udc->ctrl.wIndex != 0x0000)	||
+		(udc->ctrl.wLength != 0x0000)	||
+		(udc->ctrl.bRequestType != 0x00)) {
 		return -EINVAL;
 	}
 
-- 
1.9.1


