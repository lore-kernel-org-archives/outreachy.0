X-GM-THRID: 6263750571303370752
X-Received: by 10.107.6.149 with SMTP id f21mr2470138ioi.25.1458393077963;
        Sat, 19 Mar 2016 06:11:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.20.167 with SMTP id o7ls579633ige.3.canary; Sat, 19 Mar
 2016 06:11:17 -0700 (PDT)
X-Received: by 10.50.6.7 with SMTP id w7mr3591564igw.12.1458393077551;
        Sat, 19 Mar 2016 06:11:17 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y20si2814610pfa.2.2016.03.19.06.11.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 06:11:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so21824318pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 06:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7Wbk/fe5mGtjcEB0SGLCo1Pr9CZt0uMGkI3+MzaNrC4=;
        b=xLxWrbRQe66ksNVjPFQJ8Jy24jyIQ7DjdIWiOnJePK9isdHUgpFD57E8IYFQm9MxhH
         KsKRHTOtYmebFYJyN1RLNg3I1TJuWEaKGaqJLGMs/qdx4hmhBUBZ4jdQn8UfW5SccJEY
         7E1OBDGsRzyd9zNbCAL+8FB6QmKM8GnEQlsvhXgbk8wVzKQG9zQW2h6wzRiBA0ov8DVj
         uA4NraUcwXpRYVQtnzcInuCHB0/4osNVTZt2Elc9TaYbKUUithlSUpmpfhyCk0ID90gh
         1CDA0wAWxOk6JDhXYOiKyJzK7T5ENEadryz69cVnfaYFBJXSgLvEAbPlA59Vu0V472hN
         DvBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7Wbk/fe5mGtjcEB0SGLCo1Pr9CZt0uMGkI3+MzaNrC4=;
        b=Cskl67vKNl1VGZmBuf+rUBj2ShxSlvk/qQRyDF7/eVwIFBubckYtbxS8OpJl77LWnh
         K5JzqdfsrxsqoCps/Hu7vCWE4qXVHa+GfWbUSdTj8hvq8i4g/dexDkSMH2xLL7ezTmD8
         Qn0ymxEKyIGPDC3x+khgW5cNY1rNqnkHZwFjsC4p6GAcUGxUvrBylgNf1nviFhPOPf8f
         P2k4fd9cLx0JQzNVdcUUGR0p1FxY2vsYYfWUsUrnFHTjcTj8SvqlBzn9xzFNCbeBpnMQ
         ub1yjCuVz+GQZ7qxYcIz9i1k5fhQR3JPfgV7KxxbQbgyYHfq6tVbKbMAsoTVKyV3Roq1
         gMuA==
X-Gm-Message-State: AD7BkJIUWI10hx7G+5RPxVWA4AB4xm7js1uCEMbjAxcOlqpkm+VsvdxoFFjkomYcWC66fw==
X-Received: by 10.98.80.150 with SMTP id g22mr31316210pfj.132.1458393077397;
        Sat, 19 Mar 2016 06:11:17 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id e6sm28155917pfj.71.2016.03.19.06.11.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 06:11:16 -0700 (PDT)
Date: Sat, 19 Mar 2016 11:42:24 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: Remove & from function name.
Message-ID: <cover.1458367377.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove & from function name,when function name passed as an argument to another function.
Function name is used as pointer without &.

Sandhya Bankar (2):
  Staging: netlogic: Remove & from function name.
  Staging: rdma: Remove & from function name.

 drivers/staging/netlogic/xlr_net.c | 2 +-
 drivers/staging/rdma/hfi1/verbs.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.8.3.4


