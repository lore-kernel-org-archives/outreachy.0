X-GM-THRID: 6249268328752218112
X-Received: by 10.112.50.108 with SMTP id b12mr412800lbo.15.1455021167797;
        Tue, 09 Feb 2016 04:32:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.46.199 with SMTP id u190ls589901wmu.49.gmail; Tue, 09 Feb
 2016 04:32:47 -0800 (PST)
X-Received: by 10.194.201.234 with SMTP id kd10mr3987733wjc.6.1455021167234;
        Tue, 09 Feb 2016 04:32:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id s132si573579wmd.1.2016.02.09.04.32.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 04:32:47 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id g62so3156631wme.2
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 04:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Kh0CQWZwN82s0UhWe4N0mPOZu4dHQfIhKiJ5uEswfkw=;
        b=n6GbujCkJBlQ82PEnpKU+PM31FR8qBWQl1ilcIOihBAT6uS1n/yJypCeb3ZWHUZpX7
         HOy3Lyxud/YPNXs6tEysb3ZTeA3N2nuIORx2SwsgD75rfM6hkQ+li2C/4U7JZOEf7nSW
         OvmSrisHJimpRAAvv20is7plGhjzaoP2c6BHQDqAzTvFJ6KEwDrDQkO3wsV4hSNhUEsm
         SpJQLdFL8ajMJ1ExL+stJdp9UbU7KchxhhTV4jokdxV1WBjneuRDJGLQA/iSg+z934dz
         7UtrealUYxY9efMZcRlwxrN8Zlb2YWlxc6tD0uX73cQhU32lJNlbmu0vg0/qU7lk0pGt
         R7VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Kh0CQWZwN82s0UhWe4N0mPOZu4dHQfIhKiJ5uEswfkw=;
        b=W4SgytK8mcz8/BXy2hN/8m4z6r7MeOvpie+h7QbpQ/ipYBZvBiQOjFTeMz3yuNam1n
         4ynUPOXaBUArnex2Urjz6kIwoU5j7LD5imMW7PWEENCBAfuWddOSAQQ9Yu+J3cBSBv62
         hYO/UIjL66lHqcw6zfosBQBtZSh1JHVkeugkND+6/IduB5An+l+7qZ3pk3KKGZlTu+qf
         abOC8oQS8B5ve0QwaGHHwMStBZ6s4JIyUcNAp4Nk2yer3bE35nS7FZpi11tesHU8FKcv
         SQFP5TSOfI1SuE2A/CJzG8UcY9jgL52WHhGjEcjg3QlOb7diKxjs2rh9e8uj2c7COnqk
         rt/A==
X-Gm-Message-State: AG10YOTLTCsM946BYZXBvleBO0rWiM3N7Ch5dTV79Rju7RiQ6udUHibXsq2KAvVMtnwQDQ==
X-Received: by 10.194.234.41 with SMTP id ub9mr33433951wjc.9.1455021167126;
        Tue, 09 Feb 2016 04:32:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneenVB ([109.171.130.212])
        by smtp.gmail.com with ESMTPSA id c136sm17268091wmd.3.2016.02.09.04.32.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 04:32:46 -0800 (PST)
Date: Tue, 9 Feb 2016 14:50:46 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] add dma mapping error and remove parantheses
Message-ID: <20160209115046.GA28219@haneenVB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fix check for dma mapping error, as well as removes unncessary parantheses in the same scope.

Haneen Mohammed (2):
  Staging: rts5208: fix check for dma mapping error
  Staging: rts5208: remove unnecessary parantheses

 drivers/staging/rts5208/rtsx_transport.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
1.9.1


