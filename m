X-GM-THRID: 6254738247714340864
X-Received: by 10.182.254.35 with SMTP id af3mr34192335obd.37.1456294732490;
        Tue, 23 Feb 2016 22:18:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.52 with SMTP id 49ls2540627qgo.79.gmail; Tue, 23 Feb
 2016 22:18:51 -0800 (PST)
X-Received: by 10.141.0.9 with SMTP id b9mr8208463qhd.16.1456294731719;
        Tue, 23 Feb 2016 22:18:51 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id yd9si189857pab.1.2016.02.23.22.18.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 22:18:51 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id x65so7052541pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 22:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=MtLjF3RT5DG0/XBj0nD2m12v8upYc4+Y69Hq+I0yAxs=;
        b=knlQnQCF9eG0S06PKjHQDPrUuAO6feQis3Wku8wBJT0cTk6V9ktZHmbHGXVFNoLwMK
         90mz0zMNh5hVtc7RgGg46M6dV0sOkmdC8Q8Ro0cRgPk5asdj3SjAMzsQP5ZcOt08BbcR
         qb4YRe7+ivK32ULaU8iuQj1DK+s9mkaAiIw5oCUzeozXS7r40vZoUQw9fowjYo4wpzYc
         osy66eY0HQEWiuCtFZeHnFDhXMUQA4C9jR1Qi50Mbaejfv6hd05BvUFcd3d2kH7z6T0+
         aEf478r2fk2C+wmH1oMESNrKiDLlIB2qqRiK/ADLxmp9/71JCbkrMx4F6kBIKGwP+Lmp
         RFSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=MtLjF3RT5DG0/XBj0nD2m12v8upYc4+Y69Hq+I0yAxs=;
        b=lmtVL3HFEfLLwsQ1SGKuFhf+PYa59hwwDMYzixibfeBuF6TznWXK9fUcZ/zJpUfWsn
         fjO0eV5PFcvWKp00QGDROrePaLdbFG/Ybvny8ygVFHn+yC5dRscUGbWAt+aTe6f1SJue
         OJ4aBL2BhXWl8LuGelhFkwt78yjqxXIoFhPu4zCfr1smcm20PYs5MBYNIhq3r2K41PyX
         sVRXvOaWm1deE3zBKUoQqQ3DIGE28zGVcCJfyDUJZI14XhUtx6VDvW/68Q1HUVnYzhxv
         Kf2TybQpNZLE3WgLd7CSNGj8qGOLAOBz+4rBWOjDeUdZBFCOaq2mjI3x/vgE+1XIvfNo
         WNEQ==
X-Gm-Message-State: AG10YOQieJxJZuYLVSGKofe1f/m/ZgqNU1SfEk6dpipUbEtdWLLuob5EUl5y2XP+x879Hg==
X-Received: by 10.98.16.86 with SMTP id y83mr51759629pfi.45.1456294731529;
        Tue, 23 Feb 2016 22:18:51 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id e1sm1893853pas.1.2016.02.23.22.18.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 22:18:51 -0800 (PST)
Date: Tue, 23 Feb 2016 22:18:50 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: adt7316: remove useless initialization
Message-ID: <20160224061843.GA12334@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the initialization of a variable that is immediately
reassigned.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/addac/adt7316-i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/addac/adt7316-i2c.c b/drivers/staging/iio/addac/adt7316-i2c.c
index 78fe0b5..0ccf192 100644
--- a/drivers/staging/iio/addac/adt7316-i2c.c
+++ b/drivers/staging/iio/addac/adt7316-i2c.c
@@ -21,7 +21,7 @@
 static int adt7316_i2c_read(void *client, u8 reg, u8 *data)
 {
 	struct i2c_client *cl = client;
-	int ret = 0;
+	int ret;
 
 	ret = i2c_smbus_write_byte(cl, reg);
 	if (ret < 0) {
-- 
2.1.4


