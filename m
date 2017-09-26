X-GM-THRID: 6470101655297720320
X-Received: by 10.176.94.151 with SMTP id y23mr7602228uag.80.1506437932309;
        Tue, 26 Sep 2017 07:58:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.214.148 with SMTP id y142ls802290ywd.31.gmail; Tue, 26 Sep
 2017 07:58:50 -0700 (PDT)
X-Received: by 10.129.154.137 with SMTP id r131mr7087509ywg.102.1506437930462;
        Tue, 26 Sep 2017 07:58:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506437930; cv=none;
        d=google.com; s=arc-20160816;
        b=oFDhyc+wF7o0vnHpPGLlInU2bzaOUpkryBXvryVEZnQpeyMZv3HSvDpjazg7zAxNbp
         X/ZxBD43XVeNOAcV4tIGoG7BZ7ioF+tKvL/XR/j5+LRaZN65X+LaWmUHT/iyNnt5vjvT
         aBni80z4VyVYd5lDNlI3nZo0nWV+rQU5/d4PYfH5eunfsHzEHA7byg3lCW3tn31i9Ab4
         82T8nHFG9XT8W9pO41c4x8AX8zPrAE4rt8OgKwF6SJLAyPbD+4JBJyA3klTa6bZrBfi+
         xGmNjmh+Uf2Ki8beIcBcno7b5Uno39y9OxaBO3E4IcqYWHE5Tf8j2T9OlHWCWVffAs1G
         R99g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=YVIz3ZwabvhFqsqRkHDqKfxw5HqxbaysuIuQcYTG9GA=;
        b=ZWgpOn/Hxs/Fxb8zmMSuoxYA7tIDlCRf7h/ERjo21dHrnOSEhDA7ewVA4a/QW6bJ/8
         OuL5VV4H+eX/ypQuDVKmhL7YYbFsrPo8LhelBKv8VoN4NaPF/Rc1rREaD5bRFKHdX7X4
         op3w717nWSPPI1evTyJgBEqEv7X0k+PjCI1UW3Yqy9onPgssFH2JfBtTjKVGGbSFgFki
         4X/PTxqeNqm+gBlup0TaRekf09xXyAXH3wb1YAulFp/nu3O0plC1iRP7Ic8gQfYqPA2Y
         KNe/xwRLyFD0dgniuDT9puoNZfgIZ5OuHlf/zgYaJzcEh7Eask7CtTMmE1Ao9EOo13+6
         g+dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i+SEbLI+;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id s81si683529pfg.19.2017.09.26.07.58.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 07:58:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i+SEbLI+;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id f84so5110900pfj.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 07:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YVIz3ZwabvhFqsqRkHDqKfxw5HqxbaysuIuQcYTG9GA=;
        b=i+SEbLI+UVMNeFpd6Ah0kXW6lPAjhjRLxMgz5JhaxBZ59RCW0B2zJLb1GvgAZmXqUP
         +8ql1cqKfdOdpexdc19kp9BFrszeo5FU556T4qfbtmV+E94ETC3E50xht2wPMky7zrfP
         DDEiDhBj75gj5iJkDDLOfPUIieO55X/aiqKOI2WjAB4hD+4sHbzSIB8PU/bUDW+gIPxZ
         LXJzXLY/gyT4w+rafJk63oNIdPsde9fHwD+dJn4kOA3fJeiLdgd5/kTmmMGiA+ODu6eN
         5jef6X12kjLGODhOQKfr/MYEEjSdeiqMPRHdLLzo8yIi7S1AiIpWBbTOSdRkksuoVcdR
         soRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YVIz3ZwabvhFqsqRkHDqKfxw5HqxbaysuIuQcYTG9GA=;
        b=HzBwKYiTmASVHGJy2CzihUBR8Q4o/D+LxIK7E8HZRJ5DV25qvZnoxGeNccUnEb4FfN
         C9yRdMnUKEvzDwPTfUagyZy0eAVzNftTfTIOtBJ1/wFeg3wjC/T69SUCpAx1N8Hh32dk
         CoKVc0/c/mNhpk8qOVy5oGM9/dpo3ZFiWLjycAgG6h6AyUYOCzV1rMH9MiUghg3y0N4w
         cWgEurVLLROOxb1BjYXYUmV8XrbXyDai9UkyxD+7k/FcPZwi6+fSnHpgHD/Rf0QCEz60
         zh2FHcfxhglM5nqYzdKKdA4vZsfV+QSg5m6pbau7pc+shgYzYLGOyXOxUAtGChacZQI2
         WeQw==
X-Gm-Message-State: AHPjjUib4/RykowuOs2vHlHaZkUkvOW1OASsutSC9aOgPo0h2ly1W9hB
	VCIRimh+GIRru9z2zEFcq6g=
X-Google-Smtp-Source: AOwi7QD6wz1n512fInoePWFlOKCyP6jGwfwSiSuxKEC6zLaHAXJ3klSI23v/TxZyVJu87zFAHdk97Q==
X-Received: by 10.84.177.131 with SMTP id x3mr11166013plb.123.1506437929906;
        Tue, 26 Sep 2017 07:58:49 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([47.31.3.154])
        by smtp.gmail.com with ESMTPSA id r16sm16729649pfk.178.2017.09.26.07.58.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 07:58:49 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	hennerich@blackfin.uclinux.org,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 0/2] staging: iio: adc: ad7192: use private driver lock to protect hardware changes
Date: Tue, 26 Sep 2017 20:28:35 +0530
Message-Id: <1506437917-7219-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches
- replace mlock with private driver lock
- add lock where there are hardware state changes

Aastha Gupta (2):
  staging: iio: adc: ad7192: Replace mlock with driver private lock
  staging: iio: adc: ad7192: add lock to protect hardware state changes

 drivers/staging/iio/adc/ad7192.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

-- 
2.7.4


