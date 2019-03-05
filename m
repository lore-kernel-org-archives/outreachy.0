X-GM-THRID: 6664861839759769600
X-Received: by 2002:a5d:4908:: with SMTP id x8mr1275475wrq.5.1551798352399;
        Tue, 05 Mar 2019 07:05:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e142:: with SMTP id y63ls384825wmg.7.canary-gmail; Tue,
 05 Mar 2019 07:05:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqwCYpggq7ksnU1TV3Q6naHq606vyk6MWVJ1Rvj1NF3VHyH+pHOWkxSiyFJ02Rr5QutnpGxw
X-Received: by 2002:a1c:80c3:: with SMTP id b186mr356750wmd.0.1551798351551;
        Tue, 05 Mar 2019 07:05:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551798351; cv=none;
        d=google.com; s=arc-20160816;
        b=W9g9wWwDud7LZqb9cE+DY0NDVuK/O7zftglWu/bj1bfsO4Pio9N306PAIQrraC50wn
         kaYRWrC9l2YqTG4WCoQ/ChdtzARODchuv/UhEaQnVaUa2uJfokQzJqv4+vMPZL/X1Vgg
         9pWM08eq+QlVfJoour+tvo4C6JBrNZbkiSiPn4P9W44jH41sSPc+y1H/BZ+tFI4tyJNx
         fe3HA4GZcYHsbpEFROgEMVbl5oFGaxQWF1bkcaMnjGug171MvQpD68CEfQQPaiTFUhQb
         2xg70kmDRBGMsuq1/tZ1ZW1rsV/j6uyIDPLmYhTBVkvRDg2Qm2CcI7iVbQKufZsfqWXQ
         rTrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=F+vd3GuKhPL8C+cOSY+BsZrQRmTAAoKz/2yd/jbWqvg=;
        b=P6E/jA/2l+tPxB0CghH1dQyWVmCphg4h/4k95v6Ld76fl8e/GMrw0RnjXnbwldgrT+
         SXxsFm73rGqVdbdNCkZGzYkxuUelTxOJ8zCVFyD/KIJrQUx3ZY9TBxrGXuGvZqxVpNcG
         zMcRCnUItOjbJ85ELek9UHTVyTJ8+qahiZ581tMS0XRvuFvyg5myuUf8RCvX7Xstii2L
         kAsjO7udu5WG8ZtqlKR/dX4Rryr3DIqgzuQTW9R7KJo95MBY2WtCev4VBKEFI058PXTV
         pErSKB/56Kelg+T6Ay3daCQYsn3d7dpFLsTEdWcBNh8qicQKo//rD0wVpOeOWq005G5o
         mnAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ve0Vuqel;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id j43si288164wre.2.2019.03.05.07.05.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 07:05:51 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ve0Vuqel;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x436.google.com with SMTP id n2so9830158wrw.8
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 07:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=F+vd3GuKhPL8C+cOSY+BsZrQRmTAAoKz/2yd/jbWqvg=;
        b=ve0VuqelUvpWxzcaZsadw70nal52nLMn9q+CoDswjnRdAsf3lxoKym5Prg/C4cjTPv
         dt2GXf6TisNQ7buYdxzY8x+6xEc5+N2lPmXQgVgjGHe4FZqMTea1ZKyg/f84ci2wNB2N
         lg6YeHtRJDr50k/S4YZR2lGn3Vdl/e4vLkY+slRe6bh0yr+fGmGp5Plv234QI0/Dwynm
         kY61pOOQHGwLLi8GIJjPd9UFQEzOLhWGl67ZH1bDCy7x7EDfRu4DVbCqZ53m3lsuC9HV
         WpA0SzdnuBvjzVSp0KlNi5axXhmTCDPOdGdjL2iLF5UmA2Qj3ieYJbhn+l2VIdXQ7mnX
         NQpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=F+vd3GuKhPL8C+cOSY+BsZrQRmTAAoKz/2yd/jbWqvg=;
        b=Ftrx+CDf5OI5pBRrP0JpqrZrDpuEsrAKgSQBnAACCA6cWfAlD0lsJhX06iMFGlotUp
         sdSJeYw9HeBljBdcwGg3a+HCcGQKHFv6j8tiT0E61iFWjFEzynmDYMjpopHen8VbTkJz
         UvVjP23ajpq30eyO3jqGP0XiLAy7FyMD7OWrAYDMLH/1PmrDFtNzcW3LV54UJShiWs+t
         AquVNn9DYFkway1u93vugIMY4iP0wRBGytuoAH+b6AJSr9w7B4SJ9i/WJz0kDwWYdWxs
         ZuwgMvpT6EdJOUkSt+dhax87XcaL/WeCSYrPkazB4A/VW6hcVaE05yZCm9Uc18O3+e8N
         Qc2Q==
X-Gm-Message-State: APjAAAXV6RasWHUvEGRK683M6vKCtvDmlj0SxlVSJt2gGd7O4BEn251z
	f2SKA65bpZYQSRy6msAqNWjEDpz2
X-Received: by 2002:a5d:44c3:: with SMTP id z3mr16197596wrr.329.1551798351221;
        Tue, 05 Mar 2019 07:05:51 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.227.228])
        by smtp.gmail.com with ESMTPSA id 2sm9720261wrg.89.2019.03.05.07.05.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 07:05:50 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v3 4/4] Fix unnecessary space after cast
Date: Tue,  5 Mar 2019 17:05:06 +0200
Message-Id: <1551798306-20836-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>

Delete space after cast

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
Changes in v3:
-correct mistake from previous patch, regarding 
a blank line

 drivers/staging/ralink-gdma/ralink-gdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index 44a65e2..680ce02 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -818,7 +818,7 @@ static int gdma_dma_probe(struct platform_device *pdev)
 	match = of_match_device(gdma_of_match_table, &pdev->dev);
 	if (!match)
 		return -EINVAL;
-	data = (struct gdma_data *) match->data;
+	data = (struct gdma_data *)match->data;
 
 	dma_dev = devm_kzalloc(&pdev->dev,
 			       struct_size(dma_dev, chan, data->chancnt),
-- 
2.7.4


