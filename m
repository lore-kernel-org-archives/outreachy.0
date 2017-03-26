X-GM-THRID: 6401830709926821888
X-Received: by 10.98.23.71 with SMTP id 68mr4626451pfx.32.1490542364893;
        Sun, 26 Mar 2017 08:32:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.71 with SMTP id j68ls1318768ita.12.canary-gmail; Sun, 26
 Mar 2017 08:32:44 -0700 (PDT)
X-Received: by 10.107.13.20 with SMTP id 20mr5611866ion.1.1490542364154;
        Sun, 26 Mar 2017 08:32:44 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id y90si1467778pfa.6.2017.03.26.08.32.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 08:32:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id o126so13886297pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 08:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=7gjmrWSEeu0PcowQZEJl6feFpcVEhD5U+hDVdHLyf6g=;
        b=a/x8ri/nF4rX6H6IGhKI5w0bjI24l9CuGvOX2SF3v3huM8lX5T3q5FG6utKI3+K4IK
         /BZ3YpMEHdSugawWrVDZ7KPszyQUKwjxD+hqdQe59RCl+ExwJpWpEXDXSoswlnVj2AAA
         VPUsVHc2HTJ6R+ESH1hXg8TztdjrSNnicEweF9H+2jcKMa8skgan5s8DZI+E7E1W2vB6
         v27o7L4azABmkLvJHS6BlA1JcogDE9R9BhkR98+dGuWA+vUxZ2KyeS585C659nPZQtVX
         kLedLkYnOqfV7Pe4LWXBBFNRPTCBJOd3GvRy/JM7q0uFZWOs02AimPwPdA5gzUU34kfA
         snMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=7gjmrWSEeu0PcowQZEJl6feFpcVEhD5U+hDVdHLyf6g=;
        b=Se6JyySs7Kj+5wKdLWrTyurPrEiynBiZ/MydwNa4tCi62H0QKbJSAiMgi2OQvIoUSM
         Ik9YIIAypQknvmiAi6Km0PQTWncoY+DbvxnaDQoeB0G/msF/I9deNhLgC93O56POPffl
         5e+wr+vgZ1tKsU4PV+5Tshbp7IZyvT0dZ4qkUmVQMBKXjRhMAaPZ/Tslw12jyV8hM2Dw
         LSmR9hmylWUl9oPD9oPUPSsGJ1C+s1u4wDsPf5oHKijuBDXmXNd8BaYugRdFEw/R99b7
         lTeusNWVojg7oYB4qFRRDzoJD3OMGRICguAkQ8UlZyJPejx0GBnP9AFBC+BPGb5WTPpc
         QceQ==
X-Gm-Message-State: AFeK/H1zcum2FiSx8iuoe12vQprCwx2cCl1yxUeoHe9DldY9ntp5Hfu4yurXKHxfq60E9g==
X-Received: by 10.99.115.68 with SMTP id d4mr19570532pgn.146.1490542363884;
        Sun, 26 Mar 2017 08:32:43 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id i124sm15661631pgd.66.2017.03.26.08.32.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 08:32:43 -0700 (PDT)
Message-ID: <58d7df1b.829d630a.23aa7.6b64@mx.google.com>
X-Google-Original-Message-ID: <20170326153240.GA19975@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 21:02:40 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/3] kernel: pid: Update documentation and fix checkpatch
 issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

This patchset fixes multiple checkpatch issues and updates documentation
of pid.c file.


Varsha Rao (3):
  kernel: pid: Update documentation.
  kernel: pid: Replace unsigned with unsigned int.
  kernel: pid: Add blank line after declarations.

 kernel/pid.c | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

-- 
2.9.3


