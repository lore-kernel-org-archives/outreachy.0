X-GM-THRID: 6671539899637694464
X-Received: by 2002:a63:fc49:: with SMTP id r9mr13294302pgk.447.1553338928676;
        Sat, 23 Mar 2019 04:02:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2ad7:: with SMTP id q206ls4357746pgq.12.gmail; Sat, 23
 Mar 2019 04:02:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxsWknzR0Gl0WovSrTgl69ee776bhuE50gJD367mlpZasaE/vZJx4twwpFhIxSyJM7rs8V0
X-Received: by 2002:a63:68c9:: with SMTP id d192mr13958955pgc.264.1553338927876;
        Sat, 23 Mar 2019 04:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553338927; cv=none;
        d=google.com; s=arc-20160816;
        b=Dq1HpXeH/cFx1AysatfJeGPcNXms/5luNFCb6md0tX58CwE6GKzA9Gybw2K7N/ZuLa
         BnGmZquKIsMItlWJxfT9IN/9RBerzV282xQGuT6NS/3sflvBcXs7Tsy9/ABupJfrdRsT
         pP4batP4TY7rQf9e463kza4f9oILxUWz1USkXj7Km7HnhhmfS/ZCU/nACk+QQPFVYB2C
         9Bi3kIaFlvtT0L3oBfqbNoqXFANAsCpfpXXmwdncR2GFAvLKcRv+7j8C5Hq6HzyaxfrM
         0g/mfZCnVEhHqFSj0Q8ptgT+QbjdpdIGkdhr2oq9lQ4b0xwtAU5NhhrSC+jMG76dcl9Z
         yeYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=BS/lWcw8Q3/u56tFOWi6nrvp0b7BfWGI1vqc3g3OGbg=;
        b=IYZYvbANhgfYVh0cMRsBYuFyaPUbL6PSBP4Xqcg6rt7Gwo/5veBSqYajibCPbThLCT
         QIkERFrArrLizTW9ZrrSuVmssgIuk9raWZLBotrHuGOlFPxolk/cHp4t7GMsJR85qQAC
         DW4qUix5YxU/7fwi1G1o4zesfoy2qjw+98ABpu9DRRMP2bIqxv9MKMqH6P5g8A9+yLux
         She2mhhU24ogOuDn0o697h57MOXKqoGXEHTzI0k92202JBVc44P85Nv4lrQzqlSln86Q
         bLT9cv8KTHz4fD3cwf1QHFoJPQ8HIQ6PYiyKApFoq4hOLNO7syR6e/2vjoxPMlCtMb2v
         XHzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="t73Zc/rS";
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <anushkacharu9@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 67si633858pga.1.2019.03.23.04.02.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 04:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="t73Zc/rS";
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c8so3214279pfd.10
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 04:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=BS/lWcw8Q3/u56tFOWi6nrvp0b7BfWGI1vqc3g3OGbg=;
        b=t73Zc/rSVzwL1OPtqhwczauk6PyXdxCxOkTuf/XKA61QbxE4PY7kfm0FSEGgMpPqOv
         wBFaRAK4Ry+rwKllE+4eyLgpHS9hNCGvFM1hSDtHlBumcMfy4ORMFBwe04B3CWIHFZ5J
         wbqSYXg/ctW6YRK6Z4K+lPDApd8612D0ZuIPMnAXduu//nz5TG1H+/tUFz6funz7Lgyk
         VtV8df4DJ6D4GQPg82aFB5W1MsS3RQZtkT8V5Yc+S5IIB5jZI2Wiv7sVMqc/GvElD8ow
         QiXseqveYhMh0mrP+Xw/RoePvKzPXtCQwUYyX9IsW31fiA6inwpp0an7eEbG7CNKl+v/
         HGmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=BS/lWcw8Q3/u56tFOWi6nrvp0b7BfWGI1vqc3g3OGbg=;
        b=Le5lWdxGJ9xtcOw7WMXT6tkYpM3Ckve0YlqxJQXx4xUgoAWOmfLjYGFGSzUQQ8qBkQ
         6OB9Az/J6mHT2MrbLwGuEKJv++zmCacl2qDSaxBqs7/alRipTzBm2m84h5He3p+jaOUt
         b8nUtMunE8p5bKH3vFo7sF2pZvxEvEcgdBynQ3RFp1xa7MG+NW5017HwtOSpm6QS9bWY
         N+I7tQqovJIHwqvkddnzigaf1YhAOaD3+3jRisUJc4BwLPhS9S0Mp3RI0sJ3OGc8Z5gv
         0WgwUIcuf38MLmYDgkl7DEX+9Ez2mhpnCgQiSbLlx25V1daD9euYahhEnGsVZ6Ui7llY
         Y3Rw==
X-Gm-Message-State: APjAAAXlzIRdVvOIl3ddnZ6SiwvBvUA4p6q8tSJWW3/rNM9VWzD5nn/D
	NogHu6VfpGY3FV02eQCHsl1Wrb+aroU=
X-Received: by 2002:a63:464c:: with SMTP id v12mr13364198pgk.431.1553338927346;
        Sat, 23 Mar 2019 04:02:07 -0700 (PDT)
Return-Path: <anushkacharu9@gmail.com>
Received: from localhost.localdomain ([42.110.231.40])
        by smtp.gmail.com with ESMTPSA id p14sm20797710pgn.34.2019.03.23.04.02.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 04:02:06 -0700 (PDT)
From: anushkacharu9@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Anushka Shukla <anushkacharu9@gmail.com>
Subject: [PATCH] staging: greybus: arche-platform.c: fix line over 80 characters
Date: Sat, 23 Mar 2019 16:31:55 +0530
Message-Id: <20190323110155.6386-1-anushkacharu9@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <anushkacharu9@gmail.com>
References: <anushkacharu9@gmail.com>

From: Anushka Shukla <anushkacharu9@gmail.com>

Fix line over 80 characters according to Linux kernel coding style

Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
---
 drivers/staging/greybus/arche-platform.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index 1e8fd48bedf9..970a11ccf578 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -180,8 +180,9 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
 				 */
 				if (arche_pdata->wake_detect_state !=
 						WD_STATE_COLDBOOT_START) {
-					arche_platform_set_wake_detect_state(arche_pdata,
-									     WD_STATE_COLDBOOT_TRIG);
+					arche_platform_set_wake_detect_state(
+						arche_pdata,
+						WD_STATE_COLDBOOT_TRIG);
 					spin_unlock_irqrestore(
 						&arche_pdata->wake_lock,
 						flags);
-- 
2.17.1


