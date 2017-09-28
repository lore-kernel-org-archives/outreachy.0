X-GM-THRID: 6468559183298953216
X-Received: by 10.99.139.193 with SMTP id j184mr572845pge.179.1506601850730;
        Thu, 28 Sep 2017 05:30:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.96.13 with SMTP id u13ls1129139pgb.31.gmail; Thu, 28 Sep
 2017 05:30:49 -0700 (PDT)
X-Received: by 10.99.124.30 with SMTP id x30mr634000pgc.35.1506601849726;
        Thu, 28 Sep 2017 05:30:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506601849; cv=none;
        d=google.com; s=arc-20160816;
        b=TpSBCosz3/xEUINWhx6pEBjNzkwcUs1MlU1rkA2w1VJAslHj0jzR9oWyEvkdIiyr6D
         8EYA84VPxrwJcJoVvyYNdCqBHnYDZYFokDcw5nkGeEVJoasKn0BJg1NTzwRIq4E557KR
         kiQa4FwATcPStrX/7jxyw1NATfuPndh0/Z+zXza+XgAn8xakH3YDYyeWuvg+ySqfsbSR
         QwvTQhCQZpyZ7c06rctl9wiJxHQcUCo2fnjkNATtEtbXYocd9aKob8Vhx/3qERFYECU5
         0t7zyfgSi1zXeUdC5VWov6VW+OZnCst/sIQ9iQ8xn+RXup6PnDMGb5pe1rNLwoxf0vfS
         no8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=lyU4w8ZWsKvtRaH0gRoyObsjBFwJoC+LXSsDh97YSBY=;
        b=yBUGKIteRF6FwLEF369rY8Yf7LrWyrxPGRitJhN6Pk5rrOp1/PPPSGQp9qHwJIJ71L
         yyHwT8TdCgA6xl2DT4q3wQ3ezNvgZZkpM3CtrMK+fa5qzq9A4YihG/3v3xFH5ioF5Bx2
         7/xR7AksaaOyJah8TySV1rlk2tAFliA47T3q+urOD77nqU5cJTFnIhTbZHTAmv5Zta8I
         Dnqdr6mmy9wt1wM4Odpn2btMQAPmamu2kNWLnBBFt8qfI3GamZPhyXTv8uLNk6vlWIWx
         +HqPC8DlhCSh2lKlhKvKDrlRwWfXzDZgo3sGlViLsD6yXL8gZZmv3t7HwrrFmrvBn/zS
         RhmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pBO8gsME;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c200si183150pfb.14.2017.09.28.05.30.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 05:30:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pBO8gsME;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so1382947pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 05:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lyU4w8ZWsKvtRaH0gRoyObsjBFwJoC+LXSsDh97YSBY=;
        b=pBO8gsMEdkLI8epoxAChu1p72ubWdX9jr8SCF2uOIZBkzh/+nmRyoqFQa4wGdueAgS
         zTAbtsGZCacrMJByYP+D1vKxJgFVoyByKV+3kjrMl+UBvIj+PNBeqckysy27tK+Hv+xl
         MdJSJNbPMrxa83Tnm6kuhMLVHLUJlchLyi5i8R4ql3YiqO/uEijYcMO1H4jjAMP4U6Rf
         6aO2v8Qbs8anCzy0EqVdTmGKL3akZRZQAtwxbt+gJ1v7jQ9gn7hjy0hp9CO0eVv8A4on
         kJjtxnuh0E1ARhf1LwFO5n7WCc0mPl5AuYYyGFIIhaiHuyyv4PsARI/c8piqjq61fL7+
         1lOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lyU4w8ZWsKvtRaH0gRoyObsjBFwJoC+LXSsDh97YSBY=;
        b=Pl0pZD4bZHT0jJcJ1icYBW8BVGN0gXQFXyUgtAQvZ/R4Wjx17KnZlB3eCfAanuyniY
         GH5zlAwm12mnyJnEShstO1hIKfbz4BljG0rN0/rjmaGJeEEsSMxM53WEUFjY5l2lMPPg
         PSOKuu49TbVVQ2RLmO2NGK9ET56lpXRlQFCXjeioV/xtk3FZf5vdk/7XpRffJGjJ+XNZ
         T0CBmg0GJFDf0SnYZnEEQ0fN04muZNA6E9i0XF8cTM9Sc7NY6gNlyHEnWtSXH9WhgriF
         +q3ELAtj58fV35nujdBRtFz3M8mug/8S1NaZTjhqd1QIKhlKIFtK6BRR3Vbd5qKi8Iyn
         sWUQ==
X-Gm-Message-State: AHPjjUj530/+PW71xEliZwSC+7+5DDsFtDhcJ64pQeoQrhJUu+H5G4fl
	HcDT66xu34LXv5RPgO02jgQ=
X-Google-Smtp-Source: AOwi7QAbmVQnyNPxOR7f+eQeHPg5jQ8cDDRbjIdL15DTMFgNfy4gIHYN59LihOvr6tqwyyfF8f3Lrw==
X-Received: by 10.159.253.137 with SMTP id q9mr4007254pls.16.1506601849373;
        Thu, 28 Sep 2017 05:30:49 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.227.14.65])
        by smtp.gmail.com with ESMTPSA id e185sm3378915pfg.142.2017.09.28.05.30.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 05:30:48 -0700 (PDT)
Date: Thu, 28 Sep 2017 17:44:22 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 0/3] staging: rtl8188eu: perform minor code cleanup
Message-ID: <cover.1506600813.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Patch series performs minor coccicheck and checkpatch cleanups.

Aishwarya Pant (3):
  staging: rtl8188eu: remove unneeded conversions to bool
  staging: rtl8188eu: remove implicit bool->int conversions
  staging: rtl8188eu: wrap lines in 80 characters

 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 59 +++++++++++++++++----------
 1 file changed, 38 insertions(+), 21 deletions(-)

-- 
2.7.4


