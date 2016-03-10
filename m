X-GM-THRID: 6260480568756011008
X-Received: by 10.31.47.131 with SMTP id v125mr3488480vkv.11.1457631720541;
        Thu, 10 Mar 2016 09:42:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.144 with SMTP id p16ls222550ioi.55.gmail; Thu, 10 Mar
 2016 09:42:00 -0800 (PST)
X-Received: by 10.66.163.4 with SMTP id ye4mr3505795pab.23.1457631720108;
        Thu, 10 Mar 2016 09:42:00 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id sf5si741311pac.1.2016.03.10.09.42.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 09:42:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id tt10so72266668pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 09:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JhUGAAkSWF+r2Mg6aYGQblhSeyN5ATLJIHV6woxi3Ho=;
        b=sXpLnruEnTJrFDddmRr3OQYrUmwvQT6lltcBFBXyT29CFUyBjBf2z4mectmTG3tCJg
         jFzJ9j9LYtsQ+lIkOfEfailuN+QU4L7qBuiDNVmxqc5PC/HwdTZi/bvSxeyYbD6DrH40
         BQXYmRuI9Qzb40ZZDHIKhWx1ZunxXutfEZgB/0/eRMwVB/9n/Kto0oSU0j2OOu2rVJJF
         sFVGLRivWU2OjHFI09/WmaNJV1PFGmfLr1CTxa2r5szCC+RzKQe0CgnhkHfcaD2ieITP
         ZvJ8cIhoCga7+806XIqi48mMMCU/7NGbQtBk9SUbSahQrFMsVkiBdvaU/PbCXIIWZzCP
         ixAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JhUGAAkSWF+r2Mg6aYGQblhSeyN5ATLJIHV6woxi3Ho=;
        b=KKlZscbN+9CCSkI8JW62cKi9ZSOCnbL8uaX+ACgtH7Izv1E0CKu7ulNIHFvn6EWDlO
         XJ/8a2w9qvjbYXjd4NFGU07wzkZUWlgCQvWX8gRZVJYY7ziUMLtyjfd3yx+Vcu/1BFOb
         /Rk4Zh9dL4EWc2PviuVWvXHPjup0XqiDCG3zVIMDU9qjPdS0iPK2+uUL3RZZ18Bqpdjp
         jCWKOzMLhka03Bopdxrinvx5Wg8H0XZhIsQCg5aoMGq5ifoZ4heTL/ShHNh1kT7eN9B8
         XLKy1xnMLkb5icMongmC2TllyctYDv48HYS7sxYDizmb3opgtBwlUEuzZS83hQojVk9K
         im2w==
X-Gm-Message-State: AD7BkJLaAcW5JaljEKwkmRvb7a3Ah4veyfaY2Gtb7+Oz9EhvJtT/9aH+pOc7UPunHkb7QQ==
X-Received: by 10.66.220.7 with SMTP id ps7mr6834888pac.58.1457631719976;
        Thu, 10 Mar 2016 09:41:59 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c9sm6961188pfd.90.2016.03.10.09.41.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 09:41:59 -0800 (PST)
Date: Thu, 10 Mar 2016 22:59:47 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: davinci_vpfe: dm365_ipipe_hw: Remove
 unnecessary else after return
Message-ID: <20160310172926.GA19961@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
index 0792fbd..958ef71 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
@@ -242,7 +242,7 @@ static int get_ipipe_mode(struct vpfe_ipipe_device *ipipe)

 	if (ipipeif_sink == IPIPEIF_INPUT_MEMORY)
 		return IPIPE_MODE_SINGLE_SHOT;
-	else if (ipipeif_sink == IPIPEIF_INPUT_ISIF)
+	if (ipipeif_sink == IPIPEIF_INPUT_ISIF)
 		return IPIPE_MODE_CONTINUOUS;

 	return -EINVAL;
--
2.1.4


