X-GM-THRID: 6394099314586550272
X-Received: by 10.46.76.17 with SMTP id z17mr1859549lja.13.1488742259174;
        Sun, 05 Mar 2017 11:30:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.198 with SMTP id s189ls1385916lja.6.gmail; Sun, 05 Mar
 2017 11:30:58 -0800 (PST)
X-Received: by 10.25.104.21 with SMTP id d21mr1542018lfc.31.1488742258505;
        Sun, 05 Mar 2017 11:30:58 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id f7si798105wmg.3.2017.03.05.11.30.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 11:30:58 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id u108so15344947wrb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 11:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CSoJhpdTAZ098IWmIvkqpWulfKCQrsuJXvOxKwmSjkc=;
        b=THgRmecPUZFUpj3cMmhaDBFYGO1T2OXoP5QCsZPJNchrZNIV5ZuobCtr8znbztZALr
         eZ8reREKEbLMXjqCUFZW1DG+3sQecKuuq+sA56HSzELyTV2pe6Di/QGatsTSaIHUd3iY
         VoSdAhTX45AtPimr1E4pzc4kP9ZW8S8bS8Q7dWFWvRo5B5F47eZsVjqwuLsW5jh9cKRE
         9zoEXMajmKmtFweCDNnOFNfAnFVF0XwBbKatgVPMIpO0G5CPiUX39k8iZiq61aAKZbiE
         miup6+ShUKYEdW9BJJCFvcl3ztW5D2VzR8EjbcamnEjkiVrSskggbnrDeZ/qULgfRcUD
         VDWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CSoJhpdTAZ098IWmIvkqpWulfKCQrsuJXvOxKwmSjkc=;
        b=Lr/bg22vnZgy6rxjbGD+VWZNvuDPOJXOh3rZZqiufGTEN8/PcboXk0hPugcK3qbJLF
         fYbANDqdjQxnBZPLidRGK0scPUooYXPRtii0FyX60hBQ2cYOlukgSNofzHNbaOun1n8C
         Q350Lj9v9yxqfwrc35+otyy0u5Qo9SUJPbpJBhFs0aw9jn07F/RjdHRWpJbTt4SuBkOs
         gJRJAaRjLom3MY3LbvGBRdwTKdDNB8fKKzdb/IFDLYWQ16XCL9ZShN6Y8utovKXzgiOX
         V1KNpf/ZRgIhXn8ewIvXVAixunQYr9UGGN/IbwQnA6bx8vhmO12tjFhwOQp7q9GtqXfo
         lYxg==
X-Gm-Message-State: AMke39lCiJLgvaB5EbOcZY6W5zL0g0gGPmS8YM60f4VRkXRwnuTKImM+TqX2ODUJCBRJog==
X-Received: by 10.223.134.157 with SMTP id 29mr10833962wrx.33.1488742258295;
        Sun, 05 Mar 2017 11:30:58 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:c85a:3772:cb0c:b839])
        by smtp.gmail.com with ESMTPSA id x1sm23891984wrd.63.2017.03.05.11.30.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 11:30:57 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 0/3] Fix multiple checkpath.pl issues
Date: Sun,  5 Mar 2017 21:30:44 +0200
Message-Id: <20170305193044.19389-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fixed multiple checkpath.pl issues in speakup driver to improve code readability.

Tamara Diaconita (3):
  staging:speakup:keyhelp.c: Add spaces to align
  staging:speakup:keyhelp.c Fix 'if' continuation
  staging:speakup:keyhelp.c: Remove unnecessary else

 drivers/staging/speakup/keyhelp.c | 54 +++++++++++++++++++--------------------
 1 file changed, 26 insertions(+), 28 deletions(-)

-- 
2.9.3


