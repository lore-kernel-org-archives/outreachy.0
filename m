X-GM-THRID: 6264920846730526720
X-Received: by 10.13.194.67 with SMTP id e64mr27057003ywd.17.1458665553700;
        Tue, 22 Mar 2016 09:52:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.4 with SMTP id j4ls4936693qge.40.gmail; Tue, 22 Mar
 2016 09:52:33 -0700 (PDT)
X-Received: by 10.13.248.4 with SMTP id i4mr27722064ywf.20.1458665553057;
        Tue, 22 Mar 2016 09:52:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si5094850pfa.2.2016.03.22.09.52.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 09:52:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u190so37161204pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 09:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uQ69Zge4SsV4HyQ8ThXvqvIT8jlpEWnXNWbnoSAMCds=;
        b=rucrULWYYrmcZUsCv/OiVrnm8RIYL1CkLX26QGXZt4PNO/uTwpfoMUp8Yjf9K2ml1P
         YdUNqWepbDXk4Dajqmgei8cttarsXw/IK2Kn9yt2DtiiFscRTASkDoWFoWKbsg/ljvXn
         nkhhA1TNCXEy9JqJ0soh4QiZbqfv/XIhJTHMHM9Hmm3dFJrlahyEV5mFF+EjtxiaZ62x
         9cswgzBhi1cC2u71ZCnKyMdgoggunsJnUnlETyjSWfkM6FceKmCOb6FIG4kgx1xvuimQ
         Rk7nrd+ed7qnS4xgr2RQjcr6PfglQaMiObHpw0dAhWlz1WfL88ldQs0hUxoJqJwlFqVu
         s3GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uQ69Zge4SsV4HyQ8ThXvqvIT8jlpEWnXNWbnoSAMCds=;
        b=FG+Xr37YsAZJMECk4KQ1zzWbykp4OAxiLFyk4N9qsWREJ0KrlDozPyS/sNI67md6ju
         ZrcTdaTZYPpNDjuLl6LZibsvUjGc3F/sHbm32EDwjR+tuDgEPV1wIKz3GnKwASOtZR80
         ZlpzOX+rtAM2mhW826+MS28TGh9LIKoNHg3ts1rpUJ2Mr9T9m5IpSDYFLgAS/LxmIQ/7
         G8ErYTqr6ba7tN68Gg4cldE4zNd9iVUw0bSiLAMxYQ7zvFS0dWWLHye6F3MKO4wMcDRD
         QcZApYTILcq2bNnWLI6xvvAtluoHvWkX97ptjuDij25+xxdeIvp4cc2KUMy6TM6wQHwY
         u4aw==
X-Gm-Message-State: AD7BkJI+eQJ1LEOR5g7V9k9kRBH5WB5YnlIbmEoHhVPmzuZ/rycITXdz7Mj0OY/ukEyoXQ==
X-Received: by 10.66.119.202 with SMTP id kw10mr55227167pab.110.1458665552849;
        Tue, 22 Mar 2016 09:52:32 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.172.252])
        by smtp.gmail.com with ESMTPSA id g6sm49577477pfg.15.2016.03.22.09.52.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 09:52:32 -0700 (PDT)
Date: Tue, 22 Mar 2016 22:22:28 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: media: omap1: Switch to managed resources
Message-ID: <cover.1458663865.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Switch to managed resource functions that automatically release data
when a driver detaches for the media omap1 driver.

Amitoj Kaur Chawla (4):
  staging: media: omap1: Replace clk_get with devm_clk_get
  staging: media: omap1: Replace kzalloc with devm_kzalloc
  staging: media: omap1: Switch to devm_ioremap_resource
  staging: media: omap1: Replace request_irq with devm_request_irq

 drivers/staging/media/omap1/omap1_camera.c | 68 +++++++-----------------------
 1 file changed, 16 insertions(+), 52 deletions(-)

-- 
1.9.1


