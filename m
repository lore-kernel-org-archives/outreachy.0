X-GM-THRID: 6395446243166781440
X-Received: by 10.13.239.4 with SMTP id y4mr13250619ywe.155.1489333118040;
        Sun, 12 Mar 2017 08:38:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls9938949otw.5.gmail; Sun, 12 Mar 2017
 08:38:37 -0700 (PDT)
X-Received: by 10.129.4.73 with SMTP id 70mr14007128ywe.153.1489333117709;
        Sun, 12 Mar 2017 08:38:37 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2620088pfz.1.2017.03.12.08.38.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:38:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id v190so16317353pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kG2h+VYsOD9ZT9ak9Tpa22WgSQEjGsDhUEWaPBihby8=;
        b=Hk1+OGy0VRKTdYuJjCncVMp0eWYaLHd+iWH2DaEZZ+uMq9FThGYGZIk2fXgObzrYYi
         JFVXIELAR74EPjPfYZcfDY96l78DERL2wQvL7dAmUr5AlMYsXrYtJ9JWfxKfY5qgfkNb
         J5cZ8UGhSjHxuh8B10kK00LU2jQuU1M8KtAFTck9XkvfFq4OgXZd5Wn38P+fZBhcRBaC
         nGgi7lGt/YquDquUMsj9giPG05Ps+upjwmesjKOm0N09Va3aanH+rWJV0ZXKiqz8ccuV
         HpuEOmtPR97lPtyRfXqZig/vnLEDyPern6Se34niGPptyqruShgfioRYrpUiWk5LY/zo
         CFQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kG2h+VYsOD9ZT9ak9Tpa22WgSQEjGsDhUEWaPBihby8=;
        b=GQllGbLpDiY+pBFhGB+yiVTKYE38LoVxS+zduuA1ozvKwnyn2GrwjqzF55OoFT3rST
         4agtlusNJnZjoPB1uV7MgwDJd8u57HOsHzcnFUe+KJRWhlleI9LaDvLBq8uVcLZjxM16
         UpwLK8arI9XpbmWW6TmYPXFakHje7goFj2MZIu9EcqPJgz0XaKH35F6I5mRVpNSh3fkh
         TjQ+Km2PFK/alqNEb56cAe1/ggNm5Y5nW6x90p8O+oNjMMoe98Gr5AnHDFg3vGl5lwS4
         O8ZLLgnLq+IL2Km6K58Xo6fWagG7bqxxoTn5hQ5AGqj40ME6fVEdUZ1ynzszhYEeH77e
         TDQA==
X-Gm-Message-State: AMke39nitPkyjYjYeCtyspuSOefJGcRG+GRHVuok7uy2PopREB6/jFtUo7f5Yjeuan4B7A==
X-Received: by 10.84.229.10 with SMTP id b10mr40922281plk.148.1489333117261;
        Sun, 12 Mar 2017 08:38:37 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.35.14.30])
        by smtp.gmail.com with ESMTPSA id o125sm28873914pfb.109.2017.03.12.08.38.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:38:36 -0700 (PDT)
Date: Sun, 12 Mar 2017 21:08:25 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v7 0/6] staging: bcm2835-audio: clean-up coding style issues
Message-ID: <cover.1489332734.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

[1] Replace kmalloc and memset with kzalloc in vc_vchi_audio_init(..)
[2] Replace null return value with PTR_ERR(..) values
    in vc_vchi_audio_init(..)
[3] Propagate the PTR_ERR values forward instead of a hardcoded
    value for easier debugging in bcm2835_audio_open_connection(..)
[4] Replace if (success) else { } after kmalloc with if(error)
    to fail fast in the work function
[5] De-allocate 'work' when queue_work(..) fails in the work
    functions
[6] De-allocate 'vchi_instance' when VCHI connection fails or VCHI audio
    instance initialisation fails in bcm2835_audio_open_connection()

Changes in v7:
-- Added back the debug log messages in bcm2835_audio_open_connection()
-- Remove label err_free_memory, re-use label err_free_mem to kfree 
   vchi_instance in bcm2835_audio_open_connection()
-- Drop patch 7 which removed BUG_ON(instance). Looks like if(instance) 
   block is WIP, BUG_ON(instance) may be required for debugging in the 
   interim period.

Changes in v6:
-- Add a local variable ret to set error value instead of
  returning -EPERM when initialisation of vchi_audio_service fails
  in bcm2835_audio_open_connection()

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



Aishwarya Pant (6):
  staging: bcm2835-audio: Replace kmalloc with kzalloc
  staging: bcm2835-audio: replace null with error pointer value
  staging: bcm2835-audio: propagate PTR_ERR value instead of -EPERM
  staging: bcm2835-audio: use conditional only for error case
  staging: bcm2835-audio: deallocate work when queue_work(...) fails
  staging: bcm2835-audio: fix memory leak in    
    bcm2835_audio_open_connection()

 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 87 +++++++++++-----------
 1 file changed, 44 insertions(+), 43 deletions(-)

-- 
2.7.4


