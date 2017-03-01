X-GM-THRID: 6392494565268389888
X-Received: by 10.25.56.6 with SMTP id f6mr980473lfa.4.1488374363815;
        Wed, 01 Mar 2017 05:19:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.7 with SMTP id s7ls448007lja.48.gmail; Wed, 01 Mar 2017
 05:19:22 -0800 (PST)
X-Received: by 10.25.167.5 with SMTP id q5mr908253lfe.18.1488374362914;
        Wed, 01 Mar 2017 05:19:22 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id y19si1562139wmd.0.2017.03.01.05.19.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 05:19:22 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id v190so1280909wme.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 05:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rhBYo5VTPpEzf3EZWENBj/qu2pKWzd4bRHsYM+mbccE=;
        b=QkaPhD2OVGUY9fjvVBxy6umvqkEtl6YgQg69ExBDvHC13p+SyOIfRt2KZQDaAJbIhF
         lz/eVUYS0Ed9ZvUx+PQbGkawLpkfeiP6PfcbYbtoDIAAR0NSqAwVHYgQOJ7NJ37jCQjN
         W+nE9LBkcS4eBGH98BuebXuv2DkrazVfYOCFdaTa8vd0puikWOT0mI/3YyWEnbI9uJ7x
         BSbWVvGImNB9yh17Z30MKTbpxMrr43u3jlIRVgPE8MmUfUbWijwokgjhZ3v+r2/cAl9/
         MSWb/ZaK7B70VbKYNtjrh6Nw8bamjhqxnsq+1IhLZ19ny6PhtxCS5M2IwA+O1PWQDnQI
         NGQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rhBYo5VTPpEzf3EZWENBj/qu2pKWzd4bRHsYM+mbccE=;
        b=D+IF9CwrfF72jYeleMna9ijRTgi6FYH8Sa++Gy6VpoL8wD6s5NALbQQfghgR+eeprN
         qS6B+sLI+ZkhCaJJVbiTVuJ52oLLLl69HZQzhPQtzuFVOJklN8WbqARHDo/vnG89VWIs
         OL2K4/JCtyeFFdJw0BEemZhN8WJ1oJdlHcKBK4uZ/4LJM3I8biIKij8UTU5I0aljlwCW
         +LyIEgLKpHqg7hfy95Lcl1k9x7KAervt9o/vX0edCU6imCbnpSjxbdTU29agDcDuD9jN
         /hSXYlLeo1HM3jVpxjj4j0TfrUo4pCSim83C9WiI2WwEswlNzb/S1gIDvGPGCM4d37q7
         bNHA==
X-Gm-Message-State: AMke39kfWStREPVHn962jayUzdWePE3fNf7ShkQ3ojOUyV1RYKc68T0FN2ta6kKV9WBhZg==
X-Received: by 10.28.111.78 with SMTP id k75mr3518936wmc.71.1488374362687;
        Wed, 01 Mar 2017 05:19:22 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id n2sm22302352wmd.10.2017.03.01.05.19.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 05:19:22 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 0/2] staging: vc04_services: bcm2835-camera: Enhance code readability
Date: Wed,  1 Mar 2017 15:19:04 +0200
Message-Id: <cover.1488373678.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488367580.git.narcisaanamaria12@gmail.com>
References: <cover.1488367580.git.narcisaanamaria12@gmail.com>

Refactor bcm2835-camera.c for readability

---
Changes in v2:
    - Improve the commit messages 
    - Make commit body impersonal


Narcisa Ana Maria Vasile (2):
  staging: vc04_services: bcm2835-camera: Move min calculation outside
    the loop
  staging: vc04_services: bcm2835-camera: Remove unnecessary variable

 .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

-- 
1.9.1


