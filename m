X-GM-THRID: 6671020394532569088
X-Received: by 2002:a0c:b9ae:: with SMTP id v46mr5776777qvf.19.1553217975698;
        Thu, 21 Mar 2019 18:26:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4889:: with SMTP id v131ls3332184qka.6.gmail; Thu, 21
 Mar 2019 18:26:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwG04cyysvVkZr3JCkcqwntAO22ZCQpgHwB7FbRrRT69QChE7lK2q9x7ci/dAeigNtE4zR/
X-Received: by 2002:a37:9b87:: with SMTP id d129mr4492144qke.263.1553217975049;
        Thu, 21 Mar 2019 18:26:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553217975; cv=none;
        d=google.com; s=arc-20160816;
        b=HsOj8sQr5mHcJPRJHbjgHWjpwNUMphCURm3uxxVB5IFxsJnhneN4irrwAwTH4nIbE/
         VMAAXD+vnmn5rmvR45c28+agUHRTDyXv38dJjbR3jQzvCAczwVvjrcb7/WXvucvULT7T
         XyMpYgkxlEG9kgQVpoQGLNzr/G84TxuVR2hfPLwd7nongYmO12j0rPhLzTDcPmkbBYwh
         gC+1AxKFtddjt1RQjW7+GQrxUCA5/au30xOHFxBX9tK0QIdGsRgUKk0dbzLPym0LndX5
         HzcPJS3PltvbxH6LUHo30Ry5gMKiQc8KiPVyiYxr1B5d5v0B5RUzmLZ+0ItpgafT4Jre
         HzQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=F4wRkksmCWw38XNgHAP2TmDr88+CQweuIwaSKjpzado=;
        b=lBTKiOwmJHEcKpsEMaA6nSN/zZt8O03kXDyoo4rVQvte+nXsVlgwn01DU+1T1DoNAA
         UsTcOlASwwrRSWqUcd5odXhQUhS1QS8+kcHJOuDivE1Beeh0brFsBvQK25mFISwl8j6A
         jNos4NstjC7uJG+dCXbYKaaISMFRu7+orOtoSv7SFakX/vBy+p5fpGrN2tmMpdCACI4w
         64nF+39B/jWf/b7A0FayrPQx5Ta71S9Rf+kR1z74rx4Uu5+PaSEdx1pbW9Ro/GsvSKjm
         Tng8WC94HMsqU/R3QqxU3SV2wwOGrVd/Su9jGfu8CbKBlogsyEVFvBd/0ErvA1fGeMOV
         Z0lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VbuPDpG5;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id t17si620225qtq.0.2019.03.21.18.26.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 18:26:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VbuPDpG5;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id 103so546101otd.9
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 18:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=F4wRkksmCWw38XNgHAP2TmDr88+CQweuIwaSKjpzado=;
        b=VbuPDpG5yyKaXlMyBLKhbnNtdG278Q0kabrzUrNkv3EIkL4P+Ji/Ncyose0SQHlEVN
         vwAUhbJXbmqqApBMueiAUNYCIpcG3V2epMp4g8A3ihiJaTvHTo4KelIqdn1Kr63QpyXJ
         1vXWRww1oH5O7fO5Y31K9jsWJZmT8+KSgYXmdMg1zbcb1soCfEdCVXBAO8zj0YG1h9Dc
         hMy6xzkZPFaLxVpS9zEDx2Dd5av/5TPp9JXtW68FZAKyQ3+XREnfR3vef7ULpPc0F7A6
         Id5V1U8A800xtT/OWkzhyvIjXH/TsEf56PC4/q+pZ8uB6UN/PW3EMg/BQDCf0f7BqKpr
         UEug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=F4wRkksmCWw38XNgHAP2TmDr88+CQweuIwaSKjpzado=;
        b=OdIjT3v+rgNVMZeCeoWqNKMRLU4WQoUZUeEKR3vdA6880ouylBflk3H9PsWNWYCq2S
         e9O9otaOD40sTaP8KjT2WzCk8SD/3MMJNDHJFl3pCnZ/A68Tzk3GpSQqzy693Mak+mtR
         ijBDbVx++mDpUpOPMErA3xInWdOiXO9vV1M4SI1+wUBCCckuGfXPshXqwuqvhcYPPJVP
         ESQjGizQU1iTxhOTZb4tMZ9MDlWJkABfvKrCCToolOUVrKW87HftyS9fA5DqLzoHOiRZ
         X+QBKjCPnNgNTtUbzGIg53jBYx4GnpZwdr47kIik8p1ab17ZflTQUixxvunM6r0rXpDu
         72bQ==
X-Gm-Message-State: APjAAAWcAYgSTEI4ZINRjBYHND6tG3EPyWPFfKWqFnILbWbDbDSBirwZ
	G4aWXKTl7Z23EZ2SrVwmFYucJ85BGp0=
X-Received: by 2002:a9d:66f:: with SMTP id 102mr4926153otn.340.1553217974527;
        Thu, 21 Mar 2019 18:26:14 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:c92d:a4c3:eeab:413d])
        by smtp.gmail.com with ESMTPSA id b2sm3062410oih.1.2019.03.21.18.26.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Mar 2019 18:26:13 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 1/2] Staging: media: davinci_vpfe: Remove SETBIT macro and use BIT macro
Date: Thu, 21 Mar 2019 20:26:05 -0500
Message-Id: <97904fceb0de0988ffc889026b33d0705db988a0.1553217781.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1553217781.git.madhumithabiw@gmail.com>
References: <cover.1553217781.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1553217781.git.madhumithabiw@gmail.com>
References: <cover.1553217781.git.madhumithabiw@gmail.com>

Remove SETBIT macro and use BIT(x) instead of (1 << x) to maintain Linux
kernel coding style.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 8 ++++----
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 1 -
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 4380e0a8e6dc..382d88bee5a7 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -297,7 +297,7 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		case MEDIA_BUS_FMT_UYVY8_2X8:
 		case MEDIA_BUS_FMT_Y8_1X8:
 			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			val |= BIT(IPIPEIF_CFG2_YUV16_SHIFT);
 			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
 			break;
 
@@ -345,15 +345,15 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		case MEDIA_BUS_FMT_YUYV8_1X16:
 		case MEDIA_BUS_FMT_YUYV10_1X20:
 			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			val |= BIT(IPIPEIF_CFG2_YUV16_SHIFT);
 			break;
 
 		case MEDIA_BUS_FMT_YUYV8_2X8:
 		case MEDIA_BUS_FMT_UYVY8_2X8:
 		case MEDIA_BUS_FMT_Y8_1X8:
 		case MEDIA_BUS_FMT_YUYV10_2X10:
-			SETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			val |= BIT(IPIPEIF_CFG2_YUV8_SHIFT);
+			val |= BIT(IPIPEIF_CFG2_YUV16_SHIFT);
 			val |= IPIPEIF_CBCR_Y << IPIPEIF_CFG2_YUV8P_SHIFT;
 			break;
 
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index 4685d64016de..7bbe7a932b30 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -166,7 +166,6 @@ struct vpfe_ipipeif_device {
 #define IPIPEIF_RSZ_MIN			16
 #define IPIPEIF_RSZ_MAX			112
 #define IPIPEIF_RSZ_CONST		16
-#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
 #define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
 
 #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
-- 
2.17.1


