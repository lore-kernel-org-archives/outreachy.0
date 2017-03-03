X-GM-THRID: 6393338025823174656
X-Received: by 10.200.46.171 with SMTP id h40mr669744qta.12.1488565007345;
        Fri, 03 Mar 2017 10:16:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.169 with SMTP id z38ls3522449ota.27.gmail; Fri, 03 Mar
 2017 10:16:47 -0800 (PST)
X-Received: by 10.157.29.37 with SMTP id m34mr1658148otm.69.1488565006879;
        Fri, 03 Mar 2017 10:16:46 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s64si193358pfk.0.2017.03.03.10.16.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:16:46 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so13367967pgz.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 10:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rac/IjMr3mMiGf7IVj34RdtylW+x7GjBbe23ldrpO+8=;
        b=l5pdziSEFGQLsoM0Z2jNiF7PVApxH5OF2bN6cX75Aomw4xawMk5f2tZqK9CwSVI8Ox
         JFFbITalzUPLG6vfRsWpoEMFI2E4jSyKyN3AizX3fTT1fj9u9GkqQk+GGbBYak1JgpHV
         RdQ9dfSnmrdLn2vjy4tIigFRyoViwf46lnZ4jFzp8Lfzourx9EICCJ7mH4u1nk21Qeks
         4Ej/9LPISR5oXoA902VECIl6nankjtKP1E4sxb8oK3NCQHJMSLM9vQObVc3uiFTRS2aK
         KRUv9bSK1Vv3k5evpf2fwwBHpfKJ13pr2OYsx9PvRW+yj3UtermOoVjNwaqHaFOhGbDw
         Ajkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rac/IjMr3mMiGf7IVj34RdtylW+x7GjBbe23ldrpO+8=;
        b=ic+BwbzfZh1ntRtWDjL9TnG3iq/KrwVz9TbntmJHqy0yBZz2c2tjabQyS6eiJpSa6q
         qRw+xQt3kRtioDfwQFBnkBzwtOUNKPiIx1ac3DWTd86nNwo5PoFyDNUdd1KODQCa/zL2
         EziPN+XquGJy7dTQUHWjVKVenhKFBoOfwmCtpM1ebHDcSzzdQxLH8YC7w8uGXPDBncWT
         UBm7F/QAskKbbVEhIKlq2zWqV1bl6s7DvL+y0yPf76aG0Ao1UM+8BkZfHNylJfKUEBrx
         3QX65ug+rOJBxGeGZ7rx5RCtL87xzh2f7mDCNEbAlig8EQGrrJ/KMlp7l4rLZXl1aj2s
         qazw==
X-Gm-Message-State: AMke39kCFyZ66qJkv2mGueKY2I4yNWskUu9xLQOZBCfSyp/bDQI5OhTJmeBY2VM/wxy1ow==
X-Received: by 10.84.241.203 with SMTP id t11mr6251324plm.48.1488565006678;
        Fri, 03 Mar 2017 10:16:46 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.136.156])
        by smtp.gmail.com with ESMTPSA id t6sm24904757pgt.8.2017.03.03.10.16.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:16:46 -0800 (PST)
Date: Fri, 3 Mar 2017 23:46:30 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] staging: bcm2835-audio: fix multiple checkpatch issues
 in bcm2835-vchiq.c
Message-ID: <cover.1488564925.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple code styling warnings issued by checkpatch on file
bcm2835-vchiq.c in bcm2835-audio driver

Aishwarya Pant (5):

  staging-audio: remove spaces after cast
  staging: bcm2835-audio: use braces on all arms of statement
  staging: bcm2835-audio: fix typo in word
  staging: bcm2835-audio: match alignment with open parenthesis
  staging: bcm2835-audio: use min_t() macro instead of min()

 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 34 ++++++++++++----------
 1 file changed, 18 insertions(+), 16 deletions(-)

-- 
2.7.4


