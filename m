X-GM-THRID: 6339006763773198336
X-Received: by 10.157.53.23 with SMTP id o23mr4142214otc.144.1475915024870;
        Sat, 08 Oct 2016 01:23:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.217.70 with SMTP id p67ls1926812itg.14.gmail; Sat, 08 Oct
 2016 01:23:40 -0700 (PDT)
X-Received: by 10.36.65.95 with SMTP id x92mr675878ita.39.1475915020714;
        Sat, 08 Oct 2016 01:23:40 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ua1si6516990pac.1.2016.10.08.01.23.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:23:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id i85so4089283pfa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TG0VL2MXWBswwmzWaRr+7l6YdoLGA7rf3+gppuBoghs=;
        b=eglJTJ4Gmk536LpWCazw+cnwn+89j05bIbWrD2xqHdXkzMx19pjon6BeadaswhzNbG
         rZd4DwH5B5UsUdwxi96KGHkf5+aSQPOxBAXROpSo4m9gVtQCS4QndC7erz0Oi3Aq04v+
         Eb+mbKKlfg1RHC05+nWH75jhpQ0pzxdw5PiF7cfbo9odKsgX5NkBSt1DDyGHYOlXfxcW
         2mGRyBTdjQAdqWBFExHVxpm61YN+Mluy6qeu3XGMjuD9nXT1qJhEnN4P5phT9Ns/ByGm
         GYOH7sZ6oxZN3+r9EIVV17xb+/ZlEcsZXDrvxPZX+wkFwEGvxrs75pQucMsE+CSy+bpz
         hbuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TG0VL2MXWBswwmzWaRr+7l6YdoLGA7rf3+gppuBoghs=;
        b=WnAG9rcNBcfG8TGbrA8Z9kdaiIEgpF28Osxziy48UYRg29B+EvvL9MhygWjqmmQvKW
         4KGjWCRFSea7NDKc7e487qj9C6wOhD5/8oVAq94ExJZDDZeRMuDP2CFFijEdIumXZByJ
         AOD+np7bfPvO/7NO3UtyZzJ42rtgDPHsPNIov/+7WsLydmB6WcKhQg+KWyC2l/X5OigN
         ytOXzu1G9RB2TbV82Tv6ls1+k3GCbGUhnJZcf7pNO7kW9xDIYA2Zqr3dg4/otKIdaWnQ
         JStc2C/CbLJrlx7pTcj8nEuXUHchkDsZ2WnmbTnlsbNCanjnrI0Ua1pGwcZCovi+bX+f
         3xYQ==
X-Gm-Message-State: AA6/9Rkxts2CcvWu5JsgACRTa2mWpPR3j7MnXAfpu/O3wjs+3/oavhdjqXIZhi/l1QNQJA==
X-Received: by 10.98.103.78 with SMTP id b75mr13748388pfc.97.1475915020514;
        Sat, 08 Oct 2016 01:23:40 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id g63sm19338000pfk.58.2016.10.08.01.23.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:23:39 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:23:36 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Bcc: juliana.orod@gmail.com
Subject: [PATCH 00/13] wlan-ng prism2sta cleanup
Message-ID: <20161008082335.GA6857@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patchset focuses on solving the following checkpatch warnings
found on wlan-ng, mostly related to prism2sta file: 

  - Lines over 80 characters
  - Block alignment to parenthesis
  - Camelcased variables and structs

Juliana Rodrigues (13):
  staging: wlan-ng: aligned block to open parenthesis
  staging: wlan-ng: fixed lines over 80 characters
  staging: wlan-ng: renames hfa384x_InfFrame to avoid camelcase
  staging: wlan-ng: renames hfa384x_CommTallies32 to avoid camelcase
  staging: wlan-ng: renames hfa384x_ScanResult to avoid camelcase
  staging: wlan-ng: renames hfa384x_JoinRequest_data to avoid camelcase
  staging: wlan-ng: renames hfa384x_scanResultSub to avoid camelcase
  staging: wlan-ng: renames hfa384x_ChInfoResultSub to avoid camelcase
  staging: wlan-ng: renames hfa384x_AssocStatus to avoid camelcase
  staging: wlan-ng: renames hfa384x_authenticateStation_data to avoid
    camelcase
  staging: wlan-ng: renames CQ_currBSS to avoid camelcase
  staging: wlan-ng: renames ASL_currBSS to avoid camelcase
  staging: wlan-ng: renames ANL_currFC to avoid camelcase

 drivers/staging/wlan-ng/hfa384x.h    |  42 +++++-----
 drivers/staging/wlan-ng/prism2mgmt.h |   3 +-
 drivers/staging/wlan-ng/prism2sta.c  | 157 ++++++++++++++++++-----------------
 3 files changed, 104 insertions(+), 98 deletions(-)

-- 
2.10.0


