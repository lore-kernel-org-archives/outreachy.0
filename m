X-GM-THRID: 6264247085046956032
X-Received: by 10.107.169.204 with SMTP id f73mr19036381ioj.21.1458590332693;
        Mon, 21 Mar 2016 12:58:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.210 with SMTP id 79ls1810338iop.77.gmail; Mon, 21 Mar
 2016 12:58:52 -0700 (PDT)
X-Received: by 10.107.12.212 with SMTP id 81mr24539472iom.18.1458590332202;
        Mon, 21 Mar 2016 12:58:52 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si4043502pab.0.2016.03.21.12.58.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 12:58:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x3so31898793pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 12:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0v4mZou4Ra6nFasiYUpu/LeUA+nFISe5MtwEFgOtpEs=;
        b=cGDWG6/F4YnI8EBPr0ErAmadKkUEhz89Tz1W/ZyRk0oL0PzFV85Dnd2WJKyoHYb4rh
         nuznjJDAng8pPQrNirUFMiUrU5VNWGmK/s52KlU4Cdi2f+EbfApiQ6GJ3vBH6BA83Vvg
         xRIa/F2tvxJmHIQkAfEI79KevV60l9fBH0Cra1bTw454b7178xQ13RKkOf+6XsYE+Ov/
         IZDZBusThFEg3hbAR3wWSgOpXr0zoatH/3dOxrl0PoLPGJG2gPYGw2uXezkmTThu/ky1
         LbJVGxlOIoaywMH53teh6KfXSMARSWQtBiMEaztXqQlQwvja2BFccaaJ/wmOmup9G0CH
         vGXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0v4mZou4Ra6nFasiYUpu/LeUA+nFISe5MtwEFgOtpEs=;
        b=Xcqn7+ULIekUxSTyF7y25hovMbFYapiQnRATMxnXOS81kflOWXOpACqDx+FTmYgKmq
         /3pNwWkGQ9epgtfmJOql3rP6Iu2lFFCYkrKKyTuG3xhUXM3Np6UKyOZzm91XC8+hfaaK
         /2z4VlmkpkIBLDqQwcpZhDSxEnIeuFKdxkeIdWWZE7tWQf1kXzEBk1BqZNOb/8dCpk0c
         +I7kD0ZELodXJ/nv7xDQQsVUUyDzuBYx7m8CGzfSQK1VoZWvwgDTpnPcmFvGlXuVoJW/
         Ii1MlOiPLcwtpIWLz7dbDhxbYoF1vD2/mdGEKlJlGOLI0bVm09Q2CNnPFNxiLb//Hkbp
         W18A==
X-Gm-Message-State: AD7BkJJ1yJe5OU9zMywOBsXolnQj+tX8D4fGysoImCE7ZX/l9xxde1ARPYVU4iQUT6dXNQ==
X-Received: by 10.66.90.199 with SMTP id by7mr47915760pab.113.1458590332057;
        Mon, 21 Mar 2016 12:58:52 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id e6sm42632953pfj.71.2016.03.21.12.58.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 12:58:51 -0700 (PDT)
Date: Mon, 21 Mar 2016 18:30:00 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] Staging: Use sizeof type *pointer instead of sizeof
 type.
Message-ID: <cover.1458564530.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use sizeof type *pointer instead of sizeof type.
Changes in v2:
* correcting the commit message.

Sandhya Bankar (3):
  Staging: rtl8188eu: rtw_efuse: Use sizeof type *pointer instead of sizeof type.
  Staging: lustre: rpc: Use sizeof type *pointer instead of sizeof type.
  Staging: lustre: o2iblnd: Use sizeof type *pointer instead of sizeof type.

 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 4 ++--
 drivers/staging/lustre/lnet/selftest/rpc.c          | 2 +-
 drivers/staging/rtl8188eu/core/rtw_efuse.c          | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.8.3.4


