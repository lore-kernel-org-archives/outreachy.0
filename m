X-GM-THRID: 6802850530437627904
X-Received: by 2002:a05:6638:a0d:: with SMTP id 13mr1894141jan.32.1583912067022;
        Wed, 11 Mar 2020 00:34:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3084:: with SMTP id q126ls134417jaq.6.gmail; Wed, 11 Mar
 2020 00:34:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuOpCIK2zqlL9s454MbG/523WCMbnoFh4A7iEzedzJk40s01thsPTRQC+HUg0mFzuo3B2Wd
X-Received: by 2002:a02:9003:: with SMTP id w3mr1838322jaf.18.1583912065624;
        Wed, 11 Mar 2020 00:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583912065; cv=none;
        d=google.com; s=arc-20160816;
        b=udCT+VEJMGsI8ELxENisGsWq/skEMoEOD7qydbKblph5UCQRA684F88RufdHJa7ifa
         ywMpBFaueUpjl63NE06RrbfzCphNk9Fhq13mQkG9Upnxzexlwc4QlizYs5YIzqHrM579
         gxWsSaXO0vMSVchKrKvF3yMsxtfWknzEI1i+WhtH8ZOz7zV0C5HcKiD8ceKfSkNvfcv6
         WOnXqVfqukhsBVMrsRfc464P60p47dv5La9XhMVyQeaYQinxE5vYGd8nN8PPAZx+lfB5
         rIYSGHT/BN91DqTa1HyuQHMr9HgBwWOxDPMNbpE6X4o5qYZ8VJZKE1kGxxybehMdzvF8
         PiBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=c34Hbnl+NFIztNvqc2+nXDVAtmAg2nUT/qlpYskjvJ8=;
        b=oyTWMixYYqMe+Qj360eodJSSVPppoqOLpkY1l+mBTtPvyIsh3DWTkHLI7AUTZ4E7k6
         1d27hTs8jqDTGAyC1wDjhJjPlKbyu87ygati4mK7FO03FCClz+LsCmKIhamFD4uCJtUw
         q4600AZ50lsYCjGUr5AVjiv7TuSyx49Bs69Nt1KSlLobg/yj7csV0kaUAgk/bKDNvFCg
         oRVexHIp4b7hkW4gDzUOSzb28Hxu1d3MUEzoLxE6rcRlqSIwUmjDEF5t6P84yDXQu+CT
         JiqEdKdWWE9tFhy3BoPnftLPidHbXjTv6dKgPOpieXA4xaWQrjkWXznaH1Gp+plM4coY
         cqAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bVCiVgNS;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k88si44705ilg.1.2020.03.11.00.34.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 00:34:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bVCiVgNS;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id b72so803678pfb.11
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 00:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=c34Hbnl+NFIztNvqc2+nXDVAtmAg2nUT/qlpYskjvJ8=;
        b=bVCiVgNSGWlFl0ubJ10s+9ZyKZDGsJ24oWLeAfjYmFhrAxtQC4fgyk3tA5/0aj5BSm
         X+1Qn3P1WEdJXiCIXotC4EXRQBxYUCEtqxTpPUWJopbg2LfsrwLf6WfOaSGQMeJhq9ou
         YJAJ0jF3Kn/B6xGQUgaE++ZTvxDvxVIr9s9j88AdwfD6jLFodat4KG6tK+RXNCzMYZ3L
         TNkGILqy7Cn64pMkW+nA5OjcPFM2FCoobccGnKWVOS4RNfhbc6VjJAFCs5QQnTw2imNS
         VXryXHONGrMuZ7Uoh9QzuElgBduA5fFolPkTXybcCaLm9v1y6+0a7sG43PVcGdcMFm1I
         xaig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=c34Hbnl+NFIztNvqc2+nXDVAtmAg2nUT/qlpYskjvJ8=;
        b=GqNESd6uxyoZODKsTodHbLT1p3X4tClJgulz+rrGyHJ8XBlmSMbAXnWAdX8eNAJ+e2
         zztJ/66i6BNX3XSW/0H+frEV96J2G2aU6lD6YgpXF2TkbRQVLcBO3aeH+/Pyxnth9N/U
         HCDpfaoB2R2KJRmBSxcdtXNZBM+j9FbF6B/vp7VRNq11wDIR9Int8OYbIuRvRa+KB34d
         RQsP5a/QK4/tQG40+Ud2w0K3ZOkbWI0HhssBxQiiGsrVH+rC+/ACwjNw9CcRC+C5HZbz
         AfezgaXd9IQlE5ztxb5HJMm0RoaG8iDl9x2B0eRkyiFjTFfTqv85ZZHmTy2kvJeRYV8d
         N0LA==
X-Gm-Message-State: ANhLgQ32lZNrwhtYO67JmrvCKiUQrz85tO2xI4xcG3jNefiFsP+snY+E
	ZJRXhDR4NHvntBtUwZ97dOA=
X-Received: by 2002:a63:f60e:: with SMTP id m14mr1580759pgh.342.1583912064817;
        Wed, 11 Mar 2020 00:34:24 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([49.35.84.144])
        by smtp.gmail.com with ESMTPSA id 26sm21015323pgs.85.2020.03.11.00.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 00:34:23 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2] [Outreachy kernel] staging: rtl8188eu: hal: remove an unneeded variable
Date: Wed, 11 Mar 2020 13:04:18 +0530
Message-Id: <20200311073418.7476-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unneeded temporary local variable, cleanup suggested by coccinelle.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
v2: Change in commit message and changelog.

 drivers/staging/rtl8188eu/hal/usb_halinit.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 16a57b31a439..aa6354b9ffa2 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -40,8 +40,6 @@ static void _ConfigNormalChipOutEP_8188E(struct adapter *adapt, u8 NumOutPipe)
 
 static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8 NumInPipe, u8 NumOutPipe)
 {
-	bool			result		= false;
-
 	_ConfigNormalChipOutEP_8188E(adapt, NumOutPipe);
 
 	/*  Normal chip with one IN and one OUT doesn't have interrupt IN EP. */
@@ -52,9 +50,7 @@ static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8 NumInPip
 
 	/*  All config other than above support one Bulk IN and one Interrupt IN. */
 
-	result = hal_mapping_out_pipe(adapt, NumOutPipe);
-
-	return result;
+	return hal_mapping_out_pipe(adapt, NumOutPipe);
 }
 
 void rtw_hal_chip_configure(struct adapter *adapt)
-- 
2.17.1


