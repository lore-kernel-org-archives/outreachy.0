X-GM-THRID: 6621495393645494272
X-Received: by 2002:a17:902:1125:: with SMTP id d34-v6mr161550pla.7.1541687034399;
        Thu, 08 Nov 2018 06:23:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4494:: with SMTP id m20-v6ls915874pfi.10.gmail; Thu, 08
 Nov 2018 06:23:53 -0800 (PST)
X-Google-Smtp-Source: AJdET5cQ6vyh3ulGoNS5vl+CSjMO+ugxcHsyS0/TWiJO5spEWnQVTwANB0aSVwPhz76qwttCax1v
X-Received: by 2002:a62:4b0b:: with SMTP id y11-v6mr2004321pfa.99.1541687033414;
        Thu, 08 Nov 2018 06:23:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687033; cv=pass;
        d=google.com; s=arc-20160816;
        b=MIbN3XEsO18+B1CGgXTGUGW6eIo94IKNK+I8FjljlLYTFwafrnem34yF7o9twDvYoe
         YZ/1y4g53dpzf0BsUARjvzHw8c3BTh+Ut/sHjNks8Q4IQ5MQ155V2ISEB4Dzz/QDU2aX
         vW0tCIbeo8/j6MHraZvt6XCCARXxG5j4eMiuO2lv18k2Q1J2C8O+GReg6IWFBm8vwNub
         w4YvWgdyeqns0Yx2CmjounP1vhGiC9DEth+vEUxbSbBK3XkkCOVcLTYEaMMp1CsVuDYV
         YdMkHUAoWWBItWoMfVXaMmdW37sVfPc18mNtfIHRTX5OeQ3e0JrhOxCDLPfuMzbvhY+s
         FWCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=OFCgxlyTNDS8XTXDeHRNe2jaUxrjfnlAVfAI5+sBNag=;
        b=mNDnytnLBEo3rnFGCv56SVf7UFTlHSM8LrGBAaLwl6UVDB6TI7IJRfWuftNxt2n/X0
         aZUt9mZ1qLi+aT1w1hqMptnW0JMWY10kPg+eiueuCmRiI8qmPEdGK6uKhdjv5dZt4I1J
         cjMVgdg+cQ5ppDQ5skswmfC1BZrRVhRNHRM8n5V4S+1k8TXQxARiI4pnE7FuKPq6+Sca
         HP+Q8hICnWXIplIfCz9EzRpFuyTfy41o4Xn50b42SBiu3x19fa6kPDlCpNbXYCpXAIg9
         +Lyxeo8v4U3K4+htRNfXnlfW/24dSWdzZIqZwvSUYKVeNOBLLmk+qysCjFWtCScvKUTk
         i6HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=h9KapuPW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o9-v6si133575pfi.5.2018.11.08.06.23.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:23:52 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=h9KapuPW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687029; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Bk4qUiMoDm2aIo6vDwZh3FFDDFpS6oihFVbhLG0TzWfsrllmXU6hM0pmTTTpgU+Klsja6H3qTCaIpjNrIInC1uSNXaWDC0Zqk+otCdV+EMsvnukh4VjgijyFuOHeHcx4H671iw+UDYoRo0JdKfmpg4p99tdoRqZRsf7UZ8iJEc4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687029; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=OFCgxlyTNDS8XTXDeHRNe2jaUxrjfnlAVfAI5+sBNag=; 
	b=e4AQ6laahxfhhgXobfJSGghULUJ9ogFX8NCdraqASJgtSeaMbu1CD65f7zzZFGtE/qwaHJUMbSLSWoSwFtDkNfg/IDC7npgJwt4kkMdTL2UtT+GYBLrEmvAIS+oFJAyZIRUlpud6IoV8NW//X4kiLlHMigdocjlEBx/nX8SS82s=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687029;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=2323; bh=OFCgxlyTNDS8XTXDeHRNe2jaUxrjfnlAVfAI5+sBNag=;
	b=h9KapuPWu393YOMfMn/xx/e1wEM8G5oGXZ/J6tYu459bZlrALAZxUbavocRxc+RK
	GvmMYp0t9hPaj56HlzP3r4tSDT/Uto0avniVyOHhIxoZVMhth1ibC5cL2As6/uPkyhU
	ayH8yn9tkxf7kfouF9cZ4Y1bZ841OE9VocOeWJ+w=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687029072505.2179977959822; Thu, 8 Nov 2018 15:23:49 +0100 (CET)
Date: Thu, 8 Nov 2018 14:23:46 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 00/15] staging: greybus: fix coding style issues
Message-ID: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Changed in V2:
	- Change the subject title

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



