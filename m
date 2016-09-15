X-GM-THRID: 6330466800696819712
X-Received: by 10.66.184.168 with SMTP id ev8mr5939883pac.43.1473943729221;
        Thu, 15 Sep 2016 05:48:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.143 with SMTP id c15ls48811ioj.19.gmail; Thu, 15 Sep
 2016 05:48:48 -0700 (PDT)
X-Received: by 10.107.48.210 with SMTP id w201mr6528437iow.25.1473943728239;
        Thu, 15 Sep 2016 05:48:48 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 7si1008425pfw.1.2016.09.15.05.48.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:48:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id vz6so2116064pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MIO1M7PapPg2wnnYgu79G6MNmRJdUpBH5oL/LNy+v4M=;
        b=O8q53uLBS4ElO4jasSBO0T/1ffmdOpXEimQlwpoUKpoHtagiJmz3dh1hBqWjCZzzE1
         aStdMBK1Xx1GSUrnRg6zMvLoVN3NyM/GlyRrGVKGFmpaMgtTgjj1NPmE4pfVvAxMy4pA
         z6KcLFSO+3PecpFi/XyXGOVzXbix5fduJ5w7aKAubw+rRdOTt7/9HZ8MsMVmW9fN47z3
         azSUTxTaLJ0mIXKJuGsPm/T+DT4yxwmpO3AeO4lt+OU9UOM0peJLQIgbdtRze+Dwtf3M
         LBNR5awmQpH5han0xx6I3HDPmdM9XpX1lHt8mFVl6yeOlES7oYRINuoaqetNSoOwVc+T
         GmrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MIO1M7PapPg2wnnYgu79G6MNmRJdUpBH5oL/LNy+v4M=;
        b=lk+MaLjvFi3Xgg9Q3AX7T95qQHEHGrAXwtFLMZETTT421Y93jqe7lKyA7pVmRx5rXh
         8w0YRspfDT8snx0VTO5WwUY8f+rZcSq8iqxvmEGOBEoSBXuoXJlHrlV1fZ/igO+jFY+O
         +bCTLqt8bTjUvlzeWyHCDIVtggTPEqdjMIWBysTNjMLQ5Vapq9oywd3ICxs+XoFfoIZq
         9QEkSf9bTr7N82Nl/kYf9RUyF8oTBmpXQSh5kWByiucboJnVpIK/YFpbAJvz50prxbgR
         5kzyucw70MyPAKeIPdfeDsE4MTN2qSYgTKsAtgImGKx6tPpmn9tXwJIdMfJc8uLvfMtO
         vX9A==
X-Gm-Message-State: AE9vXwNgXICvYnaX80Ztcu7rnEAlFD2TkZXP1oxyRW2+KC3tlaadXD+96DswdLbSfb+6Ug==
X-Received: by 10.66.164.227 with SMTP id yt3mr14318614pab.117.1473943727847;
        Thu, 15 Sep 2016 05:48:47 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tq5sm5117427pac.42.2016.09.15.05.48.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:48:47 -0700 (PDT)
Date: Thu, 15 Sep 2016 18:18:38 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/6] staging: lustre: Fix multiple checkpatch warnings
Message-ID: <cover.1473942874.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Change in Version 2:
Elaborate commit message for patch: Remove unnecessary 'return'.

Rehas Sachdeva (6):
  staging: lustre: Add space b/w concatenated strings
  staging: lustre: Fix block comment style
  staging: lustre: Change 'unsigned' to 'unsigned int'
  staging: lustre: Change 'seq_printf' to 'seq_puts'
  staging: lustre: Remove unnecessary 'return'
  staging: lustre: Fix indentation

 drivers/staging/lustre/lustre/fid/fid_request.c    | 8 ++++----
 drivers/staging/lustre/lustre/fid/lproc_fid.c      | 2 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 6 ++++--
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 8 ++++----
 drivers/staging/lustre/lustre/llite/file.c         | 2 +-
 drivers/staging/lustre/lustre/llite/lproc_llite.c  | 2 +-
 drivers/staging/lustre/lustre/llite/rw.c           | 4 +---
 7 files changed, 16 insertions(+), 16 deletions(-)

-- 
2.7.4


