X-GM-THRID: 6471467521247543296
X-Received: by 10.98.200.83 with SMTP id z80mr847008pff.50.1506755948748;
        Sat, 30 Sep 2017 00:19:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.85.142 with SMTP id j14ls167346pgs.3.gmail; Sat, 30 Sep
 2017 00:19:07 -0700 (PDT)
X-Received: by 10.99.182.79 with SMTP id v15mr260242pgt.163.1506755947687;
        Sat, 30 Sep 2017 00:19:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506755947; cv=none;
        d=google.com; s=arc-20160816;
        b=HHQN94JKNTjuHqcpbkwBnpjgQ4QZKWfYrBOGUkjVu/VJiNiX/OS4aTVtpfdzJILeFc
         1VcKekIboYo2NKi3B5FzBXXMlEYXrARanpP2OkHIGvooh3pIp+fh8jHzQ98AnmoABZxE
         Dl3nh/7tzA1b3IZ4cpAtsY8v5lCmSIb4bZHiCaJz1OvTF2awDlVRWDTsIZNqIMc/6tHd
         XBVq5Nghp3aVNL2WwQTr2un+Wxht3HHWTRFVIWIHasuljay5kQqol1e71E8eyflFZ7mI
         cZB1lj7yzA6mV+PiRMGtOQXmCPmvgA13TMkQhp2aCx8R8UaIDGw014m6FG7LF38Iruwg
         9aHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Vm6wG0M3eWMFlaGa+/+Wx0ULv9Q2iwOqlHEu9cyO3Gk=;
        b=NMnMIKszvndOxLXnWQGZP059MVPfRm6+UT4uczGVhrCvkzJ6S9HwZnTZFiUTvTg8X9
         B5vD0CBG4nWzC+7S+XPbg8FGvf5bghN5yEEp4a0GeiutcntVsTWH5v0dXpsDFX9itpt5
         N65mAvoEkHqRe/bFuQlOD6B7BEpDZRSy3Vh3ALsg9Aghmxxb7xgmEBUyo9+W5dsfnEzR
         tuOoeK60f1yZ+oRINoOvNxgbjqO3DWtCtI13Ai2W6Qfhvl7XVJLE9xKWWitOHZVWtK+m
         LYZRlKuF26WP5fTBrbR2aXd/JsIiRsFZWYTxxQLgTOuOSW0zqFdEmjNq9CCX+X+5qfh+
         63YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aw8Bxc7T;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id f189si628841pfa.1.2017.09.30.00.19.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 00:19:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aw8Bxc7T;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id m28so991074pfi.0
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 00:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Vm6wG0M3eWMFlaGa+/+Wx0ULv9Q2iwOqlHEu9cyO3Gk=;
        b=aw8Bxc7TzS+ik0YNPvH11NQU8g1e196amoQcoz50clVQHrItxfbQQ5s89vf75ZK4qx
         s05dza38iFVKwdEqzKRBpmOu24LG2f1viofwpB+xk2o9VZcr6lpvFryNzbbq4f5y4L6y
         OlURrDTxUb0My0t2cvBzsvU0A/ZP3B5qBmDSO1Fl/XU/fq9YP9DXI8kJYyonhid43gHH
         5hLsZebSR9LbcH/uSF0EtV4J0qC+v4KOD88MzveuTtTnWdMjVlpeCZF9guDPlJrqyg3W
         Ibp+iRKEVbW5BxQ7tsfDrSMLM2ij+DcVsdHxABtQit0a+wfpprAW36Nu0FJWMeEOw4Vr
         f1sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Vm6wG0M3eWMFlaGa+/+Wx0ULv9Q2iwOqlHEu9cyO3Gk=;
        b=jLoi5M5tdC7x6g1Ay16cvKkynuzXuE4HET8tuyMS5VkyVRVM3EbUYXpqyNv28nmyHC
         MsqZ44hQqRASRA1O4ZwimgFBe1mKTID1ynAxu8yq355uLR81MxXGhGxL/B2GegdvdrGr
         oUGImIttHGBAZzthceHOfp5qo25xHx6eD/D+ngvI61fIh42G/IH+BFnhmiqzGcZRI/wk
         FXyfAVAeiq/J5WWP3HvPi4aOBb4dTeEoiMJt8lId/sUnxLOs/s7g9BDYdkB2I4gYMYHv
         rBDiLIJMMDrBG8cy7aW/GHA9vO/hc7q+ipIMPx+9XyhkIppYa0mrttgNJGJxguQL4smx
         mfjg==
X-Gm-Message-State: AHPjjUgn7HqZqmssUh1PEa9z3jKeOCEK0I2NY5qRwiR+KLuFUTjLgja9
	36YVnIUZR4JLse/bNgTBcL6ZFA==
X-Google-Smtp-Source: AOwi7QAm8nb+IZQOfbRwvk/ff+wvRLQ5G/TnIq3sFCK+wAfbdvLak1AsLL8WXIUEmgPLyaS5djlx7w==
X-Received: by 10.99.148.17 with SMTP id m17mr4517118pge.114.1506755947435;
        Sat, 30 Sep 2017 00:19:07 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.6.85])
        by smtp.gmail.com with ESMTPSA id p85sm10295563pfj.47.2017.09.30.00.19.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 00:19:06 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 0/6] Replace container_of with list_entry
Date: Sat, 30 Sep 2017 12:49:00 +0530
Message-Id: <cover.1506755265.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Replaces instances of container_of with list_entry to 
access current list element.

Srishti Sharma (6):
  Staging: rtl8188eu: core: Use list_entry instead of container_of
  Staging: rtl8188eu: core: Use list_entry instead of container_of
  Staging: rtl8188eu: core: Use list_entry instead of container_of
  Staging: rtl8188eu: core: Use list_entry instead of container_of
  Staging: rtl8188eu: core: Use list_entry instead of container_of
  Staging: rtl8188eu: core: Use list_entry instead of container_of

 drivers/staging/rtl8188eu/core/rtw_ap.c       | 14 +++++++-------
 drivers/staging/rtl8188eu/core/rtw_mlme.c     |  8 ++++----
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c |  4 ++--
 drivers/staging/rtl8188eu/core/rtw_recv.c     | 14 +++++++-------
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c  | 12 ++++++------
 drivers/staging/rtl8188eu/core/rtw_xmit.c     | 14 +++++++-------
 6 files changed, 33 insertions(+), 33 deletions(-)

-- 
2.7.4


