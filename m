X-GM-THRID: 6335472108323209216
X-Received: by 10.67.5.39 with SMTP id cj7mr599804pad.144.1475166905257;
        Thu, 29 Sep 2016 09:35:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.1 with SMTP id 1ls3632725otb.4.gmail; Thu, 29 Sep 2016
 09:35:04 -0700 (PDT)
X-Received: by 10.129.119.70 with SMTP id s67mr629606ywc.102.1475166904912;
        Thu, 29 Sep 2016 09:35:04 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id f12si3470183pfk.0.2016.09.29.09.35.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 09:35:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id s13so30650948pfd.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 09:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zrory/gc9E7a5LN1hFN9mmsLkDrQupO39zN6eKswMBQ=;
        b=xzD7NZ5TysxuCTstDS5CJnOdhWlz/+cTWyJcnLSl7m52Fgci7o8D+qqS9ICQXDDsbI
         JBIgwkrtidLvZqvj93bzxa0cgyr0SMJNDsJ5hYhgN9uwxyl6xiGwca/itkJ1PgbTLZEL
         gcm+H5sJcyY0iNy4Mmrm3KR0MOvxgIR8dqHgBfYin9H6y9V2YboP2Y07ADwVuPaKQes+
         wk7SqfGGZQj5/WSakfRBiMuOP0f3Vnphgu3wRsRu4uTaYMCF1Ujvtzsn3gF6X5BfjjqZ
         nAa88Shkt9ZyOs1nHlf0wq+QuTRqcKigPGHVyFiTgbn2AyJENOmYEEL7/nZee7X4QNEJ
         3RIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zrory/gc9E7a5LN1hFN9mmsLkDrQupO39zN6eKswMBQ=;
        b=P29D6ekvryW9IZoMPUFkJXoWLWqlGOJTpOWw7h4JABcVjghPKHUc85DHoK7sBqK7S1
         32QxLq0fEOAgzjoHqJZs/MD93SNhu0HWioVofZ3LaIoDpoco4bDEZ8JwiJ3jQKivgT7o
         Re+/OmROQ/WaH4bchuLVzpzAZzVmnMbuqCd0DpRWrLprtt5jnAE20pmTQDTwCj2kmnNt
         Zb2Ab21ge2K8MtRTmrgEjX3EsWp8tzzvz2WPeW4RDxMswsNKtw+0FDjicKpYV4/+FFtr
         PNsWCBN31ndb1iDxMQakdu/KxYlzXoCfZLfoxvxNSHi19yqkRGVBQqyu3KJHb9tsotiU
         wL4w==
X-Gm-Message-State: AA6/9RkCzXBVaJGzlqzALofqj2AT20nwfqRheAxyqPIU+JEOAOQQjZDZ9wv/jK2sD/ej3g==
X-Received: by 10.98.13.149 with SMTP id 21mr3901135pfn.19.1475166904727;
        Thu, 29 Sep 2016 09:35:04 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id z5sm21526374pff.3.2016.09.29.09.35.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 09:35:04 -0700 (PDT)
Date: Thu, 29 Sep 2016 22:04:58 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonas Rickert <jrickertkc@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/2] staging: rts5208: Fix checkpatch issues
Message-ID: <cover.1475155905.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch issues.

Namrata A Shettar (2):
  staging: rts5208: Add space around binary operators
  staging: rts5208: Replace explicit NULL comparison.

 drivers/staging/rts5208/rtsx_scsi.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

 Changes in v2:
 - Drop parenthesis in [PATCH 2/2] 
-- 
2.7.4


