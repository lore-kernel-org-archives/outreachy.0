X-GM-THRID: 6667889243892744192
X-Received: by 2002:a2e:9ec6:: with SMTP id h6mr2503940ljk.23.1552488944943;
        Wed, 13 Mar 2019 07:55:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a18:: with SMTP id o24ls324860lji.3.gmail; Wed, 13 Mar
 2019 07:55:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzW+r5V2XhNSTuBZrqtFxaxWlTBE1VzDWyGO1tRX6oy9VeeLYMm6D9/i8w+W2JzpuVvtrqF
X-Received: by 2002:a2e:9613:: with SMTP id v19mr2615016ljh.16.1552488943755;
        Wed, 13 Mar 2019 07:55:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552488943; cv=none;
        d=google.com; s=arc-20160816;
        b=mSOvSCRd4QS1l+44oOTOm6K/ZpLmByBhzPDx0Yc1jTNqxcLqSgWo2oxGLLtS8sTwkj
         mT0Xt3jRFf4EdrTN3Scm5FnOR0y9xaPvYZaK/KTHGtZTqn1ysBlUynFUyLTre9Z6LZd9
         LYpzuQKMS/aNX1gts2rL8KCWWUjY+zo7UwJtMlzCVAyLhb0crZ6xTYo4IvR+E/laSUhv
         qKWKUdy0DPgYQ+ubi3KYvyO1j/hYfD/nCsJUFfVOBVfsSjn5b/7iGf8ObsOgQ4tMZyhG
         vmiWHBt3YtlyU8CiPmRQtWtQSo41nWjCD9OnXqd9QWHXK8mKKWXSxfXV95UoPFg6oPGV
         SYag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Xq5xuArj+nE91z6fZSGSl2NseziKxs7lUXJaedIKnjw=;
        b=reEj/7RDLLvGQwazZNdZG81cFBD664No1q5gghGejuucygOw1pIOHj1uJxbU3AMrh+
         RK6o8A/p29AX7HewaOKCzBgRKDnS5umnVLhmPGJnuiuryPcRCLFhji0we4cNrcUEK3Jj
         CeXFrjfSYy7KXhW45bODf86kr0SwpK4JJJ9mZamwNyN+ZNUqXi3E6oo9RMwWJu7NlgPP
         2dkZUOI4vJlT6bf899YxQ6tnZNmgT5Z7N7VQ4nc87ZPgpyS7oSrWa0brUHK+4NWFj6ul
         EgOKiAeeSn/JpZvbyDnj3ffpwIyBJgDBpf8cecVTl81iEqO7uh03C8qeRj6Kv0TbndNU
         5bxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U+PVTRlf;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id s66si262574lje.3.2019.03.13.07.55.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 07:55:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U+PVTRlf;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id i8so2355368wrm.0
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 07:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xq5xuArj+nE91z6fZSGSl2NseziKxs7lUXJaedIKnjw=;
        b=U+PVTRlfD3oyZ31XbiERHHoJqGtGX/r6lkXNXkBTpj/JxvJGaVlITg2X3yu2Vc5yIU
         dIgP7XbQPShsvpVa/pSdlyBWAcZDLLBTdKPlhuxPzF83SNsUQkLDZO3TN7LbFozkq4BF
         Kxis6ubqgJSxYIeqLSlgdit3pMbtUElK/XZ7jXAFGbxU7tKpDhajmtiPvXi6TgMKGXf1
         4d0GK8s+RFHQbdfuRGIW4h0+yVEYuX5rlnWt5VOru9H240qRTYryFamhmI3Xz3bnYAsy
         rEoD8G15skRrtjX9qp92mA6YDJya4IGXlrchejl9cV8h7uhgMXnAnD3qfL9pjLgs6uOv
         0stw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xq5xuArj+nE91z6fZSGSl2NseziKxs7lUXJaedIKnjw=;
        b=giBxFXGwCeeQq15CDYiANHx7TMKlyziGSO0jnK+S8z1GvyIU9p1aZvehnqg/28oUJ+
         cQ19ykNh4J+ddncnvJjAFOEXs6MENKlWVBe6VZcO67ZFt+O/w4jXm1czBZnTKlz+han0
         EwS9kDKAWaO02e1/8680YLbcP34UK9sSmyQiWg6qcKUvqd99V42aX6trizcPIArR8Si6
         d4K7qcIlgmoc99fNpLgjH0lItkkznpkSrkV5OriT3IsJQBWv9Ztcgy5n/Fz1W/LMJAtq
         tZQHLAsWCxKJv3Bg7kcglooq0NoLv4jHowtQL4OgU9iRQaTvSZZTevo3Jjy6gGaIfmSZ
         O7Lw==
X-Gm-Message-State: APjAAAWLWAM1Gp3njm1bPOPwzVyPEKaItwE7A88C5+oLNMrCzapIrw/k
	vJXBGJE8P4CgJbsprb+z0+ZoEXA=
X-Received: by 2002:a5d:4a8a:: with SMTP id o10mr8015241wrq.189.1552488943213;
        Wed, 13 Mar 2019 07:55:43 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id p68sm1329218wme.45.2019.03.13.07.55.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 07:55:42 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] SPDX Cleanups 
Date: Wed, 13 Mar 2019 14:53:18 +0000
Message-Id: <20190313145320.26782-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This v3 corrects grammar and ensures it is ccied to the right
maintainer

Jules Irenge (2):
  staging: rtl8192e: add SPDX GPL-2.0 license identifier
  staging: rtl8192e: remove boilerplate license text

 drivers/staging/rtl8192e/dot11d.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

-- 
2.20.1


