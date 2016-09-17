X-GM-THRID: 6331266648892243968
X-Received: by 10.31.124.7 with SMTP id x7mr3693399vkc.10.1474112946847;
        Sat, 17 Sep 2016 04:49:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.211 with SMTP id 77ls7491193otd.49.gmail; Sat, 17 Sep
 2016 04:49:06 -0700 (PDT)
X-Received: by 10.157.35.113 with SMTP id k46mr1469828otd.124.1474112946602;
        Sat, 17 Sep 2016 04:49:06 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si5048383pfe.0.2016.09.17.04.49.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:49:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so4581744pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 04:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=U4uokO+7nvoZs/XeRTZUCQhaoPn/ZtIKkmoO/ucLwW4=;
        b=a8BW5cRg6vQIBxE+aZK+Nw3pSnICyK5cLC4i1qwJQpNieG8kXGvolBcTXQ8Qv3TiyP
         C7s7ayEIGV8NaJ3Ib6faxFO2dUnKRMyhrqfPr2/VbUqGUY4+tsC1gPly/7ogwaxna+AG
         sLahe0IhfEG30g1abEss+kUjE6yqRs7YETe6w/kI8tv8LfDDksYr7GSqyhLPXzCOWEuw
         7YwYPcR+8o34z1pNDKLAABkUGEX2HtKWmn/bhkWcESL9Wdjyo7yUvHdAZDocbYbjs6Ff
         LI8nj/gNHHu87W8/YWICvBza2cAOvv1x0uD6aMGXeBdP3heDFpS1Ku4kmArVo7STASS+
         TRDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=U4uokO+7nvoZs/XeRTZUCQhaoPn/ZtIKkmoO/ucLwW4=;
        b=kDJqZxM2hiSJpRoMNQeRzFDNupbuN5SFwRufJdSFEo+Uz/yWrA/6dGvCAbcu/6Dm11
         sJRVzHiXWZKo0Xoe+JOBUUaJChy40lVs6XGpgj/mKrw9PfHa3CiJozV3FjMnM1lwxvJc
         XbUOpVm6azYpaXC6F5iZVibU7w9++ip9jFScDDsnVvNsz/ukCCZSQYWBOJA/NnEcOKIw
         F+N/WW9VJmWrhE7QVTla8QhBpMPWK8vyclTxTBrt8rAqiURNShqawLWX1AIWHNFVCbsW
         hrKm7ovO7bZMxH8JTcBnQVuudxFDBNvBZUoaUn4zFHTNNCSgKJzRCRrLpco+cFmK2N6Y
         wLQA==
X-Gm-Message-State: AE9vXwM0jk8tLRWXlGDtUgs0wWU/PUxK9aObsbZRHHbgL8kRc+lx3ClPBtpYVk4EejUB3Q==
X-Received: by 10.66.147.105 with SMTP id tj9mr18622390pab.42.1474112946452;
        Sat, 17 Sep 2016 04:49:06 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id l128sm58764694pfl.21.2016.09.17.04.49.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:49:06 -0700 (PDT)
Date: Sat, 17 Sep 2016 17:19:01 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/4] staging: vt6655: Break multiple assignments
Message-ID: <7452f9668c5132d600519456ac4f627ba94cad9a.1474108445.git.namrataashettar@gmail.com>
References: <cover.1474108444.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474108444.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Break up multiple assignments on same line to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index f109eea..86532ca 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -669,7 +669,8 @@ static void device_init_td1_ring(struct vnt_private *priv)
 
 	if (i > 0)
 		priv->apTD1Rings[i-1].next_desc = cpu_to_le32(priv->td1_pool_dma);
-	priv->apTailTD[1] = priv->apCurrTD[1] = &priv->apTD1Rings[0];
+	 priv->apCurrTD[1] = &priv->apTD1Rings[0];
+	 priv->apTailTD[1] = priv->apCurrTD[1];
 }
 
 static void device_free_td0_ring(struct vnt_private *priv)
-- 
2.7.4


