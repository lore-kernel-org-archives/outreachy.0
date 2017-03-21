X-GM-THRID: 6400014269629333504
X-Received: by 10.107.192.5 with SMTP id q5mr4267922iof.102.1490119445005;
        Tue, 21 Mar 2017 11:04:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.32 with SMTP id m32ls28181iod.52.gmail; Tue, 21 Mar
 2017 11:04:04 -0700 (PDT)
X-Received: by 10.107.171.65 with SMTP id u62mr3980391ioe.0.1490119444106;
        Tue, 21 Mar 2017 11:04:04 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r66si3514949pfb.7.2017.03.21.11.04.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 11:04:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so23135598pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 11:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8OvqKdPUNruy4ByzU3C/Xw7Pi0EtxmQr0t4iMPRUwZk=;
        b=bn8+Nm9qXxIlxOJ2a8QnZN/J4d0W9FsYJq6QtLWX7Uq1fDJ2VX5RXf84/apzcxwGwp
         DJh3tubgmkrFmUxyWH8IZGhnnbJR8qPBwVeijBVjj+PoK03/wwMv3vG3DSrJHKfUvgmW
         oxbpwGH9+xPRL751bVvbtGHhvvORtqF1evhEsiq6xyYwwAFFtFb8jq80LvsqQYOs5EnG
         tZ3VRwVpFkZ8A9Y9G2ryAfSlK1EiKhu6zHJBsJyzz1m+d7z6H2kK1nt13QJ2kjysNu62
         wHxhm0VoXt/7kohY7oFJx8CHBY1iTaaVpn+15EoEFDpTh0xy5SKYBbf+rZFIqfd2xX2I
         4DSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8OvqKdPUNruy4ByzU3C/Xw7Pi0EtxmQr0t4iMPRUwZk=;
        b=ey6YN72BlXY1y7OXL4M+4VywBIwivhFlihIaUtoI5NcLqigpuHnC6FSPgrU/4kAKqs
         G05pDWBo2NPyYVdS08ijx+Bfc8M82BE0uCev2din04V3T2S8lckjoVjnunI/xx6Kul2b
         HEsfZf9A/3ZJ8EOmrHcbUodp0/gcTbp8GWpfuOoeGQzI8DuJxJPm/8h4By9rlSDfn/Gz
         11djuH/G0qRC+oPH0XFlzAtewQ23TLV2vj0av2NKjsZURrJpiINM0rv7hPgShU8KcNLp
         HSh/865zK6IhA3juD8FB8//pFalHkNKQt5wbDfvC+9UTFzke/8k/hZlggaDUZ4VNuS96
         rglw==
X-Gm-Message-State: AFeK/H0i3rT/VZNDjETk2bWCxTrF6XQYBR3HcUhM3S4mvI8nGDq1/VAG5v4PUlchFfZzoA==
X-Received: by 10.99.47.68 with SMTP id v65mr39247107pgv.23.1490119443861;
        Tue, 21 Mar 2017 11:04:03 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n7sm5678776pfn.0.2017.03.21.11.04.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 11:04:03 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] staging: iio: ade7753: Remove trailing whitespaces
Date: Tue, 21 Mar 2017 23:33:55 +0530
Message-Id: <1490119436-20042-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490119436-20042-1-git-send-email-singhalsimran0@gmail.com>
References: <1490119436-20042-1-git-send-email-singhalsimran0@gmail.com>

This patch removes trailing whitespaces in order to follow the Linux
coding style.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/iio/meter/ade7753.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index dfd8b71..b71fbd3 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -83,10 +83,10 @@
  * @buf_lock:       mutex to protect tx and rx
  **/
 struct ade7753_state {
-	    struct spi_device   *us;
-		    struct mutex        buf_lock;
-			    u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
-				    u8          rx[ADE7753_MAX_RX];
+	struct spi_device   *us;
+	struct mutex        buf_lock;
+	u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
+	u8          rx[ADE7753_MAX_RX];
 };
 
 static int ade7753_spi_write_reg_8(struct device *dev,
-- 
2.7.4


