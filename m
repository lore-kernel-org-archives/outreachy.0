Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F077E1113
	for <outreachy@lists.linux.dev>; Mon, 14 Nov 2022 03:27:12 +0000 (UTC)
Received: by mail-vs1-f50.google.com with SMTP id t5so10235287vsh.8
        for <outreachy@lists.linux.dev>; Sun, 13 Nov 2022 19:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=stkBJt9AGVmPPpCRn0pyuzmh/X6Op6tb2xy9w3hrr1I=;
        b=j6it04zgCgDigPuBmo7l7vGXgGQst5ogCVYrz+6VyqxMH9svfG/r+hxZrepCzIacHR
         A9TyQrcwWKo6PnJtOLOIXXPCRpkBEDa0mc6DC4bMPtb6o7sRccps7IlUa0XJtFHnXpJ9
         ibTa9yh9TE9VB/CT9Wo7Yrtp9BtG+oKZfaGRwxwOL/rw0twf2DpL7Jm6bxTr6QZ/YJWl
         VGUFYsFRRz4VhqtRG22k7TQe5/8RC5mCWaAhAv2rnWAl0unu+QhSNUTNb9g5NxX3RQQ2
         +mYiL0wkixDHM3dB6/iYaTe5HJe/begQODjVv7q9Sh8YxmYVKP+YgjenSE3Hm5opudAg
         nZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=stkBJt9AGVmPPpCRn0pyuzmh/X6Op6tb2xy9w3hrr1I=;
        b=LfL+WpqUf4L77aLruUMxCDGrs6f+6+mA1hKy4qNXVHdwt2CK5hIrkxLfnYMJHQjgyv
         KjNUUYy2+40onsox+4PfykUBxqgPRYb0pP3jBsAZ2QWc4qk4ZbsAsr6TiPkF+vx3chgN
         G3/GWQol7WCE75jgZPv2551lqbJj9IcVZM0XOG/XtvFVYch6+Hx8/Ctc+FWXDl4hnGNZ
         dRtSzpIPPn5Zltwto36FrZgXXY0MV2RJ/BogLKDgWeIfauCwICdNMcsR5KECQGmxqeHY
         1liF5kbvOuUi6EIEcZhkBZWCHpuBUqVgNQdCWStjvwqBfSp60UsRzHZvf1voO/svZnRL
         ixGg==
X-Gm-Message-State: ANoB5pnlBtp+uhkBZKZRwRVX5pJ/9zXZAXhuvUxhrKl7Yb3BqPQKtsV8
	VNQYIvZCWdgjlmjjHa38Z+wuwiVztAp2VPUjj6LNgTyIOZ2OJgaXbZO/rqSV8RuMwdbOFrvP0B9
	O7i+M6VkYDXuf3wdrg228VA1qfeIWCSK3tES5goHxLc17P83LUXfurG6zr0OXIgOiyDZxj3MEHH
	4Y11quxQ==
X-Google-Smtp-Source: AA0mqf775zWyMjRNQZ2LaTGXuabUKJcTbhbk4X1GPoULdEjJHtywVgG8ZqtzL0abSXrmvrXaqJ35nw==
X-Received: by 2002:a67:ff0e:0:b0:3aa:859b:64bc with SMTP id v14-20020a67ff0e000000b003aa859b64bcmr4584091vsp.52.1668396431586;
        Sun, 13 Nov 2022 19:27:11 -0800 (PST)
Received: from zeda.home ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id h2-20020a1f9e02000000b003bbd05d3370sm1206897vke.47.2022.11.13.19.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 19:27:10 -0800 (PST)
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: outreachy@lists.linux.dev
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	hvaibhav.linux@gmail.com,
	vireshk@kernel.org,
	pure.logic@nexus-software.ie,
	Hunter Chasens <hunter.chasens18@ncf.edu>
Subject: [PATCH v3 0/2] Staging: greybus: Code style cleanup 
Date: Sun, 13 Nov 2022 22:26:44 -0500
Message-Id: <cover.1668395762.git.hunter.chasens18@ncf.edu>
X-Mailer: git-send-email 2.38.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These two patches address some Errors, Warnings, and Checks reported 
by `./scripts/checkpatch.pl`

v1 -> v2
Separates the patch into a small patchset with the delimitation of syntactical
styling vs whitespace styling. (I plan on sending to the maintainers if 
Outreach thinks this is an appropriate patch.)
v2 -> v3
CCs maintainers.
I now know I should have CCed the maintainers from v1. I apologise for my error. 

Hunter Chasens (2):
  Staging: greybus: Whitespace cleanup
  Staging: greybus: Removes redundant 'int'

 .../Documentation/firmware/authenticate.c     |  4 +--
 .../greybus/Documentation/firmware/firmware.c | 34 +++++++++----------
 drivers/staging/greybus/arche-platform.c      |  2 +-
 .../staging/greybus/greybus_authentication.h  |  1 -
 drivers/staging/greybus/loopback.c            |  3 +-
 drivers/staging/greybus/tools/loopback_test.c | 16 +--------
 6 files changed, 22 insertions(+), 38 deletions(-)

-- 
2.38.1

