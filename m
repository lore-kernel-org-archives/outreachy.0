X-GM-THRID: 6618414504788099072
X-Received: by 2002:a0c:c701:: with SMTP id w1mr3432984qvi.46.1541019994602;
        Wed, 31 Oct 2018 14:06:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b4ab:: with SMTP id c43ls4241301qve.6.gmail; Wed, 31 Oct
 2018 14:06:34 -0700 (PDT)
X-Google-Smtp-Source: AJdET5doLdLNClDHuk8qW165zWZc+T7LtV9Ou7s/FUm2c4dfjxOM7LDhqyMtTYJiEopkOYoVhXJL
X-Received: by 2002:a0c:b2c9:: with SMTP id d9mr3650453qvf.2.1541019993986;
        Wed, 31 Oct 2018 14:06:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541019993; cv=none;
        d=google.com; s=arc-20160816;
        b=u0lpe0PtiUkFZOsNqhBszj/htRpiHpWIpO5gJtAx1z+uKmD+c49ek+4vQCMz61exus
         eBJ5fwbbxx7vLmn3NSlKsO9BtrZfrvGDj5sX/czNykh6ADTq+0zQqfqY+WVUq8tyW+uD
         iNlu+P+J0v8V4U3tUD5ahZlefnZCBzWXFotTAcnEhpRaw9nUZzkQw82vfEKbz3DFMD4n
         K2t5WHUBIvkO1oTL3+PnJL3e6IR54Ofyh8F546BpX4IKhEO4YJUG4XbQ56QWKX4ChOH5
         roSDQzH9U9/gwlTzRWjO4qgDmcivTcO3xHHMbCaLYiN4Nt/DOmKorW00k4aefhRVCUgK
         Hdrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=NiOJDYk3T4fqVIPoR9gYT6xgPt/sV4SeHn/S0f7if0E=;
        b=uh4i9DinwT+5K4sB3IDkuSJKjS97JrOtHJIBL4WXRqzUPU/hzSaGiCXblkk3EatCc5
         v428pmKDMJTxgZy9UfbZJYYtN5hmQ71JlQGjXe9mEsM/Qd8MpY1ukKeIsIKy4eej/Pxw
         F53ywNB3uZAOlGGpCulFZxbdJkHlyo1/YmSAMBvzsIoJxZAhKNaAiu/D+TWRG+WoJ59Y
         b+J9HJ23vxoXUPqLznrMooz5ohTRYiaN+m4qC5u3mhr+pvzKqyaqpot28UkdQOT1d25T
         FLlsyZgdJWhIhnv87Ykyr8PG/hjipbWu3hTy0/PYc2HDQeDZ/nMtkSwPW8BcgNwZlVZo
         BLiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nskz/m5K";
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q49-v6si1377046qte.3.2018.10.31.14.06.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:06:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nskz/m5K";
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c25-v6so8208650pfe.6
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 14:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NiOJDYk3T4fqVIPoR9gYT6xgPt/sV4SeHn/S0f7if0E=;
        b=nskz/m5KKBXZWU1K4EOz7WhOUdH0ZpCyYG18azRaPnNvJd75DdUECheupO2SrhKzOz
         ma8rNwns1g069jbFUO5hhUNOCB8v1Sh93BCjXzUWCbewtEw2+uN0bqTW0VwVfg3DaTLh
         1/z7u2sJHNOEw29NBRiW6JfQ7RK8PFBdWQfXBKWdVybcKHv7rLf7s08g+h6ioSN2sJLf
         Bnm1JFjitf/Q/XszzvfUQ42Kuth4pXM0P265LqU8Xy3+CSnEVPvS0govPXj0sHCgKO3Y
         gLg13tnaSQl3vVwuC10AsjZBl0CUtUi3QoweHxyuHFbNGxa0LS2IfJFnI2+fIJ19qYux
         e8QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NiOJDYk3T4fqVIPoR9gYT6xgPt/sV4SeHn/S0f7if0E=;
        b=XzurdYNIPLPFKpEtKag/oBFY/BzDFa7McqinRWbPb4BbNybzU6tf/CFXzcNiEv3nKx
         fGdMH7WPDAuJcVjnVh/L6jVsbFqxUKFdFFDUYFc3FaM0lDfdXNYUAWaiIkbnjXFQL1Cx
         W/vo9kSfiNB/9eKr9bb3rYTh5aMNLzA3E+qEVD1kKlw7Iu1rDK+VafkNg1+A3eRrTXl2
         3mFE1wIK6vbD4cC4WfpePre9qyjet9cy12UUfueH2+YxJKoYvjxLUyIF+ZoCRKAjhNWl
         LOLQ/xBkcmtJ0P1HxizjTwTsgyqMDnEWYAhOXLgrWhTmPGZi0EqDQsqK3pfptRCCj4L7
         xqtA==
X-Gm-Message-State: AGRZ1gIAQNxAAsjAcvQdVSXsKj1H54HfueSt/zdqu6s5rakUPob00MRw
	pDYbTFTx5M8Rcaya0IJmXL3SG8mhbEk=
X-Received: by 2002:a62:c299:: with SMTP id w25-v6mr5085859pfk.205.1541019993476;
        Wed, 31 Oct 2018 14:06:33 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id r5-v6sm36944732pgi.64.2018.10.31.14.06.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 14:06:32 -0700 (PDT)
Date: Wed, 31 Oct 2018 14:06:31 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] staging: rtlwifi: Remove unnecessary conditions and
 other cleanup
Message-ID: <cover.1541019721.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patchset removes conditions with no effect. Issues found by
Coccinelle's semantic patch results for cond_no_effect.cocci. It also
eliminates checkpatch result, a line should not end with a parenthesis, and
edits statements to keep expressions on one line.

For version two, a change is applied based on Julia's feedback.

Maya Nakamura (2):
  staging: rtlwifi: Remove unnecessary conditions
  staging: rtlwifi: Keep expressions on one line

 drivers/staging/rtlwifi/phydm/phydm_debug.c   | 35 +++++++------------
 drivers/staging/rtlwifi/phydm/phydm_dig.c     |  9 ++---
 .../staging/rtlwifi/phydm/phydm_hwconfig.c    |  6 ++--
 drivers/staging/rtlwifi/phydm/phydm_psd.c     |  7 +---
 4 files changed, 17 insertions(+), 40 deletions(-)

-- 
2.17.1


