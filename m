X-GM-THRID: 6392947471116402688
X-Received: by 10.99.54.15 with SMTP id d15mr5469324pga.148.1488474074591;
        Thu, 02 Mar 2017 09:01:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls6716428otx.21.gmail; Thu, 02 Mar
 2017 09:01:14 -0800 (PST)
X-Received: by 10.13.233.70 with SMTP id s67mr5753660ywe.24.1488474074137;
        Thu, 02 Mar 2017 09:01:14 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id h79si1587587pfh.2.2017.03.02.09.01.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:01:14 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id s67so9875449pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=86uCpKmZaDyp3NjDNurNfnWZnuvFPEOj1KvUMvUQ5Sc=;
        b=M4obh/hi72tfuj9uEG2s7PdSbrktRGGoELytPODNw9ukffnueCw+8o6dY5vTsVOcF6
         HvSPy+79igR4VpKbi42OEzlhfzYx5xP860XoBfshNIJPZwtCTpsgm+90+Tgd0wA0xk25
         Vuk+pFo7pPPW2DVlQwuROZKspBIQ6XSUH0BG+W2Or3podqJHlQz7JbeT3OM/DnkBOlBQ
         BQK/gLvYjAJb/XDeS5Pv28MajI3KJAgGgPwLh2w8zieW5vydlZp45PP12F1WZWkGYfPj
         ziGmMhmkhXCBrREZBTUIm7EU6zK40Juz57B2O1CTCRsaRY4b2IAA2pgbu2mF+JLt/6kQ
         pIZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=86uCpKmZaDyp3NjDNurNfnWZnuvFPEOj1KvUMvUQ5Sc=;
        b=AShBj82FwQ0FHNir/stkJAxROJiD/UhYMJqeLH45rw1HpvlIv0gNQsLBsX8tJXkTyR
         5xjB8NR6KNeibEADSo1E5g6PRvRZ7+pzn0n5Gn5+SRrXjpP0V5nPHEnY1H/QU+LQ1YZr
         bijPS1OZBMARwBFsN2hvf4v2Jtlb1AD93WZ1tAE2/R9eA6ZeWU0q/+WUbG8v940P1LKI
         K/2M2RZdPY0nBqKjNi99lBCRgHySVl9NGnwF64jbtIp8VZeIk3f44wwny0YIx7N9oumO
         kAKjSxRVYZVODV5IROtWCoIOKXDN8InjLhrz7zqIHU3L+NEOl++SSjdYPIq/cbAvyeTI
         C1EQ==
X-Gm-Message-State: AMke39mDgSw/h67ZwMma0gIi5YNzD8/5Gu+Gw4EY5C85r62AqrJ424wAqJiESlq4wzMlSQ==
X-Received: by 10.98.29.216 with SMTP id d207mr817857pfd.144.1488474073910;
        Thu, 02 Mar 2017 09:01:13 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id 197sm18186226pfv.19.2017.03.02.09.01.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:01:13 -0800 (PST)
Date: Thu, 2 Mar 2017 22:31:05 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/5] staging: bcm2835-audio: fix multiple checkpatch
 warnings
Message-ID: <cover.1488473946.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple code styling warnings issued by checkpatch on file
bcm2835-ctl.c in bcm2835-audio driver

Changes in v2:
	- Replace pr_err with dev_err 

Aishwarya Pant (5):
*** HERE ***
  staging: bcm2835-camera: fix no space is necessary after a cast
    warning
  staging: bcm2835-camera: Logical continuations should be on the
    previous     line
  staging: bcm2835-camera: fix block comment formatting
  staging: bcm2835-camera: remove extra blank line
  staging: bcm2835-camera: replace printk(KERN_ERR) with pr_err

 .../staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

-- 
2.7.4


