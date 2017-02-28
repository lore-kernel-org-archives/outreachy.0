X-GM-THRID: 6391489857245413376
X-Received: by 10.107.4.145 with SMTP id 139mr1129910ioe.90.1488302546108;
        Tue, 28 Feb 2017 09:22:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.8 with SMTP id i8ls548286iof.24.gmail; Tue, 28 Feb
 2017 09:22:25 -0800 (PST)
X-Received: by 10.99.167.5 with SMTP id d5mr1117328pgf.127.1488302545191;
        Tue, 28 Feb 2017 09:22:25 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s64si88437pfk.0.2017.02.28.09.22.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 09:22:25 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so2298526pgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 09:22:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:subject:mime-version:content-disposition
         :user-agent;
        bh=acQAbOsFtgJvvFzJ2j1RwLk+VkQcbzVgYQkI2ETKLIA=;
        b=ST6vt4EyP8fl8V6O77FEP99sUtMYqr/+k4V+u1Y7UfkGZIiWzjzfSg9k78R+sVUxOL
         ifP2Cs7Tx1+fBuz4uLqok9U+ROKpwzxPRfxR57XRrQuM1VIiqRjqlsNy9mJ/bFRKAIam
         fi1xwjB1oWE7Jg/NXs8gCvo4U9NEzerl3u9hifccnH432ORW91H5dAPq+k9SNpAigQAW
         8zAg18fSLI1BDLJxZgZdYmxg8Zj+xPK43rs8L+LXzCl+bE7+vJ2B3QOHZXa0h6PRXC/z
         ZSYlzursAuCNIyk4sZATfca/IiyHX7WtueMg5IEwN9nGSDYluCeYVA7nXa4vTEYxC/8f
         et8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:subject:mime-version
         :content-disposition:user-agent;
        bh=acQAbOsFtgJvvFzJ2j1RwLk+VkQcbzVgYQkI2ETKLIA=;
        b=mwK6HzsSq6J8ALVfzg7tCi5l0JAaxJCNRsj7YqnMv+PEuuIZXihmF01134tXJXjiBp
         v9uE/Ix/setohXAR6rBFT9qruKwd6gY9491cFmewIv/FltHZq55NFaClRXoacQ7tKeyE
         WuA4OTxXJ2CSdAl6GLltFn5AkbuQtL5TB3PIh9iU4HpDFlk3tG2r5G85xv1EHYfAl8YA
         RiJpmHUgAbzE4zLj/FXw0Hs4iQKHEPqdAsJAQO+gI4KvDwC8Zd0+IEm/wljmEe2fjCzQ
         uSDf6mohU5mLI3IDme6hXjzgUaIOZBSImTCwv5qR0EXPqZxt902T0OInbVdARPrXrqRr
         vEwg==
X-Gm-Message-State: AMke39k4vTkkWVxUMDp9UBTnhRLfL+AaBf1tuFvnbEMPPGJu8V3dGMOWJd6Xu4lItAwwZw==
X-Received: by 10.98.212.23 with SMTP id a23mr3807565pfh.18.1488302544885;
        Tue, 28 Feb 2017 09:22:24 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.11])
        by smtp.gmail.com with ESMTPSA id x2sm5416825pfa.71.2017.02.28.09.22.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 09:22:24 -0800 (PST)
Message-ID: <58b5b1d0.024a620a.27ba9.a047@mx.google.com>
X-Google-Original-Message-ID: <20170228172219.GA4657@<rvarsha016@gmail.com>>
Date: Tue, 28 Feb 2017 22:52:19 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: emxx_udc: Add comment for spinlock_t definition.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

A spinlock can have only two type of values, locked and unlocked. Here
lock is a variable of type spinlock_t. Its values are manipulated using
spinlock functions. Spinlock protect and guarantee exclusive access, to
critical region.

In this patch, comment is added for spinlock_t definition, to fix the
following checkpatch issue:

CHECK: spinlock_t definition without comment

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- Modified commit message.

 drivers/staging/emxx_udc/emxx_udc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 789bfb9..78c08e1 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -567,7 +567,7 @@ struct nbu2ss_udc {
 	struct usb_gadget_driver *driver;
 	struct platform_device *pdev;
 	struct device *dev;
-	spinlock_t lock;
+	spinlock_t lock; /* Protects nbu2ss_udc structure fields */
 	struct completion		*pdone;
 
 	enum ep0_state			ep0state;
-- 
2.9.3


