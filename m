X-GM-THRID: 6263480963249995776
X-Received: by 10.129.146.135 with SMTP id j129mr16400165ywg.19.1458500867619;
        Sun, 20 Mar 2016 12:07:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.37 with SMTP id c34ls3303166qgc.26.gmail; Sun, 20 Mar
 2016 12:07:46 -0700 (PDT)
X-Received: by 10.129.58.16 with SMTP id h16mr20083885ywa.56.1458500866827;
        Sun, 20 Mar 2016 12:07:46 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 12si3014333pfb.1.2016.03.20.12.07.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 12:07:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id u190so26478687pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 12:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bioy7EbytOxjCFFiMNn09FYG6vOzli7EEMkPTm/RGLE=;
        b=j0Akg2B5oOa/cURfdHFRIXLceZpSO5o4kEaJ2sWjdLF0BtzzjIY+h3z6FROO6+wkwQ
         zRcWBMuBdvjRJp93Ad4NY3VdsSJOPENvcjkhTKSi8xfCVQg6k/x2vSm0c3SfDLN5NXTc
         5LkXi3v5VKP3oNnY5awVkU4QhyuCDbW/6a2aeOzXEndgBgKE8K51djdcyAgFJn5IoFVk
         u5i85/4GpIO9+WjTgJ5y/nAjbBAW9hG91u3JsbzgKnK+4Lqv9+63ppR49M1gfAXtrPzG
         fAsjj19ObDpDr69oMoBpWp3bMaFaJj2rDb9y68uKQ9e5Rkw6qg1jEiFQyL3hb2vyPcIu
         4QIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bioy7EbytOxjCFFiMNn09FYG6vOzli7EEMkPTm/RGLE=;
        b=GklpX0OquCZj6I7MO0HEbOPzhBX8g2LG/2sVC5vjFbYlWLbQQOlqYdrdQBtJipiN2H
         A9Zfi+I444SDwl5G52IU7/Ib/D2lMVa6mbwnd62SY1m5v0FWU+wu6DI5FcfPJ/fD6KHG
         ymYeJdAXNXknwZBZqat+tTCg4/zNmg4H38YdGNXRLFS1uIdSMQxlFXPb0IfDmbv+D5Hj
         N46OlOP0B9985jvJIDZe4BQymQax/IIiO1NMYkE/64D+/w4rlKE6toHiENnbWxeGPOS6
         B4Z00pqMFOZrRIrQFqHbU35ZYPdqI2qOILaLOm9Nqgoi+ZqKCiwf0XNg4NGOdsLCcl8/
         bR/A==
X-Gm-Message-State: AD7BkJJGXrNbLKS7qyKJZ+94xKBdN6wh9emVgDaKQ3+wuFftssFGL1tbTR5J876/Wpp9rA==
X-Received: by 10.98.19.82 with SMTP id b79mr29079056pfj.17.1458500866657;
        Sun, 20 Mar 2016 12:07:46 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g23sm35033580pfg.35.2016.03.20.12.07.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 12:07:45 -0700 (PDT)
Date: Mon, 21 Mar 2016 00:37:42 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] Convert macros to static inline functions
Message-ID: <cover.1458500647.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Convert macros CLK_CONFIG and GAT_CONFIG into static inline
functions as static inline functions are preferred over macros.

Bhaktipriya Shridhar (4):
  staging: comedi: amplc_pci230: Convert macro CLK_CONFIG to static
    inline function
  staging: comedi: amplc_pci224: Convert macro CLK_CONFIG to static
    inline function
  staging: comedi: amplc_pci224: Convert macro GAT_CONFIG to static
    inline function
  staging: comedi: amplc_pci230: Convert macro GAT_CONFIG to static
    inline function

 drivers/staging/comedi/drivers/amplc_pci224.c | 24 +++++++++-----
 drivers/staging/comedi/drivers/amplc_pci230.c | 48 ++++++++++++++++-----------
 2 files changed, 45 insertions(+), 27 deletions(-)

--
2.1.4


