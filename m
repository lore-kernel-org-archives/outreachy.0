X-GM-THRID: 6138556841984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db883bf8dd7e9dae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.35 with SMTP id o3mr3020609wix.0.1425389795384;
        Tue, 03 Mar 2015 05:36:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.10 with SMTP id s10ls38451lal.81.gmail; Tue, 03 Mar
 2015 05:36:34 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr4510897lbc.3.1425389794805;
        Tue, 03 Mar 2015 05:36:34 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id by11si920448wib.1.2015.03.03.05.36.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 05:36:34 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id y19so39934701wgg.13
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 05:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=E4O7NAVL6pJNZEgB5XPzf7w27Nv309ugDZdnKw3jYKg=;
        b=A6QZRERrF4aswtgxa+bfzVroxJkpbBwvfqxqnE5UkaUUNJdTI8yj/rcaK0kZmh3n3Q
         RxXscFNYEyhHcOvhIoVSnUKeot9oFKwjMluuKHftgMdiXSitmDymC2DNDogINk6v2yYk
         VpKhn932OBE7oxFJZSvcik3IL84d5c3DN6nqbehnYRtOaleK9UVwE90f2ZGW2GqqJ0Xz
         uZ4gdeqeWyTpcTzCgeJlazj25jTDlQD33RcwdWeOM8HOGDE2tAbmFHbcpNX1g/oX81fY
         GM5bj98Ftv8kfVNvmAkj5xtfOtBUUtI9cIaE4dhTjigMGZjabUWy6rAdE0LZfJ5JQMVq
         2fzg==
X-Received: by 10.180.74.206 with SMTP id w14mr2820605wiv.71.1425389794714;
        Tue, 03 Mar 2015 05:36:34 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id p10sm1324875wjw.44.2015.03.03.05.36.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 05:36:34 -0800 (PST)
Date: Tue, 3 Mar 2015 15:36:29 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: iio: meter: add check on return variables
Message-ID: <20150303133629.GA25966@waves>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Adds checks on variables that are used to return values. If
the value is less than zero, this indicates that an error
occurred and hence a message is printed through dev_err.
Checks are made on negative values only since spi_* functions
return negative error codes.

The functions were found using the following script but the
aforementioned modification was what was carried out in the end:
@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v1: added checks on last calls only.
v2: added checks on all calls that return values along with labels.
v3: added changelog that was missed in v2.
v4: adjusted the patch to state how the problem was discovered, simplify
the if conditions and avoid redundant error messages.

 drivers/staging/iio/meter/ade7758_core.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 70e96b2..f696188 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -303,14 +303,11 @@ static int ade7758_reset(struct device *dev)
 	int ret;
 	u8 val;
 
-	ade7758_spi_read_reg_8(dev,
-			ADE7758_OPMODE,
-			&val);
+	ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
+	if (ret < 0)
+		return ret;
 	val |= 1 << 6; /* Software Chip Reset */
-	ret = ade7758_spi_write_reg_8(dev,
-			ADE7758_OPMODE,
-			val);
-
+	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
 	return ret;
 }
 
@@ -444,14 +441,11 @@ static int ade7758_stop_device(struct device *dev)
 	int ret;
 	u8 val;
 
-	ade7758_spi_read_reg_8(dev,
-			ADE7758_OPMODE,
-			&val);
+	ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
+	if (ret < 0)
+		return ret;
 	val |= 7 << 3;  /* ADE7758 powered down */
-	ret = ade7758_spi_write_reg_8(dev,
-			ADE7758_OPMODE,
-			val);
-
+	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
 	return ret;
 }
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

