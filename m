X-GM-THRID: 6249268328752218112
X-Received: by 10.112.199.136 with SMTP id jk8mr4331419lbc.11.1455047792155;
        Tue, 09 Feb 2016 11:56:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.4.13 with SMTP id 13ls7894wme.15.gmail; Tue, 09 Feb 2016
 11:56:30 -0800 (PST)
X-Received: by 10.28.225.8 with SMTP id y8mr826658wmg.7.1455047790411;
        Tue, 09 Feb 2016 11:56:30 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id c140si507058wmh.0.2016.02.09.11.56.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 11:56:30 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id c200so5443730wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 11:56:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=1SVD7lRkOwvJEfFsHnrYEQRw3YixmxwG12yV3sjwUfU=;
        b=XmoETfR5gZIZaJmVg0t/F8j75T30MzqtUgfkFTEv+2IfOY8Bc9Gz5mW7mDtIpMlTs9
         fv57lIGZUpdHX3ypTE92loqzSo++c7e8sDLOiKigjpcxElpf5HV4ujdRptHPRWbri9oX
         KBrIpj5I803pooG7wYLvKKtunEXE1eakIBeBPUmvkZsmT/n2D4wXUmWRmtlsJk7uC28G
         ihDOsKYfzAJVpvEwL53dZcx0GUCxUVto1bY6aMyrP1cOYowlpaNJzpUbrZ7Ap73k0CBM
         gyZkHwQF3h0g3DH04ZrlaPaoJWmjMi+YpyfHic91Wv0wzqCX5Ffkr1cLB0kEAx565f72
         wKNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=1SVD7lRkOwvJEfFsHnrYEQRw3YixmxwG12yV3sjwUfU=;
        b=ESLdNwsxDx4eDtXoxgVtN9ek0G7r2lHZmHIOY4OeUiyEuDM/6Q4aNsKhzaBnL28CEJ
         mI+83Lg6pFE513+v2N+PJvP20F0+GYgYDPMN/Dt2u3I6evDuELLVFGyzJfxeaN63+42Y
         8qP/7kFS+6DHu8IoqJpXdhVon8AI85X0pMOV68Ei4F4fkL1/rNfqtJx5xUK0iB6a/90+
         kkkDZN8UpBFl4aXafdWNgJGEivEEFOPzfkWwf7r2Fw+h/QemLthne9Zz8dHjRB6g5O71
         KQ43VE03bcW0hmEQ8+8Jg1LOtgOtrojByTPnKBIlep8fr7O/cMVF6+2EVbr0viV7//BO
         qx0Q==
X-Gm-Message-State: AG10YOR6GLMCEXIqkR3M9438ntsHp3CibWJy02XhErQrkuEGbNYMR8nYPuxZEqoykRHCFQ==
X-Received: by 10.28.125.77 with SMTP id y74mr6532935wmc.21.1455047790256;
        Tue, 09 Feb 2016 11:56:30 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneenVB ([109.171.130.235])
        by smtp.gmail.com with ESMTPSA id u4sm36196393wjz.4.2016.02.09.11.56.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 11:56:29 -0800 (PST)
Date: Tue, 9 Feb 2016 22:56:25 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] add dma mapping error and remove parantheses
Message-ID: <cover.1455047275.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fix check for dma mapping error, as well as removes
unnecessary parantheses in the same scope. 

Haneen Mohammed (2):
  Staging: rts5208: fix check for dma mapping error
  Staging: rts5208: remove unnecessary parantheses

 drivers/staging/rts5208/rtsx_transport.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
1.9.1


