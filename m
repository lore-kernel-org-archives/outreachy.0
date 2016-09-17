X-GM-THRID: 6331355639575478272
X-Received: by 10.200.45.1 with SMTP id n1mr1692947qta.69.1474133608258;
        Sat, 17 Sep 2016 10:33:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.138 with SMTP id b10ls8312818otc.21.gmail; Sat, 17 Sep
 2016 10:33:27 -0700 (PDT)
X-Received: by 10.157.40.120 with SMTP id h53mr12652241otd.44.1474133607838;
        Sat, 17 Sep 2016 10:33:27 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si3641507pab.2.2016.09.17.10.33.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 10:33:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so4835081pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 10:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+nTXchRUCi3g2rZpPXfE5hi7ONYn9iM4tiW+ow/3znA=;
        b=mqFT8Aqduqt1olCamiBQSRnpnU5axZTOh0Parteg1XReduklZlTiLKullAEvyZmODG
         sMxookMpqRKL7aTV6dJfpTo+T6FwMUBzA+mVP+oF9hsJYWMS7l2Wx87auj6zOOWwGPGd
         b98r4b/vZUU6y8Og6inaOgIIoAe5Qohs8YCyy6NEnI1lOyRwutE1yUybBtrmmJD990K6
         BEAu1X/Y08A0R3ZG7N2QyHmSLyW7sd/otq8MM3307zaVGGDGDuByX2j2QqehUaK0t0xi
         lZpVtwr69gpVBPBUNBhZoKTamYo0cDvqUmRO+zGaBGRGgtmXPIB/4NDqlav/63FT4bjq
         6ajA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+nTXchRUCi3g2rZpPXfE5hi7ONYn9iM4tiW+ow/3znA=;
        b=dcRaYm39znI2Tuy4Szptg/e5DkYeTblh8Ip4CVyTHYT5eCVCW4QX3yj/I3Jo2Y3EDZ
         OwmqhJaBYlomefTmA8qiLuitfIx2uQu+LtGuAx8+KlkvSWVt1x9GZjqCR99Lqg++TdBe
         CkjJaMXK6q9Ch56Zu2mD1xWrathZWrONXAS9HSAkf4qCCsYOE9aGDpv+GpSCs8fit3DN
         K0qa8z0o6MyNnV9b7tFFd7zJJCtbDH++fFtTMdMjebeQH/Kqzl6zE5A1loS4+tRxQyGp
         hgePgLkJRbigQjCfHLGYrmxr0I8c/fpE10JO7dnaCFJjbdkvmuztRDFIR5VbzldV2X/6
         Dzjw==
X-Gm-Message-State: AE9vXwMvcSA8MR4iW/tfk0u6zpGbk0tVJ8xXxczRxC9/bJ7kYSnCE3CLCvS55p3dotBo3A==
X-Received: by 10.66.16.97 with SMTP id f1mr32991071pad.39.1474133607461;
        Sat, 17 Sep 2016 10:33:27 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id k80sm22267164pfk.27.2016.09.17.10.33.24
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 10:33:26 -0700 (PDT)
Date: Sat, 17 Sep 2016 12:02:44 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Staging: Remove exceptional & on function name
Message-ID: <cover.1474093197.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

The function names is itself used as pointers without &.
This changes are made by below coccinelle script:

// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Sandhya Bankar (2):
  Staging: lustre: file: Remove exceptional & on function name
  Staging: lustre: namei: Remove exceptional & on function name

 drivers/staging/lustre/lustre/llite/file.c  |    2 +-
 drivers/staging/lustre/lustre/llite/namei.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


