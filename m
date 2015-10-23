X-GM-THRID: 6208838944103071744
X-Received: by 10.129.82.213 with SMTP id g204mr17026373ywb.25.1445607967148;
        Fri, 23 Oct 2015 06:46:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.2 with SMTP id c2ls718305ioe.64.gmail; Fri, 23 Oct
 2015 06:46:06 -0700 (PDT)
X-Received: by 10.107.26.84 with SMTP id a81mr17535467ioa.6.1445607966364;
        Fri, 23 Oct 2015 06:46:06 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id fa8si2284879pab.1.2015.10.23.06.46.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hk11so119211438pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 06:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ufFM8CL6hUl86cRnSCWQIFXRA7F0JB91qqjhjS1PK5Q=;
        b=dCIGaX0KjYVIz3gKvDV+/9u7KPbP+9zxmbyBGBiIMe5HUDlQWkXZ2d/pZy1Ud61ZUW
         DR+b+UiYG2NwTdw3Wcaqv2NXs3+0jhxFfUNTNS+ephYblXtfyZnbBrcAwmn1qxidw9WX
         G02MI25NA2dsMyCg1QTAvJDO7uUDx24nCduhatg9668F2hjn4217FEu/Jdf2msvbkkz8
         FAxxk2lzG9PU7rlyBsFwLnTvax+l00JIlGy7QT5V2dJcP48NdI1DHF7UhEvA7Ii9lweL
         K9KmKAerVCotlDTvxab/X40HHPLV6ePQYh3huxvB6j3FU8ltJW9mHwjYFpWscZPSfpAX
         /iRg==
X-Received: by 10.66.164.161 with SMTP id yr1mr5041372pab.62.1445607966256;
        Fri, 23 Oct 2015 06:46:06 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id fx3sm7244574pbb.60.2015.10.23.06.46.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:46:05 -0700 (PDT)
Date: Fri, 23 Oct 2015 19:15:55 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Remove wrapper functions and neat up code
Message-ID: <cover.1445607754.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Unnecessary wrapper functions are removed and their calls replaced
with the appropriate functions. Also, unnecessary braces are removed.

After applying this patch, code becomes neat.

Shivani Bhardwaj (2):
  Staging: wilc1000: coreconfigurator: Remove irrelevant wrapper
    function
  Staging: wilc1000: coreconfigurator: Remove unnecessary parentheses

 drivers/staging/wilc1000/coreconfigurator.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

-- 
2.1.0


