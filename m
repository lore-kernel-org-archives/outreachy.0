X-GM-THRID: 6391489857245413376
X-Received: by 10.129.167.72 with SMTP id e69mr3845205ywh.89.1488419295011;
        Wed, 01 Mar 2017 17:48:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.212 with SMTP id e78ls626251ote.9.gmail; Wed, 01 Mar
 2017 17:48:14 -0800 (PST)
X-Received: by 10.157.17.228 with SMTP id y33mr3745398oty.102.1488419294582;
        Wed, 01 Mar 2017 17:48:14 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si1158026pfa.4.2017.03.01.17.48.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 17:48:14 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id b5so2704807pfa.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 17:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:subject:mime-version:content-disposition
         :user-agent;
        bh=QARJp4kW+Nz7DBAzVIIoNAYYC8rCXDjvGJk1iMVgAJ0=;
        b=ChabZZuJmy1PIoZttHTiACiBWSYoq+iJl3XQ9/kbSK91MRYwznjneDLuihZCqdeyzR
         R6T2+st/+Yt53OfGJnQEK1PFTrduG3WJz/W3QVv8+H9e+oQDfF5Xv3cfUGsbXbliA+Ns
         j1T07kdBomLzscr2NdyF7jk3b4gR7mxdf4vGUdNx6PtWjdGU0aObbl1cXEGKjL+REQci
         HZsPH0L6ehSsHXV2epJ2lDU66xepIl0paEiVzatQN+U2EoQK++VExCWgqGGmisgtSFUv
         2i5++bBfh3lbXAYMWCQC7qf0ZUVxvxOT6tJAbt6i4DIGgNQZGclFfL4Ghf8yTU5HeMyT
         vq+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:subject:mime-version
         :content-disposition:user-agent;
        bh=QARJp4kW+Nz7DBAzVIIoNAYYC8rCXDjvGJk1iMVgAJ0=;
        b=SUkLT02S9YfxAVGEaXmVetTvDC+d+XfuQSczjopisvZqNpwZmk7FMWAedLkKO3tpH9
         GNe0pQgl6SVrTK/Umb9sTgayy3cMqww+fAbLUyjik/R+ZibY+KDQX85I68+odqJ1Oy/D
         wJn0V5E56ilVyh8UCPz0SQK3RwGkeCLXQrB6H1CjsFoHKT96urgoIPsr0lPHxZ+HF/jN
         J2sic9wtOBdL7tDxsR3X0SaXJbRHf3UGEpW4BAL2cekAU9h7gH0bou4Z6abPHxACk3Bl
         bYEQhUCN/DdJiMZKNLKYFazmOoZidxemXj0B83oMbIvywr0JYJ9Z2z7E47cM3ivu8j1M
         Y1rw==
X-Gm-Message-State: AMke39luVs46ejjNJahKizsnCm8jz87TBjtqbOeqMXKilnQ61BE3SYCoK1KZewpiBUr6nw==
X-Received: by 10.99.94.195 with SMTP id s186mr12602333pgb.197.1488419294362;
        Wed, 01 Mar 2017 17:48:14 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.29])
        by smtp.gmail.com with ESMTPSA id a24sm12917493pfh.33.2017.03.01.17.48.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 17:48:13 -0800 (PST)
Message-ID: <58b779dd.18d4620a.2224e.baf1@mx.google.com>
X-Google-Original-Message-ID: <20170302014810.GA6103@<rvarsha016@gmail.com>>
Date: Thu, 2 Mar 2017 07:18:10 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: emxx_udc: Add comment for spinlock_t definition.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

The nbu2ss_udc structure is used to perform various usb device
operations. It is important to protect the members as they can make
system calls. Lock variable of type spinlock_t, is used to provide
protection by using various spinlock functions.

In this patch, comment is added for spinlock_t definition, to fix the
following checkpatch issue:

CHECK: spinlock_t definition without comment

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
-Modified commit message

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


