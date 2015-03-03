X-GM-THRID: 6210099085312
X-Received: by 10.112.13.228 with SMTP id k4mr1285557lbc.8.1425391272953;
        Tue, 03 Mar 2015 06:01:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.229 with SMTP id el5ls120730wid.43.gmail; Tue, 03 Mar
 2015 06:01:12 -0800 (PST)
X-Received: by 10.194.53.225 with SMTP id e1mr2109508wjp.4.1425391272631;
        Tue, 03 Mar 2015 06:01:12 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id by11si924570wib.1.2015.03.03.06.01.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 06:01:12 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id em10so23009720wid.1
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 06:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=w4JWV/0E+gcBeFiPp3KzWBygyGR14/EWFgfHZ4MU9Zg=;
        b=cjeHGyB3EIwgg03aJA22fgZIWyAfOEeLJ9KeqUpAgimTIYlJHMcjOn9yd2xNLucW1K
         snBZtMCDA7wK109jIDZvNgJP8bqnVydR7meGOifn+teL9zf0hJFDL1DpN0ec5YWwvYSP
         wvG13tSrc8JyV2xWsWqS5HlsIUKpcd8ki9/DscO8getCN1Be2W83B6359g3hc53904I2
         n/ivWRqzbnSSi/vOckdkQOoKnzsS7OWaWmToPiuTo1vKguf1kPGs7Fudd9x12LTPeVzJ
         b1Tzo1J3nzDC2WrOpOnd6qPd+/zNkmZUrtBBPtYB64JiANQnx2Zy1vvK7gouZePGTrES
         NUQA==
X-Received: by 10.181.12.105 with SMTP id ep9mr46589166wid.85.1425391272552;
        Tue, 03 Mar 2015 06:01:12 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id yy9sm1452936wjc.20.2015.03.03.06.01.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 06:01:11 -0800 (PST)
Date: Tue, 3 Mar 2015 16:01:00 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4 v2] replace memset(x,0,ETH_ALEN) by eth_zero_addr(x)
Message-ID: <cover.1425390962.git.mahfouz.saif.elyazal@gmail.com>
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

The set is resent because for some odd reason the first rule of the
coccinelle script is emptied by git when generating the patch.

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
---

-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

