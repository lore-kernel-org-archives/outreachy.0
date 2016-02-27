X-GM-THRID: 6256120108487278592
X-Received: by 10.112.170.7 with SMTP id ai7mr853647lbc.1.1456616792914;
        Sat, 27 Feb 2016 15:46:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.210.210 with SMTP id j201ls142037wmg.33.gmail; Sat, 27 Feb
 2016 15:46:32 -0800 (PST)
X-Received: by 10.28.63.19 with SMTP id m19mr413007wma.0.1456616792519;
        Sat, 27 Feb 2016 15:46:32 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id 141si402718wmy.2.2016.02.27.15.46.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 15:46:32 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id w11so473211wmd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 15:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=srxAxE/zUEVxoggF46sg0x3KL36Q3XgS2F/d0WxGgTk=;
        b=eVoIpvxpfglEruvAzldoSO7rltXceNzLIzxA98w8YMiiE3Q5iA4Szd/TII7BfKGiZE
         pf75IqUihY2NMW+2K+0fLbYg/kRQZ4G4u/1Lg6ZQDOywbDiUYm/FwGBFZLt0izQ8+f7u
         6//2VDhNQTxMlG/oM03iMRO316h7efWnQok/v6NfUB6Q7xr/Mrp6GVwmS+xEM9xsIB1p
         QVUZTi9XR30FubFYjRt9Yc/20BCeJO4AL3yoy/siBSpMOlVy7F1g4Z+n1L9o86C80OID
         ilDY1MedmLAgBH8n2s9SkGVhgcZSe4zyNObyfk0TEHimHZscJOB9Wan8gq9sUtR/Gf63
         LdHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=srxAxE/zUEVxoggF46sg0x3KL36Q3XgS2F/d0WxGgTk=;
        b=KAcY0VW/Fv1GTTnpNi8Sz3MMbUmJhStJdGYNggmyJYfs7PlRvUa+Mk1cxcw5a3eJqH
         H8rLAL2wlIoOz/kAASRxb56joJswbcOdIPbF3Tsn35FwvuwTcXUBKHw2tyZCfNgLk7PT
         UcD2vwzL7Tnol//1qlp6L43W3qkxSI1igp1z6Bcqn17Hynetwc4g53+hY3ulyb+W3Kqa
         dh40TB+iuEQI0RfMwxsE+pE5FPNwVJCp67EH4MUjyqmHu4dkr5Uqw8WXCgriMMSS1dkg
         cMI8d6OOWgQVtgvouldodAuoHzwANAlxgRkgKdj8YI9sgnBp27h5yGd5tJE+FFDyBcKh
         M9Kw==
X-Gm-Message-State: AD7BkJKMsfktFagSAsJPnzlZ29fUdIuntAD/tOq7gc97jMJ65zschfPUpJZre8wxmhmgjQ==
X-Received: by 10.28.64.198 with SMTP id n189mr4242501wma.85.1456616792410;
        Sat, 27 Feb 2016 15:46:32 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id qs1sm18775736wjc.2.2016.02.27.15.46.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 15:46:31 -0800 (PST)
Date: Sun, 28 Feb 2016 00:46:29 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 09/10] staging: octeon: Remove multiple blank lines
Message-ID: <584a16f756ecce913c9b18e9910c8dc1a2c503f2.1456615452.git.nevola@gmail.com>
References: <cover.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid the use of multiple blank lines. Checkpatch detected these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index db04388..313c845 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -99,8 +99,6 @@ static void cvm_oct_free_tx_skbs(struct net_device *dev)
 						       MAX_SKB_TO_FREE);
 		skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
 							 priv->fau + qos * 4);
-
-
 		total_freed += skb_to_free;
 		if (skb_to_free > 0) {
 			struct sk_buff *to_free_list = NULL;
-- 
2.7.0


