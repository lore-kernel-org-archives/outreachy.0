X-GM-THRID: 6210650684709142528
X-Received: by 10.66.233.8 with SMTP id ts8mr23413450pac.13.1446029796464;
        Wed, 28 Oct 2015 03:56:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.67.69 with SMTP id l5ls1490282igt.21.gmail; Wed, 28 Oct
 2015 03:56:35 -0700 (PDT)
X-Received: by 10.68.192.99 with SMTP id hf3mr15374695pbc.6.1446029795450;
        Wed, 28 Oct 2015 03:56:35 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pe1si4829923pac.2.2015.10.28.03.56.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 03:56:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fv9so4199176pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 03:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HP20spN/Oioc2N2HqYgFpUKAlKQJBK02y+lBIme4CO8=;
        b=K+3bl5Hswg7VgH+O9KmyLtf55X6gqXCXUMuElY35IukbjN1lRAGKRBDmEcaJi4NGb3
         /2JTnffd7H6/9oPR2B7KVTmOaux/BzeELlrW+DKzEujywbesviBoWuAV3gLkeGgQemZa
         LZdG2E7vWKTv2dx4U3Nnn4R/6ucjHaBAXApfbnJuYen3F2P1TWYtMzR5JXrPifSaMts8
         5RyJB3GVwaQv3H9DGLuAkx86yfCdLzN5WYY+4Q6NXLDi+/i4HtsR798TdjFpXQSlF/11
         Ecc2CrfEUg+U4xnwFbad+WtSLDbSbhGmhfDhIH+AHWquVlo2Nqck5EuqDDNMHrq/hDaK
         +kuw==
X-Received: by 10.68.218.132 with SMTP id pg4mr5568943pbc.129.1446029795347;
        Wed, 28 Oct 2015 03:56:35 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id oi3sm27596014pbb.53.2015.10.28.03.56.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 03:56:34 -0700 (PDT)
Date: Wed, 28 Oct 2015 16:26:20 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Remove wrapper functions and clean up the code
Message-ID: <cover.1446029550.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset removes the wrapper functions which are not required
and replaces their calls with appropriate functions. Also, some definitions
are swapped between files in accordance with the functions that needed them.

After applying this patch, code becomes cleaner.

Shivani Bhardwaj (2):
  Staging: wilc1000: linux_wlan_sdio: Drop unnecessary wrapper functions
  Staging: wilc1000: linux_wlan: Replace function calls

 drivers/staging/wilc1000/linux_wlan.c      | 15 +++++++++--
 drivers/staging/wilc1000/linux_wlan_sdio.c | 42 +++---------------------------
 2 files changed, 17 insertions(+), 40 deletions(-)

-- 
2.1.0


