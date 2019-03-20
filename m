X-GM-THRID: 6670463759889203200
X-Received: by 2002:a63:d84a:: with SMTP id k10mr8581433pgj.123.1553088370650;
        Wed, 20 Mar 2019 06:26:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6257:: with SMTP id q23ls1026101pgv.6.gmail; Wed, 20 Mar
 2019 06:26:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzCdw1FHEdG6OItNCXjhFOYjig2rLtkttBxB7JeG0s8XXldFgWhXqzQonKYpWOsXAjX2eAY
X-Received: by 2002:a62:168d:: with SMTP id 135mr8552768pfw.83.1553088369803;
        Wed, 20 Mar 2019 06:26:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553088369; cv=none;
        d=google.com; s=arc-20160816;
        b=YzS8mdIM3o/qeJG5CNSXM168WraXfQHtXFl9wsZOQBI1NCtlVgVDRqUdMdkQrWa0m5
         jequ7B4oCltTX1j1JIBEchO5vvrouZl/7vCdLQZJlINScyl5QbXuDcXaFoGZbQFeBb+P
         NNHVdDOdi+zX6bZQlg7k5CfChiINuQcSnVzRW3ImMxsiG4jcYKplhjScivd7GtkTUPwx
         1xuvoZkDS+5Ph2tOjtjOLCkeNAcHKQ4hJHibqQaMsBJClPqU4GbFqnnLBKVQ78ZloIxP
         N6tmLyZXXruycZnZq+6+CN+uzX9VBRj5BUNTIkwcSu+5vLAaONNQWyCNAhUVDE9waJDw
         Lw+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ktuVefwXQtxRZHxFncOiHar4xdjG61WxrL/vsh3j1hA=;
        b=lMHxpM8DT3O3EqJY0idz/J+YY2pChu3dzi4dIIsOlXB2p/y+Um1VbT/mguFfiPJuNr
         2nr235wlYV7PkjbfWpz8Hrx7NRG/nEw+b7Sdf9fliiG0JOCmrihRq5RSTxKuWQDj3a0c
         kbktvJk/LyxTIuji1SDD8Ym0ebVpzhOeLvr/Pizu1I1NqsXx/ySVar572rlyFLPWRKLh
         cyP6zurcd05x+a5Ecu23u/Sk5zHOHzY9eOA8jsjxw0KIGhqY+pjJK8ZNlRyJQMi8iOQR
         +4PV3M3eR6r5NFj95msWM6ujdlh/0j1v51AzEPNDnPokhFYCpNmfFeN1lCYTO1nzsZfg
         MmGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AGIHczxB;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a6si119743pfn.3.2019.03.20.06.26.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 06:26:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AGIHczxB;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id i17so1936048pfo.6
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 06:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ktuVefwXQtxRZHxFncOiHar4xdjG61WxrL/vsh3j1hA=;
        b=AGIHczxBDruWVxa1tp5oJt4RB/0cJ2nEpcwnodXg2ATDA5imuBuADROyEsh5AqkwLu
         VOd1HCWrwmJdJdWrleuksZbs2SIwCVyJ+7y6cdVsoXc8y+9gWcfifxBcaGRgfHTFaAh0
         fMk+FMV/4sBhi1smtKW85jMii+lHBcehPSjffuoyQMPNtb8AIP2/HRew84D5FTSiEJiP
         pJWHYo1kqhJm9X6wX2WdfUMU6fgak5i73RppkVEZmx0FXa9JQwB0u/4pv9IZbZNla7gA
         ptr/sotRVHzC8yk/3QZ7KpeZNVKcKeCcQUrTJq5ruIhgB+hKGzmt4Z7LtfdTobtv+jll
         61DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ktuVefwXQtxRZHxFncOiHar4xdjG61WxrL/vsh3j1hA=;
        b=EaktVmxp6cPHOXqhqvrRiPbQsyDFIe94iWFCU+zYbW5dCjzmeP2VZ+aWmFwNtM9K5G
         aiWLwC3Hz1Z+CbjdrqouID1xnhPV3fwMeD7ahXWJk/jv2Mx1CszJ+gXlBByZhM7/oJko
         YcNQPsKMzWE7NjfR4AXcmLskYrPvn3zB11F2reZh5AayYLeE8ilk5VMo1V6ryOH472Le
         eiACNBQSOhcetj4l2TkL8hZwDv4lfPGc3GEzPV7Puwypiq2maeAPDhDwth/ExfFnM7mb
         KUoZbsZ9JDPgHdxkznuyfq0l6a9lhP9eOSw8XHFGhOjgZ3gsYGZ9ASsOnl60a3OVq9aC
         uqMg==
X-Gm-Message-State: APjAAAVxdVsFqhn9zihA4NPmZDrFtIciMtBANbZjrY5FIG5G6OrLJUsu
	T5DpV8Vg0l8Llg7HvwOxoHJBCsBM
X-Received: by 2002:a65:6091:: with SMTP id t17mr6203370pgu.328.1553088369173;
        Wed, 20 Mar 2019 06:26:09 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.44.145])
        by smtp.gmail.com with ESMTPSA id i72sm5520043pfj.147.2019.03.20.06.26.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Mar 2019 06:26:08 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: greybus: align to open parenthesis
Date: Wed, 20 Mar 2019 18:55:53 +0530
Message-Id: <1553088353-5599-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Aligning to open parenthesis
In file drivers/staging/greybus/arche-platform.c

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/greybus/arche-platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index 307ff51..6bdb5d9 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -170,7 +170,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
 		 */
 		if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
 			if (time_before(jiffies,
-				arche_pdata->wake_detect_start +
+					arche_pdata->wake_detect_start +
 				msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
 				arche_platform_set_wake_detect_state(arche_pdata
 							    , WD_STATE_IDLE);
-- 
2.7.4


