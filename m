X-GM-THRID: 6259744674784739328
X-Received: by 10.182.240.137 with SMTP id wa9mr21879657obc.16.1457460381324;
        Tue, 08 Mar 2016 10:06:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.129.73 with SMTP id nu9ls294512igb.15.gmail; Tue, 08 Mar
 2016 10:06:20 -0800 (PST)
X-Received: by 10.66.163.97 with SMTP id yh1mr569153pab.11.1457460380670;
        Tue, 08 Mar 2016 10:06:20 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ui7si734939pab.0.2016.03.08.10.06.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 10:06:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id hj7so1621578pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 10:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3PgTcYaZfdXpsg9LhV4rZfSwHD5XhrjSuHtcfnNUNno=;
        b=tKOkRvIR9mLttu7EMswqWxY4jyrsJTT10moajweF0SL19aB++bRHVorSPmJ4Rl3Dk1
         wC+kjn9qObusZOzJFpWra0yB2dqXbPqHj10b0qq69+VfodKrZ+MzX6E4sagn+0A7DdWS
         AUJrFifqlgCT+1mbH8Aog0B8zDEzQ8xKUKSRhU8rAZAYJuTyfSbJag690JAXWiHeoGOh
         huVoc7bqgSD5HvIa9jc+FbFOckqN2diNfz6mACKIK392qHX/QeT/QpH4GApUYtofnN/8
         p21X+1ByBuwBxS7wq4DxCwo7viVGbVSah0srWsBR2uKi4w0detDaSEvYuRsr3cvTMLJH
         9EoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3PgTcYaZfdXpsg9LhV4rZfSwHD5XhrjSuHtcfnNUNno=;
        b=EWxNiI6z7Ub1X7r/e1nsuwhQ3c3X+GYHyAhGThYiG110cdoMSc6yWvjvAVZI7xH1h2
         G8ybxmtag5SSdIQuyy3mTjKIZdc43qyCZjDNaiU86ZSzX/j8e+ZubBDVY3JXIeoAN4UH
         b4ZZAmiDXu3+8Xe/hVEPrSbeERwc3MqVgsMo6DNUA7f3Vj3kpJOmQwYJptqHLncD890c
         Lw1BkGsJJzTX1pKQ0EOHAuxwld4zETdgiXZQCu/2KudSD8Bkmr1wQ0B8GV6FOyTzmmp+
         QXFm6aDsOmok64cImDfkZ/hDm42ufjrDzv6gD2Vu8pnhiGNdXC5+pirSjP+ynUD56tft
         GwgQ==
X-Gm-Message-State: AD7BkJLTvvrYg0bDx5XwalChpFf5775mx3kWF1QcETsf86acDY+oZoPXXHADljLbHtfJXA==
X-Received: by 10.66.218.225 with SMTP id pj1mr43132679pac.83.1457460380546;
        Tue, 08 Mar 2016 10:06:20 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p5sm6451674pfi.94.2016.03.08.10.06.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 10:06:19 -0800 (PST)
Date: Tue, 8 Mar 2016 23:24:06 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] Use macro DIV_ROUND_UP
Message-ID: <20160308175406.GA30261@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset replaces occurences of (((n) + (d) - 1) /(d))
with the kernel.h macro DIV_ROUND_UP.

Bhaktipriya Shridhar (2):
  staging: rtl8723au: hal: Use macro DIV_ROUND_UP
  staging: rtl8192e: Prefer using macro DIV_ROUND_UP

 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 4 ++--
 drivers/staging/rtl8723au/hal/usb_halinit.c  | 3 +--
 2 files changed, 3 insertions(+), 4 deletions(-)

--
2.1.4


