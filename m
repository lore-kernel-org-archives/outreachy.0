X-GM-THRID: 7382846406656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ae38b1b49eac9065
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.231.199 with SMTP id ti7mr33147570obc.7.1425988889664;
        Tue, 10 Mar 2015 05:01:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.138 with SMTP id l132ls69550ioe.19.gmail; Tue, 10 Mar
 2015 05:01:29 -0700 (PDT)
X-Received: by 10.42.243.68 with SMTP id ll4mr24829936icb.19.1425988889387;
        Tue, 10 Mar 2015 05:01:29 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id m1si78360pdc.0.2015.03.10.05.01.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 05:01:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so1312615pab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 05:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ywW3n8c7+ZvFjCN17b0X5GPnxXzV1WMOSEF8ySiFz+E=;
        b=WXlMwJYZn0xkVAlWWH7bpBBAlhifV4HvMV40Swd76QHZfKxFThzQ6d4J5XPr4GXB04
         m+RhEhJR8WHM23/9bBMKvQJMMJsSO4Cz1HtoYWj1c6SVNyWHQpKNJHOHro+NTN3Z53Yf
         CpOkxTGIYG6LUZdNnI6twVRs0u4dTt+2PtrRuoEYaJmTZEGbZwhEUbKXUPVC/qeStszA
         UTyLP9P+5dTvAP70JzCf87mBc/kiO6l7pb1fcJt++yhT4R7GPkDqa5BzpMihYZU5oS1i
         UQ2zJv67ldchvOy2jlN/tmMC/xI7Wj574Vs9A46o8m5zZFQWBv6OI5Vhr5istahRUP+Z
         Pn0w==
X-Received: by 10.66.248.200 with SMTP id yo8mr64163213pac.96.1425988889209;
        Tue, 10 Mar 2015 05:01:29 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id kn5sm720450pdb.42.2015.03.10.05.01.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 05:01:28 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:32:50 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/8] staging: iio: Use kcalloc instead of kzalloc.
Message-ID: <b4c6d2f27ac98146129d3f1394d22ecdeaec6e67.1425987910.git.navyasri.tech@gmail.com>
References: <cover.1425987909.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425987909.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kcalloc instead of kzalloc function.
A coccinelle script was used to make this change.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - Make commit message shorter by removing the coccinelle
       script.
 drivers/staging/iio/adc/ad7280a.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 4d48707..e7d45ee 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -547,8 +547,9 @@ static int ad7280_attr_init(struct ad7280_state *st)
 {
 	int dev, ch, cnt;
 
-	st->iio_attr = kzalloc(sizeof(*st->iio_attr) * (st->slave_num + 1) *
-				AD7280A_CELLS_PER_DEV * 2, GFP_KERNEL);
+	st->iio_attr = kcalloc(2, sizeof(*st->iio_attr) *
+			       (st->slave_num + 1) * AD7280A_CELLS_PER_DEV,
+			       GFP_KERNEL);
 	if (st->iio_attr == NULL)
 		return -ENOMEM;
 
-- 
1.9.1


