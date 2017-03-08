X-GM-THRID: 6394401254530875392
X-Received: by 10.25.234.202 with SMTP id y71mr933545lfi.2.1488984521313;
        Wed, 08 Mar 2017 06:48:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.6 with SMTP id i6ls384969ljb.3.gmail; Wed, 08 Mar 2017
 06:48:40 -0800 (PST)
X-Received: by 10.46.20.74 with SMTP id 10mr73535lju.0.1488984520959;
        Wed, 08 Mar 2017 06:48:40 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id t131si281880wmf.1.2017.03.08.06.48.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:48:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so6449338wma.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SGsBz24GFtxUVk5IHZiMQy72kP0puEGOsJJ4sKxnMbE=;
        b=f/nZVCyFwrBvNSx6w6tWUWPyFPsVooau09N76ZGLsVpCfrwkJMHb2+N+Uj1Q8H46/q
         GIyJGYTLwa+hF4nEMwYXDxC5TwhSg8WjUpKeJakOnx1Sn4FF3brJukWe6gCBpv6NmYbg
         p3fS+Yb8cEtXzjbjeOuKa0n2n5EB2QBYLO49sUL0EPJy5lZ3xIfd8vIoTqtLK8Lu6j8e
         T5x8nbdC7jimBhLLekaDxKmc0+9oTESpQd1mUvp6wYa0FLYQCjxcvluNRFqabuU9L1sQ
         5edMjMUl3HjT7CTXXMbSD/qUmdStpCjrIinBZPE2Dx7jhZv33BECQ3uGaaYwiE8JugUb
         ARkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SGsBz24GFtxUVk5IHZiMQy72kP0puEGOsJJ4sKxnMbE=;
        b=QtrhGRJLFEzVPsx0xGINDwArIoLFKnzi/ENqJp7V/N+geFfyD90rcIqnw8v0vv9IHQ
         jXL1uAHLDmFf9SwOQ+MeGG5vl+7ghiHN9YCj5ehAgtf1VhBfd+y/8II+zO6X+Kf0nedc
         mqPZIE08TCfbQrD0guqg/SV/ZAAh/QOe/yjeLtBS/x5V89LryJBxWzKFnZ0OYASSdWPw
         ETZBx2vHnGKz5s3/HmTaqLaXFigLf/PTcd7ljpm9Cpt5GXaR0GLuQqNCKiMFgU641d8L
         Vjf1bPHoMzSxxX9uTX9zANNt8p0ZqfFxUuUU6lk0FGZnARF4XGWlapMbD1A96Mm04qhH
         eYzw==
X-Gm-Message-State: AMke39n9saNvVCZIYsTbPbtIqcPqDvYh33AS9Ry3QKVmFU9oi+i+vmUbVr1eGAYDdUdNhA==
X-Received: by 10.28.97.194 with SMTP id v185mr5892087wmb.117.1488984520452;
        Wed, 08 Mar 2017 06:48:40 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id x18sm22185290wmd.14.2017.03.08.06.48.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:48:39 -0800 (PST)
Date: Wed, 8 Mar 2017 20:18:34 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/8] staging: bcm2835-audio: fix coding style issues
Message-ID: <cover.1488984315.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch has the following fixes:

-- Replace kmalloc and memset with kzalloc vc_vchi_audio_init(..)
-- Replace null return value with PTR_ERR(..) values in
   vc_vchi_audio_init(..)
-- Propagate the PTR_ERR values forward instead of a hardcoded
   value for easier debugging in bcm2835_audio_open_connection(..)
-- Replace if (success) else { } after kmalloc with if(error)
   to fail fast in the work function
-- De-allocate 'work' when queue_work(..) fails in the work
   functions
-- Add current function names __func__ to debug and error logs in the
   work functions
-- De-allocate 'vchi_instance' when VCHI connection fails or VCHI audio 
   instance initialisation fails in bcm2835_audio_open_connection()
-- Remove BUG_ON() in bcm2835_audio_open_connection()


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


Aishwarya Pant (8):
  staging: bcm2835-audio: Replace kmalloc with kzalloc
  staging: bcm2835-audio: replace null with error pointer value
  staging: bcm2835-audio: propagate PTR_ERR value instead of -EPERM
  staging: bcm2835-audio: use conditional only for error case
  staging: bcm2835-audio: deallocate work when queue_work(...) fails
  staging: bcm2835-audio: Add function name to debug and error logs
  staging: bcm2835-audio: fix memory leak in    
    bcm2835_audio_open_connection()
  staging: bcm2835-audio: remove BUG_ON() in
    bcm2835_audio_open_connection()

 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 109 +++++++++++----------
 1 file changed, 56 insertions(+), 53 deletions(-)

-- 
2.7.4


