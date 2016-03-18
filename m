X-GM-THRID: 6263429030948634624
X-Received: by 10.140.150.210 with SMTP id 201mr12123792qhw.28.1458318212060;
        Fri, 18 Mar 2016 09:23:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.203 with SMTP id d72ls1208319ioj.74.gmail; Fri, 18 Mar
 2016 09:23:31 -0700 (PDT)
X-Received: by 10.66.224.38 with SMTP id qz6mr11740029pac.43.1458318211656;
        Fri, 18 Mar 2016 09:23:31 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id sf5si2245760pac.1.2016.03.18.09.23.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 09:23:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u190so17700597pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 09:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wB+fcwZdpiy0m67FOIoQPmy5W0iQLqtlrvhJPhE4H/4=;
        b=xYD4sTp9Fq8oduFxSMBOi8MxOS96Zz8JT7Q24AfdTU3ukxYvRuOxE3H/hLIDxh86ZN
         W2y4hoes8Ahz0oB6E8T1Ea5q6BvnuIAJKuZ/w94F3hdBg5vt1+lvQFF8+3TGU3Qsbde4
         6qL0Fd+r7p8oXmEMjD6U0j1yYCJwzoa5P3UgrWs6PKtS04lS2bToEgKlof429yGzPmat
         YL9KLsQXg9uvmNplMKVs1Wsc8qUUcEuhTwU0tEOiK23GGf3zmVOk+qcmf7q2f5tDPg/n
         kxgyuTvkjmiJm2Th+Wv9NOhb5leUgQVD0Wy2kfv+mZiN51ElI0DmaqmXVRDjmx15d1Oq
         04tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wB+fcwZdpiy0m67FOIoQPmy5W0iQLqtlrvhJPhE4H/4=;
        b=XDBCJ4ePg+pEWkq6Tj9PBuXp65rRa+10SOLgYaox3FQDUbqo5o0JQeEWm+cjoCgDGf
         vSz+xUDQBHc49CcN22QbB0Gt+Ej/dFaRKy7dz4cLXfnK9ZjBx+awqAfvj3ti1+9KMmUH
         7OKDzxs8JKH17LIyoc3+7CZ+yv8vLT0EQDPCWuBMYFUYtM8Kvv2iOjrPzY1FSc2E/buL
         BXTYUMJm0iuaDPH6YMoZ+PTxB6BxyWoyedRq2/HhxDWHqjjwUi0QTucp8rWyK+zEQTLY
         cEU4ZDNOjMnDr4R+yS3uFjjU2GFaTzJ3Sw/6YDllrU/JqojvJn7b3OcD+uWX+yI9Js8K
         jSsQ==
X-Gm-Message-State: AD7BkJIsvXE/WoXuTbpjl7flea4lOphxC8f3cS86dhn/W+9jHnDctWfC2oESAI+zYTarIw==
X-Received: by 10.98.9.92 with SMTP id e89mr25077847pfd.34.1458318211517;
        Fri, 18 Mar 2016 09:23:31 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.148])
        by smtp.gmail.com with ESMTPSA id fn3sm22108137pab.20.2016.03.18.09.23.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 09:23:31 -0700 (PDT)
Date: Fri, 18 Mar 2016 14:54:35 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Staging: fbtft: No space is necessary after cast.
Message-ID: <cover.1458292699.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

No space is necessary after cast.This issue is detected by checkpatch.pl script.

Sandhya Bankar (3):
  Staging: fbtft: fbtft_device: No space is necessary after cast.
  Staging: fbtft: fbtft-io: No space is necessary after cast.
  Staging: fbtft: fb_agm1264k-fl: No space is necessary after cast.

 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 drivers/staging/fbtft/fbtft-io.c       | 8 ++++----
 drivers/staging/fbtft/fbtft_device.c   | 6 +++---
 3 files changed, 8 insertions(+), 8 deletions(-)

-- 
1.8.3.4


