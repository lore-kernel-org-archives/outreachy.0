X-GM-THRID: 6256054516784824320
X-Received: by 10.129.130.71 with SMTP id s68mr6585012ywf.29.1456602612480;
        Sat, 27 Feb 2016 11:50:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.134 with SMTP id a6ls2067989qgf.9.gmail; Sat, 27 Feb
 2016 11:50:11 -0800 (PST)
X-Received: by 10.129.74.195 with SMTP id x186mr6436000ywa.36.1456602611805;
        Sat, 27 Feb 2016 11:50:11 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 12si2708026pfb.1.2016.02.27.11.50.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 11:50:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id y7so6283901paa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 11:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=38ky+yARKyA76NDcXqMq4RfQjiNHZxMQI43guM0oPJY=;
        b=BCfx2zcF0/Xfby9EkyHfnYC3C6strBaesg1seJAYDMdjkjuPYj7ryRgRmjWJRNJH94
         C8/q7F+O2maBvr1rrVQG2BbWUXAi9ktZXXG3yJS8FyzYGGrzTwsp1MA3yokyie7AawWL
         d1xVsaPptoCGh+DJTOcwJtF5yEHRbeu4YvlirBAlAwmLNF5thSTNkwRAkueNuK2wtXs+
         ShDiIsAwEaFyBnkE3haWw37PuhS/gH0qoH4VNNdNyKQtLGv2QRHKqjTF+4FlAyU1Grup
         KfJzTScr4UkVtqaFXxExHgqJQI9rQA9b5AnqmgRLNIsx1mUumDNFu34OzeLYqFVHzEhB
         B/pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=38ky+yARKyA76NDcXqMq4RfQjiNHZxMQI43guM0oPJY=;
        b=RP4yU2ocFuE+9/e3gUuGhemRmC/oDALvkG7iu/iCuLmjgro/UmR1KXxzLwzfEP5nxT
         y8nLuMeBGK/VquinpWPkUIcL2XX3ZDH8uYQST91hH6Q7CxIL0tJ1UZErglflrq49QIKg
         Zn8t2uNxttUOwvhMWCOYUgObjKwO3y+9nRn/+zQzxUMBa8CdDDanyORdmIjPB6OQw2l2
         SgrHtrL4ALNtY8f/U5Nkbb638ovn9sY+PW1NnFICvXIrslRfCbKDUREnTVRsDbCC+90L
         7yIg9fEPcQPJxF2crJiG4Abebk6g98mPu76VIindowmUlWRuEqjoVIfJ+GGevsXrQ47/
         lbkg==
X-Gm-Message-State: AD7BkJJqw2d3ADqT4ac4rFFnRvbleqjIFdArO5BVNujObEJcoKoC23V+eGAA0U2u8zHafw==
X-Received: by 10.66.220.162 with SMTP id px2mr11406085pac.15.1456602611639;
        Sat, 27 Feb 2016 11:50:11 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.44])
        by smtp.gmail.com with ESMTPSA id z3sm27815098par.17.2016.02.27.11.50.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 11:50:11 -0800 (PST)
Date: Sat, 27 Feb 2016 17:20:13 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: usb: Use PTR_ERR_OR_ZERO instead of
 if(IS_ERR(...)) + PTR_ERR.
Message-ID: <cover.1456573526.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.

Sandhya Bankar (2):
  [PATCH 1/2] Staging: usb: Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.
  [PATCH 2/2] Staging: usb: gadget: Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.

 drivers/usb/gadget/udc/at91_udc.c   | 5 +----
 drivers/usb/phy/phy-qcom-8x16-usb.c | 5 +----
 2 files changed, 2 insertions(+), 8 deletions(-)

-- 
1.8.3.4


