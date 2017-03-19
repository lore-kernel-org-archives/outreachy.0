X-GM-THRID: 6399197627083128832
X-Received: by 10.157.41.240 with SMTP id g45mr10310309otd.94.1489929302278;
        Sun, 19 Mar 2017 06:15:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.6 with SMTP id q6ls3898230otc.10.gmail; Sun, 19 Mar
 2017 06:15:01 -0700 (PDT)
X-Received: by 10.13.202.133 with SMTP id m127mr13061036ywd.37.1489929301563;
        Sun, 19 Mar 2017 06:15:01 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si2203786pfa.6.2017.03.19.06.15.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 06:15:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so15994504pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 06:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eeAjJi7BXgpg+9d8wLZY2CsYVTL6G73fII9lbQwhdfU=;
        b=BKlnNeQrVQylydDpAmSEiloaQt77k6fSTGIrVbPEFowYfAFuin+Ahiwx+5Xdn0+XAz
         aUEI1TNFzZhzHBrkgDMdzfIX7fJaUPznLIAr8T2M934Gor7s3itiddq58SRvtE5WWWkv
         WSEduZRW+NaXg227t+WS2XWdj4tNjDJfYdlkcJjW9rDc7vILKvZ1E55oa8iGh6qncsrz
         FUgdpgG3dQmDCBe/pxkEIqluSRbyjOiwllpq3A2nl3WmUvcaZ3cWNRXWlgwizdFhtQ4f
         cgILfqsBB8fcrV6uR4Q3JWpM77XKnsREUu9gcp5rgyPZU5L+NMHy9tTFR3TiBRXVJypP
         jXtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eeAjJi7BXgpg+9d8wLZY2CsYVTL6G73fII9lbQwhdfU=;
        b=LepXDIBWQZa7LbzbKvk8lK8k4gHnAz4lg/WHGFthIwBurs2d15bIy5Xn1VzPAb20ap
         R7u8oZnjAcSdhyUXIrr2zVy2bN76P990JUotHwnSktXi2s1np8qFrFXJnTR0h7jUTfi2
         Z5QnxloffY0XQO+iYeAhQqiYkY3ZmzePsy8FdjoT4ESOjbEbLn882bqKi1Tmfx2ZcXXy
         rIFXtvd2f9gEgruEC6pPJsnpWT5XLbSxt8UUm+gP+ZkIBI0JyFhZmZniPe5381c6wgCV
         F2aalF1JpUomc2aYxF5LtTUo2dd1fMzVu+WReQVkKBNLTqRGEbg3dw8pBY9Z7ZeLsNPs
         3YDQ==
X-Gm-Message-State: AFeK/H33P3O3sn/AoGxCTnzJKTCRtrveRTGp7tDZduOMapEOtNILWxv3Egme6zHjg687rQ==
X-Received: by 10.98.104.4 with SMTP id d4mr27773350pfc.2.1489929301303;
        Sun, 19 Mar 2017 06:15:01 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 198sm27476469pgb.51.2017.03.19.06.14.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 06:15:00 -0700 (PDT)
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
Subject: [PATCH v2 0/2] staging:speakup: Multiple checkpatch issues,
Date: Sun, 19 Mar 2017 18:44:53 +0530
Message-Id: <20170319131455.25007-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver.

Arushi Singhal (2):
  staging: speakup: Moved OR operator to previous line.
  staging: speakup: spaces preferred around operator

 drivers/staging/speakup/main.c           |  8 ++++----
 drivers/staging/speakup/speakup.h        | 12 ++++++------
 drivers/staging/speakup/speakup_acntpc.c |  2 +-
 drivers/staging/speakup/speakup_decpc.c  | 20 ++++++++++----------
 drivers/staging/speakup/speakup_dtlk.c   |  2 +-
 drivers/staging/speakup/speakup_keypc.c  |  6 +++---
 drivers/staging/speakup/speakup_ltlk.c   |  2 +-
 7 files changed, 26 insertions(+), 26 deletions(-)

-- 
changes in v2
 - correct the commit message of [PATCH 1/2]
2.11.0


