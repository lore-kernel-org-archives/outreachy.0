X-GM-THRID: 6254955929257639936
X-Received: by 10.31.165.1 with SMTP id o1mr38246439vke.12.1456345415585;
        Wed, 24 Feb 2016 12:23:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.165 with SMTP id g5ls198817igt.28.gmail; Wed, 24 Feb
 2016 12:23:34 -0800 (PST)
X-Received: by 10.50.43.234 with SMTP id z10mr11597672igl.4.1456345414804;
        Wed, 24 Feb 2016 12:23:34 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ff2si710234pad.2.2016.02.24.12.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:23:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e127so1584376pfe.3
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 12:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=QjSfoNfFlng6PIgfZF59AZd/cxDdxcW2Sf4rMVhNiNo=;
        b=Hyz1J0/xbX6+t+2ctd4RsD750XfvFbw4dd8l15vCfJ7L45a/YEUgCaqzwpaEZBN6tV
         pc0MTZVgFYPZFE6JbogR2dtgWMbqNheAqKAiC8dSXy5lrKj8EKNGE2XCxEn4qZv6hAwr
         6yOEcpVQvvi72IAR04qrF+wz97ErLEm2tixysmdSVurw0/AWV/BoZHVvkmq01HJefIyd
         blzhLhT7/tBr7mVihezuvZueyvCqPGIU9qYo6QFb2q3YMajCTQkG29FQ0BNhhyt8GkYJ
         pyRe0fmnOryY4/JA7Q8JFGfiyRd6FZJMnur3hfDpMX/fxBoIwyEhB5df03vpOaYhJD6w
         TLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=QjSfoNfFlng6PIgfZF59AZd/cxDdxcW2Sf4rMVhNiNo=;
        b=YlVpoXMN93Mt4ZFm25k9Le9bGaU0lNEdcUd31uBYWrPxcmbZ1IC4iXnZ9V900Elt3M
         D9ztHVhMP9xneEPMtOe4PP5ekgRUR9rHb4U6+x1eXrko8iVqIvNm7A/luxQop0l41K3F
         BXvFkxg9bIPCp53c0TdDp6Z08QyQHIylY4Uo4A+DMUmpgkHepvr70b/E3kyvNAksHpAN
         QtQRV5DB02KtBJjoKMBqYSQDzvmQgplA2V2KdO1hxj1ynC+3n85zxp8L/jHbzgXyDzcS
         Kgd8NIod1HBBbElKQuxD/Uv6AapjEtWubw++HhRMguXyEmSv0xN+Qt85QK1/CWHAb4cc
         1Fng==
X-Gm-Message-State: AG10YOR91gmr0FU5MLAe1Yt6M/a1s4bUa/vIbnNei8zzTbKjjjhPdtfH9iiyHxZT9K/eew==
X-Received: by 10.98.72.215 with SMTP id q84mr57537040pfi.152.1456345414598;
        Wed, 24 Feb 2016 12:23:34 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ud8sm6986337pac.11.2016.02.24.12.23.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 12:23:33 -0800 (PST)
Date: Thu, 25 Feb 2016 01:54:08 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/8] Remove useless return variables
Message-ID: <20160224202408.GA22908@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch-set removes unnecessary return variables and compresses the
return logic.

Bhaktipriya Shridhar (8):
  staging: rdma: hfi1: Remove useless return variables
  staging: android: ion: hisilicon: Remove useless return variables
  staging: unisys: visorbus: Remove useless return variables
  staging: rtl8188eu: os_dep: Remove useless return variables
  staging: rtl8188eu: core: Remove useless return variables
  staging: wilc1000: Remove useless return variables
  staging: rtl8723au: hal: Remove useless return variables
  staging: lusture: ptlrpc: Remove useless return variables

 drivers/staging/android/ion/hisilicon/hi6220_ion.c  |  5 +----
 drivers/staging/lustre/lustre/ptlrpc/client.c       |  5 +----
 drivers/staging/rdma/hfi1/chip.c                    |  5 +----
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c        |  4 +---
 drivers/staging/rtl8188eu/os_dep/osdep_service.c    |  5 +----
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 16 +++-------------
 drivers/staging/unisys/visorbus/visorbus_main.c     |  4 +---
 drivers/staging/wilc1000/wilc_wlan.c                |  6 +-----
 8 files changed, 10 insertions(+), 40 deletions(-)

--
2.1.4


