X-GM-THRID: 6462776611954491392
X-Received: by 10.202.207.82 with SMTP id f79mr332385oig.9.1504732438143;
        Wed, 06 Sep 2017 14:13:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.6.207 with SMTP id 198ls59172itv.8.canary-gmail; Wed, 06
 Sep 2017 14:13:57 -0700 (PDT)
X-Received: by 10.98.79.157 with SMTP id f29mr318053pfj.13.1504732437414;
        Wed, 06 Sep 2017 14:13:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504732437; cv=none;
        d=google.com; s=arc-20160816;
        b=TC6D0uBayRSnMx8Q3BBqO3+9hpXAu/W8t4rBQqYkGkhddJaH/GL4CfX7+ZwSfwPKD3
         xqwoqelnA8HPA8bREiEjzbZoD3/ubEPCfbWhWfrWoaGV4mDQoUzUTNdZCFXuD/PAYH+/
         jb0f0KEtTOq/K4LHFksnUjqcf7kVxoydEzqcySyJNgD/nnyiwXVIpD/s77pTg9w4qUpm
         kwzqZg5GUCRx5jzCMHQ0qemjyejWYEE+9nx1P5630ApSPz8KyIwfwGHOBsRG+9phoXr7
         nAvWVs3N5sq8kWyHtOhILpr0kgaTvycVzHgD7hcV8C/LyhVCK0LOnhVZYIAH1dQj+5XU
         v1Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=lPLrLVPd2DjuHMYxY8t+GNRsqz+8QTsczsYIqIf0QAE=;
        b=KqRiypaqdDHt0RZb47D7Tg+EpfNdyAIbiW1s7h6l+rDDRJkM8I9sF46Y07SO7ZA/re
         hC7/g2HR7pruZMD3rUY3Wz8MWsrSR0ZgQe6C68TyB53RPmK3mSZqMVKm7pfRKsbohTMw
         DNC30DOqnN4C2+O2NDks0Fk0BJMywBfhTUt2TFGSD1o1avZQHWqRZBUa+31AZAPm+JZE
         dkjcK93V/3aex6U1wSTvILFw6nRj0GAQpG8oATmoIE6+LQ3ezbmZQT1GQau0jNEJcDg1
         zg5M7y1h3ampJ3W9HNzzbYm2Pns0RHaeBH5zchNiR7r6OouEypU3AlKsBjJ+kPcASy3h
         DdDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=azitHxmm;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a67si107508pfe.17.2017.09.06.14.13.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:13:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=azitHxmm;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id y68so3562477pfd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Sep 2017 14:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lPLrLVPd2DjuHMYxY8t+GNRsqz+8QTsczsYIqIf0QAE=;
        b=azitHxmm8CMznFaRG4zGDg/XuHEq8b7eIFI/+ZXNn4CK1/o9QGcEW/B+tT4plm+Tvm
         qzT0fTnWcT6oJC/PzKHXHLJeQZ4Uu85gl7xEp8uG5+rtvXgV0IYnxwJu4iF/PFZi5Ls4
         5wZZmVRS8FcoyL4E8KBbVUAsapG6YteHSoQ4Sz5ahzMVBrtKQtsweUe8n9VXgELb3RK2
         Ie8O2lII55BCe8P5VlxylLpoLPm0QhdybOR9/976lU5+Y+vqpH23KEVw6eMEE4Ki22MB
         tLX5oUOrFpGsIU2qVj6gRxxMpUfT6V/rc1MRwyi6kLYZ/ZD7Et4qvbZ4GuMi716+U7hr
         nnug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lPLrLVPd2DjuHMYxY8t+GNRsqz+8QTsczsYIqIf0QAE=;
        b=e+neBzucSvtjhleTy6B+N6szAXBnZKbSVoDHj1jLV6Q3rbwlVZY5gMLNq5fc1CgmZ0
         HSmIx/XB7Yc9sJnPX8po/1gOWgpY7rINQXl0cSgK/37vU8PU9vESmyqV5MUI67xSDJtc
         VoAM7jax+0rFyjJ9N7b0pAdni1ihFCfQfop6osydj09FmXZLlzlLKcrEPHEw+LJZR6cd
         mFQed4dYZR8gts7C5VechUn5b6aWOyPfo3OXhXhvq1jWM16fXwLukalDyHGN9nNs7DsU
         HfsPfIozyW+40kczVbhMvr6nTP03gxblHiYlEDmJMP5ZwknUHXZitsGQLenIe/acRbIO
         ZCag==
X-Gm-Message-State: AHPjjUhcJqgPpIrI1YTFlAi4uF73UoErw5dd/aoFHbLQPE9FvS6zW/9Q
	Q3acT+qBY9ewBo/L
X-Google-Smtp-Source: ADKCNb5w6M3I9JWHeeg+z8i+kyQiz2+HavKqASdIgz0MPbLa7tx1QpcQ+a8OXl71XyyOUV2EuqXrxg==
X-Received: by 10.99.124.30 with SMTP id x30mr528429pgc.52.1504732437190;
        Wed, 06 Sep 2017 14:13:57 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.60.94])
        by smtp.gmail.com with ESMTPSA id t125sm746042pgc.50.2017.09.06.14.13.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Sep 2017 14:13:56 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: gilad@benyossef.com,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v3] Staging: ccree: ssi_cipher.c: Remove unused variable.
Date: Thu,  7 Sep 2017 02:43:46 +0530
Message-Id: <1504732426-9765-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove local variable inflight_counter ,as it is never used.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v3:
 - There was no longer a need to make the comment more comprehensible as
   I have deleted the variable associated with it because it is unused .
 drivers/staging/ccree/ssi_cipher.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
index fec2faa..609ebe4 100644
--- a/drivers/staging/ccree/ssi_cipher.c
+++ b/drivers/staging/ccree/ssi_cipher.c
@@ -702,10 +702,7 @@ static int ssi_blkcipher_complete(struct device *dev,

 	ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);

-	/*
-	 * Save inflight_counter in a local variable.
-	 */
-	inflight_counter =  ctx_p->drvdata->inflight_counter;
+
 	/*Decrease the inflight counter*/
 	if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
 		ctx_p->drvdata->inflight_counter--;
--
2.7.4


