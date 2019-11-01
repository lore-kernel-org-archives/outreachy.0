X-GM-THRID: 6754482318874771456
X-Received: by 2002:a63:cf42:: with SMTP id b2mr16383069pgj.113.1572650465550;
        Fri, 01 Nov 2019 16:21:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a40c:: with SMTP id p12ls1933884plq.3.gmail; Fri, 01
 Nov 2019 16:21:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzUSKo2HWz5ac7kXRe2VW7BJyerVeM6RoPCz3mNwOAygVOqQiEUKX4NRW18RU6uERn1SKDH
X-Received: by 2002:a17:90a:25aa:: with SMTP id k39mr18554149pje.123.1572650464173;
        Fri, 01 Nov 2019 16:21:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572650464; cv=none;
        d=google.com; s=arc-20160816;
        b=AG/y1i15DUbtjC1IXvGkuEeB718bpfgYCdS3HHKAy1ZjDCSs2/4tSH3t+E+VEnv2GK
         WB3IIHlFBPU9HJS7ZFFa/YNJySltUzVwhyC3mSh7KMrqUQ9ZyOG6oo9W8A9Yd2w4hqRO
         eT8dhYKrUA/ylDA78ERLbRopX2tC8kPPbky6akuWIRMVdRg6QrhxqZZNfBS2boMpe0u5
         g+6pSax8r7fAkyr5Liz1AKMpxtGK4MVAgcjBy+/rK2Ke9MPGYHIRsrr+znKIVdQF1kH2
         72+q8U6BgBbIF9RZrVSVOSvj0U4dB9PmsxUTjETMNqMaCKdpRHhMOC4ZieF39ifP7kWJ
         QZgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=cbAaI1whR+pjCmAbfMImURMPtOIf5hg1TOZ58zW3xUc=;
        b=Ep/5xRedda2LhQSZbWfI6DwiZLYQ+yPBb3KFvzphJehirQP0MwgOxM+0qyxHbcqXx7
         kE4ne3nt4Zqt3O8v4BWfslmOUnuPwqfLsPFwCXdrPH2tzQspw4tTngKylouf2deKImhK
         OP6bnJTkwv7L5g64STuH/M0GzXVUczXtt2EHoIYE5uf8qvHQPeGoQJWSe0MWf2CKHDnQ
         AR23xRhEjyRdZlBIoT8A8Yg2ILr6g1xj+7qEmHfw2uQ+g3D08zIw5Pz04Aoa0KPo0fBn
         uyYyVAW4g0SWkDckbhgr/bAvyjW1bgdiPPxRdCEv7c9XTzrehpiKrwZxv0Aer5gBrpkM
         nvuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=NYDhBOWz;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id g15si89403plq.0.2019.11.01.16.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 16:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=NYDhBOWz;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x941.google.com with SMTP id v2so3397358uam.9
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 16:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cbAaI1whR+pjCmAbfMImURMPtOIf5hg1TOZ58zW3xUc=;
        b=NYDhBOWzneNGEq2wLBNglX64Rt6Uk4WSAkBcYzkRjNDW4tU5XSiZzXcaqezT/ADAwI
         tW0ErfRW0nwQSBxdDapEzA8Uc5zAA7lat71ofVhwt35SEajOiryXkdzi9F+50tGg/qPP
         qaUvy99MsukO4Oj4owACUb7KuVn9MyF32yMU8l5mgDQOwZYV20Xw8orp9snfTOsp2LO8
         VjzWz5axizqyBNAN5FJCLPT9xPntzXJdCY3CrG/2LUBlUlODC791Gha8UfneOE9dzZWc
         F8p0YhtWZ+mtBm0iYkW23IX6ZptP5Q/xon8DlzsowhIhE08r7LRSF+u0u3thJobBUpdQ
         BDnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cbAaI1whR+pjCmAbfMImURMPtOIf5hg1TOZ58zW3xUc=;
        b=aATcKXQvp0qgI/HWvVR7gjAWlSGVtf4uTZEkkcVy056t5krbq/zvwVOqzkxHmdWipE
         4VHZAni/4K6YP9/RpoZKO7/cZCQLygNmu1qivxeyXJ75ETPBYl/z+KJd1D8yTeZmuc+d
         LPr40FcRHzvUpp/sO33cjJ5DGb6JJOL1rLFMRI+b/xua8v2s5Q8/Uk5NNwZC6ijDZq92
         KiGrqDdijjxicbeeWk3O3yL+7p7rJXI+9moIZfwyVSFTywpH3J+cRlZ6FkN3YCUeVHZq
         0rnDKcePq5yTIUSWVpap1/9GaxVH+vP2lBsiQTVSoKPtjkkprxjfKhYkql9++TUW+lMJ
         eavg==
X-Gm-Message-State: APjAAAWwGWy+/K1d65VVFuZX7psFlAPQTcNPIVYmOIFmKaUvVWg3ii9h
	o5jG2ARme2DLUZIEZzr4zaMUmQ==
X-Received: by 2002:ab0:20b5:: with SMTP id y21mr6880759ual.39.1572650462866;
        Fri, 01 Nov 2019 16:21:02 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.52])
        by smtp.gmail.com with ESMTPSA id e62sm2479752vkg.47.2019.11.01.16.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 16:21:02 -0700 (PDT)
Date: Fri, 1 Nov 2019 23:20:59 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH v2 0/4] staging: vt6655: Code style cleanup
Message-ID: <cover.1572649242.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

Code style issues like wrong spacing, long lines, open ended parameter
and alignment make the code harder to read. This patchset improves the
code to comply with the preferred coding style for the linux kernel.
Issues found by checkpatch.

Changes in v2 by Julia Lawall suggestion:
  - Improves log messages on all of the patches.
  - Remove the checkpatch messages.
  - Long line issues are in its own patch.

Frank A. Cancio Bello (4):
  staging: vt6655: Fix parameter alignment issues
  staging: vt6655: Fix the spacing around operators
  staging: vt6655: Fix open ended lines
  staging: vt6655: Fix long lines

 drivers/staging/vt6655/card.h        |  2 +-
 drivers/staging/vt6655/device_main.c | 14 ++++++++------
 drivers/staging/vt6655/power.c       | 10 ++--------
 drivers/staging/vt6655/rf.c          |  5 +++--
 drivers/staging/vt6655/rf.h          | 19 +++++--------------
 drivers/staging/vt6655/rxtx.c        |  5 +++--
 6 files changed, 22 insertions(+), 33 deletions(-)

-- 
2.17.1


