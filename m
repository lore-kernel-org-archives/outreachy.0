X-GM-THRID: 6388140683581980672
X-Received: by 10.237.36.234 with SMTP id u39mr2845955qtc.42.1487354907711;
        Fri, 17 Feb 2017 10:08:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.201 with SMTP id c70ls1426602ioj.39.gmail; Fri, 17 Feb
 2017 10:08:27 -0800 (PST)
X-Received: by 10.99.156.17 with SMTP id f17mr2914126pge.51.1487354907040;
        Fri, 17 Feb 2017 10:08:27 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h130si854650pfe.1.2017.02.17.10.08.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 10:08:27 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 68so4556316pfx.2
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 10:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ISdfdaEgugp/3Jf4iF79rjcKRlGTbqRi7xNJH3Z7slQ=;
        b=l6bNk3VQmhLLh70ZIjMAd9Fx/ObVOesXANbWqfnFLANF7mbldDA8ToT/ir1bcwtvYU
         JzqEtG2QnX3Pis+x+sUoivauikqqx8FSJYUe3KV+ZxXrr6mSaK/txq52QwYQVXCxaU10
         +kPwoz7DvVDOh7yExwMAnzpA1O45FR3X2b9s4UYIYSpNxOGFnM/GIJvvAnwc9Ejexq2g
         m1vjY8GBwaJJ3R1Kk87WjjVmn4+ZzuiL0K00DX79Nf52wQ3gcw4Cveu3taLi2SJZzuFV
         pUfvQvx5GiiaTF0+6JfkldKkoPrT/RQMJ+L3qi/N8SwMb7phG+UbKh2Yx74ADbvBRyNi
         pAFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ISdfdaEgugp/3Jf4iF79rjcKRlGTbqRi7xNJH3Z7slQ=;
        b=OP2Ah0nl/yXYxoMJoUyemh3EshwrhQn2ai1T0Ghw9OAVTVF4f01AuCC7HNnZ4EJ/we
         Qbyrxf83KZ+a2zfnZtnRi89AIbqCcpuV6D41ZHXvxjmpuMmhuthQ0wnSOKWEhiFipdNR
         AR1wik02/2yqMZQZa1SnpRat2Qz6Oih3bE7Krd0KeQk2h/ZTqrJ9Bide1aKrlJrFFIF9
         MH5/Wf9XvSHbXEn+7UF7CavKhGJc7U1mxN0fhAwzgsfFggMG1/JPRkZj81w9TUTJup8l
         WU+irKveksoAOAdjOE2eCnmdD6oyR04HlMlTxxBXm1Ij4Rs3CyoUQ1YP98OkoI6vLX5c
         evKQ==
X-Gm-Message-State: AMke39kGHMTvt9jTEI+P5euCUVZycXQJDeIT0OfFBoTTqZV+so1XD4FJs6D6QqfM9nX2oA==
X-Received: by 10.98.87.142 with SMTP id i14mr10838675pfj.85.1487354906813;
        Fri, 17 Feb 2017 10:08:26 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.201.59])
        by smtp.gmail.com with ESMTPSA id a2sm20838974pfc.72.2017.02.17.10.08.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 10:08:26 -0800 (PST)
Date: Fri, 17 Feb 2017 23:38:07 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: iio: adis16240_core: Replace symbolic permission
 with octal permission
Message-ID: <20170217180807.GA18849@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch resolves following checkpatch issue:
WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using
octal permissions '0444'.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/accel/adis16240_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/accel/adis16240_core.c b/drivers/staging/iio/accel/adis16240_core.c
index d5b99e6..e1bc9fc 100644
--- a/drivers/staging/iio/accel/adis16240_core.c
+++ b/drivers/staging/iio/accel/adis16240_core.c
@@ -65,7 +65,7 @@ static ssize_t adis16240_read_12bit_signed(struct device *dev,
 	return ret;
 }
 
-static IIO_DEVICE_ATTR(in_accel_xyz_squared_peak_raw, S_IRUGO,
+static IIO_DEVICE_ATTR(in_accel_xyz_squared_peak_raw, 0444,
 		       adis16240_read_12bit_signed, NULL,
 		       ADIS16240_XYZPEAK_OUT);
 
-- 
2.7.4


