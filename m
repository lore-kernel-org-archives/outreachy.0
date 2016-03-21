X-GM-THRID: 6264514475504697344
X-Received: by 10.140.95.38 with SMTP id h35mr23140925qge.3.1458570937868;
        Mon, 21 Mar 2016 07:35:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.29.194 with SMTP id m2ls1697278obh.0.gmail; Mon, 21 Mar
 2016 07:35:37 -0700 (PDT)
X-Received: by 10.182.27.101 with SMTP id s5mr23046458obg.35.1458570937328;
        Mon, 21 Mar 2016 07:35:37 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si3438451pfb.1.2016.03.21.07.35.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 07:35:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so30772530pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 07:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MWDXWSMbPREMJmcO1BKC/FHmoKQ8TNPTfBuk+ox2grM=;
        b=AaUkLXGoIDz4ZjZm3AH/1RxWZ3oagZQ1ZRwH3LUwtGabAasEZc5Zyy256YSKm3ytbY
         Q5GITt5BZIzmWSH4Z1navfdll+emf7H3SRbP7ZqqB0gwrbqkcqTp1C5R99VI2WSYWy95
         YsBbtRAOIxkaGiXdvD1XhXmQ1gBilYFhnmMz/zQtpjsZbgRgDQDl/wkih+TDTEnc54fR
         0ngHr9DUTH8w/+l25fZzj/Cp4H2ybaiteLprkRsMFh9hMUGeEsiVrcvBNbSzNHeQnqx+
         74YxNpxVcP3ahJMun4GBgL64wAEMQ1zYgbU/Kp4mGsHGqd4P3A6e7iSRda59bMgTV56k
         D7cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MWDXWSMbPREMJmcO1BKC/FHmoKQ8TNPTfBuk+ox2grM=;
        b=g5wWUBcsOQ3Zle7+RddoZy8io4GhjjJTYMJRot+jyv3wXwBm0WbcqCuycPS+Zcmv5c
         jN5+Ny5wuMaTs2ITpr2KqNCHHk5XkblUQ2VaSB5l7JawOtIJKNgewuaeV6oM0l4fP4Lo
         e4h5LbSGdHH6skK0YI8bKgPh0CZhnlayYZdQ14f4qxq8PR2M8NadZWkhjN3Xi8fDHhRL
         py8kw4u9QIFq7hR8zQ7E7wffEIBdNKW72dsAFhoeSu/iEXJMQvUdDY8M/gzV2hExxYhB
         96/DRHXMPW37W2DzqpB8GCm3subz4ndr09ywl8jM9VTVz5eJBk4O+/nFKHvca6JpTK9S
         xhjg==
X-Gm-Message-State: AD7BkJIQzQ4KDPzzlkvK1HeAvoFGqIB2g6yCGgutLvEWhCjwKEwVsmArX68v5JG8Ne60Bg==
X-Received: by 10.66.102.37 with SMTP id fl5mr45797056pab.32.1458570937177;
        Mon, 21 Mar 2016 07:35:37 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.219])
        by smtp.gmail.com with ESMTPSA id m87sm41283677pfj.38.2016.03.21.07.35.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 07:35:36 -0700 (PDT)
Date: Mon, 21 Mar 2016 13:06:22 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] Staging: iio: Fix coding style issues.
Message-ID: <cover.1458545206.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Fix coding style issues.These issues are detected by checkpatch.pl script.

Sandhya Bankar (4):
  Staging: iio: ade7758_core: Fix open parentheses alignment issues.
  Staging: iio: ade7758_core: Remove unnecessary blank line.
  Staging: iio: ade7758: Use a blank line after function/struct declarations.
  Staging: iio: ade7758: Fix open parentheses alignment issues.

 drivers/staging/iio/meter/ade7758.h      | 16 ++++---
 drivers/staging/iio/meter/ade7758_core.c | 74 +++++++++++---------------------
 2 files changed, 35 insertions(+), 55 deletions(-)

-- 
1.8.3.4


