X-GM-THRID: 6261077782348955648
X-Received: by 10.98.70.152 with SMTP id o24mr7362871pfi.6.1457770786296;
        Sat, 12 Mar 2016 00:19:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.85.101 with SMTP id g5ls327230igz.2.gmail; Sat, 12 Mar 2016
 00:19:45 -0800 (PST)
X-Received: by 10.107.128.217 with SMTP id k86mr10124475ioi.12.1457770785951;
        Sat, 12 Mar 2016 00:19:45 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si1890648pab.0.2016.03.12.00.19.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 00:19:45 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n5so3647748pfn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 00:19:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=w94nOIiDdrHMlT/7Zfr+fJ2x6cyVt/8zXLCNx/faY8k=;
        b=Fr+WSPay8bjV1DmM7Uivq0RjHS7b6oY+vbu2tx+Y999GbYb1zK1SUfNUGXEw6pcuNY
         +W4kQkJ+rSY3QpidD/RKZBLdP6n6Wl5qZSHrAdttzBXNdh4YQXXUt/IcN8fVgJQ0Hx3V
         usYub6xqeA96kKJID2kmxMImL1UCXo6dk+NDPsRjfhHJkOJ1tMp+/GIB66bGLME+ieqs
         sDlAUiYosb8D4rug6Rws+EVK02aPJ4LswdEM0VhH7zRceSAP9/T7lqPBqrs8CXEHQM1f
         S97gEHartDOYhmlX39N/33IFmbePjYfd0ie4Td1OqNOTeJzEBdvXcM3by0Rga7KBr7u/
         aFXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=w94nOIiDdrHMlT/7Zfr+fJ2x6cyVt/8zXLCNx/faY8k=;
        b=lcYVUoteW4kOdqaKnoGQPKk3DUqGFa/tWrHOxXIccEIafV+qm8FO1xqLzkZNZjnLOR
         jzh2TPDWC9DaWa9igoQR8k3YKexDCiRbdYFynmcLVHKdEyKAoMCxy6PyTdCksB6fb5Xi
         SbpFwn8WhRmgJSpaNVEZwAhp5ZwHO4eMrjTeCGgsvxnP+RrEubO0ct6Uoch8mMyiUBqu
         0rlZz3HBndUlRf+m2ZmDX9a7N/sI+bbuGEAGYGRKqyRc7sUi4mk/DkWbpw1706g41CT1
         b6999WGMw3ZgvjGOVe89nQMz0/lRE9hp5eeCtR4zV1k+dYPmMFP1VCkVBnZHstadd6SR
         q+/Q==
X-Gm-Message-State: AD7BkJI0JyeZAXm1kkY1jHD2O6AfJ1wrKwr30LFobKCjmJuPxmW7C+yZMu+DcyWMqCNRkg==
X-Received: by 10.98.14.67 with SMTP id w64mr14267480pfi.154.1457770785820;
        Sat, 12 Mar 2016 00:19:45 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.81])
        by smtp.gmail.com with ESMTPSA id ll7sm17964120pab.6.2016.03.12.00.19.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 00:19:45 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 5/5] staging: iio: tsl2x7x_core: add blank line after struct declaration
Date: Sat, 12 Mar 2016 16:19:24 +0800
Message-Id: <4488fdb7454dc87e2df96ede59b6c45be47a2d96.1457769810.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457769810.git.eraretuya@gmail.com>
References: <cover.1457769810.git.eraretuya@gmail.com>
In-Reply-To: <cover.1457769810.git.eraretuya@gmail.com>
References: <cover.1457769810.git.eraretuya@gmail.com>

Add the missing blank line after struct declaration. Checkpatch found
this issue.

CHECK: Please use a blank line after function/struct/union/enum
declarations

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index a72bb29..d553c8e 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -1646,6 +1646,7 @@ static struct attribute *tsl2X7X_ALS_event_attrs[] = {
 	&dev_attr_in_intensity0_thresh_period.attr,
 	NULL,
 };
+
 static struct attribute *tsl2X7X_PRX_event_attrs[] = {
 	&dev_attr_in_proximity0_thresh_period.attr,
 	NULL,
-- 
1.9.1


