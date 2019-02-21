X-GM-THRID: 6660411535314124800
X-Received: by 2002:ac8:28b7:: with SMTP id i52mr21944638qti.8.1550747989062;
        Thu, 21 Feb 2019 03:19:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2ea6:: with SMTP id h35ls990712qta.5.gmail; Thu, 21 Feb
 2019 03:19:48 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZe8o1kctCHC3f6JSpWqn2dQLyDB4yesDWiG0U6bU7P/6gMCjraPMD31F7M8mfQN3AgOL6Q
X-Received: by 2002:ac8:36a6:: with SMTP id a35mr22282970qtc.43.1550747988486;
        Thu, 21 Feb 2019 03:19:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550747988; cv=none;
        d=google.com; s=arc-20160816;
        b=gBVnvC6TQ1K5nTBlxX6K+Znu4G9GtVx18rInGKUfSRY79nnU98oi+GOWqWxXRvw0Jg
         r0rUSueSyq/ivvi2R1NsfwghBYAE0gI/tKjNnp0/eboCMUv44bPUvGBSSEewNZPvytxB
         bbWZEV7Jw15DULQLoSwwPv7iPX4hw8UDdz0X55q/oSLx7y/LsWIK+3nT5HtyKZgJ8C8s
         p077VKpyOk+3Lxb18mPbW/EbaUvErrZ+R9ai+F3cuUpmyQ+u4hdFlx8Lz/v/gTpdzrEo
         VuKmmnUDrg6c53Cf3LuosxXEKuBTJ2UivHvD2dtwka7bcViciYMWBOZeZpj1Q8B/u/Bv
         apBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Ok6jxkzCEmX7P8/8vekBNWZnDFZee1cnzp3XsXvLq5c=;
        b=SNBkupKOEqphgkcEna8T/zj6Vr1Ro5v0lqMHYa5XAhCLjsYxbfcSekTu3qchn5sUXl
         1RarEc1oF650ywBjTKf0/uExsNL/dlL9svQXdS1VoQo1/D8GA1/X+KstSDxY9QLhGdvM
         9FpJrR3MH/7vMwPprETI9UijTqC6D0NLKewntavNuETOZB43lilaAlwDWjWQ7nNQeDeP
         fq/m5RnnfkORwlQyGlDrug3L0NDmgV2fD3/72iSguhEGnCkJF8U7sSFSGnuEu1Dl+v3i
         Jnqk5ucQ6NVorAlp80Dg79miLvVkpxIC9PZ2fwoUsF4DAG0IhbtFlhvozVT/e9s4Cbcf
         abZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tfyS9Umb;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id z129si1185734qka.2.2019.02.21.03.19.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 03:19:48 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tfyS9Umb;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id bj4so14025593plb.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 03:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Ok6jxkzCEmX7P8/8vekBNWZnDFZee1cnzp3XsXvLq5c=;
        b=tfyS9UmbvOs2spJXrqujBOJEMiT7RP2HDUHJPi/N0egpPIL9Ns8uqD9FXah4lhWKLy
         X0kx7HHoPcZ9dxlQjt+x6yQjdaK9W2OW1rOIrqwt0kU79Nd/sOG4VgzRZhRA5onLrIcG
         BkuYkWOgnpzjm6aCbwwBUE7IZM9AYDmDlZXdZSwDTWf6GIGckxjpEHaCAmJlIPe3zDD1
         kr2eJptjts9fOJC8PSZ7QyIDj8vgp1YOKPY4yit6NPEwy0Y0uxvDBvpzf3xi2SZi/iIG
         EzVDLr7B933iyVyj4H41b9C0C7/v6g7w/n5uEW75O483SfZ17TnqF5Bzw1orbhdVR1AS
         wsMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ok6jxkzCEmX7P8/8vekBNWZnDFZee1cnzp3XsXvLq5c=;
        b=ts4eTBXKsv+J9igxDhbVg482pYPRczNbfTZ9knspu73EwcjLzPbJqNJ7t0aM8rygTL
         clv/afjl8/SRDOu47k6GMaO3Y39KT4oqDGXbRP/AF+Py6PdcOQU1MQhHajhu3YLxUT0O
         OuED7ggYt7AWc7MCrm9iOBXd1FZrrVoLC2i9e7UE2xt3TUIJoHjjpZKCFz9ZWgMQW8+x
         6Bd79xxQXC8WXQuiaHbT45yhl8h6Tkf2JjxMQ+XUmjsd2YCyvyd/orjALdbqCdXX6EKa
         +PqIBoojo4DUxiyzSC5A16NByRDgypC+SU57LcpPVRQU9C2BQg/vOZEM9qmMGQB0Km7e
         TvLA==
X-Gm-Message-State: AHQUAuYQwE4xZFTWe8xBDuKsHRHhFzFYAUoWKh57QAxA996xGonWJ9s+
	CAjuomKxNnfUQkz/UOjyTOY=
X-Received: by 2002:a17:902:e60e:: with SMTP id cm14mr4220254plb.192.1550747987595;
        Thu, 21 Feb 2019 03:19:47 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id y20sm45162658pfd.161.2019.02.21.03.19.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Feb 2019 03:19:47 -0800 (PST)
Date: Thu, 21 Feb 2019 16:49:44 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/4] Staging: netlogic: Add SPDX License Identifier
Message-ID: <20190221111944.GA29109@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

adds the SPDX GPL-2.0 license identifier which solves the checkpatch.pl warning
Issue found with checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/netlogic/platform_net.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/netlogic/platform_net.h b/drivers/staging/netlogic/platform_net.h
index e1b27f649590..1d994f0d0995 100644
--- a/drivers/staging/netlogic/platform_net.h
+++ b/drivers/staging/netlogic/platform_net.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
-- 
2.17.1


