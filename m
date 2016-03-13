X-GM-THRID: 6261369966950350848
X-Received: by 10.98.89.143 with SMTP id k15mr10252923pfj.14.1457838891293;
        Sat, 12 Mar 2016 19:14:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.212 with SMTP id p203ls1729349iop.5.gmail; Sat, 12 Mar
 2016 19:14:51 -0800 (PST)
X-Received: by 10.66.147.133 with SMTP id tk5mr12627812pab.8.1457838891024;
        Sat, 12 Mar 2016 19:14:51 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x235.google.com (mail-qk0-x235.google.com. [2607:f8b0:400d:c09::235])
        by gmr-mx.google.com with ESMTPS id q187si925182ywf.4.2016.03.12.19.14.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:14:50 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) client-ip=2607:f8b0:400d:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x235.google.com with SMTP id s68so62944333qkh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 19:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0N7Ce8XW8cj9eWRKsKfm8maacJFkp46Eo+5/JJWMZgI=;
        b=GjLdpTUHYU4dMH9DII9CmI3IeH7dwSrQhmb+hh70SnD/1UNzxX+7dF7IvJregwOxV4
         fPMD5iGWOdQWPGK3g6LP3T+BOOJ05LiLWGLcH6c/RIJlGYZyLGUYzIl7FCPYSOswL3KA
         +by9grpPd6cVTOTWddKl3sj7Po+otNWkDjVfdMmXathYZxnnZtGvSoRzO8BmITjYm7WA
         8o2DTnYXsQo/PTLs2bionTGlL2urT+8+RMHOJrdI/NU4vC8P3IUApu+hVJHXgGpuKKig
         7+xgzRS4fW6BNzP/nDMjeMotUKwcRKxf34LPy1BfRHNiUWWerZgYN4en6w4qs6Wdu761
         VWVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0N7Ce8XW8cj9eWRKsKfm8maacJFkp46Eo+5/JJWMZgI=;
        b=UFYPVkFHMuWyjsvWmtVyzY5aWXa5sjOwLlnf1d2HB6kokpSgJaDm7JCFkasjHew1Pi
         JMT9YFmcNfVMh0QqCz1JUV61IyH792yS89/w7uNtyxYEjDto0c1JrJYh4f6vUBRSXRqw
         JeEe9JyntyB2usv2SVNcPUowA1pcsqajaiPvHvDMEXB9oE7fHYLTKrxsNhyXkTMHMwmY
         Ozor7IQFUx3KCFDGiPKj8QO9pXvZbR5eTYAvW7JsrM9wRRhqslrbU1rn59iCl097sBR5
         X+J+j8v0ai4D//fSFEF5x4FRT80nCfnDX9G2LNYh1aOLAhRPvO6TRy1n1gENhHH9Lz8n
         vRoQ==
X-Gm-Message-State: AD7BkJKsqo/eE74EOef/rx3rtM3+sD/eiyoiXczfNPechwGcpMFzQw26njn1kJ2dMdMj5A==
X-Received: by 10.55.75.85 with SMTP id y82mr21410533qka.29.1457838890625;
        Sat, 12 Mar 2016 19:14:50 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id w70sm7348234qge.13.2016.03.12.19.14.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 19:14:50 -0800 (PST)
Date: Sun, 13 Mar 2016 00:14:46 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH 1/2] staging: dgnc: renamed
 dgnc_Major_TransparentPrint_Registered to avoid camelcase in dgnc_driver.h
Message-ID: <936d6cc0ebe887a86581f5d9af2c2832b1ec1698.1457838430.git.juliana.orod@gmail.com>
References: <cover.1457838430.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457838430.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following issue on checkpatch.pl:

CHECK: Avoid CamelCase: <dgnc_Major_TransparentPrint_Registered>
+       bool            dgnc_Major_TransparentPrint_Registered;

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 98ff648..6d91abd 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -211,7 +211,7 @@ struct dgnc_board {
 	char		PrintName[200];
 
 	bool		dgnc_major_serial_registered;
-	bool		dgnc_Major_TransparentPrint_Registered;
+	bool		dgnc_major_transparent_print_registered;
 
 	uint		dgnc_Serial_Major;
 	uint		dgnc_TransparentPrint_Major;
-- 
2.7.2


