X-GM-THRID: 6264136808663089152
X-Received: by 10.66.231.4 with SMTP id tc4mr19879344pac.14.1458483005590;
        Sun, 20 Mar 2016 07:10:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.27.105 with SMTP id s9ls805200igg.0.canary; Sun, 20 Mar
 2016 07:10:04 -0700 (PDT)
X-Received: by 10.50.112.232 with SMTP id it8mr7339162igb.9.1458483004871;
        Sun, 20 Mar 2016 07:10:04 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id tu5si2665396pab.2.2016.03.20.07.10.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 07:10:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q129so25916556pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 07:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kALxd9lgp4M0YjbBnk1gQ7+C6DPJIimIPIawX62CC7s=;
        b=mpdwVUFAo8xgTBXFxQ6J4LyPDpAuWlwE8ynap7xTxrhGfDP47fere+v7ByvBmwdrLu
         A+7YX6I4CnGDOqMy7wypVZSynxuuw/gjrcY2se/eAJ+1Q0Sb1Pkq/LfHhAw16KF36CJe
         P0jY21JTxonwyf8OSCVm/43vDCncoUZ7MCPskD8W0REPtwTwNMVgb0M0akC1xoatFh00
         XzWXBXju7+8caM77zPkHqYYggWxBGb1MzQ/jA5KkznDWjnmm7pVUgvcqwr1vGqbBOmtU
         CKGveQ8GLBUmUXlBv+lsybapKGGgdw5Mpoo1CisLftuxQV3Sfe68H76WP39VdooacW4Y
         oytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kALxd9lgp4M0YjbBnk1gQ7+C6DPJIimIPIawX62CC7s=;
        b=Dm9lDM9gXRCTii6oCbL9Z3rGeq9RlCAEjL59oeej/EEewiEboeW+Kw0jnsAX8MZ9NN
         B1+kluiRhG7m+A/WFsaKFZVZ9vz+9iT4tkGfNofXKMOragS+Sp2MpuDrIWOwmYq8vHHw
         obPmN2d/R4uIZmxWIgd6qQfUhOzTsw+FAGBzQXP+QejMxZcCvZXscrC5UpE1OZPc7M/7
         IaVB+Ck84DeJ6IxDBEn4V4NfGHOBhm/cMrfQOyfcW2LcuCND/7PQPw5Qfg1HotLUgUCV
         U2hugLBGbdS5Xm7kmr67FJmX7S0XG0zp+o7j9t10KvSlJLHaYQpWI7eckwYvQb/hqdZZ
         +cog==
X-Gm-Message-State: AD7BkJK3stN1B1xHF3SG9jUydD3vm6TdadLwNmybOVFonbToqFgewJwTM6ez5YNkIFdpeA==
X-Received: by 10.98.65.82 with SMTP id o79mr37640099pfa.115.1458483004707;
        Sun, 20 Mar 2016 07:10:04 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id 19sm33868665pfp.66.2016.03.20.07.10.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 07:10:04 -0700 (PDT)
Date: Sun, 20 Mar 2016 12:41:14 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Staging: Correct the argument of sizeof().
Message-ID: <cover.1458454678.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Correct the argument of sizeof().
Used below coccinelle semantic patch:

@disable sizeof_type_expr@ 
type T;
T **x;
@@

  x = 
  <+...sizeof(
- T   
+ *x
  )...+>


Sandhya Bankar (3):
  Staging: rtl8188eu: rtw_efuse: Correct the argument of sizeof().
  Staging: lustre: rpc: Correct the argument of sizeof().
  Staging: lustre: o2iblnd: Correct the argument of sizeof().

 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 4 ++--
 drivers/staging/lustre/lnet/selftest/rpc.c          | 2 +-
 drivers/staging/rtl8188eu/core/rtw_efuse.c          | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.8.3.4


