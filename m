X-GM-THRID: 6261499450444742656
X-Received: by 10.129.74.195 with SMTP id x186mr14928566ywa.36.1457888837597;
        Sun, 13 Mar 2016 10:07:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.213 with SMTP id a204ls1785420ioe.99.gmail; Sun, 13
 Mar 2016 10:07:17 -0700 (PDT)
X-Received: by 10.66.63.104 with SMTP id f8mr15226234pas.4.1457888837273;
        Sun, 13 Mar 2016 10:07:17 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id 12si2572400pfb.1.2016.03.13.10.07.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:07:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id x3so24827189pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tX8z4GIPKuqlzfzITq4xzdNybKvODqc+YPt+hPNAZmE=;
        b=A4wgjKggv8dsK3rwA7hn3aU4sIB4x9F4Q76EKWST18KU+yAGMv21iEzLSFCjdEytH0
         /FJkN50ozSOZIsDOxrgxuXpryNjAY1LkyZ4O1K0WW0o1A+/qePd3EP+9p3RaLxX88Ae+
         //tGQZ5nsAb/ZYUrE3Co9j6in+7dU7nHtNW8AD3r1dgqD1hlGqOfx9Z3M53p+gS5XqaX
         CV1hXwW/vK8CSEt0QNcYuDlQBiZfSwBr+pc+zLei/l2pLFXcyi/AftIxgWfYB/74jKHr
         /vuR7uM9Lyh2Iv4j0JKUjffNVYBcc/KY1zLvDIFsCcviiFS2hpHsJ6oW1/1TvHUW0jjs
         xeXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tX8z4GIPKuqlzfzITq4xzdNybKvODqc+YPt+hPNAZmE=;
        b=kPcmVz0L4C/eyq7ckkBLSJAtGE5VVNNCn23DjuQSvCIybVhPNKpe5xPfdoybbv2J//
         HJJx7GndHMQO81tsV8fkamhArdm31HtmNEr5Y7Hcye5XNTfOdygsWFJFLpwAO5B3ddev
         x6T0VQcF5k5Pe4JR8XWuP8um+91f/6cn0xeuUQYByfsoKNYw20pgNs9H+CCOhoG7qjiT
         07qVGbd+GZgPMw8MHoqLN9L42Gt9YFO2y6apbn6FvczqSulSV45NCyyTXMtRqGOIYXZ6
         VvEYexdvhkLZ0zOGjywviLsIr/kCXdszI2F5OaW5AdZABcAnCejKwC8+L4fbA44oNw9G
         xFPQ==
X-Gm-Message-State: AD7BkJLfmPUR5yq8AjXXRnNLDH5l1TG0in486bl1C7bWHIGicu+UPjPTsDeTCLngd3C1kw==
X-Received: by 10.98.13.88 with SMTP id v85mr23333498pfi.150.1457888837107;
        Sun, 13 Mar 2016 10:07:17 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id 12sm26261074pfr.22.2016.03.13.10.07.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:07:16 -0700 (PDT)
Date: Sun, 13 Mar 2016 22:37:06 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/2] Fix multiple warnings
Message-ID: <cover.1457884084.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset updates the wilc1000 driver in order to fix several
checkpatch issues detected in the source code.

Anchal Jain (2):
  staging: wilc1000: Remove camel case in variable names.
  staging: wilc1000: Fix lines over 80 characters

 drivers/staging/wilc1000/linux_mon.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

-- 
1.9.1


