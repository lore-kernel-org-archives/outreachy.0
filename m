X-GM-THRID: 6336162776541560832
X-Received: by 10.66.164.8 with SMTP id ym8mr2291156pab.54.1475252857795;
        Fri, 30 Sep 2016 09:27:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls5653885otc.12.gmail; Fri, 30 Sep
 2016 09:27:37 -0700 (PDT)
X-Received: by 10.129.167.65 with SMTP id e62mr1995310ywh.3.1475252857485;
        Fri, 30 Sep 2016 09:27:37 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si4861397par.0.2016.09.30.09.27.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 09:27:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 6so5185984pfl.2
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 09:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=r65uPNwvvH1CZ3D942fmb0oe7PScgiQQ66DawpmAW0A=;
        b=1F/zEkJvWDhGSD8+gXcb8FPO/6QO/cB5xck6V9X2QvhDmikALtFEHFckatX2VsmsW1
         t6gzAVVgCmtMulTGMbeIT3rBmNok0vdCwuTmYCG0Ncxvo8fn+vsdYRPHtM3j7RafiP1+
         WnNS//SgfC1kU01tNS0yxoIaG5crOerLFp/M1eYGqOooOY/b6/mb5GK2Yk2CJ2zSrgsw
         f+tl3szMc0ihxHl3lIeQZ0SsZasuTWk/yAD9fe/X3K/37Lw1xKJUuobfJGe+E4gqWx/d
         ZHjsMg//bGmblEAsqzpZcKKrWKCBmEbOszZx1VWIrPOZ2Sog7YR+JJPXAKqNvJ0foP+w
         u+RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=r65uPNwvvH1CZ3D942fmb0oe7PScgiQQ66DawpmAW0A=;
        b=eMXTuw9sHe3FOAcJRDd8gZ95S1xiEb6zxyzJ6qchbNl+1WCNN/jXw6f4pz1cW4rDFa
         BpQI2wSMfEO7V7/aqw0U+sHWXRC71kUE1j1UC2bryfcnLNfWHsO/UkelL6/XFdaadhKj
         t9VhJbqX+rM9LZqpXtx2L6Y3A7yc91dnxMq7b1htnbZx97+B6mmpuAVLT/XeF3q9yWm4
         EMxJ6J2UU+W4+21Sdaey3RMG6D1buuj2ZeV1WwhHcxEtG9NoUFqfHXSd7rqLDO4MXSef
         UP2GMkHgdGkcycdWY1IeYj+61A0ZFwXYMbBljI+n5JHpQv4/Ed0MrMOvDVaihOqPl9x7
         jT6A==
X-Gm-Message-State: AA6/9RmrybAvAvy041ID/aJ/3KRV10zy8HSzeDWoZd4U5Enf3SPDnde7f3zXR6oyM5tThA==
X-Received: by 10.98.30.65 with SMTP id e62mr13225071pfe.104.1475252857313;
        Fri, 30 Sep 2016 09:27:37 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id ao5sm29145595pad.1.2016.09.30.09.27.35
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 30 Sep 2016 09:27:36 -0700 (PDT)
Date: Fri, 30 Sep 2016 21:57:26 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Fix multiple checkpatch warning
Message-ID: <cover.1475252219.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

0001-staging-android-ion-add-comment-to-mutex.patch
0002-staging-android-ion-Replace-structure-with-the-point.patch

Anchal Jain (2):

  staging: android: ion: Replace structure with the *pointer of
    structure in kzalloc
  staging: android: ion: add comment to mutex

 drivers/staging/android/ion/ion.c       | 14 +++++++-------
 drivers/staging/iio/adc/ad7192.c        | 15 ++++++++++-----
 drivers/staging/rtl8188eu/core/rtw_ap.c |  6 +++---
 3 files changed, 20 insertions(+), 15 deletions(-)

-- 
1.9.1


