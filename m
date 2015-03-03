X-GM-THRID: 6210099085312
X-Received: by 10.152.28.137 with SMTP id b9mr4539770lah.8.1425387508289;
        Tue, 03 Mar 2015 04:58:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.130 with SMTP id fw2ls108912wib.20.gmail; Tue, 03 Mar
 2015 04:58:26 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr4542440wjc.7.1425387506989;
        Tue, 03 Mar 2015 04:58:26 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id i7si887485wif.0.2015.03.03.04.58.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 04:58:26 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id l15so22582591wiw.5
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 04:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=40S2syiyEjwQiokOX0bkAhuwWLnUPHuvVIW0qKmYMPE=;
        b=VYzbH2Gf99Kq00shkNnm6fdDg9OcuDQbNSU2UsAzBPWpVsECrAlv7az3fPNN6MhTnm
         j1qvCnm00TdPjBKWMX9jn+jEFpgSYuAi7q5SSBedNLdgN+xv6s18YuXIf1Avb+aNA8BW
         abKrnF0EzqVlRZ/11dxmeK8N92tkLehF6+Z/0HmweOuL2z9nlOiDGfy3l47vhGBP0HqU
         8xvhPvldoIL025/myL4Olr1v75/8vBQQnonan3vaFBoAXBeTqiSKOvZyKuSWE8S0PhSx
         ggYS9owixpU03lCZf4r7WpOArSQfQNMBcyZ0YjRxToJycJa9njh3AWQMA6ilTp275MFQ
         OgNw==
X-Received: by 10.180.218.71 with SMTP id pe7mr30327888wic.70.1425387506910;
        Tue, 03 Mar 2015 04:58:26 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id i10sm1195529wja.40.2015.03.03.04.58.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 04:58:23 -0800 (PST)
Date: Tue, 3 Mar 2015 14:58:19 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] replace memset(x,0,ETH_ALEN) by eth_zero_addr(x)
Message-ID: <cover.1425384513.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replaces all occurences of memset(x,0,ETH_ALEN) by eth_zero_addr(x).
In general,there are two inline functions that wrap memset. One is
eth_zero_addr when the assigned address is zero and the second is 
eth_broadcast_addr when assigning a broadcast address to a variable.
Coccinelle was employed for the automation of the process and adding
the header linux/etherdevice.h if not added by default.

Aya Mahfouz (4):
  staging: rtl8192e: replace memset(x,0,ETH_ALEN) by eth_zero_addr(x)
  staging: rtl8192e: replace memset(x,0,ETH_ALEN) by eth_zero_addr(x)
  staging: rtl8192u: replace memset(x,0,ETH_ALEN) by eth_zero_addr(x)
  staging: rtl8192u: ieee80211: replace memset(x,0,ETH_ALEN) by
    eth_zero_addr(x)

 drivers/staging/rtl8192e/rtllib_softmac.c                 | 2 +-
 drivers/staging/rtl8192e/rtllib_softmac_wx.c              | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c    | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

