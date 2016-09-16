X-GM-THRID: 6331000982206414848
X-Received: by 10.200.56.181 with SMTP id f50mr10941566qtc.11.1474051518190;
        Fri, 16 Sep 2016 11:45:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls1896677ioe.45.gmail; Fri, 16 Sep
 2016 11:45:17 -0700 (PDT)
X-Received: by 10.66.161.66 with SMTP id xq2mr468738pab.97.1474051517334;
        Fri, 16 Sep 2016 11:45:17 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 7si3034062pfw.1.2016.09.16.11.45.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 11:45:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so3765836pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 11:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hlZtiYW2hPPr9j58qt2NL9SEgUTLVukRLdYwjRrrgXk=;
        b=FuowqTVYgMmTiIoYSZCJIuFOw0z6oKmkIuxuJa1e2koMvuYrZ3HWzzmZWab52rwjm+
         RpfmiqNXA63LFY1Cpp4rlHBloBA+bxlJeRC/+HaivXqIIRpSoSxkJVa/CM1T+OZmEgYF
         qmlkvCvtPftqxCIGmEVlXc9iHAYEgmh+rC5TtwI1UtNitDfSZD9FaqKte96esQoBXV5P
         h/YQnHYFhRCYTJxmW6mlDo0CUy+rr3jKqOtDbXAgJLa5m/W05Vd+HsQqvofK8zOf1Xmn
         ElGMlrioAHkUCRuDu5Ud2f0xt08U7Jd/stUVUmNWMSHjETaXOvYE4fJrrZsx0u2y+HKX
         KQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hlZtiYW2hPPr9j58qt2NL9SEgUTLVukRLdYwjRrrgXk=;
        b=T5t0oRNI4KTNXYU7hFQ3hIluQ12Ct/NQ5bcNd/BBM3HKXKcc/hqAzorQ/tsXl8Xl+Z
         9Ysa0dvHjoFv1d8NKo1soOp6nDXVcuNp7jU+0aXFxKNtLf5vyTR/F77BM0j/Ea0SW9yc
         mHwnX8GWzkaI5VhruT52LrVYVl1N4RkpENRaCvIbnKWxnKCloaR9MJGsDOSQZozSc4kK
         Qys0nA/xrjLvyk9dfZjLXZiPvIH3yh0HEld6hNiAr/SKSNHRshOEEpOgLGwVIA03Ha4V
         Nn7JGxam3LOILRQ4H9typrMOBZ8KUR1L9qiiIuoxf18TCgymhEoJrJwHwFYEQGTZaPSD
         V+iA==
X-Gm-Message-State: AE9vXwNTYCTkjn2ySRDLn/MYEARiJnGukvkIuUOUC0+g4uKQwzZ73l18VbDC5a9aAaneig==
X-Received: by 10.66.249.164 with SMTP id yv4mr25401406pac.89.1474051516967;
        Fri, 16 Sep 2016 11:45:16 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id d188sm1617861pfd.3.2016.09.16.11.45.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 11:45:16 -0700 (PDT)
Date: Sat, 17 Sep 2016 00:14:57 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: media: davinci_vpfe: Use BIT macro instead of
 left shifting 1
Message-ID: <20160916184457.GA26498@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces left shifts on 1 with the BIT(x) macro, as suggested
by checkpatch.pl.
This was done using coccinelle script:
@@
constant c;
@@
- (1 << c)
+ BIT(c)

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2:
Updated the changelog to include the coccinelle script used.

 .../staging/media/davinci_vpfe/davinci_vpfe_user.h | 36 +++++++++++-----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index f4f35c9..d3f34f9 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -544,41 +544,41 @@ struct vpfe_isif_raw_config {
 /* IPIPE module configurations */
 
 /* IPIPE input configuration */
-#define VPFE_IPIPE_INPUT_CONFIG		(1 << 0)
+#define VPFE_IPIPE_INPUT_CONFIG		BIT(0)
 /* LUT based Defect Pixel Correction */
-#define VPFE_IPIPE_LUTDPC		(1 << 1)
+#define VPFE_IPIPE_LUTDPC		BIT(1)
 /* On the fly (OTF) Defect Pixel Correction */
-#define VPFE_IPIPE_OTFDPC		(1 << 2)
+#define VPFE_IPIPE_OTFDPC		BIT(2)
 /* Noise Filter - 1 */
-#define VPFE_IPIPE_NF1			(1 << 3)
+#define VPFE_IPIPE_NF1			BIT(3)
 /* Noise Filter - 2 */
-#define VPFE_IPIPE_NF2			(1 << 4)
+#define VPFE_IPIPE_NF2			BIT(4)
 /* White Balance.  Also a control ID */
-#define VPFE_IPIPE_WB			(1 << 5)
+#define VPFE_IPIPE_WB			BIT(5)
 /* 1st RGB to RBG Blend module */
-#define VPFE_IPIPE_RGB2RGB_1		(1 << 6)
+#define VPFE_IPIPE_RGB2RGB_1		BIT(6)
 /* 2nd RGB to RBG Blend module */
-#define VPFE_IPIPE_RGB2RGB_2		(1 << 7)
+#define VPFE_IPIPE_RGB2RGB_2		BIT(7)
 /* Gamma Correction */
-#define VPFE_IPIPE_GAMMA		(1 << 8)
+#define VPFE_IPIPE_GAMMA		BIT(8)
 /* 3D LUT color conversion */
-#define VPFE_IPIPE_3D_LUT		(1 << 9)
+#define VPFE_IPIPE_3D_LUT		BIT(9)
 /* RGB to YCbCr module */
-#define VPFE_IPIPE_RGB2YUV		(1 << 10)
+#define VPFE_IPIPE_RGB2YUV		BIT(10)
 /* YUV 422 conversion module */
-#define VPFE_IPIPE_YUV422_CONV		(1 << 11)
+#define VPFE_IPIPE_YUV422_CONV		BIT(11)
 /* Edge Enhancement */
-#define VPFE_IPIPE_YEE			(1 << 12)
+#define VPFE_IPIPE_YEE			BIT(12)
 /* Green Imbalance Correction */
-#define VPFE_IPIPE_GIC			(1 << 13)
+#define VPFE_IPIPE_GIC			BIT(13)
 /* CFA Interpolation */
-#define VPFE_IPIPE_CFA			(1 << 14)
+#define VPFE_IPIPE_CFA			BIT(14)
 /* Chroma Artifact Reduction */
-#define VPFE_IPIPE_CAR			(1 << 15)
+#define VPFE_IPIPE_CAR			BIT(15)
 /* Chroma Gain Suppression */
-#define VPFE_IPIPE_CGS			(1 << 16)
+#define VPFE_IPIPE_CGS			BIT(16)
 /* Global brightness and contrast control */
-#define VPFE_IPIPE_GBCE			(1 << 17)
+#define VPFE_IPIPE_GBCE			BIT(17)
 
 #define VPFE_IPIPE_MAX_MODULES		18
 
-- 
2.7.4


