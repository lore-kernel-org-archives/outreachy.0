X-GM-THRID: 6264608921971851264
X-Received: by 10.182.63.17 with SMTP id c17mr25615603obs.49.1458592927193;
        Mon, 21 Mar 2016 13:42:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.70 with SMTP id k64ls2612134qgf.25.gmail; Mon, 21 Mar
 2016 13:42:06 -0700 (PDT)
X-Received: by 10.140.167.7 with SMTP id n7mr24803262qhn.19.1458592926568;
        Mon, 21 Mar 2016 13:42:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id sf5si4236249pac.1.2016.03.21.13.42.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:42:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q129so32573386pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 13:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0HUPWmsEBU6bS/zDmIuQprrRL8fZO5nPtF/UW8Pr3ik=;
        b=Cx/yJD7PHoEpxfY0j1eYnUZm/YaGOiSQDB/rwR+hm6X0v8DLa9uHY8Q7AtYBKRRUXV
         bevQVaVYxdFEf/As/4IuKI6N/ehNfBVL42MgveDsz+QexTt0Cz8oo05aYCGituH8Uwnb
         TdWU834ZDZKJdfL6hKzrJnt9HA9B5/tYebB2w191DF5AUzO6nu1AlDJ8LfWuXVAFKCZG
         uQSXVcVziWeLvbHpy4tI/f8MuFyq4ExTscQLUCjaJ/z+uH9BIgJDZmn3xZsK8ZQ+43CQ
         pGPeAc+HjK/5PPdCOxFrx1NuJs3CImLojGOQEnivZ2jnq9nWf+BWc6VhYXVyYHAL5vH8
         fXdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0HUPWmsEBU6bS/zDmIuQprrRL8fZO5nPtF/UW8Pr3ik=;
        b=i1GtzfvDUz998oi4otwm0pXlWCpmi4s2HAgHKZc5nE/LvpjUwWKUPcgpNJpD3mcHps
         9i1GmyUdRnosNorioV7YwfWGB/9A11zWC57Sr9pnA3tBoNaZCubVpTlBAo8Vsp+eZoPr
         KRRKoqdY4OI7rfFXL0L57nygeQEH8VgNGDOTNB1NQaz+yTV4VvNLDOWtXHDlJH3PebXB
         5/gR2+cBItwApcEt5zhQKyYNAswT+JyIauYuF+KfSqBMuAAkNBZWNDXDT2tQ93RxNxla
         yh3NZpnvvF07pql08iJVJ5Y3DhCuHIx3oW9DCJBeDyT5aK67gxqaXvUVBNgjpvrM/1pn
         NuFQ==
X-Gm-Message-State: AD7BkJLL4d/c1AbN3lkWhsmLmiVk+DnY1ROvhD26Dsa8hUmAy7AZnqYVQGh8Z84suU0cIg==
X-Received: by 10.98.42.211 with SMTP id q202mr48096577pfq.13.1458592926389;
        Mon, 21 Mar 2016 13:42:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id p74sm42784407pfa.11.2016.03.21.13.42.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 13:42:05 -0700 (PDT)
Date: Mon, 21 Mar 2016 19:13:15 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: lustre: Remove return statement from void
 function.
Message-ID: <cover.1458567188.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove return statement from void function,as in void function return statements are not generally useful.			

Sandhya Bankar (2):
  Staging: lustre: socklnd_lib: Remove return statement from void function.
  Staging: lustre: socklnd: Remove return statement from void function.

 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c     | 1 -
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_lib.c | 3 ---
 2 files changed, 4 deletions(-)

-- 
1.8.3.4


