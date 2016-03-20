X-GM-THRID: 6263088426063495168
X-Received: by 10.66.146.194 with SMTP id te2mr19785355pab.17.1458497626103;
        Sun, 20 Mar 2016 11:13:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.75 with SMTP id d69ls3204281qga.20.gmail; Sun, 20 Mar
 2016 11:13:45 -0700 (PDT)
X-Received: by 10.140.20.105 with SMTP id 96mr19793212qgi.7.1458497625423;
        Sun, 20 Mar 2016 11:13:45 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y20si3419938pfa.2.2016.03.20.11.13.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 11:13:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so26705782pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 11:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9RH9FBE97V1juRYyTyFVdXOEsEZnWBkmtGuD36BoPZ8=;
        b=i5ZGMWaFV24cYJHqLm9zU7ZRShH/rVrmSzwLJGIcuLD1haUUXWQ/0xAMKFk7WjDjiD
         dw5QkIh2URKyLDqPcRsrO97PUhDvLrqyB3BzmcvXr/KEJ1pw956veAp031OtjuL3xA+K
         V15PsBvvlvqYfchad22XrJtbLOQ/tg8b7Njp8ogn82GuAzUEB/h8ZvNrfTl10Mlajyao
         EZSJRFY9/UvTIsHExECvi42F2C9i3JrsQ2sNtkEEfNdkMBdgjdEeKQ8UlpyGRHn9jb9Z
         yiE7HmShJR8/ezqZG9s/kyoeV6eZvlA91ok4w1eLJTU8i8FHYVTXWmvPyQeKcgbJ6/K0
         FIGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9RH9FBE97V1juRYyTyFVdXOEsEZnWBkmtGuD36BoPZ8=;
        b=QfqMHhROayOjloIzg6sEhdjzIoLLgFYrfRfwiUyLfaLzz+nsfTShdyFFAch8ZbV8p+
         Fa8wXXIlpb9Ibc8BFMqBcCVh/82Xg6XMeNj2MbVqJt6tmFnHkQ7vUfj3IquivbsxIA41
         zsSgr74rIycUj29ofMNtnPNBYgxr73LI42bX2/Hk5IlHAPqfmPKnwMCUuZQesV95n3cl
         ejmPdnCso+mMVROPZThH2gZWVCKo2ezb1ZpNEwDED3CQ0rOXyxeN8ApMRAW/WUa3teeu
         4mNH6cq5vFBk8VQdZrVIkZjYZOZ6nkZ5k/0CRCHxzcESNpuCLep9pLHY/aXAFbpT4iQ3
         na8Q==
X-Gm-Message-State: AD7BkJI90UcsqNF811HXZmk3BouGP6N8AF2MEK9wm3LJbqnuBTxgW4eIJOW2uexFoM6AdA==
X-Received: by 10.98.67.76 with SMTP id q73mr39458100pfa.137.1458497625217;
        Sun, 20 Mar 2016 11:13:45 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id l14sm34875573pfi.23.2016.03.20.11.13.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 11:13:44 -0700 (PDT)
Date: Sun, 20 Mar 2016 16:44:51 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] Staging: i4l: Fix coding style issues.
Message-ID: <cover.1458471223.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Fix coding style issues.
Changes in v2:
* Correcting the heading.
* Resending v2 as previously it is not showing in mailing list.

Sandhya Bankar (4):
  Staging: i4l: pcbit: capi: Add parentheses to complex macro.
  Staging: i4l: pcbit: drv: Use !x instead of x == NULL
  Staging: i4l: pcbit: edss1: Do not initialise statics to 0.
  Staging: i4l: pcbit: layer2: Add parentheses to complex macro.

 drivers/staging/i4l/pcbit/capi.h   | 2 +-
 drivers/staging/i4l/pcbit/drv.c    | 4 ++--
 drivers/staging/i4l/pcbit/edss1.c  | 2 +-
 drivers/staging/i4l/pcbit/layer2.h | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

-- 
1.8.3.4


