X-GM-THRID: 6260125988424777728
X-Received: by 10.182.206.38 with SMTP id ll6mr6133988obc.50.1457549163952;
        Wed, 09 Mar 2016 10:46:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.227 with SMTP id e90ls617534qga.74.gmail; Wed, 09 Mar
 2016 10:46:03 -0800 (PST)
X-Received: by 10.129.88.136 with SMTP id m130mr4873757ywb.9.1457549163223;
        Wed, 09 Mar 2016 10:46:03 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id r75si1522645pfr.0.2016.03.09.10.46.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 10:46:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fl4so46238125pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 10:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VbSR8cmjbW4bV4oIsWQ0nBrxgFbi6B5KSjucPPLKelQ=;
        b=KmTLVIfq+smjl8kX0cYFyheKkDJaFG46gx0b3drbU2Rrq4+0aTupwtSp6wLjyRiyQq
         kxLxvXwlnea8SdHXvV1s8uZIyMYRoGgNgbsrHUwKW/dL/xVim4pul8+Jxqer5LK6Txb+
         eoDHmv0VWzz3xhwp8CX5blkvFEdfmKmVfYdaPaDqUZwoIiVMSQVMIr6uhfqVIyuHZevJ
         xEzfzevdfm7KpqMy72oQwaN/AL0o34Aa/PlJAYbmid5ZYTGw+1KSUQB//5jPV5gFjRjV
         /DvAvatvHuSHSLDF6Ikf58urHkCj9jEXT4Rt+/3ILP/yBetD53VxHHM9YSPqDj9RRz1+
         zc9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VbSR8cmjbW4bV4oIsWQ0nBrxgFbi6B5KSjucPPLKelQ=;
        b=NLW+LB+JKueKwCwWX8nAhxGxBkkuHeDoT26apPkt1s7uw65XPGOtxBrY+4npQzDGus
         /dETIWdBo2uuzTIM2ybYIEE9MsL9spyP+elzHu4nJJqhZHo8dhy2LzHh1VMtpu5mcH+Z
         Yr2yACFKCAuTpf4FgLJJPNEYm8j34ud1qLEoNshwfZlF2UCfJSutFM+clsMZik/XknJ+
         qO7BbxiHNFY32CJOaV4D/GVUuKWlOdPkkEC43Nn6lDAI8llC8rW4x2PLnscPWu9g46Bk
         fyL+xOWzqqCqxBQFCAqhUU8yp51pPi7fo6AaKEEIaIDRhDDNbNRSBi/Rfm+uW+CEQIog
         eqiQ==
X-Gm-Message-State: AD7BkJLkuwwh7dRU0n4/BzQ6JU7wUd+jaw8T7S95Tfemy517EBC3tORl8qWLK9oZhENtIg==
X-Received: by 10.66.154.233 with SMTP id vr9mr52569209pab.66.1457549162947;
        Wed, 09 Mar 2016 10:46:02 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 9sm14049907pfm.10.2016.03.09.10.46.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 09 Mar 2016 10:46:02 -0800 (PST)
Date: Thu, 10 Mar 2016 00:03:49 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: drivers: amplc_pci230: Prefer using macro
 DIV_ROUND_UP
Message-ID: <20160309183349.GA15270@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/comedi/drivers/amplc_pci230.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index d1fe88a..907c39c 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -642,7 +642,7 @@ static unsigned int pci230_divide_ns(uint64_t ns, unsigned int timebase,
 	case CMDF_ROUND_DOWN:
 		break;
 	case CMDF_ROUND_UP:
-		div += (rem + timebase - 1) / timebase;
+		div += DIV_ROUND_UP(rem, timebase);
 		break;
 	}
 	return div > UINT_MAX ? UINT_MAX : (unsigned int)div;
--
2.1.4


