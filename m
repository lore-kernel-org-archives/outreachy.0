X-GM-THRID: 6264247085046956032
X-Received: by 10.182.53.233 with SMTP id e9mr24698302obp.28.1458590495650;
        Mon, 21 Mar 2016 13:01:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.10 with SMTP id j10ls3623896qge.57.gmail; Mon, 21 Mar
 2016 13:01:34 -0700 (PDT)
X-Received: by 10.129.83.85 with SMTP id h82mr18731675ywb.18.1458590494785;
        Mon, 21 Mar 2016 13:01:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id sf5si4208302pac.1.2016.03.21.13.01.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:01:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q129so32441106pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 13:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fTlffxxF56MdVNDg+ZvDsmyDsXU157mHo68gR1vR3O8=;
        b=AQk/y337KB/AmBF45eGqQA56HLBsFJZtca4qWGFiMOLtcemBWY8BRSM8Vey/ZP/bvJ
         xps+C8pQIvuN5J4eHquGXYJLO8aZfwQ8PafhisaakQcCfSNZDOKvTBHtwlPC6fndXjID
         v3C1+ZiVRNILcBYSwMZ/NPzJhVCdRAE48XLFyPHZxXxt+HSas4ajmuwaZF8xP+2VHUZq
         fTrnWDd4L8wtOScNbALFBHMKSJfxFLFDODXhUPRnyzagy1kjx9i7c8r4793YdfLwBpoG
         VkiD8T2BFCs2CPVWREjghkzuVs0WLICbL3uCTx60JPLwC8uVY9JNEXFal1zftlNohc0u
         6mkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fTlffxxF56MdVNDg+ZvDsmyDsXU157mHo68gR1vR3O8=;
        b=mu1kFtP3WOG6cDFYtMTPOHVmnhat89SuPn3FbBBFOzcy0YsWuRw21OGoE2CuONpQWS
         i8AbxsdVX4xxfM4gZZ/JzxXVS066DqbAu9YP3X7nZeoSh61kc//K5Ne4dW/HbLOUqzFj
         xQRTXli3CW2/6qeWdVxj6odLN+QqDrA8ZF/hELovqBbScjrtpz71V8GCYD1EZ3d3evKn
         LDijI5psl86GAh0tO6P8HSKBIT0DegDqYMLyGQlKzFfR+rmkK/+ihS4aHpds16g1QrW7
         MTgC5mbgu3B/6zemPkF2AZ4i9ndyjFEt/t4eSWEjkewDa79TECMzma24iYU7QBAWEvRd
         8HVA==
X-Gm-Message-State: AD7BkJJWNB71oMC2v8dEIYRBMDhZ4NJPi/verrtaMANMEiXPL/oEvookAqKBX2/XP5GhEw==
X-Received: by 10.66.175.110 with SMTP id bz14mr48129889pac.41.1458590494615;
        Mon, 21 Mar 2016 13:01:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id q72sm42650644pfa.70.2016.03.21.13.01.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 13:01:33 -0700 (PDT)
Date: Mon, 21 Mar 2016 18:32:45 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] Staging: lustre: rpc: Use sizeof type *pointer
 instead of sizeof type.
Message-ID: <76c8444c410c148c89a8e76d8ef0dbbf486d2e8f.1458564530.git.bankarsandhya512@gmail.com>
References: <cover.1458564530.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458564530.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use sizeof type *pointer instead of sizeof type.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/rpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
index 69be7d6..563827c 100644
--- a/drivers/staging/lustre/lnet/selftest/rpc.c
+++ b/drivers/staging/lustre/lnet/selftest/rpc.c
@@ -256,7 +256,7 @@ srpc_service_init(struct srpc_service *svc)
 	svc->sv_shuttingdown = 0;
 
 	svc->sv_cpt_data = cfs_percpt_alloc(lnet_cpt_table(),
-					    sizeof(struct srpc_service_cd));
+					    sizeof(*svc->sv_cpt_data));
 	if (!svc->sv_cpt_data)
 		return -ENOMEM;
 
-- 
1.8.3.4


