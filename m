X-GM-THRID: 6390544093665034240
X-Received: by 10.98.252.205 with SMTP id e196mr189106pfh.26.1487914494748;
        Thu, 23 Feb 2017 21:34:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls6175405otb.17.gmail; Thu, 23 Feb
 2017 21:34:54 -0800 (PST)
X-Received: by 10.129.72.200 with SMTP id v191mr311882ywa.150.1487914494273;
        Thu, 23 Feb 2017 21:34:54 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x22f.google.com (mail-it0-x22f.google.com. [2607:f8b0:4001:c0b::22f])
        by gmr-mx.google.com with ESMTPS id d20si93335itc.1.2017.02.23.21.34.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 21:34:54 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::22f as permitted sender) client-ip=2607:f8b0:4001:c0b::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::22f as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22f.google.com with SMTP id 203so9938338ith.0
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 21:34:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=UW7y04f2ejV4aHagYkEiHttBiIwZAG3ceobq0GeliEg=;
        b=JckiZkpa950btRvAjME+c3bmxgfdS92R/cztbPXFHdqN5y7YckNnBWSlpuA1D51iok
         aOKI4hl79Tv3SNgQXdtvTWXD0St0EQLTN+92BBiJCZMMnRZQZ61TB5XlT2RRMN8AR+No
         vZNz4ELQgd+nTzWHbgXjHHPyPU+Jq2uHfxyMIGxXT+0fB1DvGFM/tdOruJkmQrRnHzYi
         9ZXIiLk3EQI0/yZa5wS394kzEca5x2dyG7nMh3dp3wH+VuJF2Coip42HbLvUmtOLlgbZ
         PwGaqiv/B145OKYjFcoYx9LWq+QILy2uTraRtXrapXZOjel4LHTGSRgHL12bSjZTy1oq
         RZIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=UW7y04f2ejV4aHagYkEiHttBiIwZAG3ceobq0GeliEg=;
        b=h2Ct690rKiekIAd/qKNgmqF/d4gXJRd4iwzUJI+XDQGh0sQRFr348mp3s4levlZom4
         qAjsF1Ba5hYOBCL8x2Wvyr4WQJLtLndTznqm/LfgH3wXHo2Tif/V5YRNEaN1hZRibFUp
         k0na4BVFxbIdSKrck2ssnK+PZZI7g0ANByB2DfSzDHAjaN9RpAFwou+ur7+Uts78AF54
         vJtm3DO8AX95J5C3kDZoEwwIm7TPJDD5R92i6AU9z8FNAbB78EvAELPRNOB2NjZ7GdTI
         xBOW9WZTOt8EDZHZZojYcsutkJdvCw7Z7tlTDqGO/6nT9S1/jGMUedbrmFhu4moGBaFO
         rHWw==
X-Gm-Message-State: AMke39m1v3dbU19AUaWgm32NQoGs7bravABbXHCdMZrMgGO4fvZvfZK9ygqgbsZ8Dw7NIA==
X-Received: by 10.36.86.83 with SMTP id o80mr1034898itb.101.1487914493807;
        Thu, 23 Feb 2017 21:34:53 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id o191sm2754470iod.11.2017.02.23.21.34.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 21:34:53 -0800 (PST)
Date: Fri, 24 Feb 2017 00:34:52 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
	linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] staging: wilc1000: multiple coding style changes to
 struct tstrRSSI
Message-ID: <cover.1487912400.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.24 (2015-08-30)

Multiple coding style changes to struct tstrRSSI. Initially reported by checkpath.pl:

Avoid CamelCase: <tstrRSSI>
Avoid CamelCase: <u8Full>
Avoid CamelCase: <u8Index>

Changes since v2: Renaming tstrRSSI and members with more descriptive names, 
    as suggested by Arend Van Spriel <arend.vanspriel@broadcom.com>

Tahia Khan (3):
  staging: wilc1000: Rename struct tstrRSSI to rssi_history_buffer for
    clarity and to remove camel casing.
  staging: wilc1000: Remove Hungarian notation and camel casing from all
    tstrRSSI members’ names. Additionally, change type of u8Full to bool
    since it only takes values 1 or 0.
  staging: wilc1000: Change name of str_rssi to rssi_history within the
    network_info struct for clarity.

 drivers/staging/wilc1000/coreconfigurator.h       | 10 +++++-----
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 14 +++++++-------
 2 files changed, 12 insertions(+), 12 deletions(-)

-- 
2.7.4


