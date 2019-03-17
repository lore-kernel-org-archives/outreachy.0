X-GM-THRID: 6669247411673628672
X-Received: by 2002:a63:ff4b:: with SMTP id s11mr1723594pgk.63.1552805167641;
        Sat, 16 Mar 2019 23:46:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8d4b:: with SMTP id s11ls2206326pfe.8.gmail; Sat, 16 Mar
 2019 23:46:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyb+5iqyG/JC2AxuLdFZ2C02mFA06olOJw6aoAE3A8/gQ27zc1c65YvTAFL0wPYUO5BFC1a
X-Received: by 2002:aa7:92ce:: with SMTP id k14mr4463367pfa.123.1552805166933;
        Sat, 16 Mar 2019 23:46:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552805166; cv=none;
        d=google.com; s=arc-20160816;
        b=l7WVF2cv7v7hNC3aUdwe9tPyhNAMaaLlXWdT/lVrx7GCLNX0dHFDfzxJZ/KFqspuCI
         Et1pNJ967L8Z5whnfu7e+ilpymeab21jFZU9pwyFrwBA3uKIeefsw9YdUElV0WKshg/z
         9z5JwWy5fdVmgSgtekIStFnF8yTvm61ezO0I5MAXtO+ieXj0pVPGuTwU+Jl4WiBbAHK0
         G8lxZ02pg1zjKG0XEoUI+hcRczKkhT3peuEsT0gsfOg8cHJ47l5nBYXDvZMKmrhNJWIG
         07zvRrREHyIJHZ6BeMW4ifP/QIt+jVftlJmlQ/P0t0bknzDd8qUxarICu1ATpW0ketd5
         X6LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pCwplcjZ2sWzlNKteopQfmswY/u4I1FHDwMlJrfzavw=;
        b=d/Q+10jQAyxUtCGU8kdJJG7SDV67kvBYtNuUnIdsemTPL5P9kEGr4hQJ3TErWko6Lu
         7AVwLWHus/1U5xv7ffSIJ4JuT0QtCMmpISguKyupnTRdQbybibzlxSNPf5QH8BCR00j1
         Lp05laQCMWz7mXsOl5TJwsDux2fLTSuClISTAYM6YyqJKqhL+EIrc/DF08fGBjkg/C8z
         1PgF17QDfR1INNGomucTUXwvJzA2OSDg3gjkoZaT7chb27HvjhnPUGu0q4T3b8Vf9PUU
         wW1j0xGfXKE1aWUf1F8XhvZtP0H1HDvV6uTgjBc0JqH9d2MaPzl3sABa2hzpyyWamCcv
         IXWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gN0FBwuE;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 67si425811pga.1.2019.03.16.23.46.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gN0FBwuE;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c8so2462777pfd.10
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pCwplcjZ2sWzlNKteopQfmswY/u4I1FHDwMlJrfzavw=;
        b=gN0FBwuEtvhIpgiWdRVI4WRtdEk8cFsUJ45pHDWxyxAXM+TVD3ve83eXcyjX1FuvAP
         6rhRv1WVpqLqczg4rrGbGkurMKfQ0DxYDJoWdKkX1nK8j/ZyAo+xD2M2lLDTC0l3W2zK
         22Grf7NCAlJhylUbHynwlYwmIGZ90AoZn94402dvv4mqJ+oMgQtONV0WyXdXB1hwcubv
         6MHtZHwirOGVqYoWMuUhNFkFoiPcldWPrctjTWOoi6nFExsEGQGyJNBatPDBmUTsQy5N
         MIZYlz7dAueoRnGoi57FR1ZYQww32i9LgKCQ/RTSa6jnZi4u53lElLU4225CMK1eKtv1
         OExQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pCwplcjZ2sWzlNKteopQfmswY/u4I1FHDwMlJrfzavw=;
        b=oBg0887gXgli40CSRMBve5ILxFGKws6MBpNlymhcjOjYk+/yZhn9twMVsHfdwK+eB9
         VBgnpSMYD2qRYL6a7z+4NmzUEVqKGUL0/CFeMuVI0uKDgD/+0JPyZwMd8hrIljpZv5UA
         KUch4MokH5PsicETA9cXBUhanf3j2sofWwFom/CVK123dyIbjX5s4rbInbqWn7WIcWg7
         Agwkqj/9fDP0HJvhLKQKi/Nt65RQkT/T8vxL2E742YodcW0KDeWZREYmw5l0rCR6IXlz
         RILZx5xszfAtyFuiYUxsOgWSOEk8hM/WmcxKgsWBxkBXuZyLbw/+b1zWQzJ2kAddwiOp
         Hxmw==
X-Gm-Message-State: APjAAAXWgJWgFw6eLo7XqOxa7fXS0mtmGok+GrUpq0flmvPfij856VwP
	0obu06F+yxNb6o/8zKYKw95HS2V7CpE=
X-Received: by 2002:a17:902:1101:: with SMTP id d1mr12910382pla.19.1552805166752;
        Sat, 16 Mar 2019 23:46:06 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.60])
        by smtp.googlemail.com with ESMTPSA id x5sm7977209pgp.68.2019.03.16.23.46.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:46:06 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ks7010: ks-hostif.c: Lines should not end with a '('
Date: Sun, 17 Mar 2019 12:15:56 +0530
Message-Id: <20190317064556.3603-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Start function arguments after initial bracket so that the
line does not end with a opening bracket.
CHECK: Lines should not end with a '('

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 06ebea0be118..7f1b41658e25 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -75,8 +75,8 @@ static void ks_wlan_hw_wakeup_task(struct work_struct *work)
 
 	if (ps_status == PS_SNOOZE) {
 		ks_wlan_hw_wakeup_request(priv);
-		time_left = wait_for_completion_interruptible_timeout(
-				&priv->psstatus.wakeup_wait,
+		time_left = wait_for_completion_interruptible_timeout
+				(&priv->psstatus.wakeup_wait,
 				msecs_to_jiffies(20));
 		if (time_left <= 0) {
 			netdev_dbg(priv->net_dev, "wake up timeout or interrupted !!!\n");
-- 
2.17.1


