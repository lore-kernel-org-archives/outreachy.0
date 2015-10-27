X-GM-THRID: 6210381585761435648
X-Received: by 10.182.225.230 with SMTP id rn6mr10419213obc.20.1445967141730;
        Tue, 27 Oct 2015 10:32:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.138 with SMTP id d10ls3789310qge.27.gmail; Tue, 27 Oct
 2015 10:32:20 -0700 (PDT)
X-Received: by 10.140.233.208 with SMTP id e199mr35575585qhc.8.1445967140890;
        Tue, 27 Oct 2015 10:32:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pe1si4372901pac.2.2015.10.27.10.32.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 10:32:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id la5so35457827pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 10:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NOOCKbsugY2yW9iu848HKYz5yQu6hNohlYovXHHrNr4=;
        b=yTAxbY0XESWm5v+7piTdQQOTfReEc0TU8GFULen0LuwUvPpSXetYDcqCNWcUJ+dK7l
         Btj16gLQTzG1JDIDCtvTw3RsdXBWeAiRzhnvAOYTDUNFASIl0kV6c6byACZ9c+fU8i9o
         HN9g3MMGv30MzTg0oFUPWJgOlC02cj1IkSVAE4En+woBVrWDCbWotaIU4NN2l+g8gofN
         y95XYz6j8H0UfWa8qDNNTrVSF3sXgKP3rGhsFZWl3IEr4VTjR6i3EwFazCCeC2tr2dmr
         ecfoQjFHDMpJt+aSmv5vNiYFm5IysIvbshQc/pfPMl9sPAPm3YtXfoPaoOnk6b0Xrmfn
         M+jQ==
X-Received: by 10.67.2.34 with SMTP id bl2mr16980701pad.63.1445967140645;
        Tue, 27 Oct 2015 10:32:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.134.91])
        by smtp.gmail.com with ESMTPSA id ou3sm40746305pbb.44.2015.10.27.10.32.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 10:32:19 -0700 (PDT)
Date: Tue, 27 Oct 2015 23:02:15 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: rtl8188eu: Remove unnecessary functions
Message-ID: <cover.1445966850.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes unnecessary functions that aren't used, or can be replaced by a single line of code.

Amitoj Kaur Chawla (3):
  staging: rtl8188eu: core: Remove unnecessary functions
  staging: rtl8188eu: Remove unused function
  staging: rtl8188eu: core: Remove wrapper function

 drivers/staging/rtl8188eu/core/rtw_ap.c       | 54 +--------------------------
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 24 +++++-------
 drivers/staging/rtl8188eu/core/rtw_xmit.c     |  5 ---
 drivers/staging/rtl8188eu/include/rtw_xmit.h  |  1 -
 4 files changed, 10 insertions(+), 74 deletions(-)

-- 
1.9.1


