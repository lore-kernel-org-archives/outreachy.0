X-GM-THRID: 6251877540046045184
X-Received: by 10.129.116.214 with SMTP id p205mr22476133ywc.55.1455628865172;
        Tue, 16 Feb 2016 05:21:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.79.169 with SMTP id k9ls1885845obx.9.gmail; Tue, 16 Feb
 2016 05:21:04 -0800 (PST)
X-Received: by 10.182.56.233 with SMTP id d9mr21328997obq.2.1455628864567;
        Tue, 16 Feb 2016 05:21:04 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id l85si1807714ywb.2.2016.02.16.05.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:21:04 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id y9so133463659qgd.3
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=/R5ioydRGfZKdLcYPYljOVH01fKwvZpgEEUkZaxEVrc=;
        b=vatZ/0tbusv3PJcGb9IQxB9CMjMGR4R69JTrqi/dWfdn7xiRAT7z2CRQL/MSCjczZl
         4r3uO9MFkJdMUcRSKEJsVRhT/48MZwUg6vZk+XtseqpYcrixV71qfWuNSYRHWALMi5mP
         mftAB454vIJKakBA7D9B6t2WtUfazaoBp6mpNtXON+DCiKefq4e81ePRIsC24jlIQeDd
         FhFMhEfZi1gZfaHy/kTkb7XTu5XalMS2Ka8kG7efnJcct4V66Ny2wUgtDgPTCj/4GB2A
         sWG22zybjqUxUrmBNao/ZHo6QanM0JF3jNvy5OtkOtAFRc2kn3T+0Xo1fMgKBdQTA/6C
         ChIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=/R5ioydRGfZKdLcYPYljOVH01fKwvZpgEEUkZaxEVrc=;
        b=D2P3EBOwz8QZZIDRwffnaOveENZrkY+0bmv2cXQ+V9MOh7riTdl/BjnTgVJ2XHik+u
         Mj8MGeq5ylN5EJYIpsOHIzPr8QSA8xBRC0Y33K0Su3MROEc+lcpCj6Ghh1ja4g5H+0K6
         nPMTzbX3phQNV9cAgkxcLErjpsV5YkTIyxq6RVbJ4rzImnE9LqjBOvrPTIEIkT0h3hVV
         tOJ1ybyQcKVTTTaBUY6xrBArOqv8BFRu1wuc7WQc1dXihgeCdpe6OzQQ/recCuwyn+IS
         5Cy7JwLWHFSv7qDlMaEbkKMQhwoly5T3ATx7le3ubm7lEdz55rnKae7Po/6CSyzUckiU
         1qig==
X-Gm-Message-State: AG10YOSHwhrr5k7jPv1uZqSfKaSgHpaVk8bP7rVl2H0vq/XCytVMnBdLEBartdxSqwrJiw==
X-Received: by 10.140.20.39 with SMTP id 36mr26760779qgi.15.1455628864403;
        Tue, 16 Feb 2016 05:21:04 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id r21sm13165850qkl.21.2016.02.16.05.21.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:21:03 -0800 (PST)
Date: Tue, 16 Feb 2016 13:20:22 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-wireless@vger-kernel.org
Subject: [PATCH 1/3] staging: wilc1000: wilc_wlan.c: Modify return type of
 function tcp_process()
Message-ID: <49ebb18eea61eff1ad7c0c4183312ea7d25da46d.1455645880.git.janani.rvchndrn@gmail.com>
References: <cover.1455645880.git.janani.rvchndrn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455645880.git.janani.rvchndrn@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Change function header for tcp_process() to return void as the return
value of type int is not used anywhere.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index a396ac9..c3ca662 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -207,7 +207,7 @@ static inline int add_tcp_pending_ack(u32 ack, u32 session_index,
 	return 0;
 }
 
-static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
+static inline void tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
 {
 	int ret;
 	u8 *eth_hdr_ptr;
@@ -274,7 +274,6 @@ static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
 		ret = 0;
 	}
 	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
-	return ret;
 }
 
 static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
-- 
2.5.0


