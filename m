X-GM-THRID: 6674230099683835904
X-Received: by 2002:a24:2404:: with SMTP id f4mr3795959ita.15.1553967298099;
        Sat, 30 Mar 2019 10:34:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:d06:: with SMTP id 6ls1647819itx.5.gmail; Sat, 30 Mar
 2019 10:34:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZck4h6dG4rE1Xmlx9uqUf7GSsvgzRKmXPS/+sTjIMMw0AoNz7MUP48/2WWAY5/aEMgDT5
X-Received: by 2002:a24:1c0c:: with SMTP id c12mr3844068itc.19.1553967297311;
        Sat, 30 Mar 2019 10:34:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553967297; cv=none;
        d=google.com; s=arc-20160816;
        b=LU/dcXXBNWbp3zivBmPZTjDBKb4eJ5LiYC2G5luaw0YvszMj3MvnAOuyzxV1VgY2vf
         dbjfdw/G6IrluTvIc4oDCrUmS2K0FPHX9vgUcmKck0/yf8TqYBdyRWh4xYBuIITwJ/g+
         oknWazi4PYpZ0uhfFJc6zUSV78VtxjaY5wjuSfxwMjwuiiM95Pa6W9Azb2KvdxfHgqMk
         6MnKiGKj1jThVdJnbcaOgaIpGuXeR3wzfTlM66dB22mvny/Vh7Q8LrELPybx8C7d+ZeY
         lmrrGbexChkXlKHBy6nS3R6s6RmX+PWYy1DUB4Cys718lWrRoySCgwbJV5ry3mMbBOaT
         NC+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=3XRrFcCcXmky5Oo4G//Fpa06+3fTSnOK9AGs93I33GM=;
        b=G8rYYJVBokAGh70eCgFalyRZ8RZ5Iacr2v9HjQtRl9K0Lb7QW8mxUAPNT4pCj6PHqd
         d7Dmc7IenFtQMqIazRSzerVvWDimCSXHDFzKVOC3p1cRjEDDMXyIZWqrZu9da2MlSWix
         r3B5pBh++CvJDugOd9/BGk86fePefTWBzvxFmf6Hl7CShb+tEUEJePsIVnOuJqqJWZx4
         5xI5FkrDmPafrjqRGHVzWjLB5Po0TPWh8RYLZ+fQpFenu83JZlJCgQ9FXQEuXyLJ769c
         LWjK2ifqW+mXTMaa0UJqi1Fj8arizXmRmZDOMuDueJLbg7hdBAJWhIb3R+KXRYnEtOzY
         msmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KAi5Wy8B;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id g127si886093ita.3.2019.03.30.10.34.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:34:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KAi5Wy8B;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id u9so2687019pgo.7
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3XRrFcCcXmky5Oo4G//Fpa06+3fTSnOK9AGs93I33GM=;
        b=KAi5Wy8BtZjEBu9cL1Gtb9oavdh4bcvG/D9PB6zCQarH/LWICtXY6DnEyIdLl4SLpw
         CtGBBDCyp38tZXdp0X1zfJYZhmDmpe+2ZjmsFT/ZdBAuQLaDL//AZoLFz8PttDyLsyAz
         pfHN+n0OKbnElTPIWHE/5dEVW6UEC6pHOB0i1Irc8uvddLDzrNxHCPVKdeDdvu6HoExt
         7M7Iq/PyFc0S38p0rGUmfdWaLL3CsSdJ+sb7oJpuZlRi50y3NXN0G5BIBIWrehijbR/E
         k6AEpSMMk/MRdq45elfbMiDP1H09YfJ4O+TXKUORhBCg2crpXFOY4HhBt/dLVo+onTH8
         puNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3XRrFcCcXmky5Oo4G//Fpa06+3fTSnOK9AGs93I33GM=;
        b=OzwONKqrrqPnsjOifMdp4LPpwU63+2jdZdEHqfQL8Jo5WEVSeVgXeSQbrcF1hy1uHI
         mmZ+Iu7ZeryJb2+NGZFYEDshE2NZwPHpaTG/f0BwT4c/+uI76vnaYufOmyUptH5nVHNA
         RxxWk4Xio1hRzXZcCBwWTPR+kRA+3orIjCOqbCsyINEHo0vJzaupjdrESW7xXDpa/zn8
         YEnW7gfcdb+zpsjEFk+2HNhc5Kp0YgF3PbSrScgv5LXdH1KHjF0Oby/vsmXJ7ZCNob0a
         l1asI498w2W+lfeSO3v5vYQ4MCtk/rzmvtC1qIAI2YhWawR9c6QF+m60K3gtcrxC0TUV
         i5lw==
X-Gm-Message-State: APjAAAUt7aTSjMERRS8eqpr5ceoFZwb5mCHE/hSKaFJ7pZo3ul+S1c9U
	DBM8ehhrILE2sQiz4ItjXao=
X-Received: by 2002:a62:5ec2:: with SMTP id s185mr16247033pfb.16.1553967296194;
        Sat, 30 Mar 2019 10:34:56 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.90])
        by smtp.googlemail.com with ESMTPSA id u4sm20802377pgn.12.2019.03.30.10.34.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:34:55 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/2] staging: wilc1000: Modify return statement
Date: Sat, 30 Mar 2019 23:04:45 +0530
Message-Id: <20190330173445.5268-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330170116.4761-1-sanjana99reddy99@gmail.com>
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com>

This patchset does the following things.
1.Modify return statement in wilc_spi.c
2.Modify return statement in host_interface.c

Changes in v4:
Correct the version number for [PATCH 0/2] i.e 
rename it as [PATCH V4 0/2]
No changes from [PATCH v3 1/2]
No changes from [PATCH v3 2/2]

Changes in v3:
Make a patch series.

Changes in v2: 
Adjust spaces for last argument in return statement host_interface.c. 
Adjust space for last argument in return statement in wilc_spi.c.

Sanjana Sanikommu (2):
  staging: wilc1000: wilc_spi.c: Modify return statement.
  staging: wilc1000: host_interface.c: Modify return statement.

 drivers/staging/wilc1000/host_interface.c | 31 +++++++----------------
 drivers/staging/wilc1000/wilc_spi.c       | 10 +++-----
 2 files changed, 13 insertions(+), 28 deletions(-)

-- 
2.17.1


