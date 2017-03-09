X-GM-THRID: 6395446243166781440
X-Received: by 10.157.37.37 with SMTP id k34mr4593801otb.121.1489055881584;
        Thu, 09 Mar 2017 02:38:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls5568579otc.22.gmail; Thu, 09 Mar
 2017 02:38:01 -0800 (PST)
X-Received: by 10.157.84.14 with SMTP id j14mr4956786oth.141.1489055881239;
        Thu, 09 Mar 2017 02:38:01 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y90si1114153pfa.6.2017.03.09.02.38.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:38:01 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so1954471pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 02:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=equRnbMcK6wLEB9a4PAhP8p56E85E9XkwLIbPxrncgenL6ypvBgU9JWZ4F0BAQcqtn
         Yp85Xm+AJKHGgAyXDN0MmQkfYTQbimQx2qgGLzZ9GRXwo7+qPlT+OqXg3ENW3DKv2kzK
         4oA9q1PPj+hY9YxVKPKK1cSV6t953UZ4dtxw/qb+HhE+VNYMz6De1JAv6peAuccpK3eB
         dhK8LCl0Sl7OyA/s+LoDt0bqI1K51IjRJ+1/sgX3OCnQXH0CBQUrksEbJ711kdBYbD19
         K7+hF6iQC2iAR4e0iWifM2rtwIi5NnQ2fSv3xEDDp2XDKRlt6seHcL5/xk3zdfutwce6
         o2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=dTSed6d9G0HOT80zAEmriX5Epjwoa1/uTtQcxFw4vR1WlueXHUrVGlwvdROs4IuJna
         NtjUFZyMgaWmW8BXElNrf8S+nHpVhbka3tTZjQRWthb4MvKi6doUxPo2E2bHOuRusxBv
         uwCWNOQL2H37NOhOG0+vJht0k3xDKPuIYgijqmLZ38k57gzontEg/PWY86pW/CjhjxW6
         //0NSGZnTjtgz0aEzCjs8UQbDvjcuIBqAPSEHKFt/8FzOOZYOxe3pm2/KhEfc58BLP2J
         vaPpmv+FNzl4c+VTnzR0tN3CePjtacdvC/VEyXpP0Od4WTJjwejGbQPcov5xwbYYl16+
         a3fg==
X-Gm-Message-State: AMke39mREkDKAdRbU7UkoghDsZ7WQAt4hpqu5DnYoPcOq6JLSNT4WQKNliwb4UxruYJ6Ew==
X-Received: by 10.98.16.11 with SMTP id y11mr13450126pfi.84.1489055880815;
        Thu, 09 Mar 2017 02:38:00 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.186.124.141])
        by smtp.gmail.com with ESMTPSA id 80sm11681063pgd.39.2017.03.09.02.37.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:38:00 -0800 (PST)
Date: Thu, 9 Mar 2017 16:07:54 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 1/7] staging: bcm2835-audio: Replace kmalloc with kzalloc
Message-ID: <43aa5452c7e19cdf5bb0c1046c4c11a82569083a.1489055580.git.aishpant@gmail.com>
References: <cover.1489055580.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489055580.git.aishpant@gmail.com>
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


