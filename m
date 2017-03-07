X-GM-THRID: 6394401254530875392
X-Received: by 10.99.111.6 with SMTP id k6mr671751pgc.131.1488906638945;
        Tue, 07 Mar 2017 09:10:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls997050oto.31.gmail; Tue, 07 Mar
 2017 09:10:38 -0800 (PST)
X-Received: by 10.157.3.171 with SMTP id f40mr593224otf.103.1488906638523;
        Tue, 07 Mar 2017 09:10:38 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si119320pfz.1.2017.03.07.09.10.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:10:38 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so729488pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 09:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GNfUNp0OCRsQz0VHz3BUJVWy45XChC0o0IxtgeL5gVU=;
        b=YVxBt9qWEH5hWf0S3cCU/jOjzGOdmVxLvLAudpgpu5w0ka+KVB6j7b+IIeD4sc7Xv/
         UzxxyCHZoM8Q3ZGCkKqmV7+FGHMAxtTMXnr6yVXq0Mv1WSnQUBM/ZDsr3e6bUgcTbsFP
         NwKiRulljMTH6wNpVotzcwQzV6AZjAkvJyoocrwAJu6HIBhWl7p5Rb7KB9MF81FUh9lH
         s4zS7D6+Gk7EtRu9/gVAEUESF4ar7/Yzfs69W/xFJT22mowRJ3TAO7KIxBE/+9z4nZjn
         5dXyf0t41v8yQoag1OZE3D/EFVZyDd2pnvBjU2DHhG3Z1ogxM4FR1ztWSLA88pqtPHYT
         oWig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GNfUNp0OCRsQz0VHz3BUJVWy45XChC0o0IxtgeL5gVU=;
        b=QZXRmrLGIQ7EDL6bhHkXHyB7hN/xTTMgu7abdDpyLcJ7WanhqEnhvCpFyw6YVAAqKX
         vOGnJqKi/9s+JnEy2aQZQIKFAlgqdv4lRVnb+sF3N4J+ULnqXiC7buBJUhyyG3v/jv6C
         PYapjjChxNqD1XY2kPwRdQMN+ZdrhfNWxQ5M1JLt1f5LjL+f+4lgoxxKTtfQmsrY29os
         XETicb1s9ww1O5Uw8jnxwF48o2BW06osA0VSOk/aokozGy9p1P/Qj3vsF0lFqLbhcsgh
         d7666eceIKT0yAfOMgHPJFHP/O5pO5/4Js0qYmUh5N68y7UYZoTjRTRovc8/0WRRntKS
         EIeg==
X-Gm-Message-State: AMke39lcT0TMoHxgR0jCIenmITTtzzkpChJ+JnzAW+RZBIhULPhHG+Mpv3kmT6IBwJPQ1w==
X-Received: by 10.98.107.194 with SMTP id g185mr1579923pfc.22.1488906638153;
        Tue, 07 Mar 2017 09:10:38 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id a16sm933617pgd.62.2017.03.07.09.10.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:10:37 -0800 (PST)
Date: Tue, 7 Mar 2017 22:40:29 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/4] staging: bcm2835-audio: fix coding style issues
Message-ID: <cover.1488906373.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset makes the following changes:
        - Replace kmalloc and memset with kzalloc
	- Replace null return value with PTR_ERR values
	- Propagate the PTR_ERR values forward instead of a hardcoded 
	  value for easier debugging
	- Replace if (success) else { } after kmalloc with if(error) 
	  to fail fast. Fix memory leak when queue_work fails.  
	  
Changes in v3:
	- Fix memory leak when queue_work fails
	- Add __func__ to debug logs
Changes in v2:
        - Return error value -EBUSY instead of -1 when queue_work()
	  fails
	  
Aishwarya Pant (4):
  staging: bcm2835-audio: Replace kmalloc with kzalloc
  staging: bcm2835-audio: replace null with error pointer value
  staging: bcm2835-audio: propagate PTR_ERR value instead of -EPERM
  staging: bcm2835-audio: use conditional only for error case

 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 98 +++++++++++-----------
 1 file changed, 50 insertions(+), 48 deletions(-)

-- 
2.7.4


