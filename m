X-GM-THRID: 6395563647379177472
X-Received: by 10.157.68.229 with SMTP id p37mr5276904otg.29.1489083200306;
        Thu, 09 Mar 2017 10:13:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.41 with SMTP id n41ls1967308ioe.33.gmail; Thu, 09 Mar
 2017 10:13:19 -0800 (PST)
X-Received: by 10.99.117.10 with SMTP id q10mr6676502pgc.59.1489083199437;
        Thu, 09 Mar 2017 10:13:19 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y90si1335711pfa.6.2017.03.09.10.13.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:13:19 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so8063021pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 10:13:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3pg52lW+jemCymoSf80Xm0dxpEU/4AqXDNWVQ9DFkZA=;
        b=QQ9A7qM63AXC78XH3EEl45ec8ZP01/25cZpyrfmHdzFEL5cot+ZGFLNo84JfNN6hTJ
         g0hgnrm1zb5WuvYRoH8sNFTli3UCQ0LM/FCawhL7zMTyDqAqKDgdMXsEHG3jkmxEhM36
         XWs9DC3tmVdSJiPjm+nuWzp2DJha+zOcbLwl2SpGYgRp7tplBBIiPv9/Na7Xkf02ZZ84
         X5ZoUtO25hJ+wH4duOtcD0uyhE6vQErPVz4Yczr71nxKkF57cSGPqsyWCCD6urUwzZBt
         GWuq7c/VKeUtz7H+lI4OMazk08okD2JBcYsiUd16wwn6BuhsP2D3sjcnoAvoyL2OZlKd
         rrwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3pg52lW+jemCymoSf80Xm0dxpEU/4AqXDNWVQ9DFkZA=;
        b=l/3acUzJsMn8X3GnQSuQ2sf+0A+kA1SC/K21tV1rOlg3sGqW1JWwTYnadNtzOncYgb
         t6rwUpJtvH2VZuO+ellJngBI3LZIFH1QdR27yOiU0+Sl5KkDxW4cQf+i4L81/gkSVK9W
         YYYWh4RM6BgPUwMQ2zR2NKJxXfgXN24xqY0nnsHW6HF/YGfJivFUUICKPUUAEtkJYNxT
         l0KNMHQ9ilOxic5iAX1iVgKvkOVX/1PXXc2l7bzFppsiZnBtXAKi8GYFjaDYpjHQF7sH
         01+zZdLqll8YOfCwZNeENUpQKHqc+SxIRrN32n8xcjUm10XpBJYI2oHpwcOI7/RzdJtD
         XV8A==
X-Gm-Message-State: AMke39lP70eYclfaHI7Jncc81d5+3uIYYMm223KY/ocXg5Gb2IAgrkn2b4QcjJ2X2Nm5Cg==
X-Received: by 10.84.229.76 with SMTP id d12mr19144992pln.21.1489083199227;
        Thu, 09 Mar 2017 10:13:19 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.243.15])
        by smtp.gmail.com with ESMTPSA id 80sm13887446pgd.39.2017.03.09.10.13.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:13:18 -0800 (PST)
Date: Thu, 9 Mar 2017 23:43:10 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/3] staging: bcm2835-camera: fix coding style issues
Message-ID: <cover.1489082995.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset fixes the following issues:

[1] Added null check after memory allocation to avoid a possible null
    pointer dereference
[2] Replaced instances of kmalloc and memset with a kzalloc
[3] Replaced null error return values with kernel preferred error return
    values i.e. return ERR_PTR(-ENOMEM) instead of NULL



Aishwarya Pant (3):
  staging: bcm2835-camera: add check to avoid null pointer dereference
  staging: bcm2835-camera: replace kmalloc with kzalloc
  staging: bcm2835-camera: use kernel preferred style for handling
    errors

 .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 24 +++++++++++++---------
 1 file changed, 14 insertions(+), 10 deletions(-)

-- 
2.7.4


