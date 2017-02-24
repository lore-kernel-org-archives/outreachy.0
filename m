X-GM-THRID: 6390544093665034240
X-Received: by 10.129.155.201 with SMTP id s192mr1651529ywg.159.1487973902486;
        Fri, 24 Feb 2017 14:05:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.121 with SMTP id t54ls8110565ott.28.gmail; Fri, 24 Feb
 2017 14:05:02 -0800 (PST)
X-Received: by 10.176.74.12 with SMTP id q12mr1334420uae.41.1487973902085;
        Fri, 24 Feb 2017 14:05:02 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x236.google.com (mail-it0-x236.google.com. [2607:f8b0:4001:c0b::236])
        by gmr-mx.google.com with ESMTPS id g205si510919ita.2.2017.02.24.14.05.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 14:05:02 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::236 as permitted sender) client-ip=2607:f8b0:4001:c0b::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::236 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x236.google.com with SMTP id h10so32871377ith.1
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 14:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=YMduRkOXV16+Rf/h8LKhzuxB3LXW9P9c4FD0A411OjU=;
        b=DPBV2qfi8YWku5CXdp3WO3pj2ZCo9aLBJzedYmfOhgQXTBuUOaKYLC4UoiXW7sy2b+
         iMhsnsp5/W3MToRbk+omRltOBfUVNmoRWY54Dcf5I0Xqr/YSKGV2bbGfkDipZM5U2xrj
         wkpq6pZXd6MAc6uAf6g3AIgZsRnXBhmkXTH3S9sHf0gwGS3MEFKm1vgYluO5QzLLjDYl
         QViUwTjyUTRbicX4m3aHyU57rzBT1sQZ0gZJtCHyceN+thB2wDwvc/jes8pbfzJMgDkT
         6kZrPUt8+G1J2qEcCv0+5SFaYJNRGUJIpiY+uBOq4QGS9/Bkn+2jfpgdrFH4lVCl/I2A
         HoYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=YMduRkOXV16+Rf/h8LKhzuxB3LXW9P9c4FD0A411OjU=;
        b=VvnjVxn9F2D+A91DZ7GxJT/Cm+uQ0breqQXhHz52OIkWokw5z9ao4DO4SU7JGTqO/f
         js1Fq8LucOxhEKMZNKaj/057ycH7w0xr1JMeoUCsrkNEWBaj0Rucc/TlJHcixEkWij9R
         Y2BDLZzpZQcfeKCscLhfFEXJ/Z8iKPDvQtF2MB6tGaRy1qNRky5l0LiNSG1dXygttcv3
         fbxrSv62rAA/Nm6ivi9VxWM6/6ge9Y8i2LRCPEmxIkoDZR0gky44AGZMjfM52fzEH5Qi
         zLsbgUcEeaGmpt5heUfiAGoE9JqSMOwxqFYMcPN+yYSWjClWsdx4lv4CWwmfMs3HUWIU
         pdIQ==
X-Gm-Message-State: AMke39mBicVoJQMakzr+x+1y5O4wZN7beFDPwjIdvCWWo9f/k6X4/5mTwSugvLCjTqsjxw==
X-Received: by 10.36.47.213 with SMTP id j204mr4274034itj.7.1487973901839;
        Fri, 24 Feb 2017 14:05:01 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id i96sm3630153iod.33.2017.02.24.14.05.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 14:05:01 -0800 (PST)
Date: Fri, 24 Feb 2017 17:05:00 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
	linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] staging: wilc1000: multiple coding style changes to
 struct tstrRSSI
Message-ID: <cover.1487947616.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.24 (2015-08-30)

Multiple coding style changes to struct tstrRSSI. Initially reported by checkpath.pl: 

Avoid CamelCase: <tstrRSSI> 
Avoid CamelCase: <u8Full> 
Avoid CamelCase: <u8Index> 

Changes since v3: Reformatting commit messages, as requested by
    Julia Lawall <julia.lawall@lip6.fr>

Tahia Khan (3):
  staging: wilc1000: Rename struct tstrRSSI to rssi_history_buffer for
    clarity and to remove camel casing.
  staging: wilc1000: Remove Hungarian notation and camel casing from all
    tstrRSSI members’ names. Additionally, change type of u8Full to bool
    since it only takes values 1 or 0.
  staging: wilc1000: Change name of str_rssi to rssi_history within the
    network_info struct for clarity.

 drivers/staging/wilc1000/coreconfigurator.h       | 10 +++++-----
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 14 +++++++-------
 2 files changed, 12 insertions(+), 12 deletions(-)

-- 
2.7.4


