X-GM-THRID: 6467836648401928192
X-Received: by 10.46.18.149 with SMTP id 21mr491978ljs.28.1505910577200;
        Wed, 20 Sep 2017 05:29:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.74 with SMTP id h71ls22478lfi.4.gmail; Wed, 20 Sep 2017
 05:29:35 -0700 (PDT)
X-Received: by 10.46.84.69 with SMTP id y5mr480971ljd.37.1505910575334;
        Wed, 20 Sep 2017 05:29:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505910575; cv=none;
        d=google.com; s=arc-20160816;
        b=DUIWNKoLU2feh7jzck1sONa5FaKIOLy1kEHJ6joxiApKGqve16uzBwq7Mi6DymoAhI
         WjGGFZIU/Ax5D1ASYhRWgEwKcwEmj5WN63qRTOZjgt1hq3Sxt4nP0QWCIJpNXDwfkC0N
         vCnuQlmTGt/AUKnIGi320516a303SjjOBrS7UIYr+exSStYWP9TGbfmK2MuxOhcWxn0L
         hf3alLxE5xpU5q2JukDtooBhoNq9iNG8jNz4nmUx2ZYLnei5fOgxlUuNLgwQWcnh4yhG
         s5TXAnPTlSbRiDSmxjujwwtmKvLf+fT77TlgerZnWV/yU40GCB6tKIZS85/W/arQgitB
         oAuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=WJ8ox0FeT4fPPdSjmJknvywTJTrGvITYJXbN2VxinPg=;
        b=bppAaobPaNfChtqIRsy/yWyOnyzsfEwcXEAxYmTFPH8fQ3oPgMd0MVZqC4leJUxM2g
         1mDYCEmZ1NoRPswpNHcquwuAm8pFWLFlzYkQXgyIbj1e+Iv1WC3rz3MC5Ty5lYzOmPya
         DIl8k0yIZYjL/MQbWqjVYRmAa+MpOpCQt/pLitGGYyZeB10Xf0nLJFEjwAPxGIGyoG4E
         aD6IF67+SyeIY7+cKKcPutZsHa1g6JjSIeyWM8oCjQz6o3VSH9J+1iCRZSK9qOaJ8c9N
         zOrn5fNfQ51k3oOvtuFzR3z1k41tZTVb1nbXCZ3N7J4Y5fWEf6HAmQWXASzSRaQkBWH8
         nf4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OvuMF803;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id j4si152434wmi.2.2017.09.20.05.29.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 05:29:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OvuMF803;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id g50so1417490wra.3
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 05:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=WJ8ox0FeT4fPPdSjmJknvywTJTrGvITYJXbN2VxinPg=;
        b=OvuMF803TMmaC2cKyEiJ9k54OfDKEEdSo+RHEEeD9twrfKdIGmzJ+k4I/pvZlzy5nD
         nhmEGN8LZApTb2Lj6EUdhJ31DQ7Z5oxusuGWMwnkHgfkIGenJOaJlPERSwVOVMOFVvyC
         L2KuCM894UggvpC3dzHIyQrVMUVxl2OQ2bIf8BWcK+G7OpsrbwiOyG35yKUM0GcpQSg0
         TyMIHgAObg8Xiud2r4cBx0IhMUSMtAYlhELt3asU7Hx6S1YPZcJ2RN+A0hPN3KTiGF/v
         9QtWRSZFeScxs22FYOMwv+15EvBx7KhCqjtzp9kMkvRuhcpTadZ4aQlG6MiPdWh/us7N
         JTnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=WJ8ox0FeT4fPPdSjmJknvywTJTrGvITYJXbN2VxinPg=;
        b=jXEM2vzz2eDLd15lpHIKpuG9F//XNirftWbxya6JNrgyR5HRkGDdC//Z7Qt/1Mr/8Q
         pnZJ0JQbcaEgEoPFCRntjBgT+sjPIU4XsyJmbju76FSEXqV2NYBqGzUh4zMZwrdGC2g9
         zx28Vtn3yZADGhgGith/C8vk/nn1pVGDeAZ+oKCgf/gtWmPOk6vlvxNmyNqczkVKMxc6
         /arsBHfWw+qcHQB08SRUQhz4ZGzHkGLcKNJXCH4L5QmS6PX1WtYTH+/ZxSQmf6U/0l7f
         1h995zaMGS0/C12lAAfP32J9EECBq3fY8SYKcaETLbD7jc+lX7NkN3AUtwpvbKlq6qnt
         Z6Yg==
X-Gm-Message-State: AHPjjUhBlirP2KRaajDfswFwU+wA54Ppnf9rwId+r1QFJOsoCUlg5Gg6
	VsOfs+klBbk1Np9lks+175l+e0Du
X-Google-Smtp-Source: AOwi7QDuZDW/mTC0mUC0seJ5eOfpy78LvoWO+lFgdooFlpNDVJtEWSHUTHqHIu3ylj1JmBo/dQQMAA==
X-Received: by 10.223.138.235 with SMTP id z40mr4742971wrz.14.1505910575021;
        Wed, 20 Sep 2017 05:29:35 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id g25sm1594269wmc.16.2017.09.20.05.29.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Sep 2017 05:29:34 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/4] Staging: media: atomisp: pci: Place constant on the right side in comparissons
Date: Wed, 20 Sep 2017 05:28:49 -0700
Message-Id: <1d1971ccb353486f93f7e8888c5626b863ab681b.1505909512.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505909511.git.georgiana.chelu93@gmail.com>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1505909511.git.georgiana.chelu93@gmail.com>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com>

Fix issue found by checkpatch.pl script.
WARNING: Comparisons should place the constant on the right side of the test

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
index 520d59b..5027fd2 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
@@ -896,12 +896,12 @@ static inline int __set_css_print_env(struct atomisp_device *isp, int opt)
 {
 	int ret = 0;
 
-	if (0 == opt)
+	if (opt == 0)
 		isp->css_env.isp_css_env.print_env.debug_print = NULL;
-	else if (1 == opt)
+	else if (opt == 1)
 		isp->css_env.isp_css_env.print_env.debug_print =
 			atomisp_css2_dbg_ftrace_print;
-	else if (2 == opt)
+	else if (opt == 2)
 		isp->css_env.isp_css_env.print_env.debug_print =
 			atomisp_css2_dbg_print;
 	else
@@ -4706,7 +4706,7 @@ int atomisp_set_css_dbgfunc(struct atomisp_device *isp, int opt)
 	int ret;
 
 	ret = __set_css_print_env(isp, opt);
-	if (0 == ret)
+	if (ret == 0)
 		dbg_func = opt;
 
 	return ret;
-- 
2.7.4


