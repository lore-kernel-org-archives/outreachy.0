X-GM-THRID: 6801903865933332480
X-Received: by 2002:a92:9f1a:: with SMTP id u26mr16640395ili.72.1583772708126;
        Mon, 09 Mar 2020 09:51:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:db11:: with SMTP id b17ls2604405iln.8.gmail; Mon, 09 Mar
 2020 09:51:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuc2GZlkJQ8vOhJvvcL4YONshjp+DoHw2D9J3cSDm2Fff2MBxGm6C/zW/vWxZBBpkT3Mle5
X-Received: by 2002:a05:6e02:e81:: with SMTP id t1mr3986143ilj.226.1583772706835;
        Mon, 09 Mar 2020 09:51:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583772706; cv=none;
        d=google.com; s=arc-20160816;
        b=u9oj6joYQCufO+PI3bF6TmnolLnYFC0TCoUi6iCiEB4VfIo3jj+DxJtfDCtyXHKS1q
         6mTXdHIIhe8eYziAvCSlieub5f0J2vqBtoYXYfVm37V0ILt3+YB1GAyXlhw+mlyM//fJ
         8zyZUEc0XjlmF98/jXegZFwJJ0kQSCOFVLoIjkgVFYGAE8dE2AyAFha+gBuW2L+dmPJc
         j+3WJXUbsEpMk3VG1Yuq/ojK3JXqlfeRmnK2cw2Xo6+yZt4DVx7EzIqzW36VgSAV67Xu
         PGaRWePhMDs16ZN45/0cwnAmyWlFDXaMP8lKMZw4o1d4Jy2kqr8IuOBnDohEOsnZyfK7
         seLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=HzSRe51ntOO80sAMFcqyWK2TEbBzU5pvnS9ZfU++3Jw=;
        b=R8ZleHeBkhZhkMUc8fXzeK5aqYsCqPiNPgKeGxBn03XGgWZtEM6BkC6Da2wC5aT+gv
         JIod+r7liuX1WYqJcAconwlcS8KzR42DNYiUhJneFcIQ70TOTEA6wb9Bj8oFPeX+qBdC
         N8qgS0hyDZyZ08BH6pvu5DPV+Z6RoIT4s+q5zwlrdUpDnB390RcphfBE8SSynmTz71tx
         TpboLhci5dhcPUl7UP3ky9ycaJHS7QktsHYYIDfK8TrjbF2z5G4FRdGy5mbuiiX98BTS
         UgWfevqSvVGfwiz4uUTdw2HY4gSvIF3y/RiZPq6zyyv6A24CVaN7H1hIJwi/9FPVYU5c
         WO9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pZQI2Wlg;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id t14si625287ilo.4.2020.03.09.09.51.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:51:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pZQI2Wlg;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id d9so4972048pgu.3
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 09:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HzSRe51ntOO80sAMFcqyWK2TEbBzU5pvnS9ZfU++3Jw=;
        b=pZQI2WlgCYeI/gqLtRewB2I1nWmWqPKCL4NTKcoHyGcM/64HinmuDQ/adQWSt8rrqs
         p1H0nuA6NE/LpmHvvfFTLosD0cTqKxgZmWbsVt1Cg5mFYx4H9HtGP203p6ugxKYVcECV
         +8Cc0YfzzYCICjIUrYOOp8FsgD+CBT7CggcmweWC7Hfg7OJ6/c53bXPUF7iEblRz2t3h
         lGswTim/fO+n5c9ILXDglPziZihLlrfDYswZuSURQ8ZNCoJ26Ea0y2vn942qAmxUJNPB
         HDeF0nUe1G38Q/4SbbbmYUFGzEtFN5r0DWT3WxJnrcB9UR5r2WMi5uVOavMCKFHOVAQq
         pBnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HzSRe51ntOO80sAMFcqyWK2TEbBzU5pvnS9ZfU++3Jw=;
        b=tj+HL/WFX8D+kpL/P8kORuTbqpJg5+Jsd2Q9TLqWu/t0SdcyYh10xnwdyHYth2rf3j
         8MRMllJ2oOeY3iDwFsZ52N4ZauYWFx1TIUuvOCQIGOE/yiOi8NZoNJrANs2/fe3YuwW0
         B2+GjDrjBLPXfAwX6lqTPa4STFwuR4aMT3zxKKKuQ3ZdMrH55BksYJKdAoj9uIezXK6Z
         89uTv+xbjFZxn9+UQaijoyf0c02L3MOBh4uoFggyL4GDvQSfVEmm7jh0m2xUmq+t+UwZ
         d0QolSGGP/g3PuHe68gSKsv2yzmSuI/kirHbEWhOgXCnpUVc8X04DQHuhv9VmT/2qca6
         GzdQ==
X-Gm-Message-State: ANhLgQ2yGOiJJQdnrSa1l2Gp93X6Y1GehMHcVA+SJqCDakHFbMvB531k
	LyE5hLQZsLWoxAYQq9HdmL8=
X-Received: by 2002:a63:67c5:: with SMTP id b188mr17093348pgc.111.1583772706180;
        Mon, 09 Mar 2020 09:51:46 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.178.183])
        by smtp.gmail.com with ESMTPSA id d5sm39978893pga.36.2020.03.09.09.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 09:51:45 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: exfat: alignment should match open parenthesis
Date: Mon,  9 Mar 2020 22:21:38 +0530
Message-Id: <20200309165138.5313-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Align code to match open parenthesis.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/exfat/exfat.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index c863d7566b57..341c9192f7e8 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -716,9 +716,9 @@ int multi_sector_write(struct super_block *sb, sector_t sec,
 void exfat_bdev_open(struct super_block *sb);
 void exfat_bdev_close(struct super_block *sb);
 int exfat_bdev_read(struct super_block *sb, sector_t secno,
-	      struct buffer_head **bh, u32 num_secs, bool read);
+		    struct buffer_head **bh, u32 num_secs, bool read);
 int exfat_bdev_write(struct super_block *sb, sector_t secno,
-	       struct buffer_head *bh, u32 num_secs, bool sync);
+		     struct buffer_head *bh, u32 num_secs, bool sync);
 int exfat_bdev_sync(struct super_block *sb);
 
 /* cluster operation functions */
-- 
2.17.1


