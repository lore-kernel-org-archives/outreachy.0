X-GM-THRID: 6615617908563247104
X-Received: by 2002:a62:4b91:: with SMTP id d17-v6mr24878247pfj.8.1540318575193;
        Tue, 23 Oct 2018 11:16:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:568f:: with SMTP id h15-v6ls1883422pfj.3.gmail; Tue, 23
 Oct 2018 11:16:14 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63k7KxTvTexk01G625LHnMj81ox2UFR5X6uLlo+oHWlVsDpgopfOKb0eW+UtfXD4TILc9Fx
X-Received: by 2002:a65:6544:: with SMTP id a4-v6mr14190773pgw.22.1540318574339;
        Tue, 23 Oct 2018 11:16:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540318574; cv=none;
        d=google.com; s=arc-20160816;
        b=l2JxvaRq/2Bc6ThSEDWkOiCoZa1b4x7BGnOSw2eWvtXagbYgILcFq/ORtIcYuE8EOv
         CM+nYR3VgTylF9NEbpAFzKnrEBFsjKzYp4+Zhd+EstOsvPmlhpqLhvN/OUjQV8RqRs4k
         ei5MBAm9nJIdkQjPci2NCLd1IoV5PJYrWU/mdSg/2T+I7CuTU0gHvhJY1+TPJpxn1u+0
         UvUFT6hvejcudCBRUWgYEZLuxuY7dxM9FUOpsmSqvELI5bFGjZSysJXRmd2uF8J1PLGY
         t6u/GdDQJzk12fKVeNyNH/qlJSvViXb+iWDaXYi9fVzCRKFZ+2RIdPzrYS78XxkTip0e
         VYqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=7XqbIfbIdqNwbZ1IELpVvd77UJOsWtvebHFoZIL/ZMM=;
        b=xBWatxVWM7P5HjsCa5drDU5wq/zf1TZ7C9PYNeWxX6UCrEb6AJJGM1qdrLr6mEY0qy
         svDvVWMN8ptVRTP8vdACuO7EEmUbj0+JVtGu1gp68YqjbcQBGBkYHOdKaKmftRGL5PqB
         yt5F3GWRZv8NnfZFKxMA1mSQE62VmZhm2IjBD2jSwlBZigkMtJoj4hfNpwUogTQRO5H8
         CT1aIo2YfDYGPjTTLTzRDYezen5hmrznK+qrVxdeW+6ZI8unJ7tO4M5sRavGMAisAA0D
         yc5U8FDBWzEx/4UCZd1ncTK/jBYm240C4KqnkDF2XXnfYYFERVjvTly0w1BE0sHXWOk9
         nR1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jQ5Oi1Os;
       spf=pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=turnerzdp@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <turnerzdp@gmail.com>
Received: from mail-it1-x142.google.com (mail-it1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id b84-v6si133779pfc.0.2018.10.23.11.16.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 11:16:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jQ5Oi1Os;
       spf=pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=turnerzdp@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x142.google.com with SMTP id c85-v6so3339910itd.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 11:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7XqbIfbIdqNwbZ1IELpVvd77UJOsWtvebHFoZIL/ZMM=;
        b=jQ5Oi1Ossz+6HjiLABMFembS4q2eX8sO7fRo6GUDDZ34b1hqidwrKD9SyDhL4/6d72
         vJNFO1CfZbiXuQe0pZkq48vruyRE7kml/wGXr8Yrohghbpb/9bcTaOEPZ7ZBHmo/gcNd
         R/BP+5XvTtXzaA96gKv0Dr2mCb3MEKlYf1D98KmH17F4beun96/0uyi8TEZ7grRn0AmQ
         9AJX6deyrVYq7CEjJbPZ3Mu5D4vdrspnJRaaK6EQxLEVSTOr6hrrFnQ9BpuFT1QQ74mF
         m6R2P0br9byIYkmHsyRb4jTkRsSShqHTW+Q/0dYbFG4xbAU+XgYZjXUxdAr8ftVj+XnQ
         EL/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7XqbIfbIdqNwbZ1IELpVvd77UJOsWtvebHFoZIL/ZMM=;
        b=cUYUTKejT3lu1RZXHOb7kKfXM1fiDn6Oby+6rhLUIGCda0H5gR+pNuZU4skpp2ROIH
         ETuzu2zzW6v9L5azMTrD5/O2VEgFAwmENqRoAbKbBTZdue3fgsmiEStoViuofYvP9RCZ
         0T68DtHCiWo+wFt769uBd415mOGwXa9GfLYVjdsjF3YvYE9jRLvnJLi3hKC7RZLZe+ar
         qFtDJxdK4kT2Stq7hhOHwAs2EpU2x03sj+1SbY4wDWt92QDWsSTh3oruz8uYkGq7j5fH
         GdFxj6/I/WWlIwFgAyxJH3hZcV1KhXIyVQ3Yqj2f0MsdRNsZXg52aMPMNc6kUrIiWZM/
         gvhQ==
X-Gm-Message-State: ABuFfoinFS66TN+A/WFa5B9l3li2zS8XAXQsRdGUlL1uECzt7tja9loa
	MjYR02Zte6OJOYx7WX08PYUZ9hJcksw=
X-Received: by 2002:a24:83c1:: with SMTP id d184-v6mr13041446ite.16.1540318573464;
        Tue, 23 Oct 2018 11:16:13 -0700 (PDT)
Return-Path: <turnerzdp@gmail.com>
Received: from venus ([2601:285:300:e6d0:b8aa:85e3:42c7:79a7])
        by smtp.gmail.com with ESMTPSA id k5-v6sm1003941ita.14.2018.10.23.11.16.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 11:16:12 -0700 (PDT)
Date: Tue, 23 Oct 2018 12:16:11 -0600
From: Zach Turner <turnerzdp@gmail.com>
To: gregkh@linuxfoundation.org, hwentland@gmail.com,
	manasi.d.navare@intel.com, daniel.vetter@ffwll.ch,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: add braces to if statement - style
Message-ID: <20181023181611.GA27860@venus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Add braces on all arms of an if-else statement. Check found by
checkpatch.

Signed-off-by: Zach Turner <turnerzdp@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index bc45cf098b04..bab2265372bc 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -377,10 +377,11 @@ static int rtllib_ccmp_set_key(void *key, int len, u8 *seq, void *priv)
 			data->rx_pn[5] = seq[0];
 		}
 		crypto_cipher_setkey((void *)data->tfm, data->key, CCMP_TK_LEN);
-	} else if (len == 0)
+	} else if (len == 0) {
 		data->key_set = 0;
-	else
+	} else {
 		return -1;
+	}
 
 	return 0;
 }
-- 
2.17.1


