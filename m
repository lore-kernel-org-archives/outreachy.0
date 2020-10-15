X-GM-THRID: 6883926801253400576
X-Received: by 2002:ab0:72d0:: with SMTP id g16mr102487uap.57.1602789298937;
        Thu, 15 Oct 2020 12:14:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ed19:: with SMTP id l25ls11923vsp.2.gmail; Thu, 15 Oct
 2020 12:14:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyCpbPiwGQaC9lGtchlMfKV3UOhrKsgeqx6DnpL9NRr+nDXSWWSYJ6IFKpK4rLTqDCcYoi5
X-Received: by 2002:a67:ff91:: with SMTP id v17mr32458vsq.11.1602789297412;
        Thu, 15 Oct 2020 12:14:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602789297; cv=none;
        d=google.com; s=arc-20160816;
        b=F7+mFLCwQtcljhbntYGU5/T7aEgGOGGahYlyzBFBJB1SuVXY5YOexRV85R2slrnUd+
         51616SY15Jr3xXUz2Nqxqhv2F1nA1AZeYR3WANNcVLeZBeIQETgaA7i4MVpAVcrSoPeP
         axgA/m03MOG6AOH/P/Oo8TbnrbfXXfy8+QhWezCms3GjwdH28wCNqPIZwdmSAIYqCDFF
         fASQ1tq0uEdY+MVJyibY/c3q3jP1Vn17LV1ETmJfxymXRfiJJoPqb3ycUAR3F3DWAIC5
         nfr2fL/Rjp2dd0ioSE+C4EKWMxEOa9kSokRVrZhwEnlyuGQak/HfVRhEHInXVI1k03u6
         60rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4dk61TYmm7dMcY0AiM8Zdfa8nvPXI+EB+ZiOAUkpit0=;
        b=rvqfeQi0z9wd+SArdZz5jn8MMf1uI03WTAd2Nkp6RjJBW8YPvWB+RfQZDyjU19Mw2r
         CPncQmEVsfW579FrpPaselGEedClBGHrYYBQqwGuauGJOii8GPualyAkgj8gWS1dC0FW
         6BvNlVkf3/cbGCM18p7rBX42gJwvmSNSZw4JExcr77FtD3thidyH9mZgVQEQ5qXoqUsW
         EzzLuWKYpu/3Incm1xHSOdCjZrQCNueKThbqaQUDiVRyvzdFN55tADk4jeE5YftGLSkY
         MOJ1XJXqrPVjMmrUOta9xXSAPaJ2CFtwXpfm9hDZzXZ6mbLBmNm95E2ZHOxioAh/kBfX
         Hriw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kEVlapUU;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id s3si6456uap.0.2020.10.15.12.14.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 12:14:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kEVlapUU;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id p11so2143725pld.5
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2020 12:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=4dk61TYmm7dMcY0AiM8Zdfa8nvPXI+EB+ZiOAUkpit0=;
        b=kEVlapUUXkxJb5O+4TMsyU4iSZ/Aium0hh/ACIGYhc+O3Akww4natL3T0+q3pB2LIf
         7wEsXSiUpJS28igzntcrJAtHDv/1KdxvXfalAf3rQvLNt1o58su3pGYtXAJ0NHGEdKzZ
         huz8tej8VGpGbeQWyKVvQhlMRCj7y60JSe/b3jS+T8BTG9bLe7KWVFYR34W0AP8PqwQn
         M9io9k0HbmdOb8Xb72QsqlTt/pK/VQMkopszvmB/CAbUR1XOH9bGg/47bZlnImMxffWK
         lutNeG1zX9bkXpj5SMOKjdfHJSRVZaldBoqsexxkKnFdGFiRWYd39s9QSD6bFf1+dxen
         nJ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4dk61TYmm7dMcY0AiM8Zdfa8nvPXI+EB+ZiOAUkpit0=;
        b=tFW7TL79SQ+Cp8fUJx+P9vUNnpjq95ryrm+GynvIQ5G032Vd5YbeljFSDerjIruwee
         sc5EZg40UC0BdQD52NG8j5piipQpeDPn15ZNIhE6JqWwVs65cOPqfvM3EmKTnAQPRN4I
         zw0rqVK3kG8xFa1vbVVkGnmcdWz4bhlvNM7/7LwBE3pAVNyioZq9BAkMx9P44TEmJcOM
         885+XI+Wdmq1pm34zX7s72wIAdTh7dYKaj+s3vnV6Y2J+TuFmiusyNFchV6fd1josJeH
         X4IQcmCij9v+89H+vxioBhwvE/LhsPW42F08sTAaOgIwVQ3vdtcOwtPG53xHE+RR6h9U
         DNvw==
X-Gm-Message-State: AOAM532VJK/H8tRy7tp9R2yPr9EcsHHyeN3+PHKlnuoCWyQRx+Atn3oM
	uf4SiQhzxn48eom/cKH/U4zQh/0zK88=
X-Received: by 2002:a17:90a:fe82:: with SMTP id co2mr215919pjb.22.1602789296391;
        Thu, 15 Oct 2020 12:14:56 -0700 (PDT)
Return-Path: <sylphrenadin@gmail.com>
Received: from adolin ([49.207.198.246])
        by smtp.gmail.com with ESMTPSA id jx17sm63222pjb.10.2020.10.15.12.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 12:14:55 -0700 (PDT)
Date: Fri, 16 Oct 2020 00:44:52 +0530
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [Outreachy][PATCH 1/3] staging: fbtft: Replace snprintf() with
 scnprintf()
Message-ID: <cb2cd669f0c3c9db4f83f1515faf60e0be55c9cc.1602767114.git.sylphrenadin@gmail.com>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1602767114.git.sylphrenadin@gmail.com>

The show_debug() method should return the number of bytes printed into the
buffer which is the return value of scnprintf(). snprintf() returns the
potential number of bytes that could be written which may be greater
than the actual length to be written.

Replace snprintf() with the safer scnprintf() in fbtft-sysfs.c.

Issue found with Coccinelle.

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/fbtft/fbtft-sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
index 26e52cc2de64..7df92db648d6 100644
--- a/drivers/staging/fbtft/fbtft-sysfs.c
+++ b/drivers/staging/fbtft/fbtft-sysfs.c
@@ -199,7 +199,7 @@ static ssize_t show_debug(struct device *device,
 	struct fb_info *fb_info = dev_get_drvdata(device);
 	struct fbtft_par *par = fb_info->par;
 
-	return snprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
+	return scnprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
 }
 
 static struct device_attribute debug_device_attr =
-- 
2.25.1


