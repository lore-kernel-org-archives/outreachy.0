X-GM-THRID: 6210359704363728896
X-Received: by 10.50.79.234 with SMTP id m10mr21359938igx.5.1445962047206;
        Tue, 27 Oct 2015 09:07:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.71 with SMTP id g7ls1186667igq.21.canary; Tue, 27 Oct
 2015 09:07:26 -0700 (PDT)
X-Received: by 10.107.153.146 with SMTP id b140mr28035486ioe.30.1445962046731;
        Tue, 27 Oct 2015 09:07:26 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si4322733pac.2.2015.10.27.09.07.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 09:07:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id z6so226176705pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 09:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=u07nFVGKAc/3KLmE5WEBB8IOrZQEjnXt9qV4L9k/gs4=;
        b=r/34x7/ut4tL3WT4MZpHXl9sKzakjbhEdoYRPhj7CqREhZn1xjcgpkbjYKY48CVmtE
         +4VrlsfqOqwvRx+Ck4z3MngbskU1p9Mng6KPdB//ZygUEWCvjCcqU6n6Tfa7r+mY8NdL
         4aUoUN+bDw+kvlPAZljN/XJlU1+dLKRW+NoM2e6OL/UQ2xhaPOX9pe5BoBGb95BJujL7
         nnpYVl+I7RgI9SuL1zQWrO3jNkWgmiveUY8eVZXa7XAWqXEmMmnY0F340iza+AjFaIkT
         nOW94sF+eYIanOxa9SDEEI7sfZum1Tw+tk5iy6XbCOwjVsijIHWc1k/StejHIH8vUNjG
         RGVQ==
X-Received: by 10.67.8.101 with SMTP id dj5mr28417960pad.127.1445962046537;
        Tue, 27 Oct 2015 09:07:26 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id eg5sm40619561pac.30.2015.10.27.09.07.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 09:07:25 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/5] fs: nfsd: Remove time_t
Date: Tue, 27 Oct 2015 09:07:19 -0700
Message-Id: <cover.1445960986.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace time_t with u32 in variables boot_time, nfsd4_lease,
nfsd4_grace, dl_time, oo_time.

Changes have not been made to variables that use inode timestamp
or function seconds_since_boot, which aren't y2038 safe.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (5):
  fs: nfsd: Replace time_t with time64_t in boot_time
  fs: nfsd: Replace time_t with u32 in nfsd4_lease
  fs: nfsd: Replace time_t with u32 in nfsd4_grace
  fs: nfsd: Replace time_t with u32 dl_time
  fs: nfsd: Replace time_t with u32 oo_time

 fs/nfsd/netns.h        |  6 +++---
 fs/nfsd/nfs4callback.c |  2 +-
 fs/nfsd/nfs4recover.c  |  6 +++---
 fs/nfsd/nfs4state.c    | 20 ++++++++++----------
 fs/nfsd/nfsctl.c       |  6 +++---
 fs/nfsd/state.h        |  6 +++---
 6 files changed, 23 insertions(+), 23 deletions(-)

-- 
1.9.1


