X-GM-THRID: 6210663897171492864
X-Received: by 10.129.148.129 with SMTP id l123mr23907252ywg.35.1446032872943;
        Wed, 28 Oct 2015 04:47:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.76 with SMTP id qo12ls1543286igb.10.canary; Wed, 28 Oct
 2015 04:47:52 -0700 (PDT)
X-Received: by 10.66.228.169 with SMTP id sj9mr25152675pac.24.1446032872542;
        Wed, 28 Oct 2015 04:47:52 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id pe1si4849219pac.2.2015.10.28.04.47.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 04:47:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv9so5352089pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 04:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=PwHUmqBHeB/aKXpIf2ScaTfYvyZsmUCU485TJxVzkt0=;
        b=eaV3CuOS1AIaO1fF29HgNixOAOILxMxwFFfWzhyaAddQmYEXCQzwQlM2B5AcgnCP7s
         p3phBPoJVzH35bbEMAX9ODN8l7djFvBlhMxdS/6WKy1iIKzknZdir+iekwklfxwjn1V2
         YT7VFHrMtQWPTuMZOhwdfYFs8q8mOloHs0ieD453P71bhQU2ErJd3EVhw+JJK8w0qSDM
         wajxf1lTQPGtf916UcXpzjgIShIMOXLH649uKN0baIRe4LKzCixsyfzY0F1wEu9lCO6g
         jkDDdp1oXgtHJjOw1MsJ3GgLivn/LFMtYuOM1JLfSmPXNZ01ua9EuyFBY0hVUCiY558U
         STIw==
X-Received: by 10.68.87.161 with SMTP id az1mr34027727pbb.57.1446032872449;
        Wed, 28 Oct 2015 04:47:52 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id es4sm45060738pbc.42.2015.10.28.04.47.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 04:47:51 -0700 (PDT)
Date: Wed, 28 Oct 2015 17:17:42 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3]  Drop wrapper functions and clean up the code
Message-ID: <cover.1446032441.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset removes the wrapper functions which are not required
and replaces their calls with appropriate functions. Also, some definitions
are swapped between files in accordance with the functions that needed them.
Unnecessary blank lines are also removed.

After applying this patch, code becomes cleaner.

Shivani Bhardwaj (3):
  Staging: wilc1000: linux_wlan_sdio: Drop unneeded wrapper functions
  Staging: wilc1000: linux_wlan_sdio: Remove unnecessary blank lines
  Staging: wilc1000: linux_wlan: Replace function calls

 drivers/staging/wilc1000/linux_wlan.c      | 15 +++++++++--
 drivers/staging/wilc1000/linux_wlan_sdio.c | 41 +-----------------------------
 2 files changed, 14 insertions(+), 42 deletions(-)

-- 
2.1.0


