X-GM-THRID: 6478777723718205440
X-Received: by 10.99.122.1 with SMTP id v1mr774614pgc.59.1508457987513;
        Thu, 19 Oct 2017 17:06:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.129.70 with SMTP id 64ls2183539plb.3.gmail; Thu, 19 Oct
 2017 17:06:26 -0700 (PDT)
X-Received: by 10.99.3.8 with SMTP id 8mr782424pgd.20.1508457986467;
        Thu, 19 Oct 2017 17:06:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508457986; cv=none;
        d=google.com; s=arc-20160816;
        b=mPnEufL33Q7VkOZEUtViYUCRhhF7iI5/zA/Yv+nWDru/8odfj8nQYbmdPhqU8Ev+J3
         bGOwLw2+j1k53LGYdURIufXANmRuuIZ365NU50yzFv561UWQJ24fBHO9C5FVN0Pwef5r
         Iu4dZzYwq3AA3vawRSd0Ky6J3H2rdeJvaLdTTin45QfXQBqngxzMapf+Gi4QC5I/75PJ
         uOaMEg6x0L9jj60cfhegMSFDawyrtvQAGbjvZjU8bct5xzibMXcZwgNSKusi2UdcZuYe
         ZK3uwWvZffYQnWp+Ah6K7M1MiN0GOffG27kBIQDoUEq6nU+hRp3CpbXJhdPyXrkQg3KI
         n+bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=HKbjmXt/1vmkUErgo/3kS8BgsoJsCoXKqOuyiOXjvnw=;
        b=AnZFE0qKhGkkL8gNYWC/sXcOwwkLsWVgIIO5nXd2vSwjKKteRL5sTMrj7SxZhFlx+G
         3iQNWLcBsdxGhvkOO47l65VLmm7Q7ZCg3GWq/1si/jUi9IZenu62SNHqhLi8T1+UF/AW
         p8Ps/+Cgca4iPSdYYzTl4V2NpLyahCyo0KApgSZ1jKaz2+xc4BYY7Yu1QCEfEsyW+9Pz
         2RFe0jTJUcMaK02oVcW476UCh3bimmFi4VJpnIax1vNGzWzPg1coc4ql/s2NULgzJ2rq
         aTsugyLOCwcLIOZAwU+Em/YJLrfUaU2hPX8AizG5ZIR7Y4TiziQdDzaZKXGRhi/atQhQ
         E7rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=t+cXIDWB;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22c as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x22c.google.com (mail-ua0-x22c.google.com. [2607:f8b0:400c:c08::22c])
        by gmr-mx.google.com with ESMTPS id l10si777033pgp.3.2017.10.19.17.06.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 17:06:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22c as permitted sender) client-ip=2607:f8b0:400c:c08::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=t+cXIDWB;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22c as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x22c.google.com with SMTP id n38so7212654uai.11
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 17:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HKbjmXt/1vmkUErgo/3kS8BgsoJsCoXKqOuyiOXjvnw=;
        b=t+cXIDWBwM8rZlx0B0YMP9KpuV8SAwkQWcFR4+NATGA2iTL8X/Nu1RKc2azREjEGbQ
         DZIObGzY5iEx2M/4upr5Nto89IVl8lamI1f/HnfAM3wiF5z0wS6N4fzYDw9wDqYtQLi5
         CAEx1AuEpTxb8uRLba7n1rLAk36AKOOlj0SnuUWEYXmolmVPeAsvymiF5UwE6v3yCDD/
         19jkdUCpnpOIBIDnD72GOeluaPydFQrCTJh9q/s9mtAnw5UaRuedvs3LTHQQxIFsExuT
         onkycrVz5c/LC2JLhwmUfD0I17mOuIyk11+79tCfDGWdAm7bcnKnqZZwTdoDf3xGUwPQ
         9/Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HKbjmXt/1vmkUErgo/3kS8BgsoJsCoXKqOuyiOXjvnw=;
        b=JeFWovSHbVJBmh5/XArbSr8XQczWJOqDX9tJPtdM9DSsq4YaMKY6ZdOKfRFczjlrDh
         V3IFwOiyz6sAgmflVN8YedFWSJ8ZOtXgUjs6/aRsMevuF6PrX8lJAC21CAk/MT5XQBfi
         nlPwqubZL7Vee/8j9f50YW7ZRDFip/CEI3wpw0ccdkHHGAxdY8iMM3eY4ucrEyEX/B2A
         7Sxg6j2nhWpON+lfJfIIe+V36OG+/tnEYtAn9YNEGxBLW2Q9iOzu7IzUoQCPt2lbJJZS
         7ynwz4p+3f4+faPOxKNamfVbUbAT4xM8t6BGuRlwa4lBXg2UZlsPVsMUFl7IDclL7EAu
         o5SA==
X-Gm-Message-State: AMCzsaWDLfL79DRhOloVLqLKE/g+vRpmXWQJu6zPtuvnukKRF6DlY2mj
	AQknHEYX5G5NWPXNhde+f8JrsZv0
X-Google-Smtp-Source: ABhQp+R9GoEe4iWkDqo0HykognzijX5EbLIfP6w4m4r/D9XJ8EvA91xON51tlqUnL32jKLPLSZITVw==
X-Received: by 10.176.64.131 with SMTP id i3mr2659474uad.195.1508457985724;
        Thu, 19 Oct 2017 17:06:25 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id y5sm8987641uay.35.2017.10.19.17.06.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Oct 2017 17:06:24 -0700 (PDT)
Date: Thu, 19 Oct 2017 20:06:22 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: greybus: Correct code style issues
Message-ID: <cover.1508457306.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset address code style issues with blank lines, aligment,
spacing. Beside it change 'var_name == NULL' by '!var_name' and use
kernel type instead of C99 types.

Frank A. Cancio Bello (6):
  staging: greybus: Remove unnecessary blank lines
  staging: greybus: Fix alignment issues
  staging: greybus: Use u32 instead of uint32_t
  staging: greybus: Add space around ternary operator
  staging: greybus: Move logical operator in previous line
  staging: greybus: Rewrite NULL comparisons

 drivers/staging/greybus/arche-apb-ctrl.c | 37 +++++++++++----------
 drivers/staging/greybus/arche-platform.c | 10 +++---
 drivers/staging/greybus/audio_codec.c    | 23 ++++++-------
 drivers/staging/greybus/audio_codec.h    |  2 +-
 drivers/staging/greybus/audio_module.c   |  4 +--
 drivers/staging/greybus/audio_topology.c | 55 ++++++++++++++++----------------
 drivers/staging/greybus/authentication.c |  2 +-
 drivers/staging/greybus/bootrom.c        | 20 ++++++------
 drivers/staging/greybus/bundle.c         |  2 +-
 drivers/staging/greybus/camera.c         | 16 +++++-----
 drivers/staging/greybus/connection.c     |  4 ---
 drivers/staging/greybus/control.c        |  1 -
 drivers/staging/greybus/core.c           |  2 +-
 13 files changed, 84 insertions(+), 94 deletions(-)

-- 
2.7.4


