X-GM-THRID: 6332335989632008192
X-Received: by 10.66.221.70 with SMTP id qc6mr5723532pac.17.1474361864193;
        Tue, 20 Sep 2016 01:57:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.177 with SMTP id 46ls1392174oth.38.gmail; Tue, 20 Sep
 2016 01:57:43 -0700 (PDT)
X-Received: by 10.157.45.115 with SMTP id v106mr893371ota.45.1474361863761;
        Tue, 20 Sep 2016 01:57:43 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id e66si2258873pfk.2.2016.09.20.01.57.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 01:57:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id oz2so652987pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 01:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=x+EDG6KhLoTLpRTRqrOxQcGBZOXC95FukRKYvfQVOxc=;
        b=ocUmc5P9g7U7PFKfsV2yFmwnT10xQw88hntHdC2mbM9rVsgJHpj2lCv40iwtxaciZ1
         WwH9pmsKFbHZ2Astp0eIYvPQq85mFAJ9N4YfpYyygfu8dLdZF3kYFQAr53CVtu2Dguet
         eSziFhRt70RiBtJwPCZv9wjuBdzFOgeX58O8sg0OaYaFn6PyTXiJA98UdRPI6+dU9w5b
         KKs8GgSjrk7X23WggVpss/OcuSzl7+0wKGz+TQXpZh87ZqyYBpXWUsGk9WpLdeBMOUjY
         NbsCfMLS43YsPylgE5rbSVKi8+rR3ENTE1xZQg/bAIVT+TEouNAct2g90vfqps6Xzq3C
         qqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=x+EDG6KhLoTLpRTRqrOxQcGBZOXC95FukRKYvfQVOxc=;
        b=m2atH9IXv8nwizVeiqWNj4S4YD0Ct2jRgEqMhu2JMWVNk8XMOoEgHHhCy2qyswyJf8
         9hmWwtkrX0KjxcLzmf5nEduulGoJJ7vVqMJTXeYFCgt+rnR4ya3Yyvn9EVxzzCI2Li0h
         q7g8Hg/YPTBpountHSRHJ/dyQ863PmHhL8nSwpHUb3ZgiTjqEc03CWz9RQOVkJRHCELX
         pSa4coh1ENHKDexdbQtMRyLr+gWi/nbHFxVOgdIWIyMR8UMA11RVCd5zB9lNIxsDfFUF
         mJIJGRmy/+5PukCiumeCCiVFYvxSVpKbRze+WpO02laxEE6e4gN0+g6pZQNWw9ViNcqO
         U84A==
X-Gm-Message-State: AE9vXwOdpCQbF75/3bypcE4r+mETCAasXwKXUkpDjsO5emRLb1qeip44zb1DrvbNeyB0jA==
X-Received: by 10.66.254.10 with SMTP id ae10mr54356604pad.26.1474361863558;
        Tue, 20 Sep 2016 01:57:43 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.179.109])
        by smtp.gmail.com with ESMTPSA id 27sm36274679pfr.29.2016.09.20.01.57.41
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 01:57:43 -0700 (PDT)
Date: Tue, 20 Sep 2016 14:28:25 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Subject: [PATCH 0/4] Staging: Use !x instead of x == NULL
Message-ID: <cover.1474360939.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL. This patch was found by checkpatch.

Sandhya Bankar (4):
  Staging: rtl8712: rtl8712_efuse: Use !x instead of x == NULL.
  Staging: rtl8712: rtl8712_recv: Use !x instead of x == NULL.
  Staging: rtl8712: rtl8712_xmit: Use !x instead of x == NULL
  Staging: rtl8712: rtl871x_cmd: Use !x instead of x == NULL.

 drivers/staging/rtl8712/rtl8712_efuse.c |    2 +-
 drivers/staging/rtl8712/rtl8712_recv.c  |   12 ++++++------
 drivers/staging/rtl8712/rtl8712_xmit.c  |    2 +-
 drivers/staging/rtl8712/rtl871x_cmd.c   |   22 +++++++++++-----------
 4 files changed, 19 insertions(+), 19 deletions(-)


