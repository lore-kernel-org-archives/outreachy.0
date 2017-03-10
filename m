X-GM-THRID: 6395900241087823872
X-Received: by 10.46.15.2 with SMTP id 2mr3362028ljp.31.1489161569231;
        Fri, 10 Mar 2017 07:59:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.7 with SMTP id s7ls1081078lja.48.gmail; Fri, 10 Mar 2017
 07:59:28 -0800 (PST)
X-Received: by 10.25.196.68 with SMTP id u65mr2866191lff.0.1489161568071;
        Fri, 10 Mar 2017 07:59:28 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id p144si156738wme.2.2017.03.10.07.59.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:59:28 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id v190so2962378wme.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 07:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=A0hrPZZAjCdUeLUJmXoKI/0v6FzxYvXn0+dIxfpOQGI=;
        b=rtLfRymFjP/8i2qCOmv1LhJaJNRgf2dQFfJxxji/Fl3ZnhsIbYpe9pq5SJBEBAAQbu
         WawSYt23jNuZege2+WVNiDVFuuzYV/77AQVYodaeyNZjmAPY29Di5DWXJqx27HeWhHpq
         chuQ01XC6wFY2xeG5J2OvjIEfTK5MZHFejdoXTikxpLy+zhNiQBPSuqfnBZ9DBuvvD+v
         MQdqXs3IWAUua3nFEcaVFdffbhEKGGS00f3yQAHbjWGyD7rVx6cX+rkykCLIFhExSE5P
         IaSfhnkTvgefDGiZyMJqTYHOfiZbxlDTTYcv9nQy1KYaGM9V0rj11Cfvc3sYKK2B/4W/
         PiOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=A0hrPZZAjCdUeLUJmXoKI/0v6FzxYvXn0+dIxfpOQGI=;
        b=tn8f0OhKq5dm/J56NofXo2O8D72SuC7qWppI/B0zu6RoyvDjNevhPpLkhFx/h4X3Nm
         MZGGHyoWG0uZcnHjfkOfQVlO7jlkHAvrhjIZXTCGK6JeJO9Q7RqOdGVmBhV6qdJpjcGx
         MuHD9Xf4g1lwGyJlcVQsx5zOB6Hnbm6TtcWdYdz41jJDhKz7KUPwEzcHA2tYU4elKZVW
         VpYW/VQPEjUNu+FwvsaiFizveWQq17ZzU9AyVejG83qzHFjPnQOJ3CQZArw4raKQWFOx
         WlOGjbuilxwTMBTKOpJlp4mYdHVfmiw7y255xcFBEjZlBcrP9J+30JKSJcXkPmCA7e6u
         A4WA==
X-Gm-Message-State: AFeK/H16vud0OkiF819tP7NnoH6lBpP0SzEXP1RTBqWDG66XrzeOixpP4PSxY6DGxsYYaQ==
X-Received: by 10.28.187.68 with SMTP id l65mr3019783wmf.24.1489161567895;
        Fri, 10 Mar 2017 07:59:27 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id x18sm3912761wmd.14.2017.03.10.07.59.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 07:59:27 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 0/4] staging: rtl8712: Refactor conditionals
Date: Fri, 10 Mar 2017 17:58:59 +0200
Message-Id: <cover.1489161001.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset reduces indentation level by refactoring conditionals.
The patches were done using Cocinelle.

Narcisa Ana Maria Vasile (4):
  staging: rtl8712: Refactor conditionals in wpa_set_encryption
  staging: rtl8712: Refactor conditional in r8711_wx_get_freq
  staging: rtl8712: Refactor conditionals in r8711_wx_get_rate
  staging: rtl8712: Refactor conditional in r871x_get_ap_info

 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 142 +++++++++++++-------------
 1 file changed, 70 insertions(+), 72 deletions(-)

-- 
1.9.1


