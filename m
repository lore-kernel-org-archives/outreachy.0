X-GM-THRID: 6401028562338447360
X-Received: by 10.129.83.134 with SMTP id h128mr2359182ywb.32.1490355600904;
        Fri, 24 Mar 2017 04:40:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.119 with SMTP id 110ls2494031otc.44.gmail; Fri, 24 Mar
 2017 04:40:00 -0700 (PDT)
X-Received: by 10.157.17.123 with SMTP id p56mr2458344otp.116.1490355600535;
        Fri, 24 Mar 2017 04:40:00 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si408511pfz.1.2017.03.24.04.40.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 04:40:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id w20so2746995pgc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 04:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yTUuOKsK/2d/t13X0psGfPIIY34nFD50KkM7masqBjQ=;
        b=XmYFNkfHpNkS4P6jzC1TNwqHxaxVEHVg2Hu+pXbv/r8GEbRcwxF2ftqppAbgm5kBiQ
         AWV1mqlCNNF0TOxAdSKIITjiTHLRvzVxGruQK9lMbnZiJ+0VGRdnJeSax0+2rmtHaXuL
         /J/KJPQR1vjoYywBdj4gttRlj1nA5drMKFBEW8kOFI0RF/ydoEv0gsNdoGXsGxIQ8ub6
         R+3YDY+QmMre9cOdKXjYnLaRa7tS+7Zxw6w8fIwmuVizKebYJKf+wMeXylwJhR22fjFg
         jJ3nF1tsIQOPzwDgLWu/31MCjiUTviwFsuny8MZ9wzzThf1LJGBe32fK9HS7jew6eV6f
         N6yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yTUuOKsK/2d/t13X0psGfPIIY34nFD50KkM7masqBjQ=;
        b=Is/oMGgeOez4n7rbenOxICffAo4bhlZ+SoTflRXUpzrlbQ8B+im33Fa91pb5dbvRy4
         BHOFj/5p2pkWPR/yM3NKF2S/FjYB7MG2g3yZWDkeVjMKdD0mQVlvaJwg9bOJvrBYmm5r
         mRySD05uTa4GkTBMaxKNZvD6LvYy/AKhvoYtJvUcNlpisFD9ZuixkxdHnln6T0JcMaNV
         Cb695L0BQhs7ZEhLFXqZ8YJCCYtH5XWLt9bFdmgOMrfaA4aOZRzzZTukW96P+EekthG7
         yU235aZDm3FKHMAMjomHn1txsSJKAKhFJUNZFULkHMGJceCgYU5/oSwkHn0sIByFH38r
         TUGA==
X-Gm-Message-State: AFeK/H1Kt7qUn40r8fKjbx5XE26MM2vyB9vP3HtCFJASc3c1EqIyM6lZbWkG0cu98hAc1Q==
X-Received: by 10.84.150.131 with SMTP id h3mr245373plh.122.1490355599860;
        Fri, 24 Mar 2017 04:39:59 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d3sm3295738pfd.57.2017.03.24.04.39.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Mar 2017 04:39:58 -0700 (PDT)
Date: Fri, 24 Mar 2017 17:09:53 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: oleg.drokin@intel.com
Cc: Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: Remove redundant code
Message-ID: <20170324113952.GA31427@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove the code which do not have any value.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/net_fault.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/net_fault.c b/drivers/staging/lustre/lnet/lnet/net_fault.c
index 18183cbb9859..b60261db9e67 100644
--- a/drivers/staging/lustre/lnet/lnet/net_fault.c
+++ b/drivers/staging/lustre/lnet/lnet/net_fault.c
@@ -997,11 +997,6 @@ lnet_fault_ctl(int opc, struct libcfs_ioctl_data *data)
 int
 lnet_fault_init(void)
 {
-	BUILD_BUG_ON(LNET_PUT_BIT != 1 << LNET_MSG_PUT);
-	BUILD_BUG_ON(LNET_ACK_BIT != 1 << LNET_MSG_ACK);
-	BUILD_BUG_ON(LNET_GET_BIT != 1 << LNET_MSG_GET);
-	BUILD_BUG_ON(LNET_REPLY_BIT != 1 << LNET_MSG_REPLY);
-
 	mutex_init(&delay_dd.dd_mutex);
 	spin_lock_init(&delay_dd.dd_lock);
 	init_waitqueue_head(&delay_dd.dd_waitq);
-- 
2.11.0


