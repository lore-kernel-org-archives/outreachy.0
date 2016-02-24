X-GM-THRID: 6254932511038636032
X-Received: by 10.182.105.133 with SMTP id gm5mr36626075obb.41.1456339962584;
        Wed, 24 Feb 2016 10:52:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.134 with SMTP id z6ls2103027qgz.32.gmail; Wed, 24 Feb
 2016 10:52:42 -0800 (PST)
X-Received: by 10.13.192.134 with SMTP id b128mr38265974ywd.43.1456339962022;
        Wed, 24 Feb 2016 10:52:42 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id yd9si605540pab.1.2016.02.24.10.52.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 10:52:41 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id w128so1436269pfb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 10:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2/PcXCEa+WKgXNl+ys3hqnyBaAOCEWdx1SaQhEwxb00=;
        b=WZmWRdxpvvrGUYrBxJ7PtEXDwED3qaI6A+Dn8JVI5mY9i03HA9rPYUpJlD+PRy+8Rf
         g14m7ZmckpJhrW3cfTfvv59cQ9584xnezC2cEgulLHuRbsgwV8f38xzvcxiQ8FpDO57q
         yZ1etWVJQiBAb9ji77Qs5DyCntLnmlqp68fHviftUMjDx6IY+23Y6su6SkoQYcE0N9Pu
         MgIm8Pi/bDVXJzE5eFqnyJ9eFIupjV0Z739FBS1+/ad9KDuDylT8OTOOUT/Kt8ttf2pk
         S6IZWDyxAnDkKKj+ta7gyjTKmPQhUWTgOiqJ9K98qsnCURz0x843tqgaFALMFlPJR6GO
         sQQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=2/PcXCEa+WKgXNl+ys3hqnyBaAOCEWdx1SaQhEwxb00=;
        b=asxCduchcw5KeZloWUEdy9EW4nsUpFBdEQNxRhB3yfwX5CT48Dta/IxeqaTxTge4CS
         +IlWsMG/FmPHUZAFg2eoknHAGVxkaPdIJG92VlhJqnyC8zEbsDhwEm4COC4z+qPUnLLO
         9ODQKyluqdHOhuyq8h/11p9j/pD/xo+FJGJqf2pJmciotIQZB2F3xsF+ZXbQBlPZ+YgJ
         XM53ynCr7tjPQLQkiWZXLu2TEbANDNYneAeTKNbWwjnlcL1b/VUiqf8lV/Sgm+GOWL2x
         gHrhQfzOk5yp3WxQxfLVpUj4WAa+HBm3R4K3slgiArB3ITh8YgCxr9yGjdP5FWC19Z49
         Jypg==
X-Gm-Message-State: AG10YORneuHEMNR4o5EgRyIwdj3MlkYiF+XTdRuDB0UpVTrdN/pdJgEHciZxb7BC6zMg7g==
X-Received: by 10.98.11.134 with SMTP id 6mr57695888pfl.109.1456339961838;
        Wed, 24 Feb 2016 10:52:41 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.176])
        by smtp.gmail.com with ESMTPSA id n78sm6713139pfb.53.2016.02.24.10.52.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 10:52:41 -0800 (PST)
Date: Wed, 24 Feb 2016 16:22:38 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Staging: gs_fpgaboot: Fix coding style issues.
Message-ID: <cover.1456308083.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Fix coding style issues.

Sandhya Bankar (3):
  Staging: gs_fpgaboot: Fix alignment to match open parenthesis
  Staging: gs_fpgaboot: Use space around '+'.
  Staging: gs_fpgaboot: Remove unnecessary blank lines.

 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

-- 
1.8.3.4


