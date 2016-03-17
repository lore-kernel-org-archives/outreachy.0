X-GM-THRID: 6262912321843101696
X-Received: by 10.140.27.180 with SMTP id 49mr6057502qgx.19.1458197907809;
        Wed, 16 Mar 2016 23:58:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.99 with SMTP id e90ls1432646qgd.67.gmail; Wed, 16 Mar
 2016 23:58:27 -0700 (PDT)
X-Received: by 10.129.78.78 with SMTP id c75mr5876776ywb.30.1458197907235;
        Wed, 16 Mar 2016 23:58:27 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 12si954723pfb.1.2016.03.16.23.58.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 23:58:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x3so9749594pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Mar 2016 23:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2D5CW5qKCUG9SOfdfPtnt6MqcTjG6Xc4jE1cpolnbV4=;
        b=PcNBOqyHDTOZcLPkDDCANUJbZ1Q2qof483B1HtCVPiBAq86jX+kW18p7Z18mhO81uj
         ciLD7vqb6XWqR04QIDeoUUtQOctBSZS1Cb4sAIDxnu1jM7kSb/vV/tZ71HI74yF47AbT
         gdrGco0b89ym6uzYBET4yK9X2iSwkRK3PxCMTg4FDMsBaj4PuijeXA5WlArU8w1IBld0
         dlhIi+S3GXewddweGaAJQOPdECc+SIHs1587thK2+35I1NgYB+gkB6R92TpmyeL5Suhx
         gK9359QSFTTe/gbgqjGqUaf4QIW/cfGwTluMLBzqvbVxITbI0jD0VvWInr0KzYYqdCpJ
         94Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2D5CW5qKCUG9SOfdfPtnt6MqcTjG6Xc4jE1cpolnbV4=;
        b=DHaeVwbKAXayh7zycw9ZdRGBiaIvvHABsJbIR8YooKtF0NeSjM2vSP1mqDgyZbQGS8
         Xmo2jUrEXZeWTitIni5WlumhxROuSp/9b+QUOzbkg7ch0bhw76WJiYmrq1YYSIhbeBOZ
         i2SoGqFWzSFnSB9iqU0IvVbx34NnN8RhuyARggbGNKorp9JjLNWFhCGKJI6hE0xncsUz
         Mw7CVbYC4VBGO2+J6vsKyOk/evSEivBteu8XhKacEGnttpQ28ThJwOHzysz0PZd79NH0
         1MtHWCXxi2oA3VJIPFMpt/NWcAIZiURkOk50TT480jTq/Q7yY1L0UKpvOEH8e5erbHbT
         mVWw==
X-Gm-Message-State: AD7BkJIoqqToOiU4AU61iOuGREjoHkZ/xP38yl2T06OLI90Y0yjFbhRJVP8/9vuBY/IhBw==
X-Received: by 10.66.191.225 with SMTP id hb1mr12379938pac.78.1458197907058;
        Wed, 16 Mar 2016 23:58:27 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-64-227.dhcp.embarqhsd.net. [67.232.64.227])
        by smtp.gmail.com with ESMTPSA id i11sm10436109pfi.55.2016.03.16.23.58.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 16 Mar 2016 23:58:26 -0700 (PDT)
Date: Wed, 16 Mar 2016 23:58:25 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: iio: ad5933: header file maintenance
Message-ID: <cover.1458197518.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Collapse header file into source & clean up #includes in source.

Alison Schofield (2):
  staging: iio: ad5933: move contents of header file to source file
  staging: iio: ad5933: remove unused #includes

 drivers/staging/iio/impedance-analyzer/ad5933.c | 16 ++++++++++----
 drivers/staging/iio/impedance-analyzer/ad5933.h | 28 -------------------------
 2 files changed, 12 insertions(+), 32 deletions(-)
 delete mode 100644 drivers/staging/iio/impedance-analyzer/ad5933.h

-- 
2.1.4


