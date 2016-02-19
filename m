X-GM-THRID: 6252997981789749248
X-Received: by 10.129.78.66 with SMTP id c63mr11925773ywb.8.1455889544720;
        Fri, 19 Feb 2016 05:45:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.174 with SMTP id 43ls149346qgx.73.gmail; Fri, 19 Feb
 2016 05:45:44 -0800 (PST)
X-Received: by 10.129.4.201 with SMTP id 192mr12329543ywe.15.1455889544240;
        Fri, 19 Feb 2016 05:45:44 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id 79si1602005pft.0.2016.02.19.05.45.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 05:45:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id x65so51492272pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 05:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=UXf22bDkFlwcN4hP+adzP5eAXuKrM75x3EWJMmDmDy8=;
        b=mmdbcUtsSno50W/g3f1ZY1b+RXM6ckDbfI4G0JR/P5XE9vEUcAks2D5qk7UoZqf4pA
         nHZEXk7ZHqqLQ+kReItVEiRPJJ6OYSeH4HL6JLJfqi6nr3SUxCwaEjn/8E4F0R1FrPAC
         qxatRNIaETYgb95GGkPWOKmvDKdMQjhRVRUM/DEvYvq6Q6SrmFkELuiJ6ih43YGGtHOh
         TFwYTv3NqH92MVyhEW3WWKmJtWKZQnFipdCNjdpoPksxptQWSLj+a4tbsPeE3TTCsdvr
         lromatuQqI+02ekY9f1PNnxe3Juz0It4bCYYM5T5mysfaiQBWHz9gmo5IA1YOG0aLAuf
         8scA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=UXf22bDkFlwcN4hP+adzP5eAXuKrM75x3EWJMmDmDy8=;
        b=FzFWjkE1H/hIhQzcQqB5vUqo7wQ3t2p9dmoOcYtxxKEKnuRNJNx26No12U/W96jTW6
         XtLZf6L+cPxYyqCPTEtsn/sldc/PSE/p4yxl1I7ryx/4glsNlvzwWJhwGqtLKzPdfki0
         xo5NYyC3TchSjToGu8GypLqCIBNzsiTeNi6X6XPPGOLKYNj14zq/0f6kfLhV4vKQplQ7
         2po8qZigmc1jmZ30m4GeiTAAS7bEJI+NtyrorpPqpT7hWZfRIltANvxAGTQGPIb5/iR8
         fNMabwbx7BjX3HFMaNflRLAV9dbvfwfCtO6S2Kdp9IkXfFkcCCuKqD5EHTOOV/r6hORy
         TiSw==
X-Gm-Message-State: AG10YOQ4VjscND3ahlz2dqKSc1WxTNV3KFdBrnzvyb/IxlnhtNrA6vbA5J6mzWaQP6eLiQ==
X-Received: by 10.98.19.205 with SMTP id 74mr18216219pft.31.1455889544103;
        Fri, 19 Feb 2016 05:45:44 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id xm10sm18224916pab.12.2016.02.19.05.45.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 05:45:43 -0800 (PST)
Date: Fri, 19 Feb 2016 19:16:13 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] Place constants on the right side
Message-ID: <20160219134613.GA19890@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset moves constants to the right of binary operators.

Bhaktipriya Shridhar (4):
  staging: rtl8712: Place constants on the right side
  staging: rtl8712: Place constants on the right side
  staging: rtl8712: Place constants on the right side
  staging: rtl8712: Place constants on the right side

 drivers/staging/rtl8712/rtl8712_efuse.c | 8 ++++----
 drivers/staging/rtl8712/rtl8712_recv.c  | 2 +-
 drivers/staging/rtl8712/rtl871x_xmit.c  | 4 ++--
 drivers/staging/rtl8712/wifi.h          | 4 ++--
 4 files changed, 9 insertions(+), 9 deletions(-)

--
2.1.4


