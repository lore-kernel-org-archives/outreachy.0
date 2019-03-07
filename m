X-GM-THRID: 6665628449675149312
X-Received: by 2002:ac8:1a21:: with SMTP id v30mr1108777qtj.40.1551991380598;
        Thu, 07 Mar 2019 12:43:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2b0a:: with SMTP id 10ls3041300qtu.3.gmail; Thu, 07 Mar
 2019 12:43:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqxc6PPwuy2bKaLSejKlvMcYJ/30BQj/G4rHAStZAqr7yuxB0ZeQEXG1fMPqgvDNNusNgLhu
X-Received: by 2002:ac8:1a21:: with SMTP id v30mr1108768qtj.40.1551991379971;
        Thu, 07 Mar 2019 12:42:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551991379; cv=none;
        d=google.com; s=arc-20160816;
        b=qx0U5yxsVWEfIxTNLt06BDEZtTovOGvCsD70R7wkKKlOh2J+rabbM6VPCupNO4RUV2
         iPLP7kQ+T6nNPsGG8wohkHKj75QaXk2dzwSqWmvcMxC+G80z5iKQz8ORKhHfWTNyBpB/
         RYHdYZdSVZVG27bvESXFzMYvHRqLnlqh8Vl39L4DuuW9Uc/EJfq447tc7DqAVV5r+Dw8
         Zx5vfV0uhpUq9Qjm38lLvLhgy977kmHCbC2vAJhygiIZ3+SURfonJp1RjWXXbMRmcuHk
         UL7BYJ+BBzSRPqBUJcwru14IEeBNZf8nujkKCYLY1k2+RCRq7c2y4L7Tn8+dr/kZoJ5g
         YIiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=HHjYHJPZEEZ4odcO2wRIWUCHv1Odzfcge1jkUFAGy0I=;
        b=x8tkYTmABGye2WzgcfXnrqTjkIrxaEmUkMiKAWavYm2PxFMU57yKQXMsF+TwYeI1E9
         1VAMg/e09vHOq/0lZr4i0w6zmB4krKghmD81gUbemiSE2gYsX9DxW9GCDTBhKvXWexus
         3/hEx1s6KDlSF161UPb3fr8Ak/NTeSEduUb+4ajoTg08e+FS4OREzG04S3/dbcKil0Ud
         b3wrR+CUPlkzeHA6oKlDiPewZWaxTX1onI3b4qN73KwY1tM7kgSdgpdSCajDb5l7Dqsu
         qo9Xt3aCgDX6KcTde6iV8CPUoKbGcIUVAyt7nvciU9JRcV7z4Mxoj0s7pqp8BOPPpe00
         xHPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cMIp8N9T;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id a3si368555qtc.0.2019.03.07.12.42.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:42:59 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cMIp8N9T;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id 98so15397768oty.1
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 12:42:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HHjYHJPZEEZ4odcO2wRIWUCHv1Odzfcge1jkUFAGy0I=;
        b=cMIp8N9TNkL+33tT7FNAV9YDgS4zZ1nRQcxP1aVmN0ajQyqgtomNqUndKklb/3I5OO
         ipeMWqEULOmdrO9eKEm1orwJas7SVE2ntQuc2BTiEp/AjWXG/6OdcPuD6ilfa7UdJ9iz
         6o4A7C1QBp6SZWAu3dy/v4vbrN2ISzOiMU3or9gNTdOn+K3B45QZqnh1ylaz+CGbJZmE
         qH+OsAgOzTQojqA1bfugTlH1tViD1hwCu0iytVStIBzM/GHiszman+VNJwJxtq3FUOQI
         37j90ripM8dCJITUbrdbq1Eii3WSEwLo/ibDI2E3X6CXDmWoX0l5npsBO3ZV+Skp2H6H
         QaBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HHjYHJPZEEZ4odcO2wRIWUCHv1Odzfcge1jkUFAGy0I=;
        b=fOZVZtPxERW5yrLXUOxT1dmVMpBriH/C3n6Q/n0Lwvubel97qnKrJD1rja6WjETVgV
         JEz2tTfiHJ5zoG0np7i2vyI1YvVRzjiNUCD1pFJ92wPk6nt4h8Hg9LpD1W6FhpIwpMJx
         GP8dTQECrBCt7DUsVxY2TkUPfalLbJ6eVv+iqGQsKhQ4PlSHbDOKt8hjB7LGt06oVzN5
         aVSbPUtHfIJBu96vaA/bSxh3N3hRF4cInEoW4IkRUc9HUG14S5VAJvH9K10EWtK8bICP
         hv+1bKFZuCxHIg06if290u75P5uyGj8GVp03iTAbqLyzkk0NhV6V7OlF0uom0+H+omZc
         iIUw==
X-Gm-Message-State: APjAAAVXoJQVbLrXieV91BIeeapqLXgVx1NkoTnIH8wUtkWkazEEW/m9
	Q3L3IgsjpT1aKUX7yEw0FLJyGOmWIER5wQ==
X-Received: by 2002:a9d:7657:: with SMTP id o23mr9884533otl.260.1551991379595;
        Thu, 07 Mar 2019 12:42:59 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id i8sm2202874oib.44.2019.03.07.12.42.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 12:42:58 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: vt6655: Remove an unused function
Date: Thu,  7 Mar 2019 14:42:54 -0600
Message-Id: <20190307204254.8003-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove an unused function, as it is never called in kernel tree.
---
Changes in v2 -
- Converted patch series to a patch
Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.c | 7 -------
 drivers/staging/vt6655/mac.h | 2 --
 2 files changed, 9 deletions(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 40a8f1ce837c..2f773fdf8d64 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -57,13 +57,6 @@
  * Return Value: true if all test bits On; otherwise false
  *
  */
-bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
-		     unsigned char byTestBits)
-{
-	void __iomem *io_base = priv->PortOffset;
-
-	return (ioread8(io_base + byRegOfs) & byTestBits) == byTestBits;
-}
 
 /*
  * Description:
diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 59538ac09fc5..c7888c4e96f2 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -876,8 +876,6 @@ do {								\
 #define MACvSetRFLE_LatchBase(iobase)                                 \
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
 
-bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
-		     unsigned char byTestBits);
 bool MACbIsRegBitsOff(struct vnt_private *priv, unsigned char byRegOfs,
 		      unsigned char byTestBits);
 
-- 
2.17.1


