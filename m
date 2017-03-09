X-GM-THRID: 6395446243166781440
X-Received: by 10.99.136.194 with SMTP id l185mr5277954pgd.82.1489055865377;
        Thu, 09 Mar 2017 02:37:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls5536638otg.18.gmail; Thu, 09 Mar
 2017 02:37:45 -0800 (PST)
X-Received: by 10.157.52.210 with SMTP id t18mr4666305otd.119.1489055865001;
        Thu, 09 Mar 2017 02:37:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r66si1112653pfb.7.2017.03.09.02.37.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:37:44 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so6902429pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 02:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=llb5ZE47ymC81bFO2NWlhWipjsZdVMslLIXZuKgw8qU=;
        b=X0HAT+La5mTx6lcDx+YwYbzPKAoiKM47xfPPuuz7v7FR943cyPFbZBRsFJNBB9Pv2K
         0+SS8wM6Qy1+DTwnPHiaMF9ZKbmS4TAv3AP3H8U3lkc+QtvsKyQCgabvEqgHUp21UKfD
         6eYW7hmFSlj/zGLK+6E1N8pkWL7asTpH1mmvA/PkrM7Ejr4mpZXCs8fK74IjRHsmtRxu
         wymBhSGNxUqm8oLK2e8hyt/qFyJr8worMQJJTClmIj+UfNHxcnCpE1znxFL0Gc99QNCC
         EG33DFQTpyX82/jcvUdQNz0lh76jLZ93t9ZRkJLRVf4n4TLbTd0B5yJQdOz+i7d4WKR7
         /ERg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=llb5ZE47ymC81bFO2NWlhWipjsZdVMslLIXZuKgw8qU=;
        b=KBJqwWlvpoCsQLyKZbZHImQLGUNom1MnbGoEdqOZy4Ue0UK58V49xO+QtgDCbR9YF+
         eGKSLNpSJt38Z4X6ecwRb1gy7zp5wbPDWL1g3WeA8buAzCkpBliNL2MrPg9S0NdMtVXm
         9jddEtc2s+bzLKTWLzExp5C1686Ag0ZC2CofIl8bvv16xdySsO1WXTIuz2VP3gJaHjGJ
         sFB28QbL/5UYAJG6zzbVHK6+jEYkSqcBxF9mayvsc7FJGZdKNl9ZK0goREaR7PUOg1M1
         A8z8TIA+6jeWYxoAZTLJzceANZiXPslJVUsGWVoeSwk18fi3ZsZ1YuxZmQflP6Lz8/kC
         gD8A==
X-Gm-Message-State: AMke39n3vt1FYXnmy/PMkIQHxLknC5LQEOtq05UD3CGoWNCWak1ZKpNwhaTQmwABNJ+osQ==
X-Received: by 10.99.56.85 with SMTP id h21mr12944115pgn.108.1489055864584;
        Thu, 09 Mar 2017 02:37:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.186.124.141])
        by smtp.gmail.com with ESMTPSA id u78sm11577173pfa.101.2017.03.09.02.37.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:37:43 -0800 (PST)
Date: Thu, 9 Mar 2017 16:07:38 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 0/7] staging: bcm2835-audio: clean-up coding style issues
Message-ID: <cover.1489055580.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset has the following fixes:

[1] Replace kmalloc and memset with kzalloc in vc_vchi_audio_init(..)
[2] Replace null return value with PTR_ERR(..) values in
    vc_vchi_audio_init(..)
[3] Propagate the PTR_ERR values forward instead of a hardcoded
    value for easier debugging in bcm2835_audio_open_connection(..)
[4] Replace if (success) else { } after kmalloc with if(error)
    to fail fast in the work function
[5] De-allocate 'work' when queue_work(..) fails in the work
    functions
[6] De-allocate 'vchi_instance' when VCHI connection fails or VCHI audio
    instance initialisation fails in bcm2835_audio_open_connection()
[7] Remove BUG_ON() in bcm2835_audio_open_connection()


Changes in v5:
-- Remove patch which added function names to log messages

Changes in v4:
-- Break-up patch 4 into four smaller patches
-- Add a patch proposing removal of BUG_ON()
-- Make the cover letter verbose

Changes in v3:
-- Fix memory leak when queue_work fails
-- Add __func__ to debug logs

Changes in v2:
-- Return error value -EBUSY instead of -1 when queue_work()
   fails


Aishwarya Pant (7):
  staging: bcm2835-audio: Replace kmalloc with kzalloc
  staging: bcm2835-audio: replace null with error pointer value
  staging: bcm2835-audio: propagate PTR_ERR value instead of -EPERM
  staging: bcm2835-audio: use conditional only for error case
  staging: bcm2835-audio: deallocate work when queue_work(...) fails
  staging: bcm2835-audio: fix memory leak in    
    bcm2835_audio_open_connection()
  staging: bcm2835-audio: remove BUG_ON() in
    bcm2835_audio_open_connection()

 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 100 ++++++++++-----------
 1 file changed, 50 insertions(+), 50 deletions(-)

-- 
2.7.4


