X-GM-THRID: 6210837635007512576
X-Received: by 10.112.169.34 with SMTP id ab2mr11255511lbc.23.1446073378778;
        Wed, 28 Oct 2015 16:02:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.92.73 with SMTP id q70ls199640wmb.31.canary; Wed, 28 Oct
 2015 16:02:09 -0700 (PDT)
X-Received: by 10.28.145.213 with SMTP id t204mr647055wmd.0.1446073329331;
        Wed, 28 Oct 2015 16:02:09 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x243.google.com (mail-wi0-x243.google.com. [2a00:1450:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id l1si8498wmb.3.2015.10.28.16.02.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 16:02:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) client-ip=2a00:1450:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wicuk10 with SMTP id uk10so4897444wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 16:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=s9P6bgtEchp09/w6Z5x3IOYshBE7jaACiX6gwLSeT6Y=;
        b=LMJXrR6X/mul6G0AnS4Pwnu3oN7ja5mTBjTgnO45wxptHvFyHq00N1VoyrwkSiqU7D
         xWYkXWqu+V4JjYVVxXVQcpxgVoEHD5SOqgyz365NuHYElmiPvOgqOxL9m4SdemngvGjx
         ctjS537b+sI1W0/fn8tHRvTfNT5aOYNAaPoWKQJZNXAEwbTLPT4FOl6s+aSgh9C8Cvkp
         EvOZyVF5IAYGj8KoeiuyRDu79hzaoHM1+fBx5LTOVcjvnxHpmjzZcPC60ijrUD4mvJjY
         pmBytlQrDD2InwMrKeKzyZTmX2DmwyGn+jDvjA2UoM9kZZVazOh/PvNy+T2kViR3or+e
         NYwg==
X-Received: by 10.194.179.33 with SMTP id dd1mr40055694wjc.79.1446073329251;
        Wed, 28 Oct 2015 16:02:09 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id 199sm6138472wml.22.2015.10.28.16.02.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 16:02:08 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 4/8] staging: iio: accel: add blank lines after function definitions
Date: Thu, 29 Oct 2015 01:01:51 +0200
Message-Id: <142e79871b4ed916a1675094b0e05c85c27244c7.1446073162.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>

This patch add blank lines after functions definitions in
order to follow the linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/accel/sca3000_core.c | 2 ++
 drivers/staging/iio/accel/sca3000_ring.c | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index 30fc1ad..961d310 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -550,6 +550,7 @@ static ssize_t sca3000_read_av_freq(struct device *dev,
 error_ret:
 	return ret;
 }
+
 /**
  * __sca3000_get_base_freq() obtain mode specific base frequency
  *
@@ -864,6 +865,7 @@ error_ret:
 
 	return ret;
 }
+
 /**
  * sca3000_query_free_fall_mode() is free fall mode enabled
  **/
diff --git a/drivers/staging/iio/accel/sca3000_ring.c b/drivers/staging/iio/accel/sca3000_ring.c
index e19e7a4..20b878d 100644
--- a/drivers/staging/iio/accel/sca3000_ring.c
+++ b/drivers/staging/iio/accel/sca3000_ring.c
@@ -307,6 +307,7 @@ error_ret:
 
 	return ret;
 }
+
 /**
  * sca3000_hw_ring_preenable() hw ring buffer preenable function
  *
-- 
2.1.4


