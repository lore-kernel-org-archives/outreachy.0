X-GM-THRID: 6210381585761435648
X-Received: by 10.50.176.129 with SMTP id ci1mr1198018igc.12.1446099308335;
        Wed, 28 Oct 2015 23:15:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.76 with SMTP id qo12ls1801525igb.10.canary; Wed, 28 Oct
 2015 23:15:07 -0700 (PDT)
X-Received: by 10.67.6.202 with SMTP id cw10mr29149106pad.23.1446099307928;
        Wed, 28 Oct 2015 23:15:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id el2si4977pbb.0.2015.10.28.23.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id z6so30623425pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 23:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=VgqzVJxyGkhxCWLnOV2xwKFypbexj7crrLYFexr2YdU=;
        b=y9irl2GAF3O95llv6iSXKAYLsGnJysdhNAr/O3i0sR6degrXckE3X/SnWEC+5a/gtn
         WIU0hd6AWpr3uGXimG9JihqrhV7SZd9lK2S6zyzPGPxU153Llrh/I5FfImoEJrdd2gUM
         OwO+O/rKwdfhaGpKqrPPe1483yLp43g2BUPLTw86bbG5lUORqFQn92zzZ4aHiykYUmkg
         +LmP47y3qPYgFqpT95w+aU6t/SbuTJN2zYL8NutmcVOYaL6qU0hL48pV4ZWKck0AqAE8
         YT+Pq+vo28rOToFPrsjknyWh/KHihDcfYayTA6VmhVEyzHXNcLGofA+rjXSn6X+z9oIX
         Y3YA==
X-Received: by 10.68.132.194 with SMTP id ow2mr3412pbb.128.1446099307759;
        Wed, 28 Oct 2015 23:15:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.198.148])
        by smtp.gmail.com with ESMTPSA id bt1sm6565461pbb.88.2015.10.28.23.15.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 23:15:07 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:45:03 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] staging: rtl8188eu: Remove unnecessary functions
Message-ID: <cover.1446098996.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes unnecessary functions that aren't used, or can
be replaced by a single line of code.

Changes in v2:
        -Renamed function appropriately
 
Amitoj Kaur Chawla(3):
  staging: rtl8188eu: core: rtw_ap : Remove unnecessary functions
  staging: rtl8188eu: Remove unused function
  staging: rtl8188eu: core: Remove wrapper function

 drivers/staging/rtl8188eu/core/rtw_ap.c       | 54 +--------------------------
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 41 +++++++++++---------
 drivers/staging/rtl8188eu/core/rtw_xmit.c     |  5 ---
 drivers/staging/rtl8188eu/include/rtw_xmit.h  |  1 -
 4 files changed, 25 insertions(+), 76 deletions(-)

-- 
1.9.1


