X-GM-THRID: 6754458583373447168
X-Received: by 2002:a17:90a:c097:: with SMTP id o23mr18377492pjs.41.1572644939434;
        Fri, 01 Nov 2019 14:48:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7785:: with SMTP id s127ls1937779pfc.4.gmail; Fri, 01
 Nov 2019 14:48:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxWly9vQlnhDYgZGXS/8qS58ROm5bsALZS2AvZ3fkvY5LnHJMG04uI6v4YPnjqBCtRYaNDD
X-Received: by 2002:a63:aa4e:: with SMTP id x14mr15427136pgo.393.1572644938313;
        Fri, 01 Nov 2019 14:48:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572644938; cv=none;
        d=google.com; s=arc-20160816;
        b=me04AitPhaVUmWFtRkBI9aTBKZVIMm8NIf+HsnxoMqfzrOxQsGMNGHLOsdpNV/6wZp
         TyvOhz9S8RSXXtZrVMo5b/ztnJ6IbIoxla3WWanH076qpOWv2mVoQ48/Ha2CC88HPa6v
         R9c86BXhMLuRimqwferW7jwFWgxXoLAJxJay6GsnOgTiSZYIbyrtlaTntjsRgUpJmn8A
         MzYFsnIxUL1kCgQBVeCeMps2p8zYiuYkUYMFUJFJkCqyFzV9bLM08dy+y9u0XqT6mRzp
         /I08eOFkfCovwlb5/yfttRL5OyR1J1m8MxKI6CB+N6cDUqF632B4hW8KfwZY49mkppVA
         OPpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=4ydkaqiUndvm12oKsPXUCT8XdG0VC6PHW8cZ5YaD7Is=;
        b=Ezy9JAhWn1UZuHBRIUzxebTbMugcgloFF0VfY6G8J6phB6gpw04iz3StvWwoDv+Fci
         3Tm1sFPSsO2QUgbKcqQ/IPB4eCFaeyfU7pgbZBESt0QAQxA1bdFuTBk3H+NxQMlSh8CR
         ECbGJbZ+0Rg8eh6p1PpNAHdUDRW5harM3/hZnOeCsvsupFlHHntxEzvqdgJvXbbD/YmQ
         kHFqccKdnoFEVUjN5/VHv45/hSbhRbMfBSOhja2fghntk7vww8iAsDJ2Zf94fTuJVJDR
         v6xf/dYhXpRcDB20YC6FhUyS6Z/YtiZFVck+WhMrqejEfld0R3yEMO4mo1QbBKEkt2Aw
         ed2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VkajqyNc;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id be9si420977plb.3.2019.11.01.14.48.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:48:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VkajqyNc;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id z17so14886128qts.9
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4ydkaqiUndvm12oKsPXUCT8XdG0VC6PHW8cZ5YaD7Is=;
        b=VkajqyNcqBhTysuY+9L/fqxUYlJRoeFSBdotA9y5qE3URez6Jq5OwAJAvLmEOxg/fQ
         Mu3367pMl5vAKCTzUIaO5TJIGwVPUtpbPtm32kre4hIi7X4ks3TV8nWVS2fC0WpQQiet
         vd+uXgCXb+am1z3HG67PI8nSk3VdE7POz4Zqov4oDyCRbVCgF3SVBzUMj7UuSHNw9qsf
         vFsh+b/Cuq1f+JreP8BlILo4wn1gyyW/amCR6GK+UL8yqoQtlZeiK2zxp6yhQHHex5fw
         4HN9O7nzyxS66p2ZX73FAoJbB+03uawlH46258rLmCZCbHZtsjUbaGLKuzqLZGFDzfmo
         e6vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4ydkaqiUndvm12oKsPXUCT8XdG0VC6PHW8cZ5YaD7Is=;
        b=pPDcwz00JpSl/XR+I5+ryZJ+5yAO7jn+IdoqYOmF+lBt80/Z6A2SaXoQeWLK0ILVGH
         hN+kvUweDSBHcWbiosZxkl4N0niiu5snVrRUMva+IlQV1Xueew8/Gp2eGW6QArDT82zm
         YbcbEM0YnX7ZYbocEhp7VdYHyqQz6El1GneVeLKS4k8JUs9r0sSyYjTq/DiuAnHQNoBf
         yVCsgE9zHjGYqiOnxsMLQf0ZlHq+s1HYV74T3Qu8PIIJXC3dKvNVeZeyci7K4V+11l0a
         8sTObYr/ih482mkgR05kGJFdMtczdUDJJwKGyfmRrJHjcaSjG4asViYvFe3DJRpOsI3X
         TZvQ==
X-Gm-Message-State: APjAAAXURKAjMfYwfSqFSQOwdEXFiMIHYLDF0exkYFVZ/y4I5VOnGd+w
	1Uiq6ocvlA7YqDfQARtqXucEmWIx9oE=
X-Received: by 2002:ad4:57a7:: with SMTP id g7mr12254000qvx.30.1572644937106;
        Fri, 01 Nov 2019 14:48:57 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-84-14.wifi.ic.unicamp.br. [177.220.84.14])
        by smtp.gmail.com with ESMTPSA id w24sm5482300qta.44.2019.11.01.14.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:48:56 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com,
	hamohammed.sa@gmail.com,
	daniel@ffwll.ch,
	airlied@linux.ie,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v2 VKMS 0/2] drm/vkms: Changing some words in 'blend' function documentation
Date: Fri,  1 Nov 2019 18:48:46 -0300
Message-Id: <20191101214848.7574-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes in v2:
- Add fixing typo in word 'destination'
- Add change of the preposition
- In v1 the name of the function was wrong, fix it in this version
- Add the patch changing the word 'TODO'

I've tested the patches using kernel-doc

Gabriela Bittencourt (2):
  drm/vkms: Fix typo and preposion in function documentation
  drm/vkms: Changing a 'Todo' to a 'TODO' in code comment

 drivers/gpu/drm/vkms/vkms_composer.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.20.1


