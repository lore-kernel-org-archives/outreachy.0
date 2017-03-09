X-GM-THRID: 6395563647379177472
X-Received: by 10.129.40.134 with SMTP id o128mr5999708ywo.82.1489083232870;
        Thu, 09 Mar 2017 10:13:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.1 with SMTP id a1ls7126205otd.37.gmail; Thu, 09 Mar
 2017 10:13:52 -0800 (PST)
X-Received: by 10.157.29.131 with SMTP id y3mr5878672otd.18.1489083232500;
        Thu, 09 Mar 2017 10:13:52 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a3si1357850pfb.2.2017.03.09.10.13.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:13:52 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so8073860pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 10:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=STpRyPBkcomR6ECqDJuXvpK4kz/PeOKzHlutj4jFEqY=;
        b=oZvl4R8CjuL+3zCEZcP7tafxgzGOc0g7KqAtRjOHHMwqz4dc/flE3kk6giTS4B/l6P
         OXp8mm0vl2HO9XAfE/2Nd3SisHZVJ79ZlUyNJH9RfY3EsvbfnWII+VPJ64fNoqx4PYfg
         +BMpXuBT0zZfTSPEFZ9dXKKQVS1OzQiddwUJyHqIC3xSPYGcJp1/80uMJEpcoP6XJO2j
         6YQ3TCqZgcdAfNlMUOf8dMPcGHe2/P4kiXGurkA0tFUsBgVtYuoGsK8U/dFhcWVZ1ESE
         3tRf9zg/vpU+LG0fiKm/P5DGvQk3HMQQB+KAc04eeIDMoKhs4IWxRlpPOreWPYxL+BmH
         2Q9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=STpRyPBkcomR6ECqDJuXvpK4kz/PeOKzHlutj4jFEqY=;
        b=ub8ehN7QWMI+0bZV+FViXxqesehY7ohJ4MLyihbbYGdtJ9S+ED6zcu5oxvz+nd1+J/
         czV7HiCKfInARgLKKKvlISBx2AusNldOs3FNlOc5gSU08mT9GFMB9NstcMCmkpUQOzYR
         RyT/qs2YMYnFDudp3WklTkcf3k6E6E9kX7E+cP17Vs7aIA3BXCXOYoM6jVC/BAJA0ouv
         o8JiZFfg0pgG27ejBri5G++V11WVvNbTbpSSI9+hM7nA9iYEuK5XDH5Y8m4NdZI2PDW5
         1y99L0ly1nZ45nlPBnvYCkRFrPTspErk8GfoMjghVJPKkXjwGJqnKWOm8aYRVUJmbFB7
         3S1Q==
X-Gm-Message-State: AMke39l0oLYPbR7qm0f02/OE+hwcFd4rx5Z2bVxvHUW4SVZDaimf0EPcTt3w1P1tOc2qFQ==
X-Received: by 10.99.223.5 with SMTP id u5mr15319599pgg.58.1489083232051;
        Thu, 09 Mar 2017 10:13:52 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.243.15])
        by smtp.gmail.com with ESMTPSA id x65sm13772343pfx.115.2017.03.09.10.13.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:13:51 -0800 (PST)
Date: Thu, 9 Mar 2017 23:43:48 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: bcm2835-camera: replace kmalloc with kzalloc
Message-ID: <56b08acb54e6fa814f201c7813255fb3926631b6.1489082995.git.aishpant@gmail.com>
References: <cover.1489082995.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489082995.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces kmalloc and memset with kzalloc

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index a258a72..f795137 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -259,9 +259,8 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 {
 	struct mmal_msg_context *msg_context;
 
-	/* todo: should this be allocated from a pool to avoid kmalloc */
-	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
-	memset(msg_context, 0, sizeof(*msg_context));
+	/* todo: should this be allocated from a pool to avoid kzalloc */
+	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);
 
 	if (!msg_context)
 		return NULL;
@@ -2008,8 +2007,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 		return -EIO;
 	}
 
-	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
-	memset(instance, 0, sizeof(*instance));
+	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 
 	if (!instance)
 		return -ENOMEM;
-- 
2.7.4


