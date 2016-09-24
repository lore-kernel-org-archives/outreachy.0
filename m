X-GM-THRID: 6333999917767327744
X-Received: by 10.28.154.76 with SMTP id c73mr449045wme.20.1474749277596;
        Sat, 24 Sep 2016 13:34:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.149 with SMTP id u143ls1763284lja.27.gmail; Sat, 24 Sep
 2016 13:34:36 -0700 (PDT)
X-Received: by 10.46.32.154 with SMTP id g26mr671109lji.3.1474749276975;
        Sat, 24 Sep 2016 13:34:36 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id 82si122550wmg.3.2016.09.24.13.34.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 13:34:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id l132so87884784wmf.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 13:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kyTR6SQIEiDRhgJR/2cPVv+qL8NjK0VigvOt1S7+ee4=;
        b=aWSTxqU30aQAeIIKLsazkZvoj+ggWWFcNoqassAZb+3Pgxm1f6RH1uW1PZwN88Hwzq
         GFkjPWPyhJ+fN/V3TMPLH8t+zagxM5OoHM47MGOXhrmR+c25Duztst8IH9HDzIPW2BgZ
         9sfkEr86LDfogFz4baXFr7WJyW4Z++LW8atvXRMTsqtmyJy4885pDX1GffIaZ5kkOlmZ
         uP1mw7ra+gGC3zUNq51MlmuAQBOjyS50JgMM4p6ypf/W0+72/3C0xs+FKHCJHrtU5cuQ
         j6TRoiXrsRLkyxmUbS0F6V1ldxYeliwPRh+GUTQN0aOz2VJn2xZ3xtK4P5nh39UZUgSP
         Vr5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kyTR6SQIEiDRhgJR/2cPVv+qL8NjK0VigvOt1S7+ee4=;
        b=Td2xRwnQd2v7crTT5GOcw0vsnWBxK797ja/k5FCLhprSEyMhUhfXtr0uxm/dQcT6xG
         fryEIhlWrXbVR+49kkaQfX20q8LwPNvmimIXlhsYIDHHYmvRokt9Sp4EX4QaMJhksuaI
         kbCb42EdlQE50WivUr8YEwDTI8Npjgj2gqypmPHMua86ZIQ4VBkuafJU2sw0499hK5dp
         Q7wRna8STZHUozQnq5YbLXy1YO2Z9i7v28CXlH0HO2w4AdMB2XDiyBFGD59iC9k8Kc4a
         YQWOKq8DQ0a/Ze9/vGlQqzVLkv2/ob5DfgM7MUYEHpFdu9/OTcR0G6nLL0/7xJ9ozRd0
         Z7Sw==
X-Gm-Message-State: AA6/9RnK6fR2GSukYntr8tqjGQbm88IoD9D6PAokSLe1VwPC3u0DUkdeEqjqwruLAjg+ow==
X-Received: by 10.194.21.200 with SMTP id x8mr11735928wje.129.1474749276755;
        Sat, 24 Sep 2016 13:34:36 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id n7sm13743118wjz.32.2016.09.24.13.34.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Sep 2016 13:34:36 -0700 (PDT)
Date: Sat, 24 Sep 2016 23:34:35 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Remove return statement from void function
Message-ID: <cover.1474748334.git.georgiana.chelu93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove all the return statements from void function in staging/rtl8188eu
driver. The purpose of the patches is to clean up the code.

Georgiana Rodica Chelu (2):
  staging: rtl8188eu: core: rtw_mlme: Remove return statement from void
    function
  staging: rtl8188eu: core: rtw_security: Remove return statement from
    void function

 drivers/staging/rtl8188eu/core/rtw_mlme.c     | 2 --
 drivers/staging/rtl8188eu/core/rtw_security.c | 1 -
 2 files changed, 3 deletions(-)

-- 
2.7.4


