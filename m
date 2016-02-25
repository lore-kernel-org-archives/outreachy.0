X-GM-THRID: 6255218604586827776
X-Received: by 10.13.227.133 with SMTP id m127mr39474835ywe.1.1456406573920;
        Thu, 25 Feb 2016 05:22:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.20.167 with SMTP id o7ls205039ige.3.canary; Thu, 25 Feb
 2016 05:22:53 -0800 (PST)
X-Received: by 10.66.148.4 with SMTP id to4mr39346108pab.8.1456406570388;
        Thu, 25 Feb 2016 05:22:50 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id u66si1265198pfa.2.2016.02.25.05.22.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:22:50 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 71so2817325pfv.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 05:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=OcdWYZk5/c1Y1NSwnAKFD4EAM7NLNZHkj5gTGEJApT8=;
        b=Ck+M8C69RA1SSxe/DnYBjrK8Nr7LnMXGm5qIZhEu2w1q2dV2pl9c5jKqgG86nEPYNR
         KA/oEdvNS1VLLwzwuUtFC8RQnYAloV1LD0/jfsZPxgEWD5fGebwqJOh8xKgWjNAMeJQN
         84nFaWThXERPJJbcmDBw/UI31En1UJ06fQfioTtNWy2pAlDy8m4unfSko6jtTPBig6T0
         EI+9fkw915PzOqEZSN1yOxYDz8AzFFFouaq0oZGv7gJaLiHUWcMKYbiNqGN/YF+PapYW
         7BIRo7VehoZvwMvMLDEmEzEH+R4cx7exkipKkKFo0sydlIWIRNy/cCM5KQwINaHQjiZ6
         UuZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=OcdWYZk5/c1Y1NSwnAKFD4EAM7NLNZHkj5gTGEJApT8=;
        b=P3A8tGI4W/Iwo8U6kGZzdf6sDuo3ap51rLW82cPUJwzKD0eG+zuM9LLLxhPy3Rlgci
         s9uE2JriY3qimA6UkNSoQ2J6Ku4Qp1PoPpZlgG6FOMnkYU6N7LVnprrLwXh0dVWCn8A+
         lLN75wOpYbahwXkGEDp7GToPf8Aq2P8PWAejj5AA1cdxjfMutm5TrtqEC2HMjQx8/2z7
         gyGburk+z2EpUSK8DoiJCIToor3rPNl8iXfy4B/shPuLlnbX0e2j7WjPF0x4wvdSgK1X
         aeaJ7EFE9SLIp7Nm7itiaeUcnQHLRFQjSdbP5ggUj6AEyo18mYgjQbgFyutWSaWupC3u
         i9zQ==
X-Gm-Message-State: AG10YOQY2Sie1qReMDxee4t0UZQ9hS+hHo1SLayi0xh3mVpn3TfjNO61UWyzK83jgE+fYw==
X-Received: by 10.98.93.211 with SMTP id n80mr63350918pfj.61.1456406570257;
        Thu, 25 Feb 2016 05:22:50 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 6sm12417550pfo.58.2016.02.25.05.22.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 05:22:49 -0800 (PST)
Date: Thu, 25 Feb 2016 18:53:25 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Remove casts of pointer to same type
Message-ID: <20160225132325.GA8522@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch-set removes unnecessary casts which includes casting a pointer to
a pointer of the same type. Additionally, unnecessary parantheses have
been dropped.

Bhaktipriya Shridhar (2):
  staging: rdma: hfi1: Remove casts of pointer to same type
  staging: rdma: hfi1: Remove unnecessary parantheses

 drivers/staging/rdma/hfi1/mad.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

--
2.1.4


