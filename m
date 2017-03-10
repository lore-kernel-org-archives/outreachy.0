X-GM-THRID: 6395446243166781440
X-Received: by 10.129.165.201 with SMTP id c192mr9378113ywh.74.1489161461179;
        Fri, 10 Mar 2017 07:57:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.129 with SMTP id c1ls5950291ote.14.gmail; Fri, 10 Mar
 2017 07:57:40 -0800 (PST)
X-Received: by 10.129.50.12 with SMTP id y12mr9356638ywy.111.1489161460660;
        Fri, 10 Mar 2017 07:57:40 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a3si1828925pfb.2.2017.03.10.07.57.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:57:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so11219355pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 07:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rk8awixI0wt+/X1C2q5ok40rOu5mz0FI/OgZEDG+7+g=;
        b=szH9UPTseOLx3gfm69A0yikFVO7NG37b6U/aAaNKCmTp8OmC2FveSagmgyvuJNHw2f
         FIWHtaMHj0DK6wb5qCS3Lq7r65A/zYqsOCfDSKlLsHixDlmZOjpVKuAkI42YCY+Va0wa
         LEbjRlw5dAlei84Clxo3nz2cMiISASj78fu536lMqpO4l6kCPWbckdGTBH+N35UqJ1fO
         xNu16eElhniePadMcrvlmizZhZ1AGn4/CROtNU4Pl5lCfMsy6ZNBrWnUcjr64xe4OKit
         hi3F5OTP8XM7NocBGaRyUgVQEtR83hIIaZxDpipyGoxaBMP5KRHWL73cTxXqlDNgRJpy
         /7YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rk8awixI0wt+/X1C2q5ok40rOu5mz0FI/OgZEDG+7+g=;
        b=JC58yWcABaazgFOQxScok4y+6AXeUxpbge3XGHHJA1cU5GbPgTTNNv/v2qbNfK0Ftz
         k8XAkqOtQzyEZbWCz1o6lohXfAcNij3fOD/0owqJIRGi8uDlseZklLLcuRzDUIv5C1mt
         wsha0z57Ce3/ssOLc5l+sebYPpchs8pQrTwwYrj7gd5ldNQIo6KZLqlh6YkSrKw67p7I
         5PiJiYH7XKk0EojkWOcQPVjjWejQuqgMvGIz4WaOYWq0lFFn9NE27OUyklUoCeE8YioT
         yG7yn+ZpghJg/Vp6b+AUMgw2CUp1hsYTPWx/i+5NzUK7aXE5pjI+KIaZfB3T37K7IJ5P
         BIAQ==
X-Gm-Message-State: AMke39k8tbhDnoGKB04mEkwisrWEy3K76xREl8+lzULShaX7xkIYR39wgeSWeNXvZ5rgsg==
X-Received: by 10.99.5.82 with SMTP id 79mr21286585pgf.8.1489161460195;
        Fri, 10 Mar 2017 07:57:40 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id 80sm19492473pfy.67.2017.03.10.07.57.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:57:39 -0800 (PST)
Date: Fri, 10 Mar 2017 21:27:30 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v6 0/7] staging: bcm2835-audio: clean-up coding style issues
Message-ID: <cover.1489160830.git.aishpant@gmail.com>
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
[7] Remove BUG_ON() in bcm2835_audio_open_connection()


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

 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 103 ++++++++++-----------
 1 file changed, 49 insertions(+), 54 deletions(-)

-- 
2.7.4


