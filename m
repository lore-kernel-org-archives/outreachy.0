X-GM-THRID: 6332145686814916608
X-Received: by 10.129.154.196 with SMTP id r187mr17559457ywg.54.1474514684287;
        Wed, 21 Sep 2016 20:24:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.125.16 with SMTP id b16ls149505itc.21.gmail; Wed, 21 Sep
 2016 20:24:43 -0700 (PDT)
X-Received: by 10.66.85.10 with SMTP id d10mr8521267paz.101.1474514683841;
        Wed, 21 Sep 2016 20:24:43 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id m82si2438022ywm.2.2016.09.21.20.24.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 20:24:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id t67so4189260ywg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 20:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ulR0aB5ic3BGtrVQNhIkO7JD7dkTLFAOkA3SOB/Mlys=;
        b=QFgBkHGvy2SHpKO4zGYgnWgjkQEWHzR6WfQs+RlbMlDi0uxpR0XXoqjLl+5wXNVz7b
         mD+boTwUlW8u0aD9b6PYSxaARyackDwgp/v5ZtUNr57KH9n8UVWcoXe3Bf6z7EfH5XH/
         NyAWtlOvFsn6JYH1LFevWA2kckgnYjeYk8Y3nTpEZsTIWNeEXOWYWRgOVR7j5lnod8HH
         U6T185kOojQ7T0LcyCKpSJIzVfhRSVT2qLHmAexRKv6O57PXJ0k51kxDu+3t3n4KCFbV
         YRDITXBfk9O5/T8oYb94R/l5xG5Qkco20t7Qoc/qaVWljmiEqI/2IhUDk8vIg/TNp3m6
         tqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ulR0aB5ic3BGtrVQNhIkO7JD7dkTLFAOkA3SOB/Mlys=;
        b=fPo5Z5Z3HPLRbEDqLtjanF2R+GtV0hoNpuTNWagzS7nMGwXJDYbd92Z+mFcLdYuIzJ
         54KEmpYLg4YE3pnbQQ+mQytYPHZ3JIuR8vgliAD9u0ZcE0nCr7OOSVuimDR6kUPs8YLb
         JLJLabfZJOGldwIHYLfow8LxYltvv3yZnaPDSiyPb6tPDFT+makyqYqjNmJescbDDMbY
         nX4rzYJjrFER2MvHKqwt+MP7JwA+nSRoDfvFVLtx8QN46VraTpTfoYdfaTTlWFsx7D6Y
         ubRaAe2ofIvs750eVZUEe4G7ItGQzVaI2XwpvD6qN4rbTA0D1arDxNA8Cuisej6ycR9W
         0xeQ==
X-Gm-Message-State: AE9vXwMIKBcfImdI7nC5K83JyCOpv+ODUFpe7wGeOhHMZFAthENNYGn70RY+KAz2e6TPRQ==
X-Received: by 10.129.20.214 with SMTP id 205mr36194456ywu.127.1474514683642;
        Wed, 21 Sep 2016 20:24:43 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id s126sm15037979yws.13.2016.09.21.20.24.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 20:24:43 -0700 (PDT)
Date: Thu, 22 Sep 2016 00:24:40 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wlan-ng: fixed block comment formatting
Message-ID: <20160922032440.GA13506@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes a checkpatch warning in
a block comment by adapting it to the community
preferred coding style.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
Changes in v2:
   - Fixed patch author's name
---
 drivers/staging/wlan-ng/hfa384x.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 87ceebe..225cd64 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -110,7 +110,8 @@
 #define		HFA384x_ADDR_FLAT_CMD_OFF_MASK	(0x0000ffff)
 
 /* Mask bits for discarding unwanted pieces in AUX format
-   16-bit address parts */
+ * 16-bit address parts
+ */
 #define		HFA384x_ADDR_AUX_PAGE_MASK	(0xffff)
 #define		HFA384x_ADDR_AUX_OFF_MASK	(0x007f)
 
-- 
2.10.0


