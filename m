X-GM-THRID: 6403000910945976320
X-Received: by 10.157.5.168 with SMTP id 37mr782835otd.0.1490814823819;
        Wed, 29 Mar 2017 12:13:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.204 with SMTP id h195ls5753318ioe.3.gmail; Wed, 29 Mar
 2017 12:13:42 -0700 (PDT)
X-Received: by 10.107.16.83 with SMTP id y80mr805696ioi.75.1490814822895;
        Wed, 29 Mar 2017 12:13:42 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id i189si913312pfg.3.2017.03.29.12.13.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 12:13:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so4080078pgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 12:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=s6tE2RJ2SP6DE0FNjpFH7B++/UjY0DMpIIvR0dgzfyY=;
        b=TTRHFoqj1o+P2DsDiy8PvjMlZnCxbKcPIry7vnUxoeGjDB9hCintkPE45jhnFALPST
         pTg7HvJNFZy8ZTSTnnOpL2oyJaSxnIK/BM2xfoWcm+S5sqpGx9FG6h7svJgCJFvy9hvn
         iEDBiMCVeJpPKwzRIDK9pARyYPGL5XM6n4Qo9tLR66Xjt/uh84JA0uFy/sYQPKZTkSo4
         HVT2jl8ymf1Y+XcyoFGVyiFW85VipL+qFUPb8MjErM5YscZO+QZhiK2mSMNuZ0CtbYoo
         ys6yAt3rs9TdqJq/C80qB/lBZOFGfesVpYOiAc/9JuKzLN/CQCMwRa1eZbhMQrQtLCBz
         6VSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=s6tE2RJ2SP6DE0FNjpFH7B++/UjY0DMpIIvR0dgzfyY=;
        b=aTGvvd78ZlPZmyG+GLrVnwKF3amWCfMav8sd6ayEaI4Eb2tGqMcKVYHlZcvfsaV9ZF
         WKjjKjShW0wDqn3swfQWlaHQaGpDdmm3SwaZsJIQaJcBlDbsaogi5kStNnPQetKipe7Q
         TP+fj2hqlewqkfttGUl3KN4t7cCB7jJKSrYoaho70PHDHTPO+AI1gK0Vnwm7Rpbn/wkj
         k3+lIUyqmuhi7GJyPv7BvPbOwEhQSpUVOMHRjdAZVPP0k/EpvWnvvnwTrfLd9nlWkV5g
         e03SHVi15C4qJSVny1yQMfwCmJsClMFtdxUwfajPT/k0AoFizn7/bZgpVJ/8tKW/uZl2
         4d5A==
X-Gm-Message-State: AFeK/H2WzLetRfUCwXOu6oS9BiNT8kI5MXer/4EsmSKl2taCJ6lcq/T+EcWffYr36l3WTA==
X-Received: by 10.99.209.85 with SMTP id c21mr2098316pgj.147.1490814822698;
        Wed, 29 Mar 2017 12:13:42 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.142.90])
        by smtp.gmail.com with ESMTPSA id x21sm14990680pgf.15.2017.03.29.12.13.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 12:13:42 -0700 (PDT)
Message-ID: <58dc0766.15cc630a.ea2e9.5274@mx.google.com>
X-Google-Original-Message-ID: <20170329191330.GA19933@<rvarsha016@gmail.com>>
Date: Thu, 30 Mar 2017 00:43:30 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	James Morris <jmorris@namei.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Patrick McHardy <kaber@trash.net>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	netdev@vger.kernel.org
Subject: [PATCH 0/2] net: ipv4: Use DIV_ROUND_UP and BIT macros.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

This patchset uses DIV_ROUND_UP and BIT macros to simplify computations
in tcp_bbr.c file.

Varsha Rao (2):
  net: ipv4: Use DIV_ROUND_UP macro.
  net: ipv4: Use BIT macro.

 net/ipv4/tcp_bbr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.9.3


