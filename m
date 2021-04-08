X-GM-THRID: 6948889025177452544
X-Received: by 2002:a05:6808:f14:: with SMTP id m20mr7940630oiw.13.1617914352936;
        Thu, 08 Apr 2021 13:39:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7dd2:: with SMTP id k18ls1677579otn.5.gmail; Thu, 08 Apr
 2021 13:39:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzX11lA54m+60Z2J1vWDJyxyD6S3r+/KHj3M1M9wxPmNNZ5emEJTwPmLR1+HDxDZetg4Px2
X-Received: by 2002:a9d:17e7:: with SMTP id j94mr9475233otj.41.1617914352264;
        Thu, 08 Apr 2021 13:39:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617914352; cv=none;
        d=google.com; s=arc-20160816;
        b=yE+gj90aRuwWkArdMqYg+maPpDe0dQQyJa+8nGztiFMEaVxbTD3v80vgBNKj5UySbh
         MbgYDUfNh67+RO4XoihomLsrsX5fewMFHpzR8tfBO8zAqCldBFVDt8Dd3DJvucXlQEL0
         e4ysjyF9hlms9Nd7QKoP+Q3gUgfnBXLXG7mAnxfgrbAVlzOhqCcgo5kKalPUHmbKcKZi
         AXCI9urheZf7SdcY9TbV9Sz9taQziKBs/LoH40SwY/xOUq+bk6pfwkta5pTQb6Z7g9Vq
         XwHW0RIuXOkNZnEqqRg4ynmT5qJYI2Xsowub+umbJNwMXB3NRWbhknERTKU9q/Ng7lu4
         TDdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/L7A3l46tNABUmGq61qq6UpeuB+FYzbiNc0Yan16neA=;
        b=zqXDF3k3owGtE4aCSRLbZAUew+8wuQra4+rjOp01Imx/OYXSDiLUgGHUUt67G9HUOs
         4+DaDY+O/UwaNrdj3ZIxSNvaBOMFYtQooKHaXgSYOByvbKTn7hmVkFcJZE/qMNs4RvHT
         b29Tc9y1cXfL19YbHJIXCQeMRO5D1YcM6R+29wsdvI+Dxgc8Q/M5jd9320GNMzaWopk9
         eTliSZTIR+M/otcp55YwYNtPJs4pgmX9KW4zTRBE2DiUNafamSJAR6CVEFPryNaD3E69
         xxeyCrQ+qVa4lg25oxtxs8vahqlTJZsgTmIlmWPs1IRoCbfAsE8qLwkpR6B3+siG2toJ
         rLzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EwDXlZrt;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id a12si50075oid.0.2021.04.08.13.39.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 13:39:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EwDXlZrt;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62a.google.com with SMTP id p10so1675943pld.0
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 13:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=/L7A3l46tNABUmGq61qq6UpeuB+FYzbiNc0Yan16neA=;
        b=EwDXlZrtDBcn1kmjhbjlnompQxgc+bbs+bYgDfMiDzrFJ94mKNOX1TEvsKhTafxSQ7
         gi11uKhdIR2lqzhqyvJkFrEMnPLLFipZ18nx+Tx5WpFSTf1+kaADZaB3uqtiyCgXFdwE
         pAh2IEO1qgBCdb1UVuKMoiaNRvNxfLg0zP2XBosCWQInzx+ANb9KYuTiiDwU7uYsU7Fo
         TPNLCYmUekzGGFkcoq64rT8xDGowGdzRm/Ei6+6PACZE4N3QC9v4xZkSOlqTb1y2OVce
         eb92xWSEAbwd524KsdZX8+XCFaY+dP0iP7rlDB+fsYZFwj2b3NO03i8rAWzD+KkGiCMI
         G4Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/L7A3l46tNABUmGq61qq6UpeuB+FYzbiNc0Yan16neA=;
        b=GufxA0EP/tm/in3PqXTEubEOfpqe8sOuRE41dvU63zyipQKpmC9Fnla8qBu22iku8T
         Tkk6Db1bs3meqmEMESiD/HT9UpxR+fbt2BZzeEk7Qf8Sv4/RKPZgsBz2Lavb9EPvN2kM
         KjZcF2NUAHY4tCL6j6ilXEfGLcThyzU9VHh9GEMuUmdwsUtyQNMRQqpPUmQ8L22+vsP4
         MrykGOWcCL5EeMn+15HTHbf1qKtfNMpf0SdjEk9ivJaxtehMTFSle93Z3pf8RYkwJ2Lb
         Gbh/3BtpSpeUsus2kVcuRBLf3x0DlRmT9DRepKQxBLmHpu6opg45Az1ti58PrACs5nFa
         rpqg==
X-Gm-Message-State: AOAM531JMjyuEaxMkaF/vN8sC66zvd0oXN+nfhSUpw3HyGQt8CH0PUWo
	XUIVCcJQgT6CNwnGvTyyAiA=
X-Received: by 2002:a17:902:6946:b029:e9:4dcc:9966 with SMTP id k6-20020a1709026946b02900e94dcc9966mr9601041plt.6.1617914351540;
        Thu, 08 Apr 2021 13:39:11 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.11.236])
        by smtp.gmail.com with ESMTPSA id t10sm259255pjy.16.2021.04.08.13.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 13:39:11 -0700 (PDT)
Date: Fri, 9 Apr 2021 02:09:03 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH 2/2] media: zoran: replace bit shifts by BIT() macro
Message-ID: <ac8ec2b70ac2cc7c541c05a1d9a8db1fe79df793.1617912177.git.mitaliborkar810@gmail.com>
References: <cover.1617912177.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617912177.git.mitaliborkar810@gmail.com>

Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
This BIT() macro from linux/bitops.h is used to define ZR36057_VFESPFR_* bitmasks.
Use of macro is better and neater. It maintains consistency.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/media/zoran/zr36057.h | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
index a2a75fd9f535..93075459f910 100644
--- a/drivers/staging/media/zoran/zr36057.h
+++ b/drivers/staging/media/zoran/zr36057.h
@@ -8,6 +8,8 @@
 #ifndef _ZR36057_H_
 #define _ZR36057_H_
 
+#include <linux/bitops.h>
+
 /* Zoran ZR36057 registers */
 
 #define ZR36057_VFEHCR          0x000	/* Video Front End, Horizontal Configuration Register */
@@ -31,12 +33,12 @@
 #define ZR36057_VFESPFR_VER_DCM          8
 #define ZR36057_VFESPFR_DISP_MODE        6
 #define ZR36057_VFESPFR_YUV422          (0 << 3)
-#define ZR36057_VFESPFR_RGB888          (1 << 3)
+#define ZR36057_VFESPFR_RGB888          BIT(3)
 #define ZR36057_VFESPFR_RGB565          (2 << 3)
 #define ZR36057_VFESPFR_RGB555          (3 << 3)
-#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
-#define ZR36057_VFESPFR_PACK24          (1 << 1)
-#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
+#define ZR36057_VFESPFR_ERR_DIF          BIT(2)
+#define ZR36057_VFESPFR_PACK24          BIT(1)
+#define ZR36057_VFESPFR_LITTLE_ENDIAN    BIT(0)
 
 #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
 
-- 
2.30.2


