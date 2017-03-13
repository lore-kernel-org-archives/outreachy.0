X-GM-THRID: 6395896934008094720
X-Received: by 10.107.187.197 with SMTP id l188mr9115320iof.55.1489435469594;
        Mon, 13 Mar 2017 13:04:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls5137346otj.6.gmail; Mon, 13 Mar
 2017 13:04:29 -0700 (PDT)
X-Received: by 10.129.85.205 with SMTP id j196mr14719959ywb.48.1489435469220;
        Mon, 13 Mar 2017 13:04:29 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si3339574pfx.8.2017.03.13.13.04.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:04:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so19374118pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cBRsr4Ak/aMZRu0TjxwPYL785NWWicNqSKVu/lHXXgc=;
        b=JVkuM1c9aK+QtgN4aBLASJ1NrBDeHPVnGpwvCzV5aVRsJvCjGpcdBwiVCoSBTjPcqq
         GcPc8lK49Mga3NhjbIJSy8Cu9en6Kf2BoP0wMGYhndxvGPrLvyr2E3Pfb0HTnu6d3gN7
         ZGXsnuynvQRlr5t9rkiHBZ3EJVcBSaKnHhIDHvFN+vl6V92+ivxH587GnxAD/KjESIPf
         KPdkXe7zjMoLW2gPqX9K2hA6Ga7b8Jd1HJ9O7jg6lkhiIv1whjX9pgh808sCzIqTe4jg
         e2Bc+xDiipidI7vwFdVpryP53TRvLqHKTJQzPhZXJ0Kc8fqegXLsbGOsr0hk1cpWqVfv
         s7AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cBRsr4Ak/aMZRu0TjxwPYL785NWWicNqSKVu/lHXXgc=;
        b=n2fmjz1KoeL5+mZDWthtSyVUl97b4tS95d1gkg3vEdY0SnhFT3MPgdm3LvXgUMlu5/
         viS72kAAXZsBn2iwncG6W4YHjCXQPD6N3mNo7ICGAAUbBq5Wst5HYuqifBOSVaRh254C
         9rzzXQeGFc+BdKIJtQnnCD8bnAIXIvny08DWbWJctivRgNOrvDTLQN4ZKvDXH3/7hJcv
         2Dg94aVooJCUL/iPScQLYEVQrKnZjPHxv/ixoyzwOBJH1xgoY4CBctDXh/9Nacep/fRI
         yWcPuzlBnEHMh8dW2Nlb6cFjbyX71Zt3DjYr7FVwAGU7nlAs3wL/Ynay5oHdJPIGJkks
         KRlQ==
X-Gm-Message-State: AMke39m+scx9jQ4LbSbu+IJQSixtgqnkhsEJfW2XWERSbfbie2kO6N/kAL4hZO2VoyuyGA==
X-Received: by 10.99.144.73 with SMTP id a70mr39101628pge.187.1489435469000;
        Mon, 13 Mar 2017 13:04:29 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k2sm34467556pga.29.2017.03.13.13.04.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:04:27 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 0/2] checkpatch cleanups
Date: Tue, 14 Mar 2017 01:34:07 +0530
Message-Id: <20170313200419.24210-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver. 

Arushi Singhal (2):
  staging: speakup: identation should use tabs
  staging: dvb-frontends: removed code in comments.

 drivers/media/dvb-frontends/drxk_hard.c  |   1 -
 drivers/staging/speakup/speakup_dtlk.h   |  10 +++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

-- 
2.11.0


