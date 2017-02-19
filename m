X-GM-THRID: 6388911007678332928
X-Received: by 10.129.51.147 with SMTP id z141mr5782823ywz.92.1487534262065;
        Sun, 19 Feb 2017 11:57:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls22243otb.24.gmail; Sun, 19 Feb
 2017 11:57:41 -0800 (PST)
X-Received: by 10.13.219.80 with SMTP id d77mr6406355ywe.17.1487534261706;
        Sun, 19 Feb 2017 11:57:41 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id f7si1919198pfk.5.2017.02.19.11.57.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:57:41 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o64so7782577pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 11:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OqbU96RsNcT5GjdWQ+iXe62fcId3x0zyY61QnAWQ2CI=;
        b=OTzr3RDMiKcce5lKqkZM8vKRtP0OjNu72deIODekxSUnxHWuHmQ9r3s9weXQBfW1b0
         ShXCoVgoLC5ASVhAFzcUsTiDVh0XGF9ZA4VUvXNZkrNijrn7VSSMYirlvtdkv7iJAsG1
         h9LuxNdpDIR99eiq8FvuI9sUYapvWlV4VpfDf4xfVshV0eBO3is00ltqFMFYOJzfjbY3
         KfBKi4BaYpI6o9ff+OTbuBV9ln5567LcP4AMrQ5w//sA3CTrDtfqRV4IQaVyAXItncEY
         PTylWb53WK0UPzy/90VyAmGSrChRKMR7RKi0/AzY7MJdU3dtvczI7ILsb9y8tsXBIbvR
         5rnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OqbU96RsNcT5GjdWQ+iXe62fcId3x0zyY61QnAWQ2CI=;
        b=mX5SsJoHMKgnUoyLrzMrxhm0hvwB/Egl6uJIIRgTtF8Vki7ECb8BCPDU8fDPkl0VKd
         MCugJtOi7pcUAY4VXpUlSPQmPGIlUNLnfjM1bB858WzGatu9gSxW3DK8hGAqQdUiUqzY
         5GOymBCtC0u8wiX+fneiBOBmQKIzOLA1CkXo/Rc6Ny1Yo6MAdx9vIypwQQxVtmDq5Ghs
         pLbR5cSxpa6jYclTsDt5v0C9A9vj1V70pI+7WCes+SkmRH7LNIJ3oEjAtTppDnYbEoFX
         10/GBz/Tb9mAY3nD0GJbIGAK93Sn0CiyDpnKgphPUASoeORXMFMbYX6hWPyxk05TMgGV
         HipQ==
X-Gm-Message-State: AMke39nXpks3AeJZLXabo75yAAius+RvLjaltkSLR6CMu8UICX+Grx1Gu5jfbPUhKRsIfw==
X-Received: by 10.84.232.129 with SMTP id i1mr26518212plk.129.1487534261309;
        Sun, 19 Feb 2017 11:57:41 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.155])
        by smtp.gmail.com with ESMTPSA id c74sm30737172pfc.1.2017.02.19.11.57.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:57:40 -0800 (PST)
Date: Mon, 20 Feb 2017 01:27:21 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 0/2] Use BIT() and GENMASK() macros
Message-ID: <cover.1487483384.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use BIT() and GENMASK() macros for left shifts.

sayli karnik (2):
  staging: iio: ad7152: Use BIT() macro for left shifting 1
  staging: iio: ad7152: Use GENMASK() macro for left shifts

 drivers/staging/iio/cdc/ad7152.c | 40 ++++++++++++++++++++--------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

-- 
2.7.4


