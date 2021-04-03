X-GM-THRID: 6946995103705595904
X-Received: by 2002:ac2:5e8b:: with SMTP id b11mr12100216lfq.99.1617473341583;
        Sat, 03 Apr 2021 11:09:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls2781632lfo.0.gmail; Sat, 03 Apr
 2021 11:08:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwtQ6pN5Fos7H4CS+rW9iF0B+oVwgKSs+pxOd5F4+izMc3vV7VQaeGw20JCI2JH4v9D7fRJ
X-Received: by 2002:a19:68b:: with SMTP id 133mr12370391lfg.151.1617473339859;
        Sat, 03 Apr 2021 11:08:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617473339; cv=none;
        d=google.com; s=arc-20160816;
        b=HXCepKA8X5Py9C8jsgqVAr8/8+Eswr1rq9AYIFbDhd1pfGEXJ8CJG5duIAw5RIt8Ab
         uOoeQGuH2TfCFVO7kzit0/BVZMNLYque8Ochtsk8pZ/+qs7x05cTCxPKfAPxDA4+vbL5
         TBLTuRMlGEczo86pbzu0Wv6yIDwRd11SNRwHEq6nuk+iFzYWyJt2F6kUvVmAJZIwHAwO
         MPYN1LRinAbJqXQCVcjI2AJE3Ij1FB9IoqYl1k5fzsj1TtEEszIgTZ3jqbJI6UvGvost
         W5d4B5/4UZZWWwpMU0aG53LTPM6qLR1SkafiFDXRIyUgtpkFKaPKL+NrMVX8z2kGL7cT
         QFtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=/DHc77qHzF47tIzabn/XC2E6zkbwQgwze0m6zhIGO0g=;
        b=du8KG5sK6XGJozjbObWmLBBZqlxnjMmWYvaHIwBn7V2RT6mRd25qRt5tgpWjwS0kGa
         Gz3tc+LV8jtDNxcCehUyz52N1c+EPtrWigfLUKHeMM1TyBbmGHcfuyKC5DHCBN+W+SGc
         0vNgz/vuH2TAg1cAXGHqjJfze599XNvYiz+DtQKSu5pHdeay9ISvSq3ReHLvt+20SHwo
         CstmxAb3P7QicbTzq96Cnd3sgSbfG1bt5b34uiaUQtc+W9yQ6YkKVv+g8ZwYNknQ/H/0
         iwXFhSQAQ/zqZMoYEGo5PMUhpk9hp7MDnk8nKQUxQkRGKkMEUzHZ5/pRhf7qolxnIAW2
         Yl3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TgArWY+L;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id v26si1033025lfo.2.2021.04.03.11.08.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 11:08:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TgArWY+L;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x135.google.com with SMTP id o10so11722280lfb.9
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 11:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=/DHc77qHzF47tIzabn/XC2E6zkbwQgwze0m6zhIGO0g=;
        b=TgArWY+LrUkDahwrOlfzPf1xYluBXZ9jZjo29rEJU2zde5ZhPVsCYLwv0sUuVy83B9
         2Lu0jZfrS1qKM/crA5xu8y4bBDvyxPxhRWqPRn0U8+RllfBK1zSXL0k/DS2t4s7UeFFL
         FYtCR0hG6s/UYqVrXsOK1myctGSnCCiXrozP0H32bIS4MgLmx5QETtnFr9J+hpTuAVjR
         O1cBXn/gr8lgFxIY1bATqyVTva/kVFfzctLeddRBaAZHpTOE+YJ2EDAAYB0QmF8SmCoa
         wztynjZOaJqRdOHAqce4Oh4IOp3qJtfz25PGwPwYqknvO5TEzoxU9XdQinKE8Zab722m
         ceLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=/DHc77qHzF47tIzabn/XC2E6zkbwQgwze0m6zhIGO0g=;
        b=VXgcizxD++ZXH/EbGSSQp4fgw6m5WfshEIg6032ptyfhIqWUeIZdMkfyaZ8Bsfnl+N
         73VlfzNs5XX7ga1s96IwPSzrwDMmVNPsAnUPyoqFqkWZryoVtLSMNW7KTPOOKRu3JHqa
         rZb2ab/eEh2nqwqs7KIh9kL6H1LYV9qkZQffOXL9ImDtAljmWz3k7c5GQZiB3VoXUomw
         cwGcXNFi76PbVVd7zTWetYKsd9uYGURyR7DMP9dPtchIr3kxMd6CdlM0JCzOSSUpyw2v
         eXstAiwCYn26MGFbfedDeAdrjTZZCguQdUO0XJeRoU7JhXjaq0/JGUJdLToaE52xzcDO
         bkVQ==
X-Gm-Message-State: AOAM532qfoSIoFZKnamtpceAnwDzjT00obWBOhBBYjpXvO4EMiYc5w3Z
	lO6OB8E0wQEgZ8aGhcSOisD4KXO9V1E8ZAZ2
X-Received: by 2002:ac2:5312:: with SMTP id c18mr12411768lfh.618.1617473339502;
        Sat, 03 Apr 2021 11:08:59 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id v10sm1202850lfb.238.2021.04.03.11.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 11:08:59 -0700 (PDT)
Date: Sun, 4 Apr 2021 00:08:57 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 0/7] staging: media: zoran: Eliminate camelcase
Message-ID: <cover.1617472411.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset fixes 'avoid camelcase' warning by converting local variables to lowercase and separating words using '_'.
Renaming of each variable is implemented in separate patches.

Zhansaya Bagdauletkyzy (7):
  Rename 'HEnd' to 'h_end'
  Rename 'VEnd' to 'v_end'
  Rename 'DispMode' to 'disp_mode'
  Rename 'VidWinWid' to 'vid_win_wid'
  Rename 'VidWinHt' to 'vid_win_ht'
  Rename 'We' to 'we'
  Rename 'He' to 'he'

 drivers/staging/media/zoran/zoran_device.c | 48 +++++++++++-----------
 1 file changed, 24 insertions(+), 24 deletions(-)

-- 
2.25.1


