X-GM-THRID: 6330251343295414272
X-Received: by 10.157.45.54 with SMTP id v51mr2995839ota.45.1473876494556;
        Wed, 14 Sep 2016 11:08:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.171.198 with SMTP id u189ls562223ioe.5.gmail; Wed, 14 Sep
 2016 11:08:13 -0700 (PDT)
X-Received: by 10.66.231.104 with SMTP id tf8mr3045075pac.15.1473876493559;
        Wed, 14 Sep 2016 11:08:13 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id si10si1613641pab.1.2016.09.14.11.08.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 11:08:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g202so1099938pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 11:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WPFhloMuwpmaICjp4gUeuE7IDcFJV/feAGFhYfEGckY=;
        b=jQ5kzl/s4HMBmvBzwZ0fNrMdOI0Bns7mAvv9VyUKBs5ULS8Aol1vH8Pqe3KvQ+kTSo
         awi0krOyeoP23OvfvE5b4qeMLISrDuOIPuJYJhD6t1O7h0Zz70cX1+S/oswfM96ZSHFr
         f3Ysn72QrNqKv4D7mqprbYic/BjadTnYBYuqPOE0/9P7X/28BXsgd2cFvWu8QH+IE0Y6
         5xedQ/cKovM/uuCmPuafYC7koQBD/AVJptFXcdW37lj9lfmimwOxb6l3X4m6Q5XvwCGY
         AJd+lenHrzCy/qeF0PSFuWkC+XPHrXDDGUj12izN/W0PQaCy7SUh5aLk2gBqEOoozA1N
         mhsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WPFhloMuwpmaICjp4gUeuE7IDcFJV/feAGFhYfEGckY=;
        b=lWocgRqnIfl7olmazkS33eqX/LdU/xGvn1PlRbrl++2KK8XxNtbqnRAHKKWnsMszcH
         0l4OYnc5GNYOzWWdBAD5Rz3ZxnQWIpNVjNuOava373iBFEcZ/gXwdzukU+UZyTissXJ0
         wNk1KpnJThXPLjYiUkEttWfAvmyJMaX+TvExupBzMwInJIy7Zmbpj9rwlclAuGnF/UfV
         fYPLsUabFLlIV73ARS0eB7+5ywhbQkbXyX4FR6zUh0gfW93ruU+prL5tsg7iMrvY1XaF
         Ehh22ra9X/SZCD/juCn7JPoXpoZYjqNSnZHQdR1P499vz8TZ0bwhz/vGJRlqo8ouAWSh
         ElcA==
X-Gm-Message-State: AE9vXwPgppvSml5N7tPR9FwV/UksFzNFhJrT523lhnVjxl99w4eYw3o0bNQbC0LkQZIZXw==
X-Received: by 10.98.17.144 with SMTP id 16mr6994583pfr.8.1473876493412;
        Wed, 14 Sep 2016 11:08:13 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id an11sm7037290pac.26.2016.09.14.11.08.11
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 11:08:12 -0700 (PDT)
Date: Wed, 14 Sep 2016 23:38:04 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: emxx_udc: Fix unsigned int to bare use of unsigned
Message-ID: <20160914180755.GA5066@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This is a patch to fixes up a
WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
found by the checkpatch.pl tool

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 39769e3..789bfb9 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -586,7 +586,7 @@ struct nbu2ss_udc {
 	unsigned		remote_wakeup:1;
 	unsigned		udc_enabled:1;
 
-	unsigned		mA;
+	unsigned int		mA;
 
 	u32		curr_config;	/* Current Configuration Number */
 
-- 
1.9.1


