X-GM-THRID: 6391489857245413376
X-Received: by 10.99.174.9 with SMTP id q9mr3514416pgf.80.1488477443572;
        Thu, 02 Mar 2017 09:57:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.8 with SMTP id 8ls2138051ion.43.gmail; Thu, 02 Mar 2017
 09:57:22 -0800 (PST)
X-Received: by 10.36.94.204 with SMTP id h195mr2068571itb.35.1488477442927;
        Thu, 02 Mar 2017 09:57:22 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com. [209.85.192.195])
        by gmr-mx.google.com with ESMTPS id 2si919788pfz.1.2017.03.02.09.57.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:57:22 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 209.85.192.195 as permitted sender) client-ip=209.85.192.195;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 209.85.192.195 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-f195.google.com with SMTP id j5so7405926pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:subject:mime-version:content-disposition
         :user-agent;
        bh=uxTeshrr+jUgq/WDOKDiOHTS00FQc/TET/YlwaDdIVk=;
        b=ty7poW58g8UOcdLE0RzPugLb7yvHh+2f/7Oz3ZJUSUiaYM2FRKtH4p3zZdwYvetmEK
         LJ/rwcueC6spvWdjfD1VNIlr1vOaiW2F2YvpyhNOmJyP8r0zCT0yvjtOU7uVwQQq3kWN
         A2IHv9W6oHkGdt4Mdm1RP5zZeToWby1ljZOKBAXnoy171D7DjuNULwMSNWFeAXaKv95S
         H+cxDnokURSVWdL58kWDZxqOTAfmsiB6Di702a9ho7b58fnu/myWMSoEsTLm++LiDu9y
         lQiNlJC14S1CstmDar/6ab6otHSyboMdsFqmuKH7JvHh4TnPTyTzLQWt+4cO12k+Dg9x
         w1dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:subject:mime-version
         :content-disposition:user-agent;
        bh=uxTeshrr+jUgq/WDOKDiOHTS00FQc/TET/YlwaDdIVk=;
        b=DkKW3L0HCc3qkQ7uVcU2ymvAlFdOCBhQARtvEAVWD7E6WVHQxhnBWyMkcSDmTjlYaX
         kZeweX+PfW4CVS+2b/uSGw1f3vt6NWESvKNX6FhHU3MJu4gXgxn2qPan190A4ztsIX8g
         /C2BN8qsleFKRUxUHamyzunSRc2cg1qMxBNnKTPY0Tfy2SScvachfJRXTlOGhc601leT
         ZagMXNNT0eQpwboYy5fIb3H3AxbX+jS2rtmJskKiBzCFHDwUEJX9XcKASKyGMLoeKU7U
         +N+lKpsd/7k7rXE7tKrBAkb+0weMt2ERxqHbaB/PN5vDodbIbL5417rpH6+G16UQ+TOx
         G3Fw==
X-Gm-Message-State: AMke39m0oG5cIdhpYC3xklUG4mx+YijtEtzDsNBVoD9sIXcGaEl/KKCF0rbxpeZkig+Cew==
X-Received: by 10.84.135.34 with SMTP id 31mr20272216pli.50.1488477442571;
        Thu, 02 Mar 2017 09:57:22 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([118.151.209.30])
        by smtp.gmail.com with ESMTPSA id z7sm18336748pfz.128.2017.03.02.09.57.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 09:57:22 -0800 (PST)
Message-ID: <58b85d02.0733620a.afe74.4ce0@mx.google.com>
X-Google-Original-Message-ID: <20170302175711.GA3652@<rvarsha016@gmail.com>>
Date: Thu, 2 Mar 2017 23:27:11 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: [PATCH v5] staging: emxx_udc: Add comment for spinlock_t definition.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Members of nbu2ss_udc structure can change device state, maintain
completion state and control driver. Also provide access to read and
write to register. Hence, exclusive access to nbu2ss_udc is required.
The lock variable of type spinlock_t guarantees the exclusive access
and protects it.

In this patch, comment is added for spinlock_t definition, to fix the
following checkpatch issue:

CHECK: spinlock_t definition without comment

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
-Modified commit message.

Changes in v3:
-Modified commit message.

Changes in v4:
-Added proper version number.

Changes in v5:
-Modified commit message.

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


