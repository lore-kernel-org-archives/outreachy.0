X-GM-THRID: 6395563647379177472
X-Received: by 10.99.111.11 with SMTP id k11mr6597077pgc.38.1489086269995;
        Thu, 09 Mar 2017 11:04:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls853127ote.1.gmail; Thu, 09 Mar 2017
 11:04:29 -0800 (PST)
X-Received: by 10.157.82.35 with SMTP id e35mr5546396oth.127.1489086269660;
        Thu, 09 Mar 2017 11:04:29 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c123si1367363pfa.4.2017.03.09.11.04.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:04:29 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so7719949pgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vS88MlkutVk0TmEFAaaCNCdjXrRCQyv+GsFQ14AahmM=;
        b=SzDdX6k7bnVoM1xbnZhOAMK0L05oiS0uakT8wS/A9BOi82oWN2SdTnfZGTBLzPJRFh
         x6whL2opGwtgWaVsvBO1t12szr2tbNOkCL0kCGzfBYtQA5sKSXHbM3eeIiUNpIPHt3NU
         wpfXYhjO9K9wsISb2FcgvFzmvdUKBMrWvrqKgPcBY/Lwkt/hXPKCCSfCh6TvyaqC4nuG
         NDI6/zgZ0Cfjt9r0mO1FgurAMLYOidxGtpwoMwlLf+yOTr0bBA9lExwnmhgAzwWvBb95
         dvgz/sPSNuDp0T+jLiiwS9pSNVjEf7wdGreNh450jx+3eVBfc4L13tKn7pEi3EtGWhgW
         8ZmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vS88MlkutVk0TmEFAaaCNCdjXrRCQyv+GsFQ14AahmM=;
        b=aXERL8oLD3OZsY7lAVnIeMZZI2HtoHChZdv/MXtTD9gj7/5lJAew52TefytaDDCGUP
         Zb7NP3LeQPG+dxIGBVuvfFe5/3F31N6jyK61OB1PUhDRYQQvBUJHOZdr1kS9Kcanpc97
         BN2dvj27efIIYK8C8ICaYIj+rz9UZ5n4ZMjEkenRJ8vZhbO82Uc9+6enQh6JKPMa4zzo
         DBG8/irL7PVb5ZsmEe5euWtfA/YgB/NK/AGUB6FK+tYvv1P9j+Qp86OHjRgQAMnAXkaY
         CKkujItvUFHxiUkgIuzGJTFBfgheCQvA52/xNBbWSO26G2v3cVPg590J4EobryruNSeX
         A9oQ==
X-Gm-Message-State: AMke39nYfVinzfYtZzRZNOcv9/N9O/2RimNu8YUkABc6hL01U5bzx51IJVArkJfjc9Ya3g==
X-Received: by 10.99.62.202 with SMTP id l193mr15784062pga.172.1489086269358;
        Thu, 09 Mar 2017 11:04:29 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.243.15])
        by smtp.gmail.com with ESMTPSA id x65sm13902367pfx.115.2017.03.09.11.04.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:04:28 -0800 (PST)
Date: Fri, 10 Mar 2017 00:30:03 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/3] staging: bcm2835-camera: fix coding style issues
Message-ID: <cover.1489085851.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset fixes the following issues: 

[1] Added null check after memory allocation to avoid a possible null 
    pointer dereference 
[2] Replaced instances of kmalloc and memset with a kzalloc 
[3] Replaced null error return values with kernel preferred error
    return values i.e. return ERR_PTR(-ENOMEM) instead of NULL 

Changes in v2:
-- Fix null dereference issue (ouch!)
-- Rebase from origin


Aishwarya Pant (3):
  staging: bcm2835-camera: add check to avoid null pointer dereference
  staging: bcm2835-camera: replace kmalloc with kzalloc
  staging: bcm2835-camera: use kernel preferred style for handling
    errors

 .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 24 +++++++++++++---------
 1 file changed, 14 insertions(+), 10 deletions(-)

-- 
2.7.4


