X-GM-THRID: 6620380698493583360
X-Received: by 2002:a9d:4d17:: with SMTP id n23-v6mr16798708otf.35.1541427499996;
        Mon, 05 Nov 2018 06:18:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3e8a:: with SMTP id l132-v6ls11218460oia.7.gmail; Mon,
 05 Nov 2018 06:18:19 -0800 (PST)
X-Google-Smtp-Source: AJdET5cC4QVrtCpSKolb9zhgOOzCaXlTzICViCBmFa1WFmbEj+K0Ko2c4wG8hL34uNorLop9yOU2
X-Received: by 2002:aca:fd0b:: with SMTP id b11-v6mr16966169oii.45.1541427499009;
        Mon, 05 Nov 2018 06:18:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427498; cv=pass;
        d=google.com; s=arc-20160816;
        b=mMlpbZPRCvJsd8sXpItgREB+KY9rudbShW9Rs7MZeXe8A1gy+Z+ol0AYx7U1n6bUbF
         xlusyOrc5DY8zQxGjaD5zif5w8AwCO0yqx5qk0xqnm0VSMrPJjkj2fXQgLYACeeDjcJm
         ehfOMTs8g6p9tteXxcCK/i1mBct+mOBpV8+0pUAz8uQLzUUeETaHvoTWNY1r9fXRfj5H
         8Ze/Flm34lC/63o/ThVnLEevppCSDwxfCZwufFW2YsJpgPiN8ftN87rIQ3x0G8VYcoh0
         jevpt60+uHmDE1XpQXvzfHqeTNI8OzhJGFNLQWjvhafsekQP+E/PPYJNNXQWmIEVVsM7
         IANQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=yk9fbNdPhDZB8GyhBT72yYOtgbziNsI6RZfkvhUVFKg=;
        b=pxvT0jniOeEq3zJXBUhxMYy52tt5eyJUzuzrjsCEplYUcBfo4O9eCdvw79vupld9SD
         y+E1cprgokB2AWaBhIbWzxpYvZZQq390hExHORQvVKi7DMtezdB2biDSw5tsrI0EmcgB
         tAUjZSrnXyb6AkMB72KlGqp6J8UvxYaXCzU5oUaNKY3kHLUeDbWwRcxTAkp7BbJInofP
         rtDHB6Q4V7CsSvxbNtn2+i4Bm/QCwBZt/g51j1rMrvi5n03etUozcWOd6QNriqarKxRL
         /Z2Gi97KYTAMIqP7vwTAyPrmYHhEoTobgSV6yeLRn6ggj0klEuyQ4UaxsBUWvV8LNo8R
         24Wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=UtXyt1mY;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id q14si771395otg.1.2018.11.05.06.18.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:18:18 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=UtXyt1mY;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427494; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=f6UNedRLVmyKXAhOPeWEww+eyFE6FIz/VglEAnJZwWjVOm46XE5oVFOEW/zipP1zs72V57gsD97+mg5XU/EyeZ1nSrxpqIhGKjpEh+J48mNpCft0aziapdfQAi0HqLjuMbNR+JhradQZpfeHtqJs5uiFdzu5QfeIyx5+CFgNXyU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427494; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=yk9fbNdPhDZB8GyhBT72yYOtgbziNsI6RZfkvhUVFKg=; 
	b=clKEGaR6/ZIbDhLdte5UyJIj91qEw3OJyPhQ6nEGzFOOt0RaXqEphmNNZQhUjvON3zMy+gOUDvN+Yqtm1Zv0KpNlDymqvfRu6ZdWogFeJSN+jNdOniBjhJPtO9ZkBaivf0nmFLNk8+vCbxtEV91aN6/0rxB1MrTrkuNHM6bU9kQ=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427494;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=2208; bh=yk9fbNdPhDZB8GyhBT72yYOtgbziNsI6RZfkvhUVFKg=;
	b=UtXyt1mYuydfesut8fWuH6Y/HHJ1uCr4ISXmMPvMEA5adl+KYD7VNT+VHILUJ4Zy
	dJhrGigy+Ib0FK6TxwV/eOTqQ5mqyUUNiVJVeaONWPCe5JzzIpHGcMex6ahzKEj5oKj
	FGSCLdqWz7dFUoxdY4Jo+S57tDvdAl/DotEbSV5w=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427493986445.88390918867367; Mon, 5 Nov 2018 15:18:13 +0100 (CET)
Date: Mon, 5 Nov 2018 14:18:12 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 00/14] staging: greybus: various code cleanups
Message-ID: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

staging: greybus: Various code cleanups reported by checkpatch.

Ioannis Valasakis (14):
  staging: greybus Align parameters to parentheses
  staging: greybus Add a blank line after declaration
  staging: greybus Fix SPDX identifier
  staging: greybus Align arguments with parentheses
  staging: greybus Shorten comparison to NULL
  staging: greybus Correct SPDX License Identifier
  staging: greybus Remove multiple blank lines
  staging: greybus Insert empty line after struct
  staging: greybus Remove space before tab
  staging: greybus: cleanup long line in gb_uart_probe()
  staging: greybus: remove multiple blank lines
  staging: greybus: Add extra space around OR operator
  staging: greybus: remove extra space before tab
  staging: greybus: correct SPDX license identifiers

 drivers/staging/greybus/arche-apb-ctrl.c      |  1 -
 drivers/staging/greybus/arche_platform.h      |  2 +-
 drivers/staging/greybus/arpc.h                |  2 +-
 drivers/staging/greybus/audio_apbridgea.h     |  2 +-
 drivers/staging/greybus/audio_codec.h         |  2 +-
 drivers/staging/greybus/audio_manager.h       |  2 +-
 .../staging/greybus/audio_manager_private.h   |  2 +-
 drivers/staging/greybus/bundle.h              |  3 +-
 drivers/staging/greybus/connection.c          |  4 ---
 drivers/staging/greybus/connection.h          |  2 +-
 drivers/staging/greybus/control.h             |  5 ++--
 drivers/staging/greybus/core.c                |  6 ++--
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
 drivers/staging/greybus/uart.c                |  8 ++---
 29 files changed, 41 insertions(+), 59 deletions(-)

-- 
2.19.1



