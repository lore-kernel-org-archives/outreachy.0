X-GM-THRID: 6341442141271621632
X-Received: by 10.200.38.101 with SMTP id v34mr3707731qtv.30.1476482055333;
        Fri, 14 Oct 2016 14:54:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.6 with SMTP id 6ls5109438oti.32.gmail; Fri, 14 Oct 2016
 14:54:14 -0700 (PDT)
X-Received: by 10.237.50.194 with SMTP id z60mr3741044qtd.49.1476482054690;
        Fri, 14 Oct 2016 14:54:14 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id t8si3100443vkb.2.2016.10.14.14.54.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 14:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x242.google.com with SMTP id u68so21351uau.1
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Oct 2016 14:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PCfKu047f8zJqyAv/+F0Mo+jXwvwAgyGkOHsYSTHOBU=;
        b=nq5AEUVzPhVSxvW7k1AXohl42ssjZHNVTZaooItloOOBuAtttT2W8/GEafKcWOCJp2
         sHLoFt7B/GCxXMA/DTPbaLqZtU7xO0QF2g+c/m5g2Eo11+gr+gD5wSWLeatjAyuT+IZ3
         8mERij+yT025OiQrBe3uRulHw7wWJZFvPRzZXN7zwduP7wZfxWwqPLym+ofWom7iZywl
         GgjsaEjLzDKttvKCZOk66chI+9nRbl8lgk8Nbwuokt2IuzknVqpqAx55IDNNz8+2he/X
         fmUs2GlTTCAYDC7F30+EJtF6fcaKRjN3lVVNm/y1SqjBkjdg1FBMw/Xnaa8eJtTyVh8c
         BnDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PCfKu047f8zJqyAv/+F0Mo+jXwvwAgyGkOHsYSTHOBU=;
        b=bs2HBtRuBqUmjnovhJUtvWxXC7Rq+hgyRnUCXhfuT3HTEW2xPIHPRJpI894/zruJ3E
         2JbLDCs1fljs+QWkRnjmN+Bg3WXLHuksjjoVa/0i1IlXga+i9XNw/rVLtwNdJdXvGDS7
         IZV/482Dn/xlgsisQz899Y89eGIJblcVubYF/kVdT9/gfaJAdTuTIteNgN3GzQQ5CFle
         1UHIs7TAynS7DKI80MSFGDlqPzSlO7YSu2P6k01dc5JAuf0g+7AeIJn7RyxrpX5sCqGR
         pwfSp5j071tYLPFPpg8PJvxAx6xcSK0U1jHKhfF5afJbNRNNrarvNvB+KLMyUsxOIsD2
         cenw==
X-Gm-Message-State: AA6/9Rl+9UIUv1bAKwbm0VFGeoOLm5jaSmteIehHloNDK3VfZnhd1DQ0ennwHz+9s3ApIQ==
X-Received: by 10.159.41.167 with SMTP id s36mr90175uas.171.1476482054548;
        Fri, 14 Oct 2016 14:54:14 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id s17sm8271202vka.26.2016.10.14.14.54.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 14:54:14 -0700 (PDT)
Date: Fri, 14 Oct 2016 18:54:07 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: greybus: audio_manager_sysfs: Replace sscanf
 with kstrto* to single variable conversion.
Message-ID: <20161014215407.GA6916@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Prefer kstrto<type> to single variable sscanf

kstrto* is designed to convert string to numerical value and makes
it easier to understand what the code does.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/greybus/audio_manager_sysfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
index 376e17c..e74fdcf 100644
--- a/drivers/staging/greybus/audio_manager_sysfs.c
+++ b/drivers/staging/greybus/audio_manager_sysfs.c
@@ -44,7 +44,7 @@ static ssize_t manager_sysfs_remove_store(
 {
 	int id;
 
-	int num = sscanf(buf, "%d", &id);
+	int num = kstrtoint(buf, 10, &id);
 
 	if (num != 1)
 		return -EINVAL;
@@ -65,7 +65,7 @@ static ssize_t manager_sysfs_dump_store(
 {
 	int id;
 
-	int num = sscanf(buf, "%d", &id);
+	int num = kstrtoint(buf, 10, &id);
 
 	if (num == 1) {
 		num = gb_audio_manager_dump_module(id);
-- 
2.7.4


