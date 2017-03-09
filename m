X-GM-THRID: 6395412283312308224
X-Received: by 10.25.204.21 with SMTP id c21mr1627670lfg.19.1489047958445;
        Thu, 09 Mar 2017 00:25:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.6.2 with SMTP id 2ls590384ljg.13.gmail; Thu, 09 Mar 2017
 00:25:57 -0800 (PST)
X-Received: by 10.46.84.69 with SMTP id y5mr1931594ljd.21.1489047957918;
        Thu, 09 Mar 2017 00:25:57 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id e72si962263wma.0.2017.03.09.00.25.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 00:25:57 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id g10so6953710wrg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 00:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OiBvR90YQK5Q/RWePblKQ51ktK4qH3TIlGI/rXoxm0k=;
        b=rGiH9hy1ZFnb677anHDpIFfbCBrwKLtgT+SZB1BQS2jC7tkmcltjj04oTXl/r7ziwy
         wjYDIYBebKwpsOiPT5IaGhLO/pbyQsyf6k0VWN7R1G6K3xjJcTCQxzPXuCjORDzY7aKZ
         d4+K3y13u+kh0zJCdRGw2kOQwiJFgROn+pEM0RbNnKaliBW/e1bMP89YHjBiV81ihqeX
         ZnwuPN3Q2+gF6gqLmFPYl7Eog7Y1ZJWG7atMQAVYpIQkKRCZJvHtu8hx6fUAhnGnEbr9
         wzyJcjSCza0brbBBiQOq9hkWvDkjYO92jQ+V27gsKbWCssRfO9nvbdacOnlg3r7CFyaU
         f1tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OiBvR90YQK5Q/RWePblKQ51ktK4qH3TIlGI/rXoxm0k=;
        b=H+bLiQws85S6NNVCxprNH/3Z+mA0+o3yuseeiHPrn8+ki4CM5/rmsyKxOCiaXFOtzz
         3ItykwGDPPW7u9YrV+DFqtdbYfS/9k+nSMN8DAqy1hDMgk9A/Y/ogN8g7peMQIJeqour
         1HsQ18ufTczha/2clyYSLXGQwmAq1XeH70nJU3v87ZWF68P39g33UbtjiyvhuujAYuer
         4HdvEH11gUviARQF/LWDELgpSQ+fcYFmV3W/oFeUc36qZ8XhJSMpOPp0mhkDg6Z+PtjN
         iiNc5/1OfaWkhGXn6sH8W/Tbz2tecGGGjyUBeJD7bbvn3tyLKtqtPA73HUT4+GFizoEl
         4uYQ==
X-Gm-Message-State: AMke39mainzurW32VYwSgdHxj++AFf0Vf5UZEWryRpK/lJoMabG2bk8z5n+0MlOF/boVCg==
X-Received: by 10.223.131.3 with SMTP id 3mr9456226wrd.153.1489047957654;
        Thu, 09 Mar 2017 00:25:57 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK.precis.pub.ro ([141.85.233.105])
        by smtp.gmail.com with ESMTPSA id j80sm7819693wmd.14.2017.03.09.00.25.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 00:25:57 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 0/2] staging: speakup: i18n.c: Refactor conditionals and change return type
Date: Thu,  9 Mar 2017 10:25:34 +0200
Message-Id: <cover.1489047172.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Cc: outreachy-kernel@googlegroups.com

Change return type from int to bool and refactor code

Narcisa Ana Maria Vasile (2):
  staging: speakup: i18n: Change return value
  staging: speakup: i18n.c: Refactor conditionals in spk_msg_set

 drivers/staging/speakup/i18n.c | 60 ++++++++++++++++++++----------------------
 1 file changed, 28 insertions(+), 32 deletions(-)

--
1.9.1


