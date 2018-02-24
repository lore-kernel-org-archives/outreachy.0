X-GM-THRID: 6526024412200697856
X-Received: by 10.223.155.196 with SMTP id e4mr396364wrc.2.1519458464344;
        Fri, 23 Feb 2018 23:47:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.45.2 with SMTP id t2ls748675wmt.2.canary-gmail; Fri, 23 Feb
 2018 23:47:42 -0800 (PST)
X-Google-Smtp-Source: AH8x226ik9vlHfimdl6W5ITUcuSh49gpsm27gwLIFODS5WIAatXOE8nzgCZJnCxUq+gcFNlZhAw8
X-Received: by 10.28.210.85 with SMTP id j82mr448777wmg.29.1519458462248;
        Fri, 23 Feb 2018 23:47:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519458462; cv=none;
        d=google.com; s=arc-20160816;
        b=ZSw0Fw7rMHGpffB3e3m7J9PgPbnpwnftGfm8bwqYA6kid+S3d7IRQ+9HadckwKGaa6
         dUM3ChrQ8vZCZn3qzqYeq5QWECC9ogDNDga2EYDamvGb2scsLHfhDO+aOWjYUJismbAq
         dc27Pei1xn1Wa9cQZPUBvQobILax2K7ha+FOi+BjHG/dJj1T+Ub2fzoKQMiy8CX/hTg8
         ly7XqmuHaqJFg8wx1/TZ9tiKolTIzLToYp9w2KtgSTtyb1odY4r5CLXV7Unzyh5dS3Cs
         1xORSSgrtljqwhggpcjB0OVH3BI5jZWgqB5TwtH1zavN+DTYCmw8DHsIZm71MRBlrHu7
         ZnSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=puLCU8zAT0uSO002tg8bywwMb9I8xxMUpGoNxpXT7fg=;
        b=as91BmenhBi1mzbOHHt6r8U8TToMbPpbBbrExEiFaBs4rQFYk/uXLi322BzRV91SWf
         U+TUt57WiA5SWVD9z0ckYTzbIOPcU3A84g+ekhWLq24baHtvC/c7f4C099e6z8fNVy3n
         t91mAMk71wuU3thd4xRkoHi4w7N9DaKjPDnQaLYuWa2ECBdZE/bPzILyfJKw0EcH5gKT
         HFKLcrNqA7vhfQx+ywgBssMmWjQTV6IVyt7KKhjo6+uausi1mAX/e2z5gcCo4M7Dc8mK
         bKQ0zchj/3uOs7Pf5vYO4c4KjwhBLxxBfp1cEYBjg2i4OQKYEkPY8JT5tj5HTfweIjOQ
         crEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UhSqftcF;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id s81si150556wmd.2.2018.02.23.23.47.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Feb 2018 23:47:42 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UhSqftcF;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id 191so8395782wmm.4
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Feb 2018 23:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=puLCU8zAT0uSO002tg8bywwMb9I8xxMUpGoNxpXT7fg=;
        b=UhSqftcFTFCugrqw7ZjlH+kAC4lttU+ow+OWvkX2v9tWDfyk6sqm+Eh+g3zX5r6d8+
         hAcDxJiEDem9+qlgAiNW3BWq5Ne25SEmWAfwz7avA0+ksPKSNPZSWvX6h1EFC5CD7GAL
         EDu7tdWvcPvG/LKHTtmwKHYcVAK6QUzBphtmUNOp4mNuaobj4nKEI8rcSqsAzkJ6HSHm
         yva0LqFTmo2mCPeyeBN6+QnHYXQCz1r6ndMgoXsrvZlHhq+AUyUxPWLmFg6mWen6CLbm
         t9A++51OjZEupTwVSBna9yAZQohjpngvNJpy/49wagFk9c8o7gn+sfZGz9js7YxgWgLV
         0Exw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=puLCU8zAT0uSO002tg8bywwMb9I8xxMUpGoNxpXT7fg=;
        b=EqplqbkPAYc8IYluhT/GuGzDd1MnhCD0pav2p/FvQOVArv6QqABBbq0Gs165nQ61lV
         YH9OWe+VFTLo5R/OiItfgy3UeYqjdknj/DdBBa8DvsK83cgTA8+K805fF6xjJD04vkwK
         pl19Pq8PX7tVWlWJTE7MIDuK1Zfd93XaxbI/Pf4C5aolSssVWmb/OcCOV12pN+uKgiDl
         YdaGbFbPIuQ41B4uoktQVNFiI4aXj3u4o1fUoxq70Mj48rhWb+8joZBHmXAbO97Q2MfO
         KgPty+H2/b+rM3lmk8If9jHc2Tnj4Bk4/iuCI4+nANf33N37x5wARjYjm0OE9n8UkLDU
         loLQ==
X-Gm-Message-State: APf1xPCWz2aeFsQ5Xclp/AcsVWlyOdM5Ikg9Snu/NLYZi/h+pEf6Mnmt
	n00u0e1xRI+VRwTjRCC66fc=
X-Received: by 10.28.54.220 with SMTP id y89mr3891948wmh.138.1519458461825;
        Fri, 23 Feb 2018 23:47:41 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com (IGLD-84-229-101-166.inter.net.il. [84.229.101.166])
        by smtp.gmail.com with ESMTPSA id z72sm3542116wmc.2.2018.02.23.23.47.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Feb 2018 23:47:41 -0800 (PST)
Date: Sat, 24 Feb 2018 09:47:37 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: merge 'if' statements that test the same
 condition
Message-ID: <20180224074733.GA6487@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Merge the instructions of two 'if' statements that test the same
condition and move a 'memcpy' instruction related to a different variable.
Issue found with coccicheck.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 621810d..f6f2c7f8 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -962,15 +962,13 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 
 				priv->wilc_ptk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
 
+				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
 				kfree(priv->wilc_ptk[key_index]->seq);
 
-				if (params->seq_len > 0)
+				if (params->seq_len > 0) {
 					priv->wilc_ptk[key_index]->seq = kmalloc(params->seq_len, GFP_KERNEL);
-
-				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
-
-				if (params->seq_len > 0)
 					memcpy(priv->wilc_ptk[key_index]->seq, params->seq, params->seq_len);
+				}
 
 				priv->wilc_ptk[key_index]->cipher = params->cipher;
 				priv->wilc_ptk[key_index]->key_len = params->key_len;
-- 
2.7.4


