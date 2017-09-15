X-GM-THRID: 6465879632669310976
X-Received: by 10.36.125.205 with SMTP id b196mr1523240itc.22.1505457511832;
        Thu, 14 Sep 2017 23:38:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.192.65 with SMTP id u62ls549751itf.16.gmail; Thu, 14 Sep
 2017 23:38:31 -0700 (PDT)
X-Received: by 10.36.219.133 with SMTP id c127mr1460270itg.37.1505457511059;
        Thu, 14 Sep 2017 23:38:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505457511; cv=none;
        d=google.com; s=arc-20160816;
        b=zGQUd6d6wFxKG+WGpB2MAdf9X5NX2ObXCULiHm2lu1uiYvCkj96MnpHAKwis2JLCLq
         tin280bEnuM9xgpa/nOjeTwqqwCOSU2OpXVxHOueMgRihUg50ZD+Bj2Yfmj9waLCrUWa
         JqjWSfuICKEIu3Or+YEQdY1CN2TbZwAEiDM39YIeVLrQ8Gj8TjzqsVu/tBUlrrwoDACH
         bwvqFzIwnZdm3oFzIRjX2xoRk1HHTKNa3rgoZOICsNEVWft0BoDgBuqm/+fSlOnpoVI5
         OMS4F4ueJBsZ1fa7XSjZCXuw9v0MfK2VL9p1n2AaKv/6ZmmZzxqz3uK53ORdvG9kAzB8
         sRJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=u2DjGhRxhFCmfqekMgECynPY0fruL5qZNYDW4gZvTgM=;
        b=P+62wlPdsvaJJjkNRkhEcSYDB91wm7MhtWeNWoOe5UMVEi70Gn7BQzg5KGM3GxIpca
         V1134JJxYWYuG51J5WdWwdsk4MKe1Ha2MGjnVRRowTIrMOEXjlO51aoo0nh7I+Z/ckZT
         LTHOcJwU5v83QSW/YV5G2DUbW/pRUmJxr6AcmO69dRrdgNL1wGgLFgBcutxdk3DiUt1b
         ZCycZG1AmknW0vgGsIQqyuaz6XbX2USMLzASGm5qXQfzkBiCqH9wpmC2AYZtW2YwmEtI
         zAaI1zMCQbIuSIHlatMrov8YUgMsMiPsrUxALNcTB4+uqYowWuQlda0G3023uJ3Ca2PQ
         8u8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S7U3CVjr;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 8si17408pfa.0.2017.09.14.23.38.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:38:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S7U3CVjr;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so817239pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=u2DjGhRxhFCmfqekMgECynPY0fruL5qZNYDW4gZvTgM=;
        b=S7U3CVjrhKQ0JFYIg95fIhgTQ3R4/WtA9NbErrTf9974Mt5NwyRo4QfQPb3bWC3TG2
         yByFXPaMuGxKMTLS/zzG5jVEb8lY2lL5OgOaWHoSm+CJwEZ1iqR2FdzBZK/fdwXfoOG+
         oO14qEvdXHlWphYF5x357j3UjjAsuBix8NoQfT9TNgTp7U9mhyIEzCP/aEHjb/Tme8LZ
         jpvcaugjczVPOwJOwiXMqFn7ET2wBSM/XJziT5aALjbC/eT8mg1KWxEe4uTfhu24rFoT
         Ta2PEXLKTM+vFvX9K8hqyf/LBUtEOpLFL7aNxL6wHKgQBk9hRJqM1R0ybuRFUakTDrJl
         dXSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=u2DjGhRxhFCmfqekMgECynPY0fruL5qZNYDW4gZvTgM=;
        b=m8Al528M+KVcT3dpea15ZQFLCDDobGVjcS6+KUgtlkZF5PeimjXbVGmgtd7+BWxJIq
         b5ubhEu2o5jBBp21j7+FWQ09oBu8KL2N2AFVcwfUKorLu5tLUZarkQPRpVPorxWxVT3B
         MPlpXo0LHI7+Js3uAB176zfN0yQ0xLwrm/VpbOrzWrrfJAZDHuYz0osmpnySowAz6t3c
         1tdzV44xjNMJtj28dwxbbTtx4zbIBHYgSdHzRoKscLprzXBW1aw0ELhsyztlxXD3zw6M
         LY15m1TGp1yN7LJ1y5lFo3P00EYrDF2Noy8rGuicx7qgyRnLgONxe7rwFLc74ccPw83U
         Cxvg==
X-Gm-Message-State: AHPjjUhCKA9oHHL4Z8ZX7732uvIoNaXKu8TYBUCtxIeDGYlKcaPmoP+t
	MqUAPBYxun/HKQ==
X-Google-Smtp-Source: AOwi7QCh1OKqs36zgKQF6pHdleoh8oSEJM8Z2wa9bUrI+ZRtfpgp5/aehAAhgNY1p4SgnEjFiGB5rQ==
X-Received: by 10.84.248.138 with SMTP id q10mr4577643pll.431.1505457510795;
        Thu, 14 Sep 2017 23:38:30 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id 207sm740025pfu.0.2017.09.14.23.38.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 23:38:30 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 0/8] staging: lustre: ldlm: fix line over 80 characters
Date: Fri, 15 Sep 2017 12:08:15 +0530
Message-Id: <cover.1505456960.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <alpine.DEB.2.20.1709150814460.2287@hadrien>
References: <alpine.DEB.2.20.1709150814460.2287@hadrien>

These patches fix checkpatch.pl warnings 'line over 80 characters' in ldlm files.

Changes in v2:
	- edited commit messages to include the information about the file name 

Aastha Gupta (8):
  staging: lustre: ldlm: fix line over 80 characters in ldlm_extent
  staging: lustre: ldlm: fix line over 80 characters in ldlm_flock
  staging: lustre: ldlm: fix line over 80 characters in ldlm_internal
  staging: lustre: ldlm: fix lines over 80 characters in ldlm_lock
  staging: lustre: ldlm: fix lines over 80 characters in ldlm_lockd
  staging: lustre: ldlm: fix lines over 80 characters in ldlm_pool
  staging: lustre: ldlm: fix lines over 80 characters in ldlm_request
  staging: lustre: ldlm: fix lines over 80 characters in ldlm_resource

 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  4 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++++------
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 41 ++++++++++++++--------
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
 8 files changed, 67 insertions(+), 35 deletions(-)

-- 
2.7.4


