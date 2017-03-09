X-GM-THRID: 6395412283312308224
X-Received: by 10.46.20.16 with SMTP id u16mr1562391ljd.23.1489089200590;
        Thu, 09 Mar 2017 11:53:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.29 with SMTP id g29ls766188ljb.37.gmail; Thu, 09 Mar
 2017 11:53:19 -0800 (PST)
X-Received: by 10.25.56.6 with SMTP id f6mr2194952lfa.4.1489089199147;
        Thu, 09 Mar 2017 11:53:19 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id p144si731669wme.2.2017.03.09.11.53.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:53:19 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u48so9215149wrc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=K926Glu4r4pTBLe7sHHFaLPkm8eqUrKAOWS1KvURb2I=;
        b=ccEcU05n0nlEqaruAkKxOUid2sQ6A0AO60Zrv8CtnixLzYq5cFJ/pJ41nDWcamk3oh
         TAtNF0+nvxCc8sHAauaej3PekEKt0MoXNTVmF35ke7Haq9y5cAkr90CcbbsEldaW/hrU
         x0+tEoBFw/IXCEcwDUFS70uM0OWFfrXl3Oop/D/+hE1b8AhTAZ3QPU65J9eZwKWkMiBg
         7EzNXR53lk4J/VjQX9c5CSDLBr65ioZAd0hDwzJf5Z7dnOgcPO751mHNeWjW3up/sE1G
         k0OsKs5EV5hDmwNQ+7Rs1fAyP72F63dPYyPmfJ1P03IZVxiXQ6C8K+Du1lMLIpThNkQC
         MmWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=K926Glu4r4pTBLe7sHHFaLPkm8eqUrKAOWS1KvURb2I=;
        b=Zw/ZFY5dq8wUrlLqk46G/Y0olhFye9vXI5cqoVllWrDcOqSVCI2kA94R0pnHtm3yGT
         VftkV9IzUpEfDYalyD4c7FKna6r6S7zH/yf/6rZYbe3DhAF12J8Q+WWXOgJhS3ha57Zk
         4HvCHwTJbqiSAvV7sbFvKE2O2ZYYhp0QDa424/Geb18B9ixcZGAq5S6tKUKurhrY4m7l
         G2CstLR1XRaYmiM6yD8W5xItOuyMEzQsfAfmOi6I9TKRLJQ0KnITT7JG4EhbGRxu7qjJ
         rloMWMX+R0W+odJeI9WjvfeR3XWupwk0YKrjooiF2VuWPlA0vHmnlmj1oVJ0TUfXc8d7
         I74w==
X-Gm-Message-State: AMke39mBukrj718Q8N2CANTUkXuYbEHxq3A0Xz4Cj79R+zb89om5fV4KPc7H7EBNo9b8jQ==
X-Received: by 10.223.163.81 with SMTP id d17mr12239438wrb.94.1489089198953;
        Thu, 09 Mar 2017 11:53:18 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id l21sm9438391wrl.59.2017.03.09.11.53.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 11:53:17 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 0/2] staging: speakup: i18n.c: Refactor conditionals and change return type
Date: Thu,  9 Mar 2017 21:52:48 +0200
Message-Id: <cover.1489088501.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489047172.git.narcisaanamaria12@gmail.com>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com>

Change return type from int to bool and refactor code.

---
Changes in v2:
    - Update documentation for compare_specifiers and fmt_validate
    - Make commit messages more clear
    - Rewrite condition without using '!'
    - Fit function call on single line

Narcisa Ana Maria Vasile (2):
  staging: speakup: i18n: Change return type from int to bool
  staging: speakup: i18n.c: Refactor conditionals in spk_msg_set

 drivers/staging/speakup/i18n.c | 67 ++++++++++++++++++++----------------------
 1 file changed, 32 insertions(+), 35 deletions(-)

-- 
1.9.1


