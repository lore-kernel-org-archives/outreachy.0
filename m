X-GM-THRID: 6392947471116402688
X-Received: by 10.36.70.212 with SMTP id j203mr2187386itb.16.1488477338160;
        Thu, 02 Mar 2017 09:55:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls7528490ote.48.gmail; Thu, 02 Mar
 2017 09:55:37 -0800 (PST)
X-Received: by 10.157.12.36 with SMTP id 33mr5389651otr.68.1488477337753;
        Thu, 02 Mar 2017 09:55:37 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si919261pfz.1.2017.03.02.09.55.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:55:37 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so7361466pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DDNdcAto3ULz1EFwlRgSem/KgzIS/4MwZBrF3FjI3ew=;
        b=ozqdo2HlRamskGvyA7w3skcspiZev3qXrY9i5rZl7mN2IyhwA8sB4YRneVjxLjmqcy
         q9dJUc9hpbIqVUcQd3iGbgMFkqfsU7evAr6eNTQZHA47jTLe83f/t5wytlYW/WaItPbX
         Id+kdfTd/BGIzDQ9t62bTs2ZBozD70p5BdLhv5rj0FyJjzsbiFyq5G1LsdTwEUlPxJyA
         ZXgV+8ai/gnDhE5wUQ0T5wdT/W4Mx3CcTBdzceHSwSKMH90KpuAy1iGtuZabme2BnKTU
         eWPIrjX2392jNJY7qfiQtsjbU8S2/aEY+S8swQ7TITxEYe4cpimlQc0bP3OVYxNOseGc
         OR5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DDNdcAto3ULz1EFwlRgSem/KgzIS/4MwZBrF3FjI3ew=;
        b=fLQ1elpuzy3wsT9Z9jEMOnbwmz2CFf/ybNgq79U3vXdylHbaBMbI4VeM+DfyZvQ11C
         VHEvTsD4+HZWjpX14SMxDiiev2pssUNOCihPFRhE7L3G1VRfKQe761odXRSHIPLZ42Hw
         ABgFYcYQ9mZkLxAkjq2E4BYn9KRmBAy+h7T1EFjoDrwcaaSNTGKUuFjzkgGqszIzXPKo
         bUWCq9o4A6Gyl73tfAee1/W4TlRF1aayjmgXDT/LjCXsKeNw/muo3OCEIIVlYxnTBq31
         9sB/Ef1Zd8eWDIxfmKMajoJhZ527rpF/iw/dSe2jT1zWRZAIii3vO9h9x9nce8eyKCgv
         wnkQ==
X-Gm-Message-State: AMke39m9CzLA2BoL0R4oyr1THwVzYXHCcFCyuCxzll0mienX/DJD0GQxcbeLqOYDlQIY2w==
X-Received: by 10.84.199.170 with SMTP id r39mr15395342pld.144.1488477337501;
        Thu, 02 Mar 2017 09:55:37 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id e70sm5445331pfh.84.2017.03.02.09.55.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:55:36 -0800 (PST)
Date: Thu, 2 Mar 2017 23:25:31 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/5] staging: bcm2835-audio: fix multiple checkpatch
 warnings
Message-ID: <cover.1488477174.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple code styling warnings issued by checkpatch on file 
bcm2835-ctl.c in bcm2835-audio driver 

Changes in v3:
	-Merge two if conditions
	-Fix subject of patch replace printk(... by dev_err(...
Changes in v2: 
        -Replace pr_err with dev_err 

Aishwarya Pant (5):
*** HERE ***
  staging: bcm2835-camera: fix no space is necessary after a cast
    warning
  staging: bcm2835-camera: Logical continuations should be on the
    previous     line
  staging: bcm2835-camera: fix block comment formatting
  staging: bcm2835-camera: remove extra blank line
  staging: bcm2835-camera: replace printk(KERN_ERR) with dev_err

 .../vc04_services/bcm2835-audio/bcm2835-ctl.c      | 23 ++++++++++------------
 1 file changed, 10 insertions(+), 13 deletions(-)

-- 
2.7.4


