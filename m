X-GM-THRID: 6473410411176656896
X-Received: by 10.99.125.28 with SMTP id y28mr1110259pgc.161.1507208329057;
        Thu, 05 Oct 2017 05:58:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.179.36 with SMTP id a33ls6576448plc.10.gmail; Thu, 05 Oct
 2017 05:58:48 -0700 (PDT)
X-Received: by 10.101.93.11 with SMTP id e11mr2330294pgr.2.1507208328309;
        Thu, 05 Oct 2017 05:58:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208328; cv=none;
        d=google.com; s=arc-20160816;
        b=w97Pc2rrcuYxZK50wvsGz2IcwUb2iCt+vnHvu11SQMvEiIwDwFa6cb+Vz2sDLpMBq/
         jWh1Ed6u3gtqFtgxvS/qQBrm8jnnMb3+DzXf/ikqGmqUdVYu1Dhtt+soLBvgv/cMcCmP
         s6jYFYWUjCezELHAaeZEX0exyrM4IIRLo3oBb83PUFScywrrfr9AQgGLWZEWHDsN13RQ
         n/HSZD2j/MsPNs1q5dDeY3HSnQJevkupr3boEX4Gu4fKq1xQmFrAjQO9zBFuveUrcqNG
         Ki2YuWmVHD3LYUX6ete24A0B0nnGI3OwhitpaL5A13R0f1ik7kwRTuCxZ6fnRgpXevEM
         xV3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=dmRoC3/ROjmmM4V4R7NNQkaiIuA9CbH1SiSpNwwmV53pvtNNEuLUhN0oc55moMMVZ0
         zexjB4YfPrWRUSCPIZWQXKJte3vu1mQ7lqMN0uIcd8iWOWvp4tj4MHaCuIudql3ctF8+
         DVgMDGj43b+BwPR3z5j8uJqb6nmFm5makmehHCySQHmQ38NFU7CXsYS4TD/hEbO/OsnQ
         WpsIsgOyaSViHCCIrEvdLkQg5BEZX5Ibsp90PYtkzcsaswNnWOiU+ytSOr2VnirYX+qR
         X5QlZCixL+oElLA6NubVzV+pX9AXtzG2QNsw1fg6HFF510eRVU0DwB+X1lh4858YZbLv
         engA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C/MNx3VQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id p73si1767101pfk.27.2017.10.05.05.58.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:58:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C/MNx3VQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i195so7287033pgd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=C/MNx3VQ/TkLE/TjfZzvKmX/GN1Tn92xW3xWKjd6AxHmvnSMdQCRvAQULBA1M0kLbL
         m3UvNStF+KIwO+moRAgFybF+pobohvQ08Bg/dTkEMS7ZoZ2rOZBnbCV3YHsq6rizQc5I
         wFT/6eGZuXH8vSQa5TGzQW4s9Ogv1R8gVIB4bFh2jUQ5Upm3E9iNGTdVlCKoz0aCFS9s
         sKgy6YqqH34wu1LPHG1ZA3KR7PR1+xHskuUuXHBMRdSwZOJEZnK4MXuebm/+7eSCnu9G
         DwKLEg4oNSRc48bB7pSgMIpEZcbyw7kqTkYHo2m009D3dlZsMNzBwx4bPhjwQmJes4BD
         Ylfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=Q1ns7iHg1KNvf617E0eDKvOEfNlY/loUyD1alkqc6ImSBSxKzTy9leRTkiFJtWh2vV
         sjm8lHTNruNLy3G4ms4eNgbxkk0FGDJM7SNRQhzZvq10YI30gRQ6qrrtDRA8Yf8Ub7FX
         Zbilntue9zwIg0Ea+Ws+mtLQqt/nThiHtfadDJ79JlLE0UZ+12MOrWuJxokfJJdUwzl/
         xtsaD5WpHpi7zQhTtgiFS6vXLp9CwGgbftn/cqV7Zx5bhIi34X458hbiyhN5WNRF5FWg
         vR9zD6nnXtpslHWA78c4pNA/97fICM2efjngmRO+bgYJo3WUPkoG6fcH8hzVpJzsEqWD
         pCDQ==
X-Gm-Message-State: AMCzsaVA7r6T0kcBNcGBbIuVKwmDETcLOI8juqzMJPbDDr4lQgKm2E0+
	TaByQpAvquK1uWMmYK66Y8A=
X-Google-Smtp-Source: AOwi7QBwDgOUhwf9+cC904cP7PFEQA73XjdC6r0S+2MhX4S3MX4SBGWWgybaYM4sJ2kPzM81apk8ew==
X-Received: by 10.98.133.28 with SMTP id u28mr367571pfd.241.1507208328027;
        Thu, 05 Oct 2017 05:58:48 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id x4sm30368424pfb.101.2017.10.05.05.58.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:58:47 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 04/11] staging: lustre: drop macro that has no uses
Date: Thu,  5 Oct 2017 18:28:16 +0530
Message-Id: <1507208303-17615-5-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>

This patch removes DLUBUF and PLUBUF macro, both of which have no users.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index c8d5e0b..d5ecd58 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1305,8 +1305,6 @@ struct lu_buf {
 	size_t	lb_len;
 };
 
-#define DLUBUF "(%p %zu)"
-#define PLUBUF(buf) (buf)->lb_buf, (buf)->lb_len
 /**
  * One-time initializers, called at obdclass module initialization, not
  * exported.
-- 
2.7.4


