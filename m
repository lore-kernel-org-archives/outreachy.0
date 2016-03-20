X-GM-THRID: 6264247085046956032
X-Received: by 10.50.20.135 with SMTP id n7mr8699841ige.5.1458508680900;
        Sun, 20 Mar 2016 14:18:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.145 with SMTP id f17ls3088415qgd.27.gmail; Sun, 20 Mar
 2016 14:18:00 -0700 (PDT)
X-Received: by 10.140.27.180 with SMTP id 49mr20928882qgx.19.1458508680387;
        Sun, 20 Mar 2016 14:18:00 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id sf5si3476632pac.1.2016.03.20.14.18.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 14:18:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x3so26776344pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 14:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9pWd1ES/A6Szp0GYJNADfBbtD6Yx85JH/4J7jMtvOVk=;
        b=qqU52Wp1EGdkqltLvU04rjTZN/l7aGVfMsmwBLt6MNfi+e13oHlf0F8aSSckitBeNE
         baq1Ga/eXu5JyDdQXDrtSQcp7msJbDQqJCr9jal6tD79DQ088jVI9m5XIESRyCBOswdf
         Rk0SC+MFxdd2/0t34kWTc+iBz472P7JBGsnY0heMgTmjgEy/ZDxBJFLesROxuZYQCd7K
         MA4k++EXJKzkJCNzgQH4Lsf9aeNY4ztIurGax/1fYDJqx6H+ASzxZq2vJDFLMcRs/4GE
         ur6nTn6PjR4KI5vGN7Z5UF58Prza/yYxkWKs0OlSVoEJPoqbNFIklUEmUWbARtSyF8ce
         viHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9pWd1ES/A6Szp0GYJNADfBbtD6Yx85JH/4J7jMtvOVk=;
        b=SnP/kW7ucfQE6kGsiZapykteOIutb5S5OoGuNtysawn8F/shGwWjhA6FkRlEQrdjL7
         TFmuf+s1/jExg1vnkufm09EyW+1m5iOHcccA27Mg16SD7LLPj7o2nTzfnAscF9nv87em
         rNbA76I8WYAnGOwGlFXTAmNYmYhVYnujm+uy3cdhwsGWvQjy1NoJ/pjhYE82qh864IX8
         faqJ1MKaH+O2F6610hFV8MkNmcGzMa8L9+HbXak6Jess+WUP4wm2baa64AIprAnPeTu1
         EtRjsEqOUVz+au+iAOR8g4d1Gu78yD+Farrqg9oxctBiyCtooS/EQJNGUsssa+trSXRY
         Bofg==
X-Gm-Message-State: AD7BkJIPwHd/O7f05oTsfOw24he1cj/d7Eby/geMFyKCHuRJ4hhAX2SG2YGhJ6qB6TwqFA==
X-Received: by 10.98.67.199 with SMTP id l68mr39931429pfi.18.1458508680197;
        Sun, 20 Mar 2016 14:18:00 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id b74sm35333987pfd.24.2016.03.20.14.17.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 14:17:59 -0700 (PDT)
Date: Sun, 20 Mar 2016 19:49:07 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Staging: Use sizeof type *pointer instead of sizeof type.
Message-ID: <cover.1458482776.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use sizeof type *pointer instead of sizeof type.

Sandhya Bankar (3):
  Staging: rtl8188eu: rtw_efuse: Use sizeof type *pointer instead of sizeof type.
  Staging: lustre: rpc: Use sizeof type *pointer instead of sizeof type.
  Staging: lustre: o2iblnd: Use sizeof type *pointer instead of sizeof type.

 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 4 ++--
 drivers/staging/lustre/lnet/selftest/rpc.c          | 2 +-
 drivers/staging/rtl8188eu/core/rtw_efuse.c          | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.8.3.4


