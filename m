X-GM-THRID: 6753034664415330304
X-Received: by 2002:a54:451a:: with SMTP id l26mr2340351oil.79.1572562979847;
        Thu, 31 Oct 2019 16:02:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:4407:: with SMTP id k7ls955919oiw.7.gmail; Thu, 31 Oct
 2019 16:02:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqys0e6hfaecjkGCy1lvAJoWfpExibyaYsfihuiYkYOYaK7Lke9fBCUVGPasQJI7DLDpKaJm
X-Received: by 2002:aca:1b05:: with SMTP id b5mr3099550oib.103.1572562978836;
        Thu, 31 Oct 2019 16:02:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572562978; cv=none;
        d=google.com; s=arc-20160816;
        b=HiQOYQ51DrZlOSOU3jTMTZ3Ef42XPuRqKJ9g3oTrd+IRyFA5h9G2mPs8gbc14l7ZX0
         ijIT1xOS+c3dx0yF0RiLOR+l3eqEXF/+eKZ8XJ4bynhAlHcRwwh4haQOv2lL7z4/Dl7z
         nt+q04bxYHCivOD8uSvXw0BZbi75bCpOsHejnH9lUZ9btV0Eu6E2ACOSo9NZafV8gSrc
         FZMWCGAYWjQvN2EzesznQ1L3IYGFeYH+iu/USF/PLz367iUqoZUH3+BEdmw12R+V2UIh
         a3rM9qSSIa1J0n5wGgnJKwvYMFvf+z3Jr6Hhh7TGoBzYojk3qu5RFVo2nSD3N23m6NYA
         7Nsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=M5MX8NnY04jn4IL4Hhx3WYBLegDCE1aMGvKEiYn4imE=;
        b=i+nYHlg6++aVp9VAyp0fUDBbgP9CWNAt492zC7nW3W433VhueNQTbgSUkS+316t8/Z
         gIvC2lq+McBajF6DTx6sU6xX5PrklWpiVUWtcmwihGyxHN9PXsgs1nxrO7yJK15PSJX9
         NTC92dDh7kXaj8it2kAUD7YOBtHyQRAF4yvVmAq0UE997Oubtf5e4zluMiepe2VMwUFN
         D0RJuijVvLvCIJeC1R3VCAWe54Ksu9zywvJmZr0pI6ZGpFQ6fz2KDGTxwMf1LSWGIoIn
         16cTl0/v78bDbEnOpQHkNNt6ZUORR4ab4v6DnGTI5R5OLj0OqjswWikQCWPxXnM0+NJJ
         s4tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kKz6rJbi;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id e3si290904oti.0.2019.10.31.16.02.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 16:02:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kKz6rJbi;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id e2so8825454qkn.5
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 16:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M5MX8NnY04jn4IL4Hhx3WYBLegDCE1aMGvKEiYn4imE=;
        b=kKz6rJbigiB4GVY5iBC13AAZczzZWoLpxPYDnOawsuWAgv9XgZzKlsRpKbIUQ+teCd
         BZvwSj4jt0UW3C/o7FoENV/LopnIMNbtHH8ojXHEKZCs2Z7IiHmJPmNoh9Shy3VaxOTW
         E0mm9mAYCjmnc5c7oG7yrfQko9peDGMzDgBGb8aAEMa8YifivexorE1socOTwbh+k7mH
         u39hk5PbHx4cb9SZqv3OypvuY+ARDJtAqpYOVlUchY1uAPkkwkRf+i7P31ieG5DbWQFw
         BO/FKUKkClUWEag9bkNOxulVLbkm455Vln6Wds7Fr0GoQ8EiMUO0T3N53LHIwUJIUsYE
         dydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M5MX8NnY04jn4IL4Hhx3WYBLegDCE1aMGvKEiYn4imE=;
        b=hN2nJgTL5HjzjFcYLaX1U5+gzKa39vhxoqVppo2+xes5d75sNBRXkpwsyTdJHkqPad
         9Yzl/Q5zBDChRPotr6P1eEFSbgCmBG8yCy5bV0eSN3aFH+4bN1IbRJcjKl/Ebl73BCdZ
         OmAQbkv4FconJWmIOiiRwriU782wirb6MllpHfx8Uhcr893+X82J6I3mFx4e9TyAMksm
         CkCnM+Bs+ZSZKD3bJQKHW78+xsp4dkwjZr2OFlP0w2Bo0Yxn9GJmyOswq5PB9kZfp/M5
         MKMqY9ibxvIgn2M8cXCPhm4OOJGoltYnVXLEhvIeTHEDSFRM+3s319H9YCUmNypYLJ3q
         hPHA==
X-Gm-Message-State: APjAAAXqhOGIRQpEWSStMjKZc3/TctheSO1HGVKsUk/RhNHOHR0u1T+l
	KSxjambeBIIoBN38StvKcBIBLg0vJlM=
X-Received: by 2002:a05:620a:8c4:: with SMTP id z4mr2503208qkz.395.1572562977852;
        Thu, 31 Oct 2019 16:02:57 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([187.106.44.83])
        by smtp.gmail.com with ESMTPSA id s67sm2633875qkh.70.2019.10.31.16.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 16:02:56 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v4 0/3] staging: rts5208: Eliminate the use of Camel Case       
Date: Thu, 31 Oct 2019 20:02:40 -0300
Message-Id: <20191031230243.3462-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in tree rts5208                           
                                                                                
Changes in v4:                                                                  
- Substitute constants in lower case to upper case                              
- Explain the reason of keeping a variable that is defined and it's not used    
                                                                                
Changes in v3:                                                                  
- Change the subject line of commits to make it more clear and informative      
                                                                                 
Changes in v2:                                                                  
- Place the changes on variable's names in the use and definition in the        
same commit                                                                     
                                                                                
I compile the kernel after each commit of the series to make sure it            
doesn't break the compilation.

Gabriela Bittencourt (3):
  staging: rts5208: Eliminate the use of Camel Case in files ms.{h,c}
  staging: rts5208: Eliminate the use of Camel Case in files xd.{h,c}
  staging: rts5208: Eliminate the use of Camel Case in file sd.h

 drivers/staging/rts5208/ms.c | 86 ++++++++++++++++++------------------
 drivers/staging/rts5208/ms.h | 70 ++++++++++++++---------------
 drivers/staging/rts5208/sd.h |  2 +-
 drivers/staging/rts5208/xd.c |  8 ++--
 drivers/staging/rts5208/xd.h |  6 +--
 5 files changed, 86 insertions(+), 86 deletions(-)

-- 
2.20.1


