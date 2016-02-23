X-GM-THRID: 6254491824007675904
X-Received: by 10.66.124.200 with SMTP id mk8mr31354449pab.27.1456237357294;
        Tue, 23 Feb 2016 06:22:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.101 with SMTP id r5ls898291igh.40.gmail; Tue, 23 Feb
 2016 06:22:36 -0800 (PST)
X-Received: by 10.107.134.68 with SMTP id i65mr32811231iod.33.1456237356955;
        Tue, 23 Feb 2016 06:22:36 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id ff2si4194127pad.2.2016.02.23.06.22.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 06:22:36 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ho8so114189753pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 06:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=vDQk6fP8dZqUAes5x46tDZMteNSMHBDYniVvYxCW32E=;
        b=zwAJj696aTYWnZe1svoZ+TBFq6NZX6PSgHGB17oYWbCnSWxYSX5D69dnaNkLAVsUMv
         fOOAVw+ufQxeUJA4YZUyYjcQl0xhw1EN/IgT9yJ9Z+e3yPlS7rK/Xndavz5kuWlk2kwT
         zlZoPSJXsNLvLzqnCFTMr/QwLy6D4h9vBd9AdW6RX+ZynleU3x51jkiatVaUWz6M1KAJ
         QHxjHFiYYpbGj5CajjtckruyxW3s3sKIcl3Cyz5WKDBoFNjmy4NNQLyvmluAgUGbO4y0
         2QVAO6q4WeVuekD7LUCPf2jaVGdNgLr1FwpljdeO3tOfNdqghqbWIU65B2tO3Q/59FqH
         W+FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=vDQk6fP8dZqUAes5x46tDZMteNSMHBDYniVvYxCW32E=;
        b=ao1Z6EfiNf0BEgB/rQeoV8yX36oZTp44qKCR5pkrM1vRDHsM2n9Ab0P5SCQNG+ALFX
         t2XUNvRbDAbUbgw0223JD/DKukzWUAjQHnMmjHR6wMpUJvSyS0TLS4a/RApSEXWtZjtH
         7ywartnppJ8DcqmIoDwd69SrZ6rSA+LoUqfFt7MPW4mMGsV/azCeqNv/mcGy5zIyHTfe
         xzVyE1vOPW39Bn8tNi0gGWUGNey+j8z0HwS0Pu5RbFhD8llL1gUotlyj18UUkQjSQLmE
         R16vhzqS6vWSibCEKpzTLrxmwnzRpaa3tWgKXl6RvTShmFcTm15jZMTggKw8ZENw/21K
         fGWQ==
X-Gm-Message-State: AG10YOS61cy2/Sc6EVqDQBGDv1IaM7nsFu+jdGt1PDFe95l/DXazu7fa6rU/5cYaoddiww==
X-Received: by 10.66.102.37 with SMTP id fl5mr1592861pab.32.1456237356800;
        Tue, 23 Feb 2016 06:22:36 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id fc8sm44909976pab.21.2016.02.23.06.22.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 06:22:36 -0800 (PST)
Date: Tue, 23 Feb 2016 19:52:21 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: lustre: libcfs: Remove comparison with zero
Message-ID: <805d9fbc8b12dfbfe251a63bb4b72ad028ee9113.1456236436.git.amitoj1606@gmail.com>
References: <cover.1456236436.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456236436.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace comparison with zero with ! operator.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Divide one patch into a series.

 drivers/staging/lustre/lustre/libcfs/hash.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
index b9bdb67..a645f50 100644
--- a/drivers/staging/lustre/lustre/libcfs/hash.c
+++ b/drivers/staging/lustre/lustre/libcfs/hash.c
@@ -800,7 +800,7 @@ cfs_hash_bd_order(struct cfs_hash_bd *bd1, struct cfs_hash_bd *bd2)
 	}
 
 	rc = cfs_hash_bd_compare(bd1, bd2);
-	if (rc == 0)
+	if (!rc)
 		bd2->bd_bucket = NULL;
 	else if (rc > 0)
 		swap(*bd1, *bd2); /* swab bd1 and bd2 */
-- 
1.9.1


