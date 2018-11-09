X-GM-THRID: 6621495393645494272
X-Received: by 2002:a5d:5686:: with SMTP id f6-v6mr1845707wrv.9.1541771528190;
        Fri, 09 Nov 2018 05:52:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:d14b:: with SMTP id i72-v6ls371912wmg.12.gmail; Fri, 09
 Nov 2018 05:52:07 -0800 (PST)
X-Google-Smtp-Source: AJdET5dHYRQTDTVmXylvHV9dE3ifstpm8ppZMZOTxzoc0yOaFyjUFaj2X9DnjbLNF7YvDgzwwOfx
X-Received: by 2002:a1c:7d8e:: with SMTP id y136-v6mr280316wmc.9.1541771527127;
        Fri, 09 Nov 2018 05:52:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771527; cv=pass;
        d=google.com; s=arc-20160816;
        b=VaF/HimJ9S2q4Xvi4CAEHg5W5BA63u6GbRDM222fbZFuqNxBqz0wIcee+8ShxrFs+k
         ycQVYcFnra2bBUhchCXbn2GAbUrdiQiAeJXimcBGKCW3yPEff9kJMvVRZrL55b6lOflR
         Zfhd+Crh9Iw05pLnfxO9HMfBU8TFZBdnztZWsf6K6/ap1DjGW2NG+u1cW/oeqDaXUykH
         EIHDonsscBAwuhqjVFRceF2PZAjMlCLeHJb3H7wi59t8PiUV4b1y9za88/1fF+32YXi2
         usCSN60wubl+OVNz5AVywvsozc8kfL2KyNz4oc3ogc9It68eX9k3i1tjqXwnXeuP7iHV
         9VfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=pUDxwW9IFu0B3a3GjYq/5043yUDGJ3H98wi20M9RpRs=;
        b=Op/8wvjjUMxvnK16VxEDc3V6iW5nCe5NH419sOGeq3kQYsfeYfD45om7kLp21FAhfZ
         /i/L4Sf6XKmAUfUdKxZLzm/EtlfyHGhZkw5RGUg7uMcFxgLuz93xbuR4VxFsz4BPyTBj
         G7EsXjsu5+RiVZF53g0ZypJBZZ4jdpduEATpXtTj9S4IQ5bDRQTCSQB8Mzrvkr6Vjkqp
         FpWXWRlvuxyYZnQJG/ULcbPDnMXi9w62Q0CDA27g3hbR5nEAD9EWLAugRW8PNbBKlF98
         ocdubfNBpwUV9OEFKgCtOMfS93AKj4GIoNdYnr+Rr1ICItP4m/6SS7926UO9j/vm0qke
         VUAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=MocBn9YN;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id p19-v6si55759wmc.1.2018.11.09.05.52.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:52:06 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=MocBn9YN;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771525; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=EFk1cYhKfb2S8T9tZfvqQ7szKup9b/EFwuGpwDszNKrh/CG3FWODMha9kEICgFHMmwPz+A40XXgAeBXCKwIUfJaNylVeM1KIHs+J3BrxoXA+rdxl31x6Er5jSNVEuicgmcafHZvE7Adayx8t2Yy8fxYcOFjQ3T0Jg5nYlpAQJ60=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771525; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=pUDxwW9IFu0B3a3GjYq/5043yUDGJ3H98wi20M9RpRs=; 
	b=cZJmxZ6CcZo/eugv8tD0XhC2etZk+RilpKxec9MD+XwJZi4N5rTQuDYhASijkAi+bf3oZo7EHfAC2cS7CGvM2uTh8Cf9sywmt/rp3X4f4YrDlqFsGzXJORLY42NflvD4qyzq0M2NwkQrFvAPzD7dnhd06Ea9cRqeV9VD/d5bjWQ=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771525;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=2341; bh=pUDxwW9IFu0B3a3GjYq/5043yUDGJ3H98wi20M9RpRs=;
	b=MocBn9YNSn/fkCjT7sgMgfvvGTJDx6WxQ5ERetrMlOxfB4jnsELj3BVPce+9BiAo
	QP54ENs9HIeIY3lLnao/rhsg5q7tQy6AtN2ogo5+OlpBhl6WqxcDlwkIWwcDTDgVVDe
	XTiUD1Bq0jU2yodhEq/wF4Omvd416oHE2A7Q0KXs=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 154177152371697.8110351473349; Fri, 9 Nov 2018 14:52:03 +0100 (CET)
Date: Fri, 9 Nov 2018 13:52:01 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 00/15] staging: greybus: fix coding style issues
Message-ID: <cover.1541771359.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fixed in v3:
	- Change the title of a commit for consistency

Ioannis Valasakis (15):
  staging: greybus: shorten comparison to NULL
  staging: greybus: align parameters to parentheses
  staging: greybus: add a blank line after declaration
  staging: greybus: fix SPDX License Identifier
  staging: greybus: align arguments with parentheses
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



