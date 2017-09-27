X-GM-THRID: 6470000031137005568
X-Received: by 10.98.211.86 with SMTP id q83mr300113pfg.22.1506534532743;
        Wed, 27 Sep 2017 10:48:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.55.65 with SMTP id e62ls579908pfa.2.gmail; Wed, 27 Sep 2017
 10:48:51 -0700 (PDT)
X-Received: by 10.98.58.25 with SMTP id h25mr298143pfa.23.1506534531704;
        Wed, 27 Sep 2017 10:48:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506534531; cv=none;
        d=google.com; s=arc-20160816;
        b=IHe+nIydy+SvEY8rirGr7KVKgX88ke/VT2FgN6IB2V9cy+OaRwloeROCECduTnUWQ5
         njccPC92/C8QYrWChZliqAJS0LIakxoCdi1WZdRQcqJG2QQMrabQL51nWIC1HNZ0b2Vp
         F2T/ZjlSP6mL617JAAR5U5CjDT5hnRVHMXqZSBKgi+SVRmBj/5RZGQ+scRFrxydPVfXn
         TcA70hfvISCRj7esXHKugJnTKYHNOYuCp5vUUHIERPrpbhVS+dcFp8yWCtTqnD/veKSI
         spYA9U/VN5jiuWnygSMojxJa+SQk8KKshWBDHtbeh0ARVcbQ8F5KuNL6RtnzibhfNe+i
         0jPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=geaCCyFAEFZ4tWJ7sxuXNUtgU49+Rq2cNUpWGa9CjFQ=;
        b=AcQDbnF3zGLnoy0tmvcOmaZtFgPJTgxFKJAlSf+2jacgN4xawIGVT8FTFp81lUU/Lf
         6VmXwVEEGwzG9xd2eU7UbrFHD9TaJKfIIDHIjrY70SQadhdx6I7CL+pdYoju4OtPbzpq
         XS5ZB9y7orA1XA1ojJlde3mZ96ae5rm6DcYmiqGfMCvxQtuQQQUdStlkf3qJtKTZPC/s
         LB9hNAGYOWlCxHjPY+rxFfQuVL1yrQVPNa9QgCA5bJ7QSqjMHqg8uorDohOR8OjXuMkV
         MzArZh6U7xROnfSDVGcrBAFWwfhX9M6XeY/Qynd+LmFrx3kzhJ3NEpPPbEa7nR6Xalyr
         37lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fYxhUGYG;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id o128si881820pfg.22.2017.09.27.10.48.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 10:48:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fYxhUGYG;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id f84so7362913pfj.3
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 10:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=geaCCyFAEFZ4tWJ7sxuXNUtgU49+Rq2cNUpWGa9CjFQ=;
        b=fYxhUGYGz9cTWJB/NuRcQw+orrBvtPDJiXB+7TGgG/BvzgPKby8ts18AsBaNijbRFV
         puers0EdSjj4OWJ/czpbqtEaSzZiAw0CnV7Jldnzz1sC00+XW6XhckVhvWtYa9/fF6JT
         lARUCIyyxDf2NBPu5kGRt7NvOGvYMo5f/JgK8dOfqhD/29g3WCtbJOGoScj/m+0TpC35
         rOkzbiOGgBcyyVP84ouAb0ULWDpx2ghpMIN7VW+K3j4IFmx2kDM4X032APgtsJUdoGpw
         atCh22gultvMB1ZCmxcB+pn/dx00TJrhrImK9by1rCMz1m2dyZCcvnJpdg2LV8phX0Bt
         meCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=geaCCyFAEFZ4tWJ7sxuXNUtgU49+Rq2cNUpWGa9CjFQ=;
        b=Ng6CzmU0vjxsXg7Nb2LQxqLLHc/zEjg2iWMNFtkN1wsY3GLN1m9FrljeEmu9zdfrQ3
         UMPC8+UilqZN5y9NoFhZTgEbcGUVo6Hm/VCvjUvg+X7R6oA25uQ6E8rfichVtVR//tBB
         l735WfSGVwSN0hAIhlZcj7Nw3HgfkQk5mQTtcNw4A2qTwwBxWA9rr2UU4o3OCS7sFtT9
         k5Li57ryBQPUEYEZUTPYbiflwp9rnyIHETAAeCOCEl4lT/hz61SVDAoQYYQotREAAzS5
         WooKaoCbX7ILlrFdVo2KjXPJGP01+25q+WEio+39hseaPX7YUI4gIIfxGgIcmxTOWZr4
         30+g==
X-Gm-Message-State: AHPjjUhsEvTyV46uhyom21FinlSCOieoQj6rGQzVpoq7h80VQmWRXEMy
	tNcdAJEzR13X2jrfNpeE7rVMQxYs
X-Google-Smtp-Source: AOwi7QCVHuJqp+PCMFyAtJxJ6avE61t0MomGj3Ca3dKUy5q5h/fTOfIzpdsRzh9zJN/0QPc0bixKBA==
X-Received: by 10.99.115.30 with SMTP id o30mr2000739pgc.447.1506534531526;
        Wed, 27 Sep 2017 10:48:51 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id v70sm9889741pfa.173.2017.09.27.10.48.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 10:48:51 -0700 (PDT)
Date: Wed, 27 Sep 2017 23:18:45 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com,
	outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] Fix spaces and typos in vc04_services
Message-ID: <cover.1506534236.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

In this patch this patchset fixes typos and space
related coding style

Keerthi Reddy (2):
  staging: vc04_services: please do not use multiple blank lines
  staging: vc04_services: fix typos

 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c    | 11 -----------
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c  | 11 -----------
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h      |  2 +-
 .../vc04_services/interface/vchi/connections/connection.h    |  3 ---
 .../vc04_services/interface/vchi/message_drivers/message.h   |  5 -----
 drivers/staging/vc04_services/interface/vchi/vchi.h          | 12 +-----------
 drivers/staging/vc04_services/interface/vchi/vchi_common.h   |  6 ------
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c    |  9 ---------
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.h    |  5 -----
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.c   | 10 ----------
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.h   |  1 -
 .../vc04_services/interface/vchiq_arm/vchiq_debugfs.c        |  3 ---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c   |  3 ---
 13 files changed, 2 insertions(+), 79 deletions(-)

-- 
2.7.4


