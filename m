X-GM-THRID: 6256430192250585088
X-Received: by 10.107.184.195 with SMTP id i186mr15766936iof.24.1456688668270;
        Sun, 28 Feb 2016 11:44:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.85 with SMTP id y79ls2070856qgy.63.gmail; Sun, 28 Feb
 2016 11:44:27 -0800 (PST)
X-Received: by 10.140.87.55 with SMTP id q52mr27294151qgd.11.1456688667663;
        Sun, 28 Feb 2016 11:44:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ui7si3190998pab.0.2016.02.28.11.44.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:44:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id y7so7457036paa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bFIjGYh/DjMyFlZ/QsDt5Z24mOzbdRYWDpn8/aec/AY=;
        b=EAcAm1NFVeGJpWztFsDq7wJZ2Ntkwz6VdqmZ4VZX1Vy3eQgHLLNTBKLGWZV5j3QTl2
         06JbivYWAYH98hGvarcqwYWe5Z0A3WcaVsdER2bjyx0y6/jXMGygJbdjKSh2utXU4QlT
         ZkdipAwo9sv7kbHJNLvOWoUq41X59StRSUbah8vNT+AuGNDZjLD5+G/8LVNs9Segnd9C
         8ipogmFRiA8n76SNIDUDiYLwVwUj5RkzMWBJoqH+e6KEj532CeiYfLlY5bqPB9hLHbCX
         YNSspIBTlBfmOrfWCmS8kra6jDexpZ/ndwpOIO/qTBdLtfKfJbO+jRhqJkgJ/2oBQgLH
         uOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bFIjGYh/DjMyFlZ/QsDt5Z24mOzbdRYWDpn8/aec/AY=;
        b=PMbdebci4CReGHzO1WU5TkzouidbXd5kBftCd4/4VStPNik5/4/qoow2JWP7tMpcxk
         ZBtR8g3YnxM+b7Qd9wqtk2e+2k7by9n0Ycn71vapaMlBfT5E6mN/JMLjSjT684SoQDY+
         Tp4EvCohHrL7KAE5kD5T1bDrQQgjkMz13XWGkp2AjEd2YEbn3k43G99keUwL9DMdrGPS
         1qQ1/iT5/t0PJnhehqU+6YZ89eH+obXOG+s8GPCp3dfA0MzypdiPg5jcNicv/QuSwTxE
         WxdVitepLIbsHkFydnLsl7KFio5eZPUrEadIIu9wihEjR3ItSDP/YQr9KhLG43CWr7xC
         aauQ==
X-Gm-Message-State: AD7BkJLXngHOVs971rBDJuxFuuCNzPXoIGaU3bP0QwGzBoBRO7rPM5tTUlEtNRR+BwaJIg==
X-Received: by 10.66.233.131 with SMTP id tw3mr17355940pac.89.1456688667487;
        Sun, 28 Feb 2016 11:44:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 74sm32794176pfs.33.2016.02.28.11.44.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 11:44:27 -0800 (PST)
Date: Mon, 29 Feb 2016 01:11:39 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] Remove NULL test before vfree
Message-ID: <20160228194139.GA1694@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch-set removes NULL tests before vfree.

Bhaktipriya Shridhar (6):
  staging: rts5208: Remove NULL test before vfree
  staging: rtl8192e: Remove NULL test before vfree
  staging: rts5208: Remove NULL Test before vfree
  staging: rtl8188eu: core: Remove NULL test before vfree
  staging: rtl8188eu: core: Remove NULL Test before vfree
  staging: rtl8188eu: os_dep: Remove NULL test before vfree

 drivers/staging/rtl8188eu/core/rtw_recv.c    |  3 +--
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c |  3 +--
 drivers/staging/rtl8188eu/os_dep/usb_intf.c  |  2 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c |  6 ++---
 drivers/staging/rts5208/ms.c                 | 30 ++++++++---------------
 drivers/staging/rts5208/xd.c                 | 36 ++++++++++------------------
 6 files changed, 27 insertions(+), 53 deletions(-)

--
2.1.4


