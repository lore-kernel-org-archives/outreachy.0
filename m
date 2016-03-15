X-GM-THRID: 6262248427873107968
X-Received: by 10.66.146.10 with SMTP id sy10mr22214063pab.24.1458043332272;
        Tue, 15 Mar 2016 05:02:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.233.195 with SMTP id ty3ls79906obc.56.gmail; Tue, 15 Mar
 2016 05:02:11 -0700 (PDT)
X-Received: by 10.182.247.97 with SMTP id yd1mr22691614obc.9.1458043331886;
        Tue, 15 Mar 2016 05:02:11 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id k13si1396772ywe.1.2016.03.15.05.02.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 05:02:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id w104so11682842qge.1
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 05:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=O0Cgzh6fnqmwBi3AJkrT5tn5yTr5CsSuunBeqsbyTQ4=;
        b=jaljhCOJI5WeX5U/sJVpxHe/ymCHelsajJABGe9MtecWnzozA+S5zqEelNh6CRUyco
         c2TEQQzfy75DERTnQQnkmhXP9JyuhCKmG96emhr99IIcTKuyG3ShFSyF9ve5dca8i8Nj
         LX7GMm+lE+FJUod8/mxM6F5Rfl+mdG2P2ibnJtB7C7RVPXbaz0jJM+gZ0H0/PeXUnIF4
         4mQ7UyZ9D9O8LvDR9uwR2RYZO4gmr2Rn/GNjJnnn8e15PQ3BIF98MYQqfY+nYp/TAVHg
         WjP4riHvEONRBZbnrNGjWAJViVnnhEsxejUJtNyNg4OltRgsyC8e/Dxmlni1b5MRtdFZ
         nsTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=O0Cgzh6fnqmwBi3AJkrT5tn5yTr5CsSuunBeqsbyTQ4=;
        b=gkjZJ5ZtKehJzh8zfjAPmXm7blCc1dxBT9TgOsMVmlIqc/etZgcDG+tfqyMaVmn3A3
         WUxkpXxGVvb3T8jf/TtGY2Kwr2Ce8VTaVOIfh9i56h6S/4c7Kk8aanKZvy+T9evp8gDp
         NnXi9vFIEHbKNhicYJANsWvOBsWllVnbH1zNEGSmioS6oDbSGvt8p7vkk4LDvgJ6PwCh
         jLU7VbZnBk60YlSefDOkqq/1UMUI6TaZGBittpIOCVlxMkL2OV51lcBeiCa0/iGX/Q0x
         CT4rFkSG3beditmlneS01IrRUPXwc8OneWZq3VYBtgsUemfKYmApiBt0IlgaFaSE+RMc
         hx8g==
X-Gm-Message-State: AD7BkJIrgL21MAbmM0RHpDPUkjW+d+VXsEnFfhx8UG8YaICWaVEC/f734Y6W/cFd63JULw==
X-Received: by 10.140.28.54 with SMTP id 51mr36632099qgy.36.1458043331518;
        Tue, 15 Mar 2016 05:02:11 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([187.32.0.50])
        by smtp.gmail.com with ESMTPSA id n90sm12501644qge.46.2016.03.15.05.02.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 05:02:11 -0700 (PDT)
Date: Tue, 15 Mar 2016 09:02:07 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/6] staging: rtl8188eu: usb_halinit.c: fixes multiple
 errors and warnings
Message-ID: <cover.1458043217.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset aims to fix multiple warnings and errors 
caused by malformed comments and coding style. There are 
many old comments in usb_halinit.c. Most of them were 
reformatted to match convention, but an evaluation 
is needed to see if they are still relevant.

Changes in v2:
  - Fixed typo

Juliana Rodrigues (6):
  staging: rtl8188eu: usb_halinit.c: fixed multiple warnings
  staging: rtl8188eu: usb_halinit.c: fixed comment blocks
  staging: rtl8188eu: usb_halinit.c: fixes comparison warning
  staging: rtl8188eu: usb_halinit.c: remove unnecessary braces
  staging: rtl8188eu: usb_halinit.c: removes unnecessary parentheses
  staging: rtl8188eu: usb_halinit.c: removes else after return

 drivers/staging/rtl8188eu/hal/usb_halinit.c | 959 +++++++++++++++++-----------
 1 file changed, 592 insertions(+), 367 deletions(-)

-- 
2.7.2


