X-GM-THRID: 6332110016814776320
X-Received: by 10.157.24.123 with SMTP id t56mr1477139ott.144.1474394294814;
        Tue, 20 Sep 2016 10:58:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.18 with SMTP id o18ls2433705ota.40.gmail; Tue, 20 Sep
 2016 10:58:14 -0700 (PDT)
X-Received: by 10.13.227.195 with SMTP id m186mr6635980ywe.139.1474394294403;
        Tue, 20 Sep 2016 10:58:14 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id si10si7077469pab.1.2016.09.20.10.58.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 10:58:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 21so1259997pfy.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 10:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ykgYsbiR+TCZmF07f1hk4jRvwVCAsURddHIxn0EYY9M=;
        b=m0Ja1cq7d0nAQqGjtDBMEqfVMIE5weykdsu83pw3awpd3ZgIFVLlCyDIElnc0EmV8v
         iQias1ZXnZmGTZL5Ad7VSpeuqIDOdV0RkY9hm2bj9qJURhdkiNVWlMsdORM59pebbz/m
         tCuCuJrKrIOhk0DYmaBCsGHKMxxg+nha/lj42KGtlSC7GbrR7BGk/BRsQUM1Rzvql5eU
         mDqueGWGc+LzSrZ83D2PdN8VG9x5Y4aVT21IImG/Lm5neJs0XGWYRDu0x4XiJAhPWNJw
         wd5zwbuLX171YNXfCidnt6VLNH1jufwAG/M/YMMoEL1NlGTqBxb+u5LeJ7HNEeFljdS+
         9FFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ykgYsbiR+TCZmF07f1hk4jRvwVCAsURddHIxn0EYY9M=;
        b=OaHPLtBfCsqvfJHPx7WzhNnmddMP7efCN6i/m1fTrnBV5zL0RIiQr5bnfM+MvI4Bdq
         PqFk36NtqBjtpUxYEgmOc28y8bbxivFhDxnQ+DF9hRjeiHNwNUsPX+4D/XPtAuYxAr8O
         xf/RUIk4BvAlc1v/TLogHW2ihb7h1nfqkzJCWZ7ylZD2zf3o7jJ3OmoP6KQAqpiEHRvw
         kj2tlFR5hqNFIGmJr0dMNI1+0qkXuRkX/5/nJhq/6dGCoFwOJB3s0TiLVQJJXbzO0oRU
         qPLs7TLzqsfNmnEUXamwgBi8CZlSMcCuuCf0zeB8ozb9LiMlmJvnK6LSsQoc/KDXCdmT
         sgeg==
X-Gm-Message-State: AE9vXwPyMRyP2l0YBRjW65ir1Yb4Fc31RWSkMmbvyJeAGy+N03Xdf0vn0eEyjUpN1elt7A==
X-Received: by 10.98.5.133 with SMTP id 127mr57265629pff.40.1474394294198;
        Tue, 20 Sep 2016 10:58:14 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.237.254])
        by smtp.gmail.com with ESMTPSA id cu2sm40781072pad.18.2016.09.20.10.58.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 10:58:12 -0700 (PDT)
Date: Tue, 20 Sep 2016 23:27:52 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/3] staging: i4l: act2000: Fix multiple checkpatch
 warnings
Message-ID: <cover.1474393521.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset fixes multiple checkpatch.pl warnings.

sayli karnik (3):
  staging: i4l: act2000: Replace printk(KERN_WARNING..) with
    netdev_warn(dev, ..)
  staging: i4l: act2000: Add a blank line after declarations
  staging: i4l: act2000: Replace printk(KERN_DEBUG..) with
    netdev_dbg(dev, ..)

Changes in v2:
Rebased so that patches apply to the staging tree

 drivers/staging/i4l/act2000/act2000_isa.c | 28 +++++++++++++---------------
 1 file changed, 13 insertions(+), 15 deletions(-)

-- 
2.7.4


