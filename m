X-GM-THRID: 6671279616502530048
X-Received: by 2002:a17:902:b788:: with SMTP id e8mr587111pls.339.1553278327351;
        Fri, 22 Mar 2019 11:12:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:b60a:: with SMTP id j10ls435820pff.6.gmail; Fri, 22 Mar
 2019 11:12:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxi/F/BaD0lB2GMckFmNdFZzZejnoiGZ3CTQBu4PUIqIa9HENflCMhONclRFvtSIdcYwA6x
X-Received: by 2002:a63:6841:: with SMTP id d62mr10312325pgc.133.1553278326659;
        Fri, 22 Mar 2019 11:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553278326; cv=none;
        d=google.com; s=arc-20160816;
        b=a9E2NiVLrNvb1ADOS7cam42QHG3Zl+DQ3BHCjp85I6noEfyq0AB2oSl6CIjSL2lFcT
         cZbMXYibfnp6D1OIU8UfD4i462CPZv15eNFWzi/0KHsTBUMvxC+vFGNLvhMZ/xRMVKe7
         4svCxYBC1uKPiMUFYIs9uuCj9NvwPJEzlfRn7IPNLy8DiUGb3dl17tDKg1dtgZ3039H4
         G/ZcG7nrCa4ltc+cEnkzCMwsWw7Y9bOCh7KWxlV6RSUBs90nKaEYybkgSj37GovXfp4s
         5ksht2U5J0r20chCqsObp4x8+e098cpcvrW8vpnZxqYQK9S0wi9chJ/qcJhvLvro2UDg
         BDAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ePmVlMJYrFcaL3sFW94YWTN2xgvyhMkrdWvIkDloQPk=;
        b=f2zFqQ5qSrp4s/3PX14Dpn2sxJhd6N12HevIBzuxaV3W6ZxugO6bZ+W1YUVTXFcBev
         D6uu7H1W6jqQsXKqB0RI2HvuTlTt5esvFEe90SVVJgBRGRXMSOjxMtXju11x59ktTIE6
         cW8q4y8BE73D+9Hjc5+kgIotilJ5IG+d0CvJWyP2nqlQdIUGk2rbg3BpR1K8lqtHZ1X7
         MLUNW7tT1JI7WjXuj/k+ifUhUreQPSuAe/bNC6KP1u2QWeLis5VC5q/9NExbARall7Po
         8mIGEmbb8VXUZJSIZgIf2I5VkpdhoQENMPEntvxG299my0vrIfzNaybP9wgHbGJPBVb3
         Kg9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XFBttcT8;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id b38si387030plb.1.2019.03.22.11.12.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 11:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XFBttcT8;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id k21so1363762otf.1
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 11:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ePmVlMJYrFcaL3sFW94YWTN2xgvyhMkrdWvIkDloQPk=;
        b=XFBttcT8oFEhjHZe8vDFBkZG8OYRvCGev1C3qPM59apPuQ5KjWQ9jMbgucLxIt+t1e
         3aPhXGgPtOpbP9yUmtAg/rRq4LOSyx+qaL9zhfS+wxog6Yyjsc1s0aMCxBg0vJ351FqQ
         nVSlBsoo9oOekANCgfXeU3lM/IP35WKOYePNRSvQrSauTwWPRr77mGmYgCZi2kPJ1XcX
         1x2JtXWT4nzcWF2Kk5SfyWC8ovzfpjjhuiIv6ECcDw4pEJlI7e+iT+JfWWvtNhZD7hl9
         nNP0vF7QnVRSyAaZHjP8uuftltimSS54lH4sEs+rhrZLitCrTUxf3HcOzWFmnHSKdsEb
         FlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ePmVlMJYrFcaL3sFW94YWTN2xgvyhMkrdWvIkDloQPk=;
        b=KTApd+69VWg7mZhaiPPpsZwh+fIUVsApwIrop5j22HyPdPY+x/QVNdMA/5ddkJAgc1
         Tew9H4bHOMvxnc23A47Y/KUgJaUxVVvs99ttgiR6o8DtaNqFAC+vIqGwAMctCfhZ05D1
         Jma26WDif+TYnrKaEChCSkQn3OyI5rWKeUo1k2vmuRCr36v3zhpoXBvjlpzbvJKOsAi+
         dgDjtbrwBFWEw7jIknM6S0zweMdd6HnYvj3wGFZfZG4blnLjQXnFKa7EuEPiJ8ktLvEn
         tNt5zrUtCN68CTd64DtdoqvurHNr4OiFyPTbjhjj3lu5RaMNzJxg49K48yuGWIcXMV9s
         J+Pw==
X-Gm-Message-State: APjAAAXJjUFEV21OHzBTY7YS96u7mdTAHi60cDCBenir8sWC0p+X81Yy
	/TBdeipbQKFQamIrbYXKZsw=
X-Received: by 2002:a9d:7207:: with SMTP id u7mr8283033otj.48.1553278325805;
        Fri, 22 Mar 2019 11:12:05 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:25c4:3243:c335:9f7b])
        by smtp.gmail.com with ESMTPSA id k25sm3287743otl.58.2019.03.22.11.12.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 22 Mar 2019 11:12:04 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: media: davinci_vpfe: Convert macros into inline functions
Date: Fri, 22 Mar 2019 13:12:02 -0500
Message-Id: <20190322181202.6289-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Convert macros into inline functions, as inline functions are perferable
to macros resembling function based on documentation of linux kernel
coding style.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index 4685d64016de..fe608be00154 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -166,8 +166,15 @@ struct vpfe_ipipeif_device {
 #define IPIPEIF_RSZ_MIN			16
 #define IPIPEIF_RSZ_MAX			112
 #define IPIPEIF_RSZ_CONST		16
-#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
-#define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
+static inline void set_bit(u32 *reg, int bit)
+{
+	*reg |= (0x00000001 << bit);
+}
+
+static inline void clear_bit(u32 *reg, int bit)
+{
+	*reg &= ~(0x00000001 << bit);
+}
 
 #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
 #define IPIPEIF_ADOFS_LSB_SHIFT		5
-- 
2.17.1


