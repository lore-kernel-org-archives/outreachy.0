X-GM-THRID: 6475500386308325376
X-Received: by 10.202.0.193 with SMTP id 184mr8119525oia.100.1508300483989;
        Tue, 17 Oct 2017 21:21:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.211 with SMTP id e77ls946336ote.21.gmail; Tue, 17 Oct
 2017 21:21:23 -0700 (PDT)
X-Received: by 10.202.227.203 with SMTP id a194mr6590996oih.4.1508300483192;
        Tue, 17 Oct 2017 21:21:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508300483; cv=none;
        d=google.com; s=arc-20160816;
        b=WVQqSKUsR4GnJFUFnqg1cj+o4naFhXvU7zhnE65qzwLKOra5HEj04Qnnd539QQO7ZE
         sclTrLKuP3Qa3bQXtQzbmY7520NLPuBOswh4drtYqzdQhSHT6vvLaRFWJ6s7dcNvM6zy
         MAZut8Nq9lCy1k7QirIhG300fqDOWOjpnKLaFRQjiQHGCgbd99/cqyclhbG5QwD0+gTb
         e89ZvxyFBH+CLenAWTCPVq1Ul1Qr0q0FXzo2b12wUlG01mnP2qXtI/EBIrEp2gG7HBPW
         NcUMXOxTkv0zZlh0qgrZEFqzHNstRbWgnPjlcYvEtL+vmEaaxMrBubFBKx9yFlqjoHDR
         tOTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=WNzwz5vNGkKWRPbDKozaXmoQQJ03P1Wv44L4N+wEvaQ=;
        b=ipRKJ1u6bU44BTgOheqClN/7i5UXoqHe+4pnkIc2cURDNsIFiZetiRDQKg0cOTPhqX
         KBlTFQU0ue0wcxoGw58g3CL2TX+0daQK++Z2UD0qkbLCFMZ0SKN6yyfIzTwvsI+v+/x8
         xpAf4yknbil5b8kXfRUr8VwoKC4siNK/e7M+7aWLxc3X7JOGruMPZZdM+m9Q1tMR7W4W
         9mj/Zz1T5oWp90EZP2zylZmMxcKOzMbwKMVSCNg6Mg4SqSoDGV3VOEKEbe3XEGUTTNV+
         e5fbsOHdSydOKC95X9MBF2NRwsf++PNerPMY1wI/Z5qvKf2m5FXl/i839FIARH+3agUf
         g0Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pfBtpwAX;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::234 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x234.google.com (mail-pg0-x234.google.com. [2607:f8b0:400e:c05::234])
        by gmr-mx.google.com with ESMTPS id w3si435517oif.3.2017.10.17.21.21.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 21:21:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::234 as permitted sender) client-ip=2607:f8b0:400e:c05::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pfBtpwAX;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::234 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x234.google.com with SMTP id r25so3218697pgn.4
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 21:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WNzwz5vNGkKWRPbDKozaXmoQQJ03P1Wv44L4N+wEvaQ=;
        b=pfBtpwAXUBYFwNR7oQbjldqIQaBVoiXh14BkHcFtrCYnkyBdLdwKfJlVFOJUxO+Il1
         wmoHq7NkmuqgSIM7or+VOrz/a8/FYzm4rkCxcSAwlcysWSR91p3riY+UDBS7Wn/vj6yo
         8sdthQQwEvGj5vmV3jKsESBK4Fztpo2DJ/MYNx/EckYH+/aiTF9uMgHpkC6a9v4Q/G79
         03H9SkWjxW1WeJi9tDYCwvble50jABOI+5s33LCq7OmzBgt8iPHIWQNhP5utRuX4Oqsa
         TyKXJm8F8WzYXYLKCoOo4lPfW1qWI+Ygrw/SXQB4tobdqAr2JlVpQwZBr6OnzKCmdfeG
         LhcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WNzwz5vNGkKWRPbDKozaXmoQQJ03P1Wv44L4N+wEvaQ=;
        b=hPdBNels5b4s9In4ssfYkGudjLBKZ1BejMWNgSn6zCujHyDpDpa+DaDrCYTDibeL29
         iUlaQP1FXNIgI4UHXGyJm3AfykxL+tOFlxWL9fgghOnUzjenxSvFihRus9ltUWgV05gj
         /XWbZjTDj/q8zGhY+LOKMm8kghWatatAddvLScRSqOX7aOeZLA0D/9/5IZEyndt4ZPc7
         QX8HjSI02v8cHqGIG6L1TAh8NFQZJ0ZVkUB1PMluPTEzVefimwo8djH0ANdtBMeYjywX
         VJ5tbskFLz/yHsDifzXcNPkxEVPHzh5eW74+MjZIDiVOieP4y6FsPsfgHuTF2YE0ACuA
         yiEg==
X-Gm-Message-State: AMCzsaWrNBVXCoiH1DI5b6NTKLoYTtZbVqHHI9XJXgY6DzhZmGq2WH1j
	CKX82gI51dsOn8eECweOyrY=
X-Google-Smtp-Source: AOwi7QAHH4MFdXMGZGl2CKGKmME0hxINZ8pKg6C/SRrQj4Gxv4k5jonVOMgOOhJMCz0Wf5nSYPdv2g==
X-Received: by 10.99.183.67 with SMTP id w3mr12711869pgt.329.1508300482851;
        Tue, 17 Oct 2017 21:21:22 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id p83sm22128268pfd.61.2017.10.17.21.21.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 21:21:21 -0700 (PDT)
Date: Tue, 17 Oct 2017 22:21:19 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v4 0/2] drm: Move debug macros out of drmP.h
Message-ID: <cover.1508297716.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset move debug macros from drmP.h to drm_print.h and move
printing related functions used by the debug macros from drm_drv.[hc]
to drm_print.[hc].
In addition, it fixes old comment style.

Changes in v4:
- Move DRM_UT_ debug messaging macros from drmP.h to drm_print.h.

Changes in v3:
- Move debug macros and print functions into drm_print.[hc] instead of
introducing drm_debug.[hc].

Haneen Mohammed (2):
  drm: Move debug macros out of drmP.h
  drm/print: Update old comment style

 drivers/gpu/drm/drm_drv.c   |  47 -----------
 drivers/gpu/drm/drm_print.c |  47 +++++++++++
 include/drm/drmP.h          | 193 +-------------------------------------------
 include/drm/drm_drv.h       |   7 --
 include/drm/drm_print.h     | 192 +++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 240 insertions(+), 246 deletions(-)

-- 
2.7.4


