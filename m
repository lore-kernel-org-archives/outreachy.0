X-GM-THRID: 6392947471116402688
X-Received: by 10.99.101.65 with SMTP id z62mr5549954pgb.153.1488480868792;
        Thu, 02 Mar 2017 10:54:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.33 with SMTP id z30ls7249665otb.29.gmail; Thu, 02 Mar
 2017 10:54:28 -0800 (PST)
X-Received: by 10.157.66.1 with SMTP id q1mr5578820ote.47.1488480868391;
        Thu, 02 Mar 2017 10:54:28 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h79si1663219pfh.2.2017.03.02.10.54.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:54:28 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so10143224pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rPFPp2tUK2OM8Rx9ldvu+PrHfyjQUqpT9PJ2VStYrnc=;
        b=gm8Od0eTURH4pEDWWQe4mbfm3TsWFbqq8nB8hXEloc2zxultjUKTrrjNgCuTfQA0wl
         VZlm89I+E46DYGPmncyiGg7sYUF0vLFwTizACCgwHa9sl1daecx24e8TZe1xyAGflHGS
         xJc0yqklk9VnfRdIE5OzU2cPm30crAu46xzl4M8xghKx/qPl0H+pZYJsAW8aFMTYPrJY
         m0jxQhzypcQEWTuLbozR/dtKEC3JUlHTZm1Ia9dsnNxrlqK5BqrhVtYFQVhumZEV48uD
         rxtymou6Z8dUWLtvQx+MRDwUZktj9Nv7jAVpbgYcJ1yDqRoi1xeZQJl/UJ4JW/VUU+Os
         e/wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rPFPp2tUK2OM8Rx9ldvu+PrHfyjQUqpT9PJ2VStYrnc=;
        b=JEtugKqsUCREtOyTRORu4bZhbwuawUfXaxmpKuLDJO9N/VlBUgboG7o6CNkwmrYJ+9
         VEk2Z8tNzRvb/UO1arVKIWaDlb/IV2b3Z5b/zbyM+uawPYWmK3zuvn06H1iaWZRhsFoK
         c+MZ6UjYEiyQeFus4dOvLzmR1REmkdeoL/DwiTrb2bAHm1UbeETqF6OyJ8a1OsDnw8of
         5TRKlqRnTJJwYm5GvoIWQKVG5ILS+RQ9YH0nLrRBRrkX7cixzAhowMuiKPq05dimNhSP
         pqNrkNWJEBVcBub78fw60rsxdaFPzGk4arthAuPzUC42v2JbciaNgnVHuHhv5/niPYvU
         OgZw==
X-Gm-Message-State: AMke39ko2DRYZlBqWUppDfYVDtD2jUYyhhw7tWTolLSPHpKYG4aoMJLbWoWhrUTNYhppoQ==
X-Received: by 10.99.177.6 with SMTP id r6mr17071107pgf.61.1488480868119;
        Thu, 02 Mar 2017 10:54:28 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id c195sm18513347pfb.60.2017.03.02.10.54.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:54:27 -0800 (PST)
Date: Fri, 3 Mar 2017 00:24:22 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 0/5] staging: bcm2835-audio: fix multiple checkpatch
 warnings
Message-ID: <cover.1488480443.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple code styling warnings issued by checkpatch on file
bcm2835-ctl.c in bcm2835-audio driver


Changes in v5:
	-Fix out of place commit messages
Changes in v4:
	-Refactor commit messages
Changes in v3:
        -Merge two if conditions
        -Fix subject of patch replace printk(... by dev_err(...
Changes in v2:
	-Replace pr_err with dev_err

Aishwarya Pant (5):
*** HERE ***
  staging: bcm2835-audio: remove space after cast 
  staging: bcm2835-audio: move logical continuation to the same line 
  staging: bcm2835-audio: use kernel preferred block commenting style 
  staging: bcm2835-audio: remove extra blank line 
  staging: bcm2835-audio: replace printk(KERN_ERR...) with dev_err(...) 

 .../vc04_services/bcm2835-audio/bcm2835-ctl.c      | 23 ++++++++++------------
 1 file changed, 10 insertions(+), 13 deletions(-)

-- 
2.7.4


