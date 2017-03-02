X-GM-THRID: 6392863906268708864
X-Received: by 10.13.235.74 with SMTP id u71mr4614871ywe.115.1488454618251;
        Thu, 02 Mar 2017 03:36:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.222 with SMTP id 91ls1974277iol.41.gmail; Thu, 02 Mar
 2017 03:36:57 -0800 (PST)
X-Received: by 10.107.129.96 with SMTP id c93mr4471690iod.22.1488454617480;
        Thu, 02 Mar 2017 03:36:57 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si659370pfz.1.2017.03.02.03.36.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:36:57 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e66so907637pfe.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 03:36:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zmgZVi71VHK0fxOHOdH/Ulq/RfEu9tv4hvZ20rq5Dtk=;
        b=bJC7EZOn1lmhAcow8oqO4TGzdlYspnEWIq5aevd+yTGA7FnqXLSGPijxKo07nTnZOy
         xjjjPxxBRQIXJIcHozQaJRl7RoLNfs2sJfiISqCihg8K8ZQFwhwn/mVu/8oEVzgKpqFq
         ph4g7kXmWN30WIDUOzXug1angzYK+4ZZ+Kq1ztxZkKO3bm11X2WBx9ATnRYoeYvBD6Uv
         QYjc43ZvOSL8HCszol6UArA+wDb26nfZ6TfrGwafHutXQ11HOIKruj8lZ8N0xMplYYwx
         PmREGTRgGmchgi7LL31cmOIa4uGbJV5GX/NLmZUk68/YJHI8kqHnjg/PphL+7n4uvStY
         6PuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zmgZVi71VHK0fxOHOdH/Ulq/RfEu9tv4hvZ20rq5Dtk=;
        b=M9pBMtHZdjRPGdevtq30Gkqfli6AjvlXuJLI6gFDvsV4g+N9/0C7hzh6iR6RGZO7DU
         v0kigMgaCAccbkiZkkBd8fZepJzqULQVlRbvyGC0y2Mr+V1WuDf7rpulewtkI/TV6VxF
         Cw5JEXzgi0cghcIX8PqTzdGN+ObORyiS6wjQxvXPhhB8IzVhk8P1XERxRdrS/SfgSswy
         T9oQEkj7bMpEYqNw1JkeGta+BV4oPPPSiBMD6JBQFdOCfsqB7YPvnYPWZdZm5Nvq0Bdj
         SlKrELN+oqkGA3uoLwb9cRUIU26hE/ntzSa7/mNx6PZyRJvh8z2OV2ytc0xg5/oA71Dd
         4EAg==
X-Gm-Message-State: AMke39mZJ9i/EkLJcYWP+poqzLM1uRniVLS0AaStL95rVjmJk4jY39e3dHn7OvWfjIXrgA==
X-Received: by 10.98.108.196 with SMTP id h187mr14780179pfc.176.1488454617243;
        Thu, 02 Mar 2017 03:36:57 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.11])
        by smtp.gmail.com with ESMTPSA id s65sm16679178pgb.64.2017.03.02.03.36.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:36:56 -0800 (PST)
Date: Thu, 2 Mar 2017 16:57:00 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] Fix multiple checkpatch issues in bcm2835-ctl.c
Message-ID: <cover.1488453518.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple code styling warnings issued by checkpatch on file
bcm2835-ctl.c in bcm2835-audio driver

Aishwarya Pant (5):
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


