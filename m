X-GM-THRID: 6751257049994100736
X-Received: by 2002:a92:35dd:: with SMTP id c90mr30658326ilf.191.1571899524404;
        Wed, 23 Oct 2019 23:45:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:d204:: with SMTP id y4ls876845ily.11.gmail; Wed, 23 Oct
 2019 23:45:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyGcgZU2oGys2FzWYD/bu18cfQCUB+fCw5s1fJ6ri/oPFo3BLfBSFpBEQoYwEs60iKuq7CE
X-Received: by 2002:a92:4047:: with SMTP id n68mr42218827ila.56.1571899523381;
        Wed, 23 Oct 2019 23:45:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571899523; cv=none;
        d=google.com; s=arc-20160816;
        b=ISJ320X+Pq+RTt/oAkmG8UAf5JQIAraR93OJsDgRPDN/NrvSFlFL8pnv12ih2CoZCJ
         QTGgDGKaerGrvdtD1HyACHBnRFbe+1PXarOs2Oy6tQNR30p8t2E/ajPfxpAyvz8AobY1
         dsfateMo34Ofmn68bCz3oAUanujCsT9duNf05N9qDa6Ol6zS2c3r8Cn5flVlLHw5D8wK
         Wm4XgJ9Ln8pVsAxpVuvi3v6JNKkg3o12UCqLl6fHmvGNx4alYKIMigASPaudNMPR+lGl
         0flnFnwgTmqdgIo1mzaKgYBHXJAqC3EhAjxANkXy3vRN9l34GI3WFxrzBGej6nU11XNo
         5PbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=vJF5b+Ptly8kEmxiX21mBOHJUnYiRtPvJEbQjVzs4Gw=;
        b=u/BeumaPARJ5cl+QILs5vrmQKH4z4J+2yypCQ7/GjVLzzoWYJZR7Up/c2mBxhpwHTy
         dfwhWTAlRf074zYvNI8ZUr+z/0xc2qoAymk0v3Z2cd8PD5ZN6U/HyBErbV9C8w4+mgqt
         YWEcAeFEssUuK//4yf29bfEdfwCAJUjdSR+JyNHaB56jewm6oLAnWITlA7uQfbFCtl+k
         PKn4VG5V5I2kaam3V0nKDOxadumWfxXc5tvRxQ8WPoC6bw4QEmdKsY0PXvIaCM+4itOH
         bDwP2xBAOvXoZyMKAS9csCEsCIlC85Ed7CD18k+Mm/MKRnbZLfJw/RZ6lvIBiXbypFET
         IV+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W4Q7qyW5;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b12si181976ile.2.2019.10.23.23.45.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 23:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W4Q7qyW5;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id v4so14497235pff.6
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 23:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vJF5b+Ptly8kEmxiX21mBOHJUnYiRtPvJEbQjVzs4Gw=;
        b=W4Q7qyW5SMpKZCFGjWQW/eAE7x+GayuosAsX6xZXsHlkUYItHuwXDW9dfLip4GGn2M
         Y99oZRoWJ0gGtr1fFQ4Kj7397gLXPpbrUGKigwmBiNPfd2GmJGF1jsVz2KpuTWtpISgs
         ClLVn57GbqsPKeuXmauxqHIiJIWAr/4t+cUp7sZsGbO08sk4squZuC+smTXLDX9YwK5b
         m7KwsPtzTM+QTzSLBb6Zt2S1+Ev1kywDeEFZu23BvVQU1aUYlEjlTWBd3I54QylA4STV
         +1Fq5nIUIeO5BZTaJL0ZJQ31OQdTUFJoaNaM1j6WSEMF2GVkSlkJCbZNjUcjafPZeLD4
         p5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vJF5b+Ptly8kEmxiX21mBOHJUnYiRtPvJEbQjVzs4Gw=;
        b=ZiFbD3BKSKsOPGKR2CyqLyIszM/mjBtsPqZ7CsG3TZanWZllUl068UTwr3+/FtGG5y
         Hvh1b15lHQa5HK8oI6QMSj/G9HgKOJHewI0jtgTXT6GpUU3gzE4TWdOijhZtuk3Y4lEl
         Y1VfBXigUlXz4SHikApqU+PcwHC+bTWpIL6cz+Vp3HjYZAJ2c0aqbnzJ78N1P6dfyxwP
         9xCj9qrD/999cjMTlaTyPkng/b6TpX2EK/vnyAgjQ9uuKhPWMhuhBScj+i8lzJj5ZXmT
         baamqq4Kw1x5lD+XlqE4mHP7PKcLNAJqB8X9X3x/Yx/FmcNFJPlibffUM1n/febGTReF
         8G+g==
X-Gm-Message-State: APjAAAWchUUCt4tLIE/aYm1+yMrL8k619ZolHjLEptVsBFO2YGAzr06f
	i99jJ8zndqHWV6Qo1xHBrDk=
X-Received: by 2002:aa7:9289:: with SMTP id j9mr15625701pfa.70.1571899522676;
        Wed, 23 Oct 2019 23:45:22 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id e9sm20789991pgs.86.2019.10.23.23.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 23:45:21 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 0/2] kpc2000_i2c cleanup
Date: Wed, 23 Oct 2019 23:45:09 -0700
Message-Id: <cover.1571899299.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch addresses checkpatch cleanup and general cleanup per the TODO

Patch 1 fixes line over 80 character warnings found by checkpatch.

Patch 2 Removes some commented out code but currently a few commented
out code remains for reference.

Jamal Shareef (2):
  staging: kpc2000: kpc_i2c: Fix lines over 80 chars
  staging: kpc2000: kpc_i2c: Remove commented code

 drivers/staging/kpc2000/kpc2000_i2c.c | 205 +++++++++++++++++---------
 1 file changed, 138 insertions(+), 67 deletions(-)

-- 
2.17.1


