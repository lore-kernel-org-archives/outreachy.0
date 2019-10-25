X-GM-THRID: 6751365568986611712
X-Received: by 2002:a25:76cd:: with SMTP id r196mr5403142ybc.134.1572046182253;
        Fri, 25 Oct 2019 16:29:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2d2:: with SMTP id 201ls46263ybc.7.gmail; Fri, 25 Oct
 2019 16:29:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyeSRZTv0oFnbUtpPCZFi0Ui9AHm9JA3iKTyl6pB3EmfUvmvH1DiOJB4m/yIv1UJeZhPyqq
X-Received: by 2002:a25:4187:: with SMTP id o129mr5507215yba.113.1572046180607;
        Fri, 25 Oct 2019 16:29:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572046180; cv=none;
        d=google.com; s=arc-20160816;
        b=clA7gvzPTkkP0X/5YMRZLTDNHNSQt27i46hV2G85Ve+LrrWmiFBrIUF+8uacjZCTwg
         OlRdgyzrHkc3xdGS7A7lC/UVPqxNI5M4az9fgc0KQo417PpmIAWx+j8QftgpXkbYgm4K
         fxb7hx77GYvJChviMKQL36KfLcrLN7vRZ8FwFnQuiyfAp+l/7qP1zU6YEP+++eBMaKgM
         TvDOpW4l6teUbvvw8nl/g4Q8WlgMYZOqaaYwOOuEXJ7ArtFDXToj/Zr3RRc7QcS3E/eR
         Q9RAl68kfllwDWnTsN3Jn4gGS/za5CCaxChvh/D02wm1I9TiNGC7IZ9D8krbHRw2QoiG
         AKSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=QTe/mbHSIGF8oyKbKycoldd59M1YyY11WJBJiD/SUAo=;
        b=CKEPWPMbDdfRRW6k29DIxYuyf1Sys93rnzcG6G6Sa7CYCGqp4uB+QgIkuyuBj4BAV4
         p9DH7LWBcFYTKOVu/XCPx2anAXtBHQCBC/2me4iPDlNauush8MRDL/6y5W+PlPJOW4fl
         FzcjOOjTyTZrmgpu+25O0mbTDgv9jXJneR06n6DSmlCGlDMl5ZoOEtf6sZf9IeINluBD
         1VmWeRUSFOXS7VCXXxYAosHz/MqLZtVTB0EGMaCOAUrVqQdgzLJigLbaYUwYchI8idKT
         +AZWDHL+fx8de9/mAotzKmYu3uQJ+yqbjKZPk7hWcBqgl9Fc1K8e0NQs1DCYSoTJH4Ji
         pVbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="DaB/UDJY";
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id x7si275184ywd.5.2019.10.25.16.29.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 16:29:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="DaB/UDJY";
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id o3so5766512qtj.8
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 16:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QTe/mbHSIGF8oyKbKycoldd59M1YyY11WJBJiD/SUAo=;
        b=DaB/UDJYQMh1LUc+LAjr6OOYvjQ7nXfj+AhOR/wDO/Nm5udxMuFGjNHMnaCs+Qur4C
         5t1reY8OeD6PoiQqKJRyPurNC7CNLHl83DxsyZqDWD8bGdhTAv+MdnLBWzHHqcFw1VTc
         ApVjWij7lLaM9Ir2Jep9LKRRrutpMWQoNIFIG000V5jN1yXz85RFRIoc71p+9CI1DUmG
         X5worjrOfshIj+uD8m5zHBUCxgRTup2eqP6IR2bCtDkq1LnU8OXrvKCstITgQR5meD+v
         8mI3xTGH++qS8feOShOQQ4SJcuKb51hGiDQh2tQLxsI2syBoAyIPxrxpj0REasJ49W7c
         C+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QTe/mbHSIGF8oyKbKycoldd59M1YyY11WJBJiD/SUAo=;
        b=rf/RyQmBnwM7EzaaPv0kTQzjv8/M4qharfUlhFwTqe1vBuN97FZcxqL9nLxZ2qSaQX
         ra2PLPpwPuomlQyyDxpYlL1fMVgL9TO/x1JdUL2o8XkD4WRzlQ/QKWel/qdZj077EXok
         Aah1dO4UakAIvwU3JWUAfUVHpFPdfu/3l9UF4WsIrkbcIsPjEhF/px47llUMbLdJrAEE
         gOUkikmw6yoBP+1HCNB4ikiZjm9+qaF04R4EfbxuZjIfFlrbOx+lcx3FJof8D9abEGq6
         SUYwlFhK+MGt2xefXRu0LLd+KMi3WlFlD/fSXrrvzHeeM+eqPsmpA5n/TpIqHkC8Hx0B
         OrSQ==
X-Gm-Message-State: APjAAAXcTzpglzFHEgXOHfkcPdS4Zf3Q0N2ZAfiHFgGBHMS1cjAb80g0
	apGu5Ln0jMcVAEm+JmYSc2OIiN7lCXdAzg==
X-Received: by 2002:a0c:8b5b:: with SMTP id d27mr5989394qvc.29.1572046180069;
        Fri, 25 Oct 2019 16:29:40 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id o13sm3096434qto.96.2019.10.25.16.29.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 16:29:39 -0700 (PDT)
Date: Fri, 25 Oct 2019 20:29:35 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH] staging: gasket: Fix lines ending with a '('
Message-ID: <20191025232935.GA813@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix lines ending with a '('. Issue found by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/gasket/gasket_ioctl.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index d1b3e9a..e3047d3 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -54,9 +54,9 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
 	ibuf.size = gasket_page_table_num_entries(
 		gasket_dev->page_table[ibuf.page_table_index]);
 
-	trace_gasket_ioctl_page_table_data(
-		ibuf.page_table_index, ibuf.size, ibuf.host_address,
-		ibuf.device_address);
+	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
+					   ibuf.host_address,
+					   ibuf.device_address);
 
 	if (copy_to_user(argp, &ibuf, sizeof(ibuf)))
 		return -EFAULT;
@@ -101,9 +101,9 @@ static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
 	if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
 		return -EFAULT;
 
-	trace_gasket_ioctl_page_table_data(
-		ibuf.page_table_index, ibuf.size, ibuf.host_address,
-		ibuf.device_address);
+	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
+					   ibuf.host_address,
+					   ibuf.device_address);
 
 	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
 		return -EFAULT;
-- 
2.7.4


