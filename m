X-GM-THRID: 6264247085046956032
X-Received: by 10.31.157.213 with SMTP id g204mr24763505vke.14.1458595203087;
        Mon, 21 Mar 2016 14:20:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.135 with SMTP id j7ls1187381igx.38.canary; Mon, 21 Mar
 2016 14:20:02 -0700 (PDT)
X-Received: by 10.98.14.21 with SMTP id w21mr24745531pfi.7.1458595202732;
        Mon, 21 Mar 2016 14:20:02 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si4089289pab.0.2016.03.21.14.20.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 14:20:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n5so32113783pfn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 14:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+SJ5M+vfgRgNGFOxhGdBU2fFN3iJiAuk+h+/5NQKCcY=;
        b=KhlTs16xD/RBbZNS9aEc4lC5BGT6EVhBA7kUXQx85i73f6lNgs3ytBb+BKXJ8oiyaM
         O5iniR3wn6CAamSztR68gzlxJYHEzpNkJcLucDPtcb/cfWvaeJ83GfjC/dIZ/2IVRSKJ
         Aor8vthcyOPn9IjXwyUDA57eGpDx9ElZbHW/DGTovwtCBIXYvk/eRFw2C1Frc9t3/z4J
         IZIITSbY9P/bbXGrBFu0StftzBjB6uoFV8YaaLM4oiRLHUhS5tIF2soENBAk4HI9wHHU
         eYAn+tI3gnftRHTu8j0aKqh7C3pgfm9vaHUntOt2Os4J6KRgpmvJrvcmPsMkhN12MnA0
         G74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+SJ5M+vfgRgNGFOxhGdBU2fFN3iJiAuk+h+/5NQKCcY=;
        b=VMjAxGD6YD2nzY4TJ5ErTx/Yy478A7CxVKBYxbq7xr2UPK2HFC7QzUdGGJUtvnUsDQ
         AajOKcAdcqxBk6IhxAnwXlRjJNOtXBzq8jCgEJB8qaKOlVuYVROaUjoO+q8t1GY0DyoW
         hysobAKzfSNxzdt1x7voh4ibvhdh6+pAoJdQZhz9CVBzXZzMtLaG0BHLUFVYOc3HZya6
         ft6DoweGhRepQDv7FTLct1rzwAxZUQaJ3tLjkPYs6Sdm0s1IfGX1huqItyp1eHjYIpxD
         gHGR6/iuoe32so7pmtLu3Y2WGt1O7stsmOXlXLvFZetvAY3CQUvvKrhcfChxY4PQlmEF
         Cd2Q==
X-Gm-Message-State: AD7BkJLZB7Z6lwmLDf9i8A+fB8K1gsl+1pbKYr65AnuCNg3zEKvz6Af7p0TAuZK9cnd14w==
X-Received: by 10.98.69.84 with SMTP id s81mr47923607pfa.125.1458595202604;
        Mon, 21 Mar 2016 14:20:02 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id x18sm42867206pfi.42.2016.03.21.14.20.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 14:20:02 -0700 (PDT)
Date: Mon, 21 Mar 2016 19:51:12 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/3] Staging: lustre: rpc: Use sizeof type *pointer
 instead of sizeof type.
Message-ID: <76c8444c410c148c89a8e76d8ef0dbbf486d2e8f.1458569051.git.bankarsandhya512@gmail.com>
References: <cover.1458569051.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458569051.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use sizeof type *pointer instead of sizeof type.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
changes in v3:
* Adding changes of v2 to each patch of patchset.
changes in v2:
* Correcting the commit message.

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


