X-GM-THRID: 4464264085504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d0d072a2f3d65b23,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.35 with SMTP id o3mr500972wix.0.1425039064515;
        Fri, 27 Feb 2015 04:11:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.6 with SMTP id iy6ls145413lac.38.gmail; Fri, 27 Feb
 2015 04:11:04 -0800 (PST)
X-Received: by 10.112.224.12 with SMTP id qy12mr965859lbc.10.1425039063992;
        Fri, 27 Feb 2015 04:11:03 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id i7si106158wif.0.2015.02.27.04.11.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:11:03 -0800 (PST)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghn12 with SMTP id n12so19988034wgh.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jv3VZOBLO/m0nlUBJmIO3S9Iq66Ig/9cCpzNhjIVZ+0=;
        b=afHDIH6xIDhj3zb1PpnqXx1N4bqwKA4oYHBfdJqWh11AqJ5RClf2aXY2PGTWIY/4NN
         HmCLVFMbnRBAVhzcbJsnMW1QqnfYwk2tnJIhI9KNNNdiY00yr9zfP50l4kNOROpRPS+D
         hN9j9KWanwFw2IonaVWxxZHQm5YPmVikgshI/L01wqe5FVPaNf25XH/Fcn7RA4xN0tIT
         qUXNkOP9FtcNBs9FXQLENMzywC60EQ1ij+ObLlWOV168pwv49xhQRlSTUFo/aPnPh3IR
         NYtc7EMO+KPEcext0y7EFEE3NHrbME5w75IY/66ObKA/tPHI674V61uU1Yw0SYtAXRwV
         Y12A==
X-Received: by 10.180.126.69 with SMTP id mw5mr6119631wib.12.1425039063848;
        Fri, 27 Feb 2015 04:11:03 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id y3sm5707510wju.14.2015.02.27.04.11.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:11:03 -0800 (PST)
Date: Fri, 27 Feb 2015 14:10:36 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: dgnc: Replace printk with dev_err
Message-ID: <20150227121036.GA7834@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following checkpatch.pl warning:
WARNING: Prefer [subsystem eg: netdev]_err over printk(KERN_ERR, ...).

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/dgnc/dgnc_sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
index 2fd34ca..a72e353 100644
--- a/drivers/staging/dgnc/dgnc_sysfs.c
+++ b/drivers/staging/dgnc/dgnc_sysfs.c
@@ -360,7 +360,7 @@ void dgnc_create_ports_sysfiles(struct dgnc_board *bd)
 	rc |= device_create_file(&(bd->pdev->dev), &dev_attr_vpd);
 	rc |= device_create_file(&(bd->pdev->dev), &dev_attr_serial_number);
 	if (rc)
-		printk(KERN_ERR "DGNC: sysfs device_create_file failed!\n");
+		dev_err(&bd->pdev->dev, "dgnc: sysfs device_create_file failed!\n");
 }
 
 
-- 
1.9.1


