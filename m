X-GM-THRID: 6393357965121814528
X-Received: by 10.200.57.65 with SMTP id t1mr2527179qtb.62.1488638776884;
        Sat, 04 Mar 2017 06:46:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.97 with SMTP id 88ls10583539otr.34.gmail; Sat, 04 Mar
 2017 06:46:16 -0800 (PST)
X-Received: by 10.157.46.59 with SMTP id q56mr3211933otb.106.1488638776597;
        Sat, 04 Mar 2017 06:46:16 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r66si534645pfb.7.2017.03.04.06.46.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:46:16 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so12734193pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 06:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sTQwYyJEhOuadTCJlTmHKqgcOCqx0+2noCZmG9yPmW0=;
        b=mTyKTS8GNp54brtonvhz12zjzjoi4OFYo23SvcR00FSw4UVivMAUG0l1jsyyDIOE3G
         QetxWiKEoLgv5MfM4BQwM8IJoNuNNdmQn0W3OgRETl/t4dgjNUaI+SfRxcMMNymjVbUM
         KkPtHZWVgRPYM+h2GrFkBt4Sw7rj5J8TZSQfDxZog/9N0xTRCUKWaMpkhRKP2JXzABSs
         IBq6T2uhU/MfSNwrIf+oxXqLNkCynFxSBUxVLe8Zdj0Bj5RxbnqLNJAaA4Ufhvj8yoZf
         a8kfejF2X2N73BC1ak511C+tK3ay/UUxD2uGQDyrdpVQDVEX1jqHIlYzNOS9mQoHP9bJ
         YThA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sTQwYyJEhOuadTCJlTmHKqgcOCqx0+2noCZmG9yPmW0=;
        b=nBEf4BRXC+awwaww8UIHgWba92chZWuOZ65vu/5dgDY3Q4IY4vFPEU+8TcaB0KvgRG
         Eg+ZBwcCiDafUjbktcmEqj7aKKBkSThjG6fd4cuxbqYrmkWpM1vv7UzjQkI0pYc/sEB+
         JBsUpdkijAfSzoOdpFEebimX+017GM3YwXoB+SbVqxMmpkzhI8i0ZSFnogFcpMMQ54hM
         dKPMDeiyS4z35hzWdxIkbrbpJi1pLxzpjV9hUmn/P71sZruBhI1PWGh2/UeQRQd7B4RU
         RGQeNLcaDSGFBxWN0lT1KgUfOYuCbnj6xiR2ZQyR3Mt5qKWda1c5dW2Wb0WOr1deNlkZ
         fOVA==
X-Gm-Message-State: AMke39lokVhd2CYEPBhV6EFG7TlHCuyZeJ5QPhk8o1jXqzxbogoyoPRQH3r6A7Ulfig7BA==
X-Received: by 10.84.212.8 with SMTP id d8mr12299643pli.152.1488638776376;
        Sat, 04 Mar 2017 06:46:16 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.6])
        by smtp.gmail.com with ESMTPSA id a77sm29785124pfj.1.2017.03.04.06.46.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 06:46:15 -0800 (PST)
Message-ID: <58bad337.5012620a.da5e8.bfba@mx.google.com>
X-Google-Original-Message-ID: <20170304144613.GA4539@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 20:16:13 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 7/9] staging: media: atomisp: Use unsigned int instead of
 unsigned.
References: <cover.1488636852.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488636852.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Usage of unsigned int is preferred over unsigned and this patch fixes
the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

 .../atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c | 6 +++---
 .../atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
index e8fab37..5ddf61f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
@@ -30,7 +30,7 @@ void
 ia_css_macc1_5_encode(
 	struct sh_css_isp_macc1_5_params *to,
 	const struct ia_css_macc1_5_config *from,
-	unsigned size)
+	unsigned int size)
 {
 	(void)size;
 	to->exp = from->exp;
@@ -40,7 +40,7 @@ void
 ia_css_macc1_5_vmem_encode(
 	struct sh_css_isp_macc1_5_vmem_params *params,
 	const struct ia_css_macc1_5_table *from,
-	unsigned size)
+	unsigned int size)
 {
 	unsigned int i, j, k, idx;
 	unsigned int idx_map[] = {
@@ -65,7 +65,7 @@ ia_css_macc1_5_vmem_encode(
 void
 ia_css_macc1_5_debug_dtrace(
 	const struct ia_css_macc1_5_config *config,
-	unsigned level)
+	unsigned int level)
 {
 	ia_css_debug_dtrace(level,
 		"config.exp=%d\n",
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h
index 8f0a78f..53ef18f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h
@@ -24,18 +24,18 @@ void
 ia_css_macc1_5_encode(
 	struct sh_css_isp_macc1_5_params *to,
 	const struct ia_css_macc1_5_config *from,
-	unsigned size);
+	unsigned int size);
 
 void
 ia_css_macc1_5_vmem_encode(
 	struct sh_css_isp_macc1_5_vmem_params *params,
 	const struct ia_css_macc1_5_table *from,
-	unsigned size);
+	unsigned int size);
 
 #ifndef IA_CSS_NO_DEBUG
 void
 ia_css_macc1_5_debug_dtrace(
 	const struct ia_css_macc1_5_config *config,
-	unsigned level);
+	unsigned int level);
 #endif
 #endif /* __IA_CSS_MACC1_5_HOST_H */
-- 
2.9.3


