X-GM-THRID: 6666446662964084736
X-Received: by 2002:a1f:a70a:: with SMTP id q10mr2065800vke.17.1552153067307;
        Sat, 09 Mar 2019 09:37:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7e57:: with SMTP id z84ls2802677vsc.2.gmail; Sat, 09 Mar
 2019 09:37:46 -0800 (PST)
X-Google-Smtp-Source: APXvYqxTtWk6fHPlwBQaYCEz4SEb7ty9yddKV21bfbBsrAmD04kziVInXbTnJYW5tHxlIpjKo6Yp
X-Received: by 2002:a67:e10c:: with SMTP id d12mr16051526vsl.22.1552153066718;
        Sat, 09 Mar 2019 09:37:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552153066; cv=none;
        d=google.com; s=arc-20160816;
        b=F+lyILxqMJ/3KLyW+BMoZ/Rr8H/stMxUiMQ5hYuDtn4tmTFJKUZk5YNJqzs9BVhs55
         ikOhrYE4Uhe8jrQhxqDZ8xWa2PKhX7+jnRkzTdBhaS1pxM8PNM78UxWD6JrdDOXrj1SA
         VJQlNQobmufRMLqDRQbIfd4ikBOflwo52cC1tSRwXGZTnlQLScqj4DFu9sLzFOGpvfqn
         2VjUpdeCcHnL70atLCaS6vRVkI4wjCaIcVZ7ILBhaIryug6UoLXWlrw+gO/taO89Zcgj
         6LCqMg5LWl9inbrTrrgAUGwsLDY5X05xNTXQXk+DyUPdz+NjY7kTgZPH1vIKhPjH9pxZ
         Eq4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=mOlCD+m7TwuoBmKQ1bLhska6mhj8UOKBvlMBdiyOKsU=;
        b=bJyM6XJMxzP4EFuaRbljdAB5eb75o6ry4CZbUsDYOtT+b3NPjBXX9Q8HgPUvJ/5m/8
         0MjaG5Lf5gzpunp0RnTQjqqahZFXSno0c/VTyftV4EBEP71i/MfRMOEeSUDyezhW93mh
         vcD3K9W3f4qc8F9B/82iQutEqOH4GO5oEKKYFcjwdx4opZeD+8AIDP2Qa0sOCOXUzfF5
         kOVf+w3oS3By6nxFx1lxb6x4P4DDo9VJUJx1nbSuiuDftsJQNymuQitbEZIErQPY8+tI
         kCdJFcPEvACOQIhv4Yfi0KMj738b8VnNKf+LwxP6H5wLi5ZGdI2+NPUdspMMSfZiqX29
         /dnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZIRs9VPr;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id k19si46398vsm.0.2019.03.09.09.37.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 09:37:46 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZIRs9VPr;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id n125so501069pfn.5
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 09:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mOlCD+m7TwuoBmKQ1bLhska6mhj8UOKBvlMBdiyOKsU=;
        b=ZIRs9VPrXV11u6L4Nw9XhhNKL5ejGXJvb2gYPzxuJg7jCrkU84c8wCF+CA30ILM9vs
         Q5O+1GQ8kCghgXFY6bbkmsikxDzCAUs0ZS9mJDNZ6WbPXs6t+Gi6n/IHO2bW56OBI8eU
         czu8k1bM2mNoq+sCSeLl8a62+imvUC/rZgVYJfC6eOeiL4sLCWNTuqPbZqnbEy1yWpEM
         gg/p0reDuWODAqXJ06aOBRCt41Rgk0YFwl86barzRY9hyR1ze2s8DntJO2xgb9zd+gKd
         UsYMx8DxzsOnaxIRus8GVrvw0kIjDEUMO7fXp1a+tUwuqnV04jBGarxRg7cS87aH0qms
         B9vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mOlCD+m7TwuoBmKQ1bLhska6mhj8UOKBvlMBdiyOKsU=;
        b=UFbcleOPBnG75OfNDiO1fACN8We6daONH6j70ox3KRwovXsIMuVb7qL5GBTk384W4I
         9Dn/mavgATDLQBx3ieSjkXUZ01Ck7+f9vFLcP182VHBtl4ulH6NxX6lSyGzxVQhqwtfJ
         fkXsDNd0AkH7AQ8AZFJrAYXOS9EfmS76HZJnkTvwEWWm7GoQgG7AeUkRvdt38w+NJ0S+
         VkYiyXk3bd0lH7EI9VDXaawJ+KLWj2+drYM6ioD/TKKQdgYgYRpMY4zIcMkU+cHttDzq
         VYA00denNn7PXvQBSgsyUxOKxkc1GIqMOCSjWTJf070UUKo7wLJu5WKlnUmGd5Z3Mqp3
         H+eQ==
X-Gm-Message-State: APjAAAUmxg7FOhHVTDMItSg2f7+b4sVvdWRz0nrX+lxrGgxZsZx//Jqy
	Uvh8LTYkwTEqWFpqBs9IXRY=
X-Received: by 2002:a63:4550:: with SMTP id u16mr4317912pgk.73.1552153066136;
        Sat, 09 Mar 2019 09:37:46 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.116])
        by smtp.gmail.com with ESMTPSA id v1sm1798002pff.9.2019.03.09.09.37.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 09:37:45 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH] staging: media: zoran: remove unnecessary parentheses
Date: Sat,  9 Mar 2019 23:07:34 +0530
Message-Id: <20190309173734.51405-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190309160705.51339-1-himadri18.07@gmail.com>
References: <20190309160705.51339-1-himadri18.07@gmail.com>

Remove unnecessary parentheses from right hand side of
assignments.Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/media/zoran/zoran_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 40adceebca7e..c27e1472b7a8 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -496,7 +496,7 @@ zr36057_overlay (struct zoran *zr,
 				KERN_ERR
 				"%s: zr36057_overlay() - video_stride not aligned\n",
 				ZR_DEVNAME(zr));
-		reg = (reg << ZR36057_VSSFGR_DispStride);
+		reg = reg << ZR36057_VSSFGR_DispStride;
 		reg |= ZR36057_VSSFGR_VidOvf;	/* clear overflow status */
 		btwrite(reg, ZR36057_VSSFGR);
 
@@ -1421,7 +1421,7 @@ zoran_irq (int             irq,
 					reg = 0;
 					if (zr->v4l_settings.height > BUZ_MAX_HEIGHT / 2)
 						reg += zr->v4l_settings.bytesperline;
-					reg = (reg << ZR36057_VSSFGR_DispStride);
+					reg = reg << ZR36057_VSSFGR_DispStride;
 					reg |= ZR36057_VSSFGR_VidOvf;
 					reg |= ZR36057_VSSFGR_SnapShot;
 					reg |= ZR36057_VSSFGR_FrameGrab;
-- 
2.17.1


