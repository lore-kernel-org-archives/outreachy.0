X-GM-THRID: 6256430192250585088
X-Received: by 10.66.193.131 with SMTP id ho3mr10205308pac.42.1456691449075;
        Sun, 28 Feb 2016 12:30:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.136 with SMTP id b8ls802336qgb.96.gmail; Sun, 28 Feb
 2016 12:30:48 -0800 (PST)
X-Received: by 10.140.217.17 with SMTP id n17mr10201142qhb.30.1456691448264;
        Sun, 28 Feb 2016 12:30:48 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 12si3219996pfb.1.2016.02.28.12.30.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:30:48 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t66so3540392pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=P5a7xoiR4VtURAH+gqFAIkOpw32MktYQyKwwd6TXWXE=;
        b=dzhy0jnR3bZoO+gn2q9yoiH+iCherUwAfmbiFl2ESaboPN6SZeMpYEti/RVxlnrodR
         gYWI0zFVRb6HHUFNgpHLKvIhTYaKsqRqgGtCGik9Rp4eaFVaTOXB7xK2T1c6CkVsgTym
         CmNid/wIPRZfFTTGA/aPJtzeZ9iNnu2WLE9UhyC6qFYp763zWARfd5Xay/MrH38L17+v
         PUfuzgbWBGexWwnHgmHvc5Ce7xk5PK173jWTM+CA2+DArbgJeQkm6Tm3c+vngClIkc25
         nIhCczfjhYlDWWmHGyNNPdBtmuQ+EeK40J2PGcN1FQJId6U9JHgtZLSG+2nV1KiMyQps
         2AWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=P5a7xoiR4VtURAH+gqFAIkOpw32MktYQyKwwd6TXWXE=;
        b=iXRar+VOyDrDMpP6DlTf2kjG1HLok69u/YIs9nqwuonYxGMNRb4COsNk6NFii2CKak
         9Ao/IePnH0gsw35+HFaVYrvxcNbWcrZZ3jWNzzAIdI/yrwG8tSfu8yNqZn3+MvNkfOf9
         +m07OEZYvAr2jZd5L/xR9G/2eVytGDQLsL+aB6uCkThXXOwGus5vQWGfvPuBSTF8ZFqJ
         En2XNoJFIeGS5CqutLH5lyM3tA5yHo7FUG48gblFK5CMcc9PGTOtbXLulfy9DrGpl6zo
         b0s2duGD5XbebSFkP5HE6uz6inX5zQ844ys7FSuT3nEVQu8H9lOCWIohNJdI5ORLpKPH
         9jTA==
X-Gm-Message-State: AD7BkJLR3MfL34KhhsPStBxieGR5lCVa6CHpcvtjOmpylL8enLzYZ99zyLRwGz7s3PMTpg==
X-Received: by 10.98.9.219 with SMTP id 88mr17896995pfj.0.1456691447904;
        Sun, 28 Feb 2016 12:30:47 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u64sm32894133pfa.86.2016.02.28.12.30.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 12:30:47 -0800 (PST)
Date: Mon, 29 Feb 2016 01:58:00 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/4]  Remove NULL test before vfree
Message-ID: <20160228202800.GA2588@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch-set removes NULL test before vfree

Bhaktipriya Shridhar (4):
  staging: rts5208: Remove NULL test before vfree
  staging: rtl8188eu: core: Remove NULL test before vfree
  staging: rtl8188eu: os_dep: Remove NULL test before vfree
  staging: rtl8192e: Remove NULL test before vfree

 drivers/staging/rtl8188eu/core/rtw_recv.c    |  3 +--
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c |  3 +--
 drivers/staging/rtl8188eu/os_dep/usb_intf.c  |  2 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c |  6 ++---
 drivers/staging/rts5208/ms.c                 | 30 ++++++++---------------
 drivers/staging/rts5208/xd.c                 | 36 ++++++++++------------------
 6 files changed, 27 insertions(+), 53 deletions(-)

--
2.1.4


