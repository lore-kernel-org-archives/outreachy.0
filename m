X-GM-THRID: 6465879632669310976
X-Received: by 10.129.50.18 with SMTP id y18mr15133163ywy.201.1505454920787;
        Thu, 14 Sep 2017 22:55:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.213.130 with SMTP id a124ls586648itg.3.gmail; Thu, 14 Sep
 2017 22:55:20 -0700 (PDT)
X-Received: by 10.99.165.83 with SMTP id r19mr14426346pgu.172.1505454920203;
        Thu, 14 Sep 2017 22:55:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505454920; cv=none;
        d=google.com; s=arc-20160816;
        b=HazNxnGbCk4mnRU14q6zS6KZitEBwgkhi7fzwuWMJXt5HOqfzj2I8PZ/7brqexiBpw
         i0ZZrNg3R7zoCJB7/u968hHEz6e9WckeBpftqD5C2PoDhAxMgqLmXqiWChGuFGTqRvji
         VexyNAo3RraJvfOGtMr9ITL6MDQSiRwhT0q3C74w5WJ4vMz6wEZTYGstCGXMp4Ops1nF
         vxCta7P5MpSbu/WSVaCENM+F46WYjzoBmKnXZai5LmZQ6ww7cvDh8/B/xuu9i9jy2UfH
         MtPOp5mAYMzFiay/wAPCNbJarjd5luaFWFmMDRZnpxa7dSSR85sJqfxaLE1bub+9iXiW
         OhIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=LxC7VcTYabaABXo1fYD51ltlASVNB/p3I7imX5dncxY=;
        b=Joy17O3JPTflDqgvRjPCflZJXsdXHMhKibm9t2EIbc6++1uscPBCaYpNkUmVp1Dmb7
         6P3CdDN1aa4lDYHxuY1tpiUTaYKiha+8ikNo/zTjt4GJA+DHtHBg2bFrcJO1asXNOe7/
         8GE8uymqgo/P5K6tTt8eMUs9xTNgnKOyG1UweEsrFLE5zOiAzRn7tLW3Ahny6IqlruHY
         iBdwViFKdxR8e3eGmYLP4wpcT8i3PVpAixYtvg6Be7pW8JWjffHm7zvEnG+GSQgmn8JE
         YO0A2s+wLIHrZ0ER1oOn6rsXKHBh5fhmlEAFaKSQjjUmHZMVx1CPh3iZ+3f5Gyh6FD1R
         qMeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sUV4Alzy;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id c200si12164pfb.14.2017.09.14.22.55.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 22:55:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sUV4Alzy;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m30so833376pgn.5
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 22:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=LxC7VcTYabaABXo1fYD51ltlASVNB/p3I7imX5dncxY=;
        b=sUV4AlzykxMvpizqvdBMwTMVD2i7qcBKWVupELQuJKZsher18MgYMA19saTIQ9/geQ
         b5FFajyu6/BX6z8rPl35GCEkP81RuYhlbzQE6fZmGmps9asWWZIjXj2OxOLvU8rAkIBd
         LT7ajAtHK7tEA09Y+q2omOZXWEeGvFDA03YHRyEezajnMYWDrMaKEqamzJZG4ygxJy23
         p03Jp1S6j1u3k548tjU+gVBqXWR8dznkqsSXFEz0wbbIrngrZ+XusFUpqwnsrneHFX8h
         XQh/6YZZ80AtFu/rZReDOIBPLdBcSKa2Mp8AsVCP8dvtf6k8bQxnltoSuCC65tglRGEa
         jomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=LxC7VcTYabaABXo1fYD51ltlASVNB/p3I7imX5dncxY=;
        b=BpYL9l9DC9f+Oz2hIBFwXfW4ZxxOGv2PWZx9HYBwwYNGz9SpyarFSoQsZqKOdY0euB
         y3c6AMlq14e6HmoNC4j4K6xVJvuRqeXboL8r2+lp53izuQQAuRPoOjTlfwPB4O3XoIgg
         N+3HoP9sE9B8URoFv5nHDMJ6rAWYy7ki6SGufDa7REtIZdVAYtuL7yOj6JrA55DOU6Eb
         3x+xGzSPNohYtypLAmpm0ckOrXkF9uYZDt1yDC6kABKO6BcpQBXfGk2PzfXL8PIhY2GB
         5CzpSgSd8u1dvDPYdya3Y16gOtWLUHpvy8jbpcrUf+xqo9C/BYIb0Oo2ugRW74hdpdIK
         p0Pw==
X-Gm-Message-State: AHPjjUhfJg0IIKcsmLRAYITrRT/xU3mmIkYPm2vhzuCxxYyP7SEdYweU
	sTxQO7XT0o5Ugg==
X-Google-Smtp-Source: ADKCNb74nLOioqJPDrLwVW/vi/zh187J3/NRQWpXeSRzQcdDYcZtnJXeOT3bKeTa4Y2ccqGYD4YRDA==
X-Received: by 10.84.213.150 with SMTP id g22mr27113934pli.313.1505454919972;
        Thu, 14 Sep 2017 22:55:19 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id c7sm536230pfc.55.2017.09.14.22.55.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 22:55:19 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 1/8] staging: lustre: ldlm: fix line over 80 characters
Date: Fri, 15 Sep 2017 11:25:01 +0530
Message-Id: <7a4f572cd9632dd0609f2daa545164f69e1ec0fe.1505454643.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
index 2cc6dc2..f9b4c0a 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
@@ -207,7 +207,8 @@ void ldlm_extent_add_lock(struct ldlm_resource *res,
 				continue;
 			if (ldlm_extent_overlap(&lck->l_req_extent,
 						&lock->l_req_extent)) {
-				CDEBUG(D_ERROR, "granting conflicting lock %p %p\n",
+				CDEBUG(D_ERROR,
+				       "granting conflicting lock %p %p\n",
 				       lck, lock);
 				ldlm_resource_dump(D_ERROR, res);
 				LBUG();
-- 
2.7.4


