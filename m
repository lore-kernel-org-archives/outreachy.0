X-GM-THRID: 6803435195586314240
X-Received: by 2002:aca:d446:: with SMTP id l67mr15697720oig.115.1584315672355;
        Sun, 15 Mar 2020 16:41:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:474a:: with SMTP id u71ls4986699oia.0.gmail; Sun, 15 Mar
 2020 16:41:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtiwe8mCySI09wGEpcGTHww3GWSSlHnXyHKY34kN1Ag4D7gz4sjGqlnfFDecU0VNlOsMrCN
X-Received: by 2002:aca:1201:: with SMTP id 1mr15934120ois.172.1584315671262;
        Sun, 15 Mar 2020 16:41:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584315671; cv=none;
        d=google.com; s=arc-20160816;
        b=AMiCVBEjLo87Zi6RhqQ4ED+gOZ7s5znXK5iyVeRhl0Lz4Wii69TT0gg2X7vS61IVv/
         tVxw2LMCC9F5QiuZMyBmPYjWFjTmpC2BM18ee8du9rYohnHPdQXtnz7vAjKdYYlFt6II
         VH7Y2tvyNnoW+P1Kq7g7580S3u7BHPMGVChFGmp65zLw8bWhV166PlgWiZWXrRj6xq3X
         rTBICEvcwp1GHBQU1vI1UdkThDqlc8NX2OoLJS11Y5Tw6h6zyHBhA4tiVdkKfrbFzZNR
         5sneWcM+A9wFk2RtaTQPmuygViFKQ0mVY83xDV/sfDKrJgF1YCFZkTbUcPSNDfOQvKKo
         ApLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=6IjMrF44gXdX9sWDzyM0HaClGGK8FnhAPwkL8NQtIjk=;
        b=NZ0vWdbsstd89ZpZzdbwBk/tqb+WAEqip9u0m+2eiYi14jTIH5t7sq5sHjdh0JelIz
         ovHN7+CryD3hYq8Myj/EJJBOZckFCyC+C4tHJ1WXjo+8MgzGLUCo7Xqf4M42JqEcck8U
         +6fUzQySqY3rdpk769yzhBUG9+ShlX4m8exZir8SF4gM0C2W+EELNgqVjqEQwDHMFQNv
         r7aZpXIyelJt6yVmbEsBT9qdBAkSRN/KSaFrcXSHOE+XZHuwyZPWPqY7cFUfZ789sR/L
         9nDkXEYyBWGZGaUqAUz3guQVMNkrnXZsyIG0z/rna7z0IpUtIi63HM2WtIF0my8s9BBL
         VZTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HBNRrPhY;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id b1si157013ots.2.2020.03.15.16.41.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 16:41:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HBNRrPhY;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id z4so2866879pgu.3
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 16:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6IjMrF44gXdX9sWDzyM0HaClGGK8FnhAPwkL8NQtIjk=;
        b=HBNRrPhYj4bdCZbv09UkKytQQnnpmqG2naP7sq6csEVdM2a5lzn/c5rJanczH4cUZr
         Ofasi8k3CjxlFO5ZNjDUuacz+WJ/5s7zj1sLU9OkbsPBbRMVZbv6VHeZgdnRb8kQq+BT
         bPvWQylmXJ+ioIIX3I6yFq53ggjQBM6p2S72PNVsifmZYOD6oYB11Yu4OsleRg+gY2oB
         7dD+jiPhB/AJTdbBF2Xh64021XCawXOHfwZnNgdfvHBSKTKGIHFR3p0hIyTlbrMc/0vC
         FgHCts+OFajBjVfdFkeOFcI2nGXT4W+0JSlVColuW/pStHWrWu/uzAx8nlAsif8irQ+j
         rPEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6IjMrF44gXdX9sWDzyM0HaClGGK8FnhAPwkL8NQtIjk=;
        b=E82f9wkbfFnZlqdHLDzAaQknknqClRLGowx5+oTgrivZ+LGAvtuKtqsSFHlmVOnd45
         2F/Q2oGzr1eOeZlEe6tgO79rjwZmZRfGsp35brqmmwlqZ4rbpEmTgn608lb9ImHZOy1t
         cGYi9/RyRZMvHGozd6YX8CdQfbttadLHYR778xWlC3jpZmwjtAHTd1tQVF1vhEedxsXs
         +CXD/gAlmxJ2CAOScRv/n7ohX+2B972KGLswx9nXaMSILlKq3SnWf7kP607XZTuTyq//
         rbvOMdwTWt3RPMRE7SLh3qZGIPW5tz4P9DlOZ38n/xk4vNDL9Dj7mgTXTrH0HyGL6fVu
         NBRQ==
X-Gm-Message-State: ANhLgQ04k+n1Uq+cT5bL8MBQe8YeZYejv6OlFlMzG892HaR9s2CWay3i
	+RmGcS6X8vLpFhXvHvgW5hjvZyUw
X-Received: by 2002:aa7:86d2:: with SMTP id h18mr4354566pfo.103.1584315670446;
        Sun, 15 Mar 2020 16:41:10 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.225.138])
        by smtp.gmail.com with ESMTPSA id i124sm17630268pfg.14.2020.03.15.16.41.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 15 Mar 2020 16:41:10 -0700 (PDT)
Date: Mon, 16 Mar 2020 05:11:06 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Subject: [PATCH 1/4] staging: fbtft: Reformat line over 80 characters
Message-ID: <027ccfa893feafc25da273b4b4de444d7a466cfd.1584314603.git.mh12gx2825@gmail.com>
References: <cover.1584314603.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584314603.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

A long variable name beyond 80 characters extends  into the next
line. Reformatting the line makes it more readable. Also adding an extra
line for the next instruction following current if block helps
understand it better.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index d3e098b41b1a..4f362dad4436 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -1186,7 +1186,9 @@ static struct fbtft_platform_data *fbtft_properties_read(struct device *dev)
 	if (device_property_present(dev, "led-gpios"))
 		pdata->display.backlight = 1;
 	if (device_property_present(dev, "init"))
-		pdata->display.fbtftops.init_display = fbtft_init_display_from_property;
+		pdata->display.fbtftops.init_display =
+			fbtft_init_display_from_property;
+
 	pdata->display.fbtftops.request_gpios = fbtft_request_gpios;
 
 	return pdata;
-- 
2.17.1


