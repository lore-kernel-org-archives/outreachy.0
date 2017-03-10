X-GM-THRID: 6395446243166781440
X-Received: by 10.99.114.70 with SMTP id c6mr8762227pgn.17.1489161504402;
        Fri, 10 Mar 2017 07:58:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls8913313otc.22.gmail; Fri, 10 Mar
 2017 07:58:23 -0800 (PST)
X-Received: by 10.129.105.130 with SMTP id e124mr9351516ywc.2.1489161503949;
        Fri, 10 Mar 2017 07:58:23 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si1774827pfz.1.2017.03.10.07.58.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:58:23 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so11224547pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 07:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=CKYg8ZoCu1Ynvp6mQb4QpihN5a5MdixTcMaBeF9N+FkuKqIaVfTKRZHJ1BeTilnTk3
         GiqmtiYoQzC2/qLmOtz4Twx3F4zbkRWed4ooq412mnyXoItOIR1nrRV5Tv8rigpgv2HV
         uKIdm0vwuiaHofU2qziB8fMpRBYOcRxbpD9EWUoRV7pnB4To1DtoRjIfbGyLJhfp/Zee
         Gn77gdAbsMPx/vkDqwII9gfLze9pnTI/LJS7RuC4DVp9KxiFHnEuoQaY19jBkihnXHLI
         gaVMlTiykgQBaP9uI8uz1HAnv8VgqpVEdLVWLdMPoaYfi1KJHVNpJgI5GemeGVOf29HB
         dzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=aYMLQIthKXaFU+dKyeA9sXV/CYF4qGdE1kD2BJuH/vK2NA4ENkH3KhecXGOqJnYFN0
         chmUjMKUX50Xk/N2qbA4Wns6qVkMP8qrZcGphpStVj2/Q3YFWISK+Cq1zpKWWD4f+pLK
         mIecr+KYeKJxZSdp+te3svnqVO2UDgKUOgyfMkHwFXXGO45gGsqGJinLNOZYvXh2ZtEm
         J7rWJRJmGEb+yuZ/pQwBqd7Sidsu/0bx2mFVf5FFrWuG5/j1veR/38eCS85om0/QjSvc
         VH67rZSEvO0vtxQU+c4Lno0nOBVZfwvMqt+iYU4o/JlcqjTtq8YFQPd8nTt8DoDTiugy
         o9MA==
X-Gm-Message-State: AMke39kV09wIiZjV3lRnNNDOaRwGMybFlxL9iuLr0ogfopYbkTnaFUF91eWJbx77a54m9g==
X-Received: by 10.84.217.133 with SMTP id p5mr26695423pli.164.1489161503570;
        Fri, 10 Mar 2017 07:58:23 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id 10sm19469385pfs.113.2017.03.10.07.58.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:58:23 -0800 (PST)
Date: Fri, 10 Mar 2017 21:28:00 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v6 1/7] staging: bcm2835-audio: Replace kmalloc with kzalloc
Message-ID: <8e68426810403ff443940069732c4a3c149e1944.1489160830.git.aishpant@gmail.com>
References: <cover.1489160830.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489160830.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace kmalloc and memset with kzalloc.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index c54bef3..005e287 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -290,11 +290,10 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 		return NULL;
 	}
 	/* Allocate memory for this instance */
-	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
+	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 	if (!instance)
 		return NULL;
 
-	memset(instance, 0, sizeof(*instance));
 	instance->num_connections = num_connections;
 
 	/* Create a lock for exclusive, serialized VCHI connection access */
-- 
2.7.4


