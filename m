X-GM-THRID: 6620547167797903360
X-Received: by 2002:a24:9703:: with SMTP id k3-v6mr342643ite.29.1541466258968;
        Mon, 05 Nov 2018 17:04:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5dc6:: with SMTP id w189-v6ls2541488ita.4.canary-gmail;
 Mon, 05 Nov 2018 17:04:15 -0800 (PST)
X-Google-Smtp-Source: AJdET5eQAGx0+ogRuRpC0ltNLEfRHZIEJC1Ssr1MlovHkWZtKDTF0bt/Z6CJx0ZkjOrjIHYn4oX5
X-Received: by 2002:a24:9085:: with SMTP id x127-v6mr359028itd.17.1541466255825;
        Mon, 05 Nov 2018 17:04:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466255; cv=pass;
        d=google.com; s=arc-20160816;
        b=EU6igxFg0tdQ04ub0KNT3IHb3fuRqjRbdKKGjSwKBlTC0+EaJ98uk5qHlHmy9zx3HG
         0JG0hWP77rMsdEneHg5ch9VMJM4RqcFvMgax7jPKzSBd3cTpaTlM4Y7yl0LhNutJKWo7
         73olYR7LYa/N0O+9aOnrP8Xz+16EirMGzW+4GX57EboKAIvYzdI11ewyWnJCrLsWLEXB
         7gaamvyMo9hHqxwW/B23XnOSqFImjP2ofHI60y16EeXatTb94rl9K0yVwsP5uY8BBabi
         GwEifWvTB8Xf4Rhcgohzk2zzF6i1835hB+G1h49dXxfcdqA1IiZj3fDO9vIJd65wlEYJ
         fCWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Y32tddiCMVNYc7iKAWwy4GX5c9xxHyeQbEjSlws1rik=;
        b=AN+/MWUf6eUVRmo2eWxDrl3Wf5fgV3dCZLLnGt0y/FJjerIzqcwlHGKvm/mghsR9Ou
         iiJvFoXG3RmYWu6CutrDR1Y7vcc8groY7Njv1a3PIIzFSrFisbd5sAHWyZXURmAPXqis
         oaGVd65PWlZLCLgnD6ay+2itBTCluS/MbCwLINk0cBUEGXPnnTPp75ojv71IHb5NOmCy
         iOWiloTWBrRcOqVYVNlZira/fgsgv8odsDrVRdw5koHuTpNO9maiX69E9XUIlzzJmPms
         yfJQwUg05969K1pvownmPFENN06aUuQXnybZDRinCqxSjbo/miLBiRmzjs0nDkTjjZXw
         rLAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=be6E6QGi;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id v6-v6si802923iop.0.2018.11.05.17.04.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:04:15 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=be6E6QGi;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466249; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=dF+Uzq3WjoIXqU0nSQ1OyNdXpczPzLIxB0ozOUbEXwm6vtgOW3JyLVBEpidgHc+crSqORtLif7gK4F2RyFF4JTiXJRQ2vAX2lYuLj73wrmHc1osQd18zCEKyT6a86jPEQ1kISeS1sLzSed3Tbiof/THc2yJO6XaZPVCMu3nuNbw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466249; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=Y32tddiCMVNYc7iKAWwy4GX5c9xxHyeQbEjSlws1rik=; 
	b=HWVPeHnz8yKipmiLPNd2OToifx6jFfKADicFUD6yBmClJ23dtGbeUk0gh9aZohpUQ3BQ1EedjnaxYr/yR14redALH+tR/BEd0fmq+jq4nRjmkQNh/ueWi+vUtLRI+Kpqr93iy2reQqiyYIBSjXA4JRxweQKJj+aZYWBYt0Q5rzU=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466249;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=2364; bh=Y32tddiCMVNYc7iKAWwy4GX5c9xxHyeQbEjSlws1rik=;
	b=be6E6QGi0vN2zmgQwUjQ+ZYwIPTFhWG7h9RRZ6NGEORYSgVKOw4m51h7x2Gyi76Y
	FpJzKyRjCyAr8jqnAC+O+qzQClZcXd8P2v5el5YLolYZqG6jQd2Y5xKSue44zp2DE+p
	l0loiZ4UShTzpMZPASessDmeyf/W2Aw8/uISDL0U=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466247831491.0074219470923; Tue, 6 Nov 2018 02:04:07 +0100 (CET)
Date: Tue, 6 Nov 2018 01:04:06 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 00/15] staging: greybus: fix various coding style issues
Message-ID: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix various coding style issues reported by reportcheck, uncrustify and
coccinelle.

Ioannis Valasakis (15):
  staging: greybus: shorten comparison to NULL
  staging: greybus: align parameters to parentheses
  staging: greybus: add a blank line after declaration
  staging: greybus: fix SPDX License Identifier
  greybus: staging: align arguments with parentheses
  staging: greybus: correct SPDX License Identifier
  staging: greybus: remove multiple blank lines
  staging: greybus: insert empty line after struct
  staging: greybus: remove space before tab
  staging: greybus: remove multiple blank lines
  staging: greybus: add extra space around OR operator
  staging: greybus: remove extra space before tab
  staging: greybus: correct SPDX license identifiers
  staging: greybus: remove comparison to BOOL
  staging: greybus: remove unmatched right bracket

 drivers/staging/greybus/arche-apb-ctrl.c      |  1 -
 drivers/staging/greybus/arche_platform.h      |  2 +-
 drivers/staging/greybus/arpc.h                |  2 +-
 drivers/staging/greybus/audio_apbridgea.h     |  2 +-
 drivers/staging/greybus/audio_codec.h         |  2 +-
 drivers/staging/greybus/audio_manager.h       |  2 +-
 .../staging/greybus/audio_manager_private.h   |  2 +-
 drivers/staging/greybus/bundle.h              |  3 +-
 drivers/staging/greybus/camera.c              |  1 -
 drivers/staging/greybus/connection.c          |  4 ---
 drivers/staging/greybus/connection.h          |  2 +-
 drivers/staging/greybus/control.h             |  5 ++--
 drivers/staging/greybus/core.c                |  4 +--
 drivers/staging/greybus/es2.c                 |  4 +--
 drivers/staging/greybus/firmware.h            |  2 +-
 drivers/staging/greybus/gb-camera.h           |  2 +-
 drivers/staging/greybus/gbphy.h               |  2 +-
 drivers/staging/greybus/greybus.h             |  2 +-
 .../staging/greybus/greybus_authentication.h  |  2 +-
 drivers/staging/greybus/greybus_firmware.h    |  2 +-
 drivers/staging/greybus/greybus_manifest.h    |  2 +-
 drivers/staging/greybus/greybus_protocols.h   | 29 +++++--------------
 drivers/staging/greybus/greybus_trace.h       |  2 +-
 drivers/staging/greybus/hd.h                  |  2 +-
 drivers/staging/greybus/interface.h           |  2 +-
 drivers/staging/greybus/manifest.h            |  2 +-
 drivers/staging/greybus/module.h              |  2 +-
 drivers/staging/greybus/operation.h           |  2 +-
 drivers/staging/greybus/spilib.h              |  2 +-
 drivers/staging/greybus/svc.h                 |  2 +-
 drivers/staging/greybus/uart.c                |  4 +--
 31 files changed, 40 insertions(+), 59 deletions(-)

-- 
2.19.1



