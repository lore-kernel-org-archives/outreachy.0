X-GM-THRID: 6257131864000036864
X-Received: by 10.66.66.102 with SMTP id e6mr3416268pat.10.1456860317171;
        Tue, 01 Mar 2016 11:25:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.133 with SMTP id jg5ls336444igb.11.gmail; Tue, 01 Mar
 2016 11:25:16 -0800 (PST)
X-Received: by 10.98.67.142 with SMTP id l14mr15356400pfi.13.1456860316758;
        Tue, 01 Mar 2016 11:25:16 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id yd9si4587815pab.1.2016.03.01.11.25.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:25:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so10952496pad.2
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 11:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RcepjJ7+zBSxD146rnQMXLhAML1yjL/K7zj1ZEtIlLc=;
        b=P00IdxbtgoE50zUCKI9P2s0UmQ6Zs/NMg6z5+RyyZ41sI7FzsXxYgYpy9c2AKY+Nc+
         p0HDZfwrUTXNYNd3nlwKBQfws/jHelgYGZtIW5bWbaD/HSgskCF1itgMJVYe9X3j1N//
         Tdp3xez/eOb8Gci6fHQ0y/Uu5Gr+ARM6PbL1yh6GQV42zvzA6n2FhrIZwGiNSIqgG3ea
         w/GGfCePfvqZ5LVjXZiIbUXBczjJ6eGfCqfCZm2XCkwzXl4TaPaCBurpFE8rlv5U08eT
         vUtnpfNaEaqmcrRg5YU9SzvJX022yjkr3eQvWNX/fG9RKw55vqdWfcO+/2EVm43gDTFr
         hTmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RcepjJ7+zBSxD146rnQMXLhAML1yjL/K7zj1ZEtIlLc=;
        b=as7gx8naoj39UvlULOj159pdidnLn0U9T8p/aZfH9KLTdZ+wNaLeqEQ2TwL1xCKCVS
         7v4nPa92NDsShe8D0aSgk2n4ItSqkkCrl4Ic/kdMZvQUMPcNfx0wLebSRugpGLBVEK8R
         e4wVnYVOgIeEAk92LPrM5UeS/CCdeVvU9Ukrnc0JP7AlDsaTUOfGgTvR0Xy/sUFKOxgi
         kEw5AJC5/eERL4MUme4yqcEDUij7mOILslpEsMLY8j+iJNc56CGpw57xxd3i0zvgti+U
         na9Ar2hLTAPPtTTOp1vW83F9JMi4QbaVIGITecHXxnTloMt0Q8H8BvcHN78n55FPANuL
         a4XA==
X-Gm-Message-State: AD7BkJJhIu6ZoNuXdjeIuWv8HjdoNTwWHkuAMdmt5+xeG1FoQ43Y+21eyc2PcIHrm5MA7Q==
X-Received: by 10.66.160.7 with SMTP id xg7mr32135371pab.10.1456860316589;
        Tue, 01 Mar 2016 11:25:16 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.97])
        by smtp.gmail.com with ESMTPSA id 81sm30556627pfa.12.2016.03.01.11.25.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 11:25:15 -0800 (PST)
Date: Tue, 1 Mar 2016 16:55:25 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] Staging: Do not print message if kzalloc() failed.
Message-ID: <cover.1456830070.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one.

Changes in v2:
* Remove unnecessary braces of if statement.

Sandhya Bankar (4):
  Staging: lustre: Do not print message if kzalloc() failed.
  Staging: rtl8188eu: Do not print message if kzalloc() failed.
  Staging: rtl8188eu: rtw_efuse: Do not print message if kzalloc() failed.
  Staging: wlan-ng: Do not print message if kzalloc() failed.

 drivers/staging/lustre/lustre/llite/llite_lib.c | 7 +------
 drivers/staging/rtl8188eu/core/rtw_cmd.c        | 3 +--
 drivers/staging/rtl8188eu/core/rtw_efuse.c      | 4 +---
 drivers/staging/wlan-ng/prism2sta.c             | 1 -
 4 files changed, 3 insertions(+), 12 deletions(-)

-- 
1.8.3.4


