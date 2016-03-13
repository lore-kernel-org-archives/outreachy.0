X-GM-THRID: 6261499450444742656
X-Received: by 10.107.157.10 with SMTP id g10mr14925130ioe.28.1457879112045;
        Sun, 13 Mar 2016 07:25:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.135 with SMTP id n7ls3848931qgd.10.gmail; Sun, 13 Mar
 2016 07:25:11 -0700 (PDT)
X-Received: by 10.129.39.146 with SMTP id n140mr14087106ywn.22.1457879111336;
        Sun, 13 Mar 2016 07:25:11 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id y20si2478974pfa.2.2016.03.13.07.25.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 07:25:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id x3so23284127pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 07:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=L1/QQTjFyAHGqlHwiXhTCXSyNkrIJS6hIcOYXaIz5c0=;
        b=nlD9mka7I6xe2WRFT/z+yg4CX0F1+fM0NProebJ2JFUJzqwskhU9CXlD7lb4b2atbn
         M2eI18Xu9EJcKP3gR2X0XTxUreXzIq+2lHRXvFUXlK8W/oBizjm07wjTUMWFwJTHjFm0
         B/tSPYKoKpyY8EochWLyKwugg3Dsx4OkfiidPU3MHvXxNr31zov/dE1x0LRZPr7pP2sf
         XUk+fDu995IDdxndxIaaR9U5wpgSvrSHkvhzb+GwTiR2Pvt7SCPGdiv9FQQNLQuPYLKx
         m7c9g39aycPUxfL1K1uKp0TKyLNYbiOvON8HExm0rX+33015WzOfPJuVUJddXcfqeSCt
         JEFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=L1/QQTjFyAHGqlHwiXhTCXSyNkrIJS6hIcOYXaIz5c0=;
        b=RMWGtPRrnmcH3bO1rDxTjsaoaciCqaSBI2C3EihofQx69hTG42S41qrmHb2wJk07Lz
         grrFYSFtr3pG2E6I6IbxLsdyGcKIGV70SwNSUowL2qQuKHwV6nsUwtz062eQ2CyCpZGu
         GknCe9XsEn+SAAJJeDUgTmqZ9RgA1zzah9Pa/JpaRkBNxlVAKJn7BuorvTr22az16C8u
         zktmzkCIYY7C6FnWEUwhjBc+HleFXdqIQ20xjfWiCqJipkZRU/BFsm3hBIWEn8wX53ZM
         jrBhivTFy+OswvV7H5kn62BtP1GnCWnled9GgOv5akhFpdkz3O1+G2toqq+zS8goEzf9
         g7Zg==
X-Gm-Message-State: AD7BkJL0YKV9A25kMhXr6ukPSki5z8D3RQOdDlJ4+IpaehgIH4fGNiTwayBZ3h8R1mJ2CA==
X-Received: by 10.98.33.74 with SMTP id h71mr22284596pfh.157.1457879111164;
        Sun, 13 Mar 2016 07:25:11 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id yx4sm25662656pac.5.2016.03.13.07.25.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 07:25:10 -0700 (PDT)
Date: Sun, 13 Mar 2016 19:55:00 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] Fix multiple warnings
Message-ID: <cover.1457878893.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset updates the wilc1000 driver in order to fix several
checkpatch issues detected in the source code.

Anchal Jain (2):
  staging: wilc1000: Remove camel case in variable names.
  staging: drivers: Fix lines over 80 characters

 drivers/staging/wilc1000/linux_mon.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

-- 
1.9.1


