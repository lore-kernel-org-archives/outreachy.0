X-GM-THRID: 6212612362539630592
X-Received: by 10.13.216.14 with SMTP id a14mr19154058ywe.8.1446486535955;
        Mon, 02 Nov 2015 09:48:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.100 with SMTP id o4ls926862igr.26.canary; Mon, 02 Nov
 2015 09:48:55 -0800 (PST)
X-Received: by 10.107.150.208 with SMTP id y199mr21812900iod.15.1446486535595;
        Mon, 02 Nov 2015 09:48:55 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id el2si2126200pbb.0.2015.11.02.09.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 09:48:55 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id z6so154800902pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 09:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=pZEpZAaS/miky4z1FZOzEIdV4t9G3eOsg7Fl73TBUdk=;
        b=STO8m8iThSVIQCeDnAE4cF0Sas0IDgdRDryvSSFCduWd6jmYH95CO58rmbiolREMIJ
         lCWIsXmxPfjvNc52WX1Tht8QUlmkcxKf3wa40r2xnk3qa1oVyRcPC0rA9bmYIW18t9Al
         59sB1n9X+fUd+meUVCmZEHqAnAMz+0fERPoJejSAH6Vk8SA2caBCLMjmaBzkIQ0khPEG
         ALEJbylmzy3plAfci3ZXg75xZRfOuQg7DWEzUgsgv8ajc2c7DqQRfVBIP6yICjLh4+Vw
         5lS+GTIRZd1fr7XIwYjBgMcGWpQpv7GpDkLlG6KvGzrlRD1RnacW6DHAhnHYojvBkzvq
         nfKw==
X-Received: by 10.68.69.6 with SMTP id a6mr5961381pbu.62.1446486535479;
        Mon, 02 Nov 2015 09:48:55 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id es4sm25132427pbc.42.2015.11.02.09.48.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 09:48:54 -0800 (PST)
Date: Mon, 2 Nov 2015 23:18:48 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Remove wrapper functions from linux-cpu
Message-ID: <cover.1446486397.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset removes unnecessary wrapper functions and replaces their calls
with the appropriate functions.
After applying this patch, code becomes cleaner.

Shivani Bhardwaj (3):
  Staging: lustre: linux-cpu: Remove wrapper function
  Staging: lustre: linux-cpu: Drop wrapper function
  Staging: lustre: linux-cpu: Remove unnecessary wrapper function

 .../staging/lustre/lustre/libcfs/linux/linux-cpu.c | 30 +++++-----------------
 1 file changed, 7 insertions(+), 23 deletions(-)

-- 
2.1.0


