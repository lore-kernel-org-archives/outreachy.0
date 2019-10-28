X-GM-THRID: 6751912583325810688
X-Received: by 2002:a17:90a:a401:: with SMTP id y1mr616228pjp.118.1572275578917;
        Mon, 28 Oct 2019 08:12:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:cb0f:: with SMTP id p15ls1637864pgg.1.gmail; Mon, 28 Oct
 2019 08:12:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzK8kwSSH07G2QFyBhIX8p+Tcq2UsQw+/IFEqf50wDvPra0FJbpIzuGrCw4cb0vW5A7BiHi
X-Received: by 2002:a63:f10a:: with SMTP id f10mr22156814pgi.168.1572275577115;
        Mon, 28 Oct 2019 08:12:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572275577; cv=none;
        d=google.com; s=arc-20160816;
        b=Zqi8rQLGcDh16lP9zEbLpBJy0tcIiNQ4B17fpSW0OT3CmI1dgp0ntfdMUfApLpOALp
         YJx8sB5dvMdrS+s4wi/WrvuWbgOyCB8KZTWfXhQK8otngm0aJizwfynJjgACxLH8CwW8
         vWeAymZvokZcwsosribuyQcnLvFoXfpRtTHGALNJlZEDsuPwiK2PcVr7P/zlCk795R9x
         sraJUvSi5O/BbX9B1E1zq0iLTlHn8X17B26+XZ3S70iylBvvRJiOI1Ng5HXVO49aKd8I
         N17ZOnTz/5+pagYEf9I7dRX5Zz+5AkfuTi64KCIuPZReMWNLCgBfgBOOyinDYtmxLxcP
         ONNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Rj/mLsST/N2k9IF2aWftGlir972zQLwYBEZ8L6s+jBw=;
        b=W/u5ISYKf25gEyrUfeB4f11mFoT7fkxKcD8NXQA0nW8v+xrdxOgXPKLu3Ewkoy15mi
         HeIZq6JcKi8eiRo9OqpRJqco+/BsSGaH+7YsAYEEn/BRKIPYyAWrFkAsX8g8ksXFSFMA
         X3giQjIq23dX4HAjkohGytds/ATZ2h81tieCtfgjRPyxTyqB9CxOhoa/CQre6mDV2DdK
         sBvhYNNJw5oGfip34Mi8flwy6wzAkpn//KGcnF+Q8Vu9551+Jopz7LHlLGw9VxKElxZE
         DyEALX0d25ted7ZQmg3msSkXrMFf8jJiN66Wgg8d/AA5cifVqtt9wX1AI7CT//hph7OZ
         7tfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=djJHw5Zo;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id t17si4084pgk.0.2019.10.28.08.12.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:12:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=djJHw5Zo;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id g50so15069008qtb.4
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 08:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Rj/mLsST/N2k9IF2aWftGlir972zQLwYBEZ8L6s+jBw=;
        b=djJHw5Zorjm802K3vKcF1InAi67JmjRlPUHVD9hYRwO7h9q/nv5/d7AQAzNzO+0D+9
         vmvMgh2Nv1rP1nooWYv2dxFyTogwXdA6/zHiVgVDWZtRuq5k1VUG+fxDm63mXrvRue/s
         smqNeNozUi2he4kDToeOIJRmXH+ujjk+hEuyFf0f9YN5jopLFz5nmS4Z0KDtGWbhq2rV
         6pgz190FPmtTAxgAX/77Z7DrUy6WLpXEbeOF4uoGd7vn0sg3KMBwwnQkUZ0DcKiKor1P
         xemNWU+yvI2UlKpKVmmWkRt4bPXAKIYKsUNpCgTTI61vwiv1c9tKoYZBRvZiLMCLKOHe
         0F7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Rj/mLsST/N2k9IF2aWftGlir972zQLwYBEZ8L6s+jBw=;
        b=AahhJjifAjrADWVW6H/7SusN659eILas4AFljmR2jccvX67JLaXD2cxRbBAE/yz7L6
         tOj2Y8LznNGdHJfWbtyJOE62Cd8tyUjbUq1Scbnp2TArbueIMsaZNpIioqzZ1x85xsDE
         FOWsj+lvRAAIemTjYItn6KKr7XHcDkvXYTyIpKI7EeWksfR6/Yff291qSkQmALyFxlBN
         ZvLoso1uNU3i7qIVWmxivNNM0DkD/c0MyMDeQPVjZKYs0yzQXscMjuy4uYZJbPBiFffr
         JZJx2TNBOWjrxRgxpyhFavBXq+PVx6WNf+dUWUyRcdDROtEWCkghwkLKG9hH0dbvPEQv
         WrfQ==
X-Gm-Message-State: APjAAAXuQkiOaRRi7fbIh+hihH2wXFeTJNL1n6vvqyqd5tksqnYyzT1B
	DtVrA4BVTAxxwCpWMr6SI2aOMu1QHApzyg==
X-Received: by 2002:ac8:7410:: with SMTP id p16mr18315726qtq.62.1572275576385;
        Mon, 28 Oct 2019 08:12:56 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id u23sm3608098qtq.88.2019.10.28.08.12.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:12:55 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:12:51 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] Cleanup in rtl8712
Message-ID: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Cleanup in rtl8712

Changes in v2:
 - Arranging conflict between author name and signed-off-by.
 - Remove unnecessary parentheses.
 - Change the driver name to rtl8712

Changes in v3:
 - Change alignment of eth_type
 - Change alignment of SN_EQUAL
 - Remove commit of unneeded parentheses.

Cristiane Naves (2):
  staging: rtl8712: Fix Alignment of open parenthesis
  staging: rtl8712: Remove lines before a close brace

 drivers/staging/rtl8712/rtl8712_recv.c | 38 ++++++++++++++++------------------
 1 file changed, 18 insertions(+), 20 deletions(-)

-- 
2.7.4


