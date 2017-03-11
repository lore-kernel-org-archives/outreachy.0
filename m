X-GM-THRID: 6396079372840730624
X-Received: by 10.129.128.67 with SMTP id q64mr11816776ywf.88.1489242448569;
        Sat, 11 Mar 2017 06:27:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.141 with SMTP id m13ls3178971ioi.17.gmail; Sat, 11 Mar
 2017 06:27:28 -0800 (PST)
X-Received: by 10.99.170.76 with SMTP id x12mr12476865pgo.93.1489242448145;
        Sat, 11 Mar 2017 06:27:28 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2287433pfx.8.2017.03.11.06.27.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:27:28 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id v190so13931581pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:27:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=M1AVT1SYtdGv7AWGJveYwM4fi/+ir/HJPHc7Ewqf3aQ=;
        b=lNIGjslBavA4dJOXyHDVCsORcReCsq7h/Mr1bdnpyv7XHOB9ZijeVCo+cY8f+fAKu2
         jn7p0VKtKoAvLYAfi+xksddRqYW/Ifw4yY2uzYYtYv131CCnci8GtLyAkbSVHQZ6j4QS
         b2l4uAurP66NaJCi0jOoBfOodIPW3h79APDpaYlOHxs043XdqTBH3adhnqnnYubdBPyi
         68cXMOITFAq9887k9RqFlz6VbRD478ey3DBSkiVDtps11w4Y9h8ftDjW+713w86il3iE
         IyjAIbs7AxE01et9KMEdBH/RNfoaslVqj4bjbB2nf3ASyBjvedQpgIFKnKCIZCPBjPAj
         KGWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=M1AVT1SYtdGv7AWGJveYwM4fi/+ir/HJPHc7Ewqf3aQ=;
        b=c42K+rM5UemFuhObu9UlSdoJ79mvf9tZaTQVEStD2acMxFqTMok6lRkZP5B5+13O4x
         hvBlp6ZWBpwjY68HhIMixcc3vJWrnKqwXVYGTAowdW1RaeBJ4EkyopM16xrzkg07xSXX
         KvwrF5jzvHHQuI3wxD32doBmkf1i1yg/rAt7+cpst8aNaCXxLwLXAFpNCKb2jYeweBWs
         q+OOP0E7kfTW+YrVNXDtwMnGB6RT7376PdUamJfA+BpmyNWNWr7IiPV2ON8/u7aXtElh
         iXKuY7JPdarDpJo3s3Wx8883EMovd70G1IFbVBLwzlNGT6PN7miCbesJo13rJNd58rU7
         K7/A==
X-Gm-Message-State: AMke39ly+5fco70WU7Ly91e5uaw99fQjFkvYoTyKz2c4it510yLW/T44SjTFWCN9LcYC5g==
X-Received: by 10.84.192.107 with SMTP id b98mr33890676pld.160.1489242447969;
        Sat, 11 Mar 2017 06:27:27 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t6sm24781442pgo.42.2017.03.11.06.27.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:27:26 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 10/10] staging: iio: gyro: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 19:56:44 +0530
Message-Id: <1489242404-12352-11-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>

Remove & from function pointers to conform to the style found elsewhere
in the file.  Done using the following semantic patch

// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/iio/gyro/adis16060_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index ab816a2..c9d46e7 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -117,7 +117,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 }
 
 static const struct iio_info adis16060_info = {
-	.read_raw = &adis16060_read_raw,
+	.read_raw = adis16060_read_raw,
 	.driver_module = THIS_MODULE,
 };
 
-- 
2.7.4


