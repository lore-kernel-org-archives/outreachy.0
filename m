X-GM-THRID: 6663442013681090560
X-Received: by 2002:a17:906:938b:: with SMTP id l11mr620144ejx.8.1551453492451;
        Fri, 01 Mar 2019 07:18:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9fad:: with SMTP id c42ls2561770edf.1.gmail; Fri, 01 Mar
 2019 07:18:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqxVHDAPr0tD125SOPxdBxfbPdQEYff7qYKYF7KS1xGk7g1G7FwZJOVjlETF4vCsHI8yY0y/
X-Received: by 2002:a50:aa70:: with SMTP id p45mr783269edc.6.1551453491448;
        Fri, 01 Mar 2019 07:18:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551453491; cv=none;
        d=google.com; s=arc-20160816;
        b=DiFBLeM09KESMq6/pxy1vbqVwkTNNimMpOTlKCZKW6+g0AU0MS9Ux4cNPn9Biu326E
         7mjXR1h2YtNqrx5DQ9iIUUUUn26IfdhqFixrduvSPtRgYfQ75HXuc71sLUEcQ1HtHiWv
         Ei1UVlI1a7BZy7+SQcsAYbO6iLSB+kesOml08+44vrqY2d6RhyfLS4Gw7dMrM9q1kUI8
         VBAa2bIaz8pmPAXCV5WxCcOxQbGOiH/TfmMugkmafvkbGyrwRvyiT+Rb9n97ZBgHd9NF
         /d1TRH2r9LmBxiDg+GlQFutEQauoS/pICoRAH1poYMZrO7yHpMZ8CYmwT+x2MX0EfrmF
         jumQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7uUIOA3NkIGHGez/WeDBDlS6MH5CadkTI534YFEVAy4=;
        b=GB/QgSF462uzhrA1aoiamuo0HUt9HcCnfidYv2JHsNGbmDImbgAx3ktQMjdkdsbXGz
         Gbq0sPl21q6H60424oS1gIetYFuo9ampU61VNywlij+w/IsEvXgRNknC5aR/ApsnWTeA
         FrK7Jkr9AA7lF7b3DJRE12rSWCsDsbktwq0zWKiKTaVWWLlGRl0oGkMB5JZ4AuJLWGt/
         mvJDU448UM5BveKre2D8blJOchd5Gz3cLS/7fGWF7JY1cEL6SZNRM/NK3hYKN/Jm4itn
         3zAL+EzXSci318gp3QCzOkBRAbnNgwRbUHYgva/zIuvbGCRw6iYthOZWrmEnBzQaROXm
         XKdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MvrRSmEF;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id z19si843441edd.3.2019.03.01.07.18.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 07:18:11 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MvrRSmEF;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id o17so26292448wrw.3
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 07:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7uUIOA3NkIGHGez/WeDBDlS6MH5CadkTI534YFEVAy4=;
        b=MvrRSmEFNwXDoj4y5YnanV4b8/Bit/j/ZUgiK+1REdM87PlhgbVdDu4RIR5HfAeZI1
         LmyoCnUEEcVuR783GAyEV8Rk+z2D3n3bTj6vwNGSO5pZAyLiguPyEQwjX35eJ+ERw7MW
         Ah3c/PUqR/2Q6gh7IOzGmRbBn4/Gn6fJuKbGN+TFV0p1ZDvUqiKrWbejcub8TnZkw9Sp
         FhEw5nPgBIyIPK/TlD7n+HpiF/nQr02P8sDVwhKqrvm4Yh4IZwd3uCYmAQvpodD0aVPZ
         y0Mvld92zX/fxgt9exRk4z1JFCrrTcdHzRVxZe3hiz5SNg63w04v2hOu5QmVSOBc3qeE
         k1aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7uUIOA3NkIGHGez/WeDBDlS6MH5CadkTI534YFEVAy4=;
        b=TWSfNAqlngiXCPSjDTORrSDCL4111LPEE2Fizyi2dLlrWvNFg+9AQWL+UmkeMLF3bG
         Mwlr+Wp6VjIccOfeIOw6+UniMDtLpXgbLaa7X13we15TfBxJZZMPOXURsD4rO89pCccP
         PcUm3S6GTq5daQ9N5BUNAxZVfDe+x++uwnnniM/FJuMgz9Rp5lKnJ+t/SDP/yvI8ATxv
         fMkRrWnpdaCJGJVCkAxxcexkrBDovzYOjtyV7ncs5i8kMv40/R+ZyU6ilqtBiU6YJNUx
         Iy4PHUm8fApe3ggJf4tvOHtwqiqZ/mQqOIaVWZxAcY8Io5mrVwcezbD407mS2QM5eNYL
         9/6Q==
X-Gm-Message-State: APjAAAXNHPpe2cbTy1fQLZQZgs5B4ZPcACbQjW/e5eSKySBP/Q4n8VQw
	Fe7yFBYUKK0QuKcA7u6/U8HHoVc=
X-Received: by 2002:a05:6000:10cf:: with SMTP id b15mr3937428wrx.32.1551453490979;
        Fri, 01 Mar 2019 07:18:10 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id w24sm5188996wmi.40.2019.03.01.07.18.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 07:18:10 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: mt7621-dma: SPDX license cleanups
Date: Fri,  1 Mar 2019 15:17:59 +0000
Message-Id: <20190301151801.7886-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

 This patch series adds SPDX license identifier to fix missing and
 malformed warning generated by checkpatch.pl tool 
 then removes unnecessary license boilerplates.
         Now that we have the spdx specified,
         the license text is not necessary.
 
Jules Irenge (2):
  staging: mt7621-dma: add SPDX GPL-2.0 or later version license
    identifier
  staging: mt7621-dma: remove license boilerplate text

 drivers/staging/mt7621-dma/mtk-hsdma.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

-- 
2.20.1


