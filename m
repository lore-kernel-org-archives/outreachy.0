X-GM-THRID: 6256054516784824320
X-Received: by 10.107.7.200 with SMTP id g69mr12624349ioi.3.1456605177661;
        Sat, 27 Feb 2016 12:32:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.148.10 with SMTP id to10ls827569obb.44.gmail; Sat, 27 Feb
 2016 12:32:57 -0800 (PST)
X-Received: by 10.182.135.169 with SMTP id pt9mr6334663obb.17.1456605177368;
        Sat, 27 Feb 2016 12:32:57 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si2721448pfb.1.2016.02.27.12.32.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 12:32:57 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t66so2312510pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 12:32:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/B4d7pbQgi2xCTSXKM2Wl8CbYp8dYwpj/es5u0HJw94=;
        b=JfNIl41IWK2dwtD20hgiAu0Oja8XsYSwDuVaXT+3JnZj/SV5apztsYnFkOzN1zBboJ
         UvD8pU3wKtTiIm7nJM62qmW0Vcuf15bvxVjYGWAiV4qVhHsEzTrfnPu5EmT0aDnFKU6v
         zNnD+NoDht7uDdkVW7tA/0WihAt0k+s2hRet5dSDCBOcn4VfeD6Js18ofBbffwoSz1FB
         iDUDUMAUG1zK5Pbcx3Udbj7hloR2a/D94Ytw43I4cgX86YoPrRQ2cAN6QsFryBVq2/id
         paXQdzlEe7xrHBvc1s4q3yqQfwfKLxkcJ+W4YDekHhLnePf8jcv5otgGhVFwGtkwm/l9
         oJqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/B4d7pbQgi2xCTSXKM2Wl8CbYp8dYwpj/es5u0HJw94=;
        b=MNx6cmXmh1PbMcIgPtZU/R+l/iJ6JYxU/iJw9RPe00HBnkJWj62rpoq5N5fdu/52NT
         sOdDDFuaR8rp/4nRxHZLVOJnvbij3eNaTq6g3hhUwDx7pVv55i/O+zEmdidxZ2ylxJpw
         bdcuX4LCtNrn4NUJfvb7fG+VxuxYZC+aM+sFyrrtHX18QdyrRtzRlxivRjUVqc6JS5uI
         FT8OzSYln4Jq3XTJacBNTTxftmLf9oL6gb6ASZE/AqMEJg3ps+rqaK2DxA7wKUwBElos
         VaBNycPOVFIBX7P6cPBcdVZl815GUHnNoJdAI8PW6Bi8lcEtQYwnCbLMWtCiANFi9eKB
         4HBg==
X-Gm-Message-State: AD7BkJKzO5Fp3yZeRiJPVFzyRNTcqVk9pHE2tCAY4+JGWdSdTKWWxijaRt6DDEpvNgESvg==
X-Received: by 10.98.75.10 with SMTP id y10mr11542088pfa.32.1456605177204;
        Sat, 27 Feb 2016 12:32:57 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.44])
        by smtp.gmail.com with ESMTPSA id e20sm27887460pfd.4.2016.02.27.12.32.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 12:32:56 -0800 (PST)
Date: Sat, 27 Feb 2016 18:03:00 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2]  Staging: usb: Use PTR_ERR_OR_ZERO instead of
 if(IS_ERR(...)) + PTR_ERR.
Message-ID: <cover.1456576066.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.

Sandhya Bankar (2):
  [PATCH v2 1/2] Staging: usb: Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.
  [PATCH v2 2/2] Staging: usb: gadget: Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR

 drivers/usb/gadget/udc/at91_udc.c   | 4 +---
 drivers/usb/phy/phy-qcom-8x16-usb.c | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

-- 
1.8.3.4


