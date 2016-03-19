X-GM-THRID: 6263794151847886848
X-Received: by 10.140.98.179 with SMTP id o48mr16721951qge.15.1458409199560;
        Sat, 19 Mar 2016 10:39:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.214 with SMTP id 80ls3013434qgj.83.gmail; Sat, 19 Mar
 2016 10:39:58 -0700 (PDT)
X-Received: by 10.129.52.17 with SMTP id b17mr16270746ywa.15.1458409198884;
        Sat, 19 Mar 2016 10:39:58 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h69si2641941pfj.0.2016.03.19.10.39.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 10:39:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so22777612pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 10:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+IePxdIqbUfz9EVqSLIDQFerMYYUs0EhJLuyD6b4CgM=;
        b=YS1NUz8kwMSGa7D2N1LjQNh6rcfBoVhF4SPW17QJydRmE3hE+RtHp01N2dwTozEfLi
         9gp4s/5uhIeY2og9rsK+g2elXQIbZKhXpIcNQI6UQasXgZJRckj98Bno1LfoiOEW6AhX
         NHYsMIG9qWhTssiOgu4ELWA25QfWhTtsCSYlQGO3vChNC3Veyxd3QEbXm9QFwY+wizY1
         vw469yQEZDXpj2dQajKrJwWDhzJH4vZiZhm18f7k7q7rtLaL+jz2w57MYb4B6zIzwTLZ
         V5GZcyHTDZJj4UH9E/W70k4vrBIm1phOPDudw4ji2hj0zcOAz+7xAhA9dNSMQCMrQHrn
         xYNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+IePxdIqbUfz9EVqSLIDQFerMYYUs0EhJLuyD6b4CgM=;
        b=krC29rvEredALXHOO41L5qPzLrxVj8YE/fgaJUcOcEQvaWP58A7TJ4xGe0s4095dFE
         nODrqBt+mXMI85Q79KfS4CjedEUWKaKW4RvfGiWCbKKw7fAQhm9Fad6xgk4f0Wh4FGsa
         JlV8xfZFml/VMRQiQb+uiA8XNcdZELNB/3RNiAVS/DMQ7UrJVB/33ZXLSqHoqWGah07O
         XBaXD0otEKST3gzlFc4k55N6yoM5qVUzjOFe4yvI/QUZJ+8Uh2GyQ/XeOirYuQvR9tpN
         Yj20jCMoFnzA9paLlQYNfSnCyOuRiMkAzOlr5Wq7AcvoJpmS2BM47i+98lvFYTrw8oyF
         KsUg==
X-Gm-Message-State: AD7BkJKI2NZ21fQvSlqZBDCwBLeBfRpeFNyiIo1sk/9FwGv/cB/RyvJ4GvBlbWb8cpB7OA==
X-Received: by 10.66.164.39 with SMTP id yn7mr32969192pab.107.1458409198666;
        Sat, 19 Mar 2016 10:39:58 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id v14sm29417563pas.10.2016.03.19.10.39.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 10:39:58 -0700 (PDT)
Date: Sat, 19 Mar 2016 16:11:06 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/4] Staging: rtl8188eu: Remove NULL comparision.
Message-ID: <cover.1458382380.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove NULL comparision.This issues is detected by checkpatch.pl script.
changes in v3:
*correcting the heading.

Sandhya Bankar (4):
  Staging: rtl8188eu: Hal8188ERateAdaptive: Use x instead of x != NULL.
  Staging: rtl8188eu: hal_intf: Use x instead of x != NULL.
  Staging: rtl8188eu: rtl8188e_rxdesc: Use !x instead of x == NULL.
  Staging: rtl8188eu: usb_halinit: Use !x instead of x == NULL.

 drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c | 2 +-
 drivers/staging/rtl8188eu/hal/hal_intf.c             | 2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c      | 2 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.8.3.4


