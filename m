X-GM-THRID: 7021611435626070016
X-Received: by 2002:a05:6902:4b3:: with SMTP id r19mr1532553ybs.417.1634846310149;
        Thu, 21 Oct 2021 12:58:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4f54:: with SMTP id d81ls4721024ybb.8.gmail; Thu, 21 Oct
 2021 12:58:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzFmJhMgGYWUWNWIub4BfXuHyGlK8YRxaPebckSVieHQzxPOf5/0q2lZkTA6tsdC1gkTlFT
X-Received: by 2002:a25:e4c7:: with SMTP id b190mr8244357ybh.28.1634846309173;
        Thu, 21 Oct 2021 12:58:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634846309; cv=none;
        d=google.com; s=arc-20160816;
        b=LhAvREMZVPKjF3LPkhZzg+GOXEgNRoJC2beosbN/5hHyqIAlcSledFq5bDv+0MKs10
         q0J4b0HP1nHcxBd50JgqSuK3bsmgzDE/LXT3Y8O3MOO4RdhQwLgU1hSG+v4XiGsZW2r6
         SEjo6lsiK0UvI3DJ+pVM97/jzAEpT/hMckHU1ZjBoDM+1RjfIByxitbqqHI9kYLkaJ3p
         3hRrEc3hQ9VkFjpBdus456swGL+elM6Dj7Bz6GInrVAm7M6Ib5tnm2o5qZVrRqKIJiId
         Wc15mfttammqo3kZ8L/vXMlldszRXae1LTkeOChn0Z1FL3VyihghCbHlWbE4U2P8EZpm
         /ylw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=HtAnGb9XvJP+SUKtVNc4/aYf5/Kl26imun3S9nDbKeo=;
        b=wiCdgiqTPonnq03zoOwiLNPjyaBN00AJjc9Q72ungsM7zQs85GRcEOBSpfqgOfS7xP
         9OrcpwF6Oi7fogUKGgwTE2g4WI7M/GhivulX3X5x6rwjcjM9zBnO3frduc6JVqwhNSZV
         HI0FwB9K591Ib3ub/Qlykz95dpZSshuqwIi5djpgdkgVF6hy14e1OxwBAUR5qCBKOhlt
         XulEh7LrJic6pDXC+Zw0plYgVvMNRK4SYG+h4f5BLtgw6GJSjqk4Vqi8O/PN77WlMQlT
         Q2q+7loaVwemUyDS116sgaQNK9PBUkbMbjN5RS4isNIPWQRDvuS9x9JyVPNT4gmMhSPJ
         oQfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=qeWR2w7j;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id k1si750328ybp.1.2021.10.21.12.58.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 12:58:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=qeWR2w7j;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1035.google.com with SMTP id nn3-20020a17090b38c300b001a03bb6c4ebso1389988pjb.1;
        Thu, 21 Oct 2021 12:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HtAnGb9XvJP+SUKtVNc4/aYf5/Kl26imun3S9nDbKeo=;
        b=qeWR2w7jUQwHd/Sf/jNXm6upvsSuphLttWjerFG8fsYDXifng/VYjAFD0r/W7dtlWl
         wLL9TX0UKjsYyinNj58nCHIpPDxTcRGVeEihR5L0+5dfk6aSUfzn8B87jQqb059Zr/DB
         T2pWhtmJIXSYArsUCQEGI7JLdFGmUttQWmxyZBWYhkgx9p/dzrDs9gpReEznVBaoYm+Q
         e551KCBCiuS7NOb2UHKMxIB6sc2lU0ZoRn+drnoe8f6H9eE1QyW2Jv4fgEWmkskHDP++
         p3nuQjOBHU4qw6yXWg8SvFd3YHN16piL6SU8Ze+p2PV0NVgMPvFQFYR0Nu9x3/mcbeOA
         OCoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HtAnGb9XvJP+SUKtVNc4/aYf5/Kl26imun3S9nDbKeo=;
        b=H66CaI0LAho6z4Dc2Kh7itZm4PrNXhm1Z/Jw6rUD5rj1CH7rY3bZ+/MII4xRlktgr6
         x9YJGVfKtzIj53glFQTbEnEw6Y5a8KK/ei5TqVLwxoohtkg8RRczGErFC8sGUsJfYaj0
         438+MjvGKTf380tzDpXu0tnQWqQTF858x+wyyw0fNyky/kaTHuziymyf4NvA0GeEq5JV
         QaWpfJ8juTRmn61lW/Siaey3XPHxH0nY6D2KLT2APucK93UPjKiz8Q7N3BNOuO2ffPbD
         fZRnMtrgn766bllFW2aTCHaJIeDm2BY0GwE5ymvw2SntoiqP4iMViPmBQKkgl/wACKy5
         P3Rg==
X-Gm-Message-State: AOAM532SgHWyoDeVZBBoV7WJkgh8bgwV8U/QIScQzkEVVGQ5GaEUpaJX
	GRl3PBUhOtdKquD1mxgxxV6iLxFpdCtNsw==
X-Received: by 2002:a17:902:c40b:b0:13f:68f:6750 with SMTP id k11-20020a170902c40b00b0013f068f6750mr7099779plk.58.1634846308278;
        Thu, 21 Oct 2021 12:58:28 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([2401:4900:1fee:e3e7:7dfb:56c1:efef:3c0f])
        by smtp.googlemail.com with ESMTPSA id v9sm7198898pfc.23.2021.10.21.12.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 12:58:27 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: gregkh@linuxfoundation.org
Cc: fabioaiuto83@gmail.com,
	kushalkothari285@gmail.com,
	ross.schm.dev@gmail.com,
	fmdefrancesco@gmail.com,
	marcocesati@gmail.com,
	straube.linux@gmail.com,
	philippesdixon@gmail.com,
	manuelpalenzuelamerino@gmail.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	mike.rapoport@gmail.com,
	kushalkotharitest@googlegroups.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: rtl8723bs: core: Cleanup patchset for style issues in rtw_cmd.c
Date: Fri, 22 Oct 2021 01:27:49 +0530
Message-Id: <cover.1634845504.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These patches make changes to clean up style issues identified
by checkpatch. 

Kushal Kothari (4):
  staging: rtl8723bs: core: Remove true and false comparison
  staging: rtl8723bs: core: Remove unnecessary parentheses
  staging: rtl8723bs: core: Remove unnecessary space after a cast
  staging: rtl8723bs: core: Remove unnecessary blank lines

 drivers/staging/rtl8723bs/core/rtw_cmd.c | 75 +++++++++++-------------
 1 file changed, 35 insertions(+), 40 deletions(-)

-- 
2.25.1


