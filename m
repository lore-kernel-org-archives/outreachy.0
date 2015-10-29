X-GM-THRID: 6210938115276668928
X-Received: by 10.182.245.163 with SMTP id xp3mr40106922obc.19.1446096719041;
        Wed, 28 Oct 2015 22:31:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.93 with SMTP id 90ls152491ioi.9.gmail; Wed, 28 Oct 2015
 22:31:58 -0700 (PDT)
X-Received: by 10.107.137.223 with SMTP id t92mr1135519ioi.22.1446096718679;
        Wed, 28 Oct 2015 22:31:58 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id sm2si3916927pab.0.2015.10.28.22.31.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 22:31:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id hk11so29388944pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 22:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HOBKPZr3JRJ9qHe0eIpir4OO2Ssg3AxW68l624lnl08=;
        b=rCbQP/7WIfih8cWtL+GYEjbFUivM188H/UAnGHVLGWsnjmbUAE4w2Z/wkR/6eZy+7p
         5ARK7HDxXgnKbHHixibwbQ3ftNgIYYnGZ7fiICGruC6cRpXloSe/Ltl88Vcci8+Py5LD
         aHyDMsn8R/Z2YlTyHkFDdyu4/nBSVrhnxKXxj7P1+Ntfsa+cA7GS3cFR2krrfHoPsapM
         BXNiISVgmvEvq105a6lIZPS5jAjiHhEZGW9chHCdFlqFcf9WupmKpBlrlq9G8Y8JHcLe
         GpVacRaK6iCbrNWfy6ImjTKB5GEiD3RXLCLVGcKziNe9S9xGeX/6TeYHvaWtdTC3ukCS
         XuoQ==
X-Received: by 10.69.17.136 with SMTP id ge8mr38269631pbd.119.1446096718553;
        Wed, 28 Oct 2015 22:31:58 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ff2sm38134755pac.14.2015.10.28.22.31.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 22:31:57 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:01:49 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Remove unnecessary functions and clean up the code
Message-ID: <cover.1446096468.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset removes an unnecessary wrapper function and replaces its
calls with appropriate function. Also, an unnecessary return statement
is removed.
After applying this patchset, code becomes cleaner.

Shivani Bhardwaj (2):
  Staging: lustre: console: Drop unnecessary wrapper function
  Staging: lustre: console: Remove irrelevant return statement

 drivers/staging/lustre/lnet/selftest/console.c | 80 ++++++++++++--------------
 1 file changed, 36 insertions(+), 44 deletions(-)

-- 
2.1.0


