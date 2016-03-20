X-GM-THRID: 6264247085046956032
X-Received: by 10.129.52.17 with SMTP id b17mr20526449ywa.15.1458508929876;
        Sun, 20 Mar 2016 14:22:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.46 with SMTP id v14ls757356igr.4.gmail; Sun, 20 Mar 2016
 14:22:09 -0700 (PDT)
X-Received: by 10.66.216.100 with SMTP id op4mr21481064pac.9.1458508929615;
        Sun, 20 Mar 2016 14:22:09 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si3051822pfb.1.2016.03.20.14.22.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 14:22:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so27224144pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 14:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fTlffxxF56MdVNDg+ZvDsmyDsXU157mHo68gR1vR3O8=;
        b=w1O8RLP8OhbmKLqCPTuXKDpmXVyUdUkEtq8L/ZaTpfOYnZOHVb7xY/7SWStI4901TH
         bL+tLv6+9AzFga9sYmnEx/Ek2q8+K4ozEgjikxg1qf578XsZ2uIgtdY8SqcvmN3xBc5M
         +rmLOIaTa6V+w+XdHoT3qOCb1wixNoRtFiYOgZNkV/7PcVuedIEu0fpc5F/vbFbrxfFc
         c0GyuSRW+1Z4V5FshuAYjqCt8HiBeXf20PeL7juj2rKEwrCWlaWRprdRcIN7rSjBMMmg
         FixfmKc7Bxrx8N2SiRN3wV/HhcTOQ2tvRSp8Bljgi21Yxhe/nPD4Wr8apgvXZe2Ubfkn
         jKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fTlffxxF56MdVNDg+ZvDsmyDsXU157mHo68gR1vR3O8=;
        b=kIG7hZvj22Inr8tZFkURFNSVcE5ZrUp45+mn7kbbQr6lQTeAXbKcOQe3PJd2R8UzFx
         qwhnc6nLfhvngE/QtZwz7O7LsWCrSBcC1xmAY1CdXramtCg7AIpcFLYWvWikwXCLZBqG
         3AxzqMrYS7pkAvO96943w8cJxyJNJMdP4iNrPOqtvwl71nkTjFUPucvi87WMFFpi7msC
         4jVDxv32FeJ7goDeQ4n1w8kL+JvcgwLbGvE0RV9c1Ogbv+aReQxovxqnf1g1J6kkZg19
         rnyTv1QmnRHmKpTfuiihaQR44vpcdfEX2igFFDammfW1hRRNBPnI22K9Es82EhUvJOmG
         RRTA==
X-Gm-Message-State: AD7BkJKATb9J++V40rjkFLmqeM8j822CIdcZ69mD+Zc9H5ZKWiujg30DulFemLYW9dfXbQ==
X-Received: by 10.98.16.210 with SMTP id 79mr40185461pfq.69.1458508929492;
        Sun, 20 Mar 2016 14:22:09 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id yj1sm35411369pac.16.2016.03.20.14.22.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 14:22:09 -0700 (PDT)
Date: Sun, 20 Mar 2016 19:53:17 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: lustre: rpc: Use sizeof type *pointer instead
 of sizeof type.
Message-ID: <76c8444c410c148c89a8e76d8ef0dbbf486d2e8f.1458482776.git.bankarsandhya512@gmail.com>
References: <cover.1458482776.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458482776.git.bankarsandhya512@gmail.com>
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


