X-GM-THRID: 6669418726059671552
X-Received: by 2002:a05:660c:2c6:: with SMTP id j6mr8393819itd.9.1552845054222;
        Sun, 17 Mar 2019 10:50:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:90d:: with SMTP id 13ls2840122itm.2.canary-gmail; Sun,
 17 Mar 2019 10:50:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy+nIWMT0vCyq35yV3zFTTcSri/AzEBksSudI/39Yglpn11tCtOL0MXt8ZzT6+Wme0EaC3C
X-Received: by 2002:a24:281:: with SMTP id 123mr8021476itu.29.1552845053378;
        Sun, 17 Mar 2019 10:50:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552845053; cv=none;
        d=google.com; s=arc-20160816;
        b=U9sn7jGZyAX0xXBGOF/AcORz0vrZEvHIxBO3HyWubb4wFCYUjxBH97Oi2jaezBB/i4
         pWFGhuB9dwc1AYFm08hXFd4704ON5ouuPQzFh9YWP0A5eUn8afVeNXZzBL/TkwtBVykd
         fRvW76Ca8mw9YeZ4tb19nQ5yzpqOV4QwtEJV7SyWWacwxOJMTLSFXgewIYWcjOxv2SbY
         RTBnkB3NjhLuhxa0rKfMjn3TkCw0MFR/Xi1/grKPfZiPinARCO1a4ktPbmwF+jv7q35r
         tKtoM5toYKe3Tq0g5b1Ex/cRi0dSGjNeL+oxlDIkYXu5IKrCnBi5b8tzyfsbXQ9D4GCD
         MqZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=e52da1ZJS3vca0jhx0+6Y85+VPoaCDLtPASmm5TudB4=;
        b=j+ieIxG9Hg+AHWj8v6IlLvTZOP+bkTirnGwNfaKOU0QYbnL6X0eOq5CtwFS3DKDg1W
         wK8s2CNs8QcmGCeGgGTINyqAqt3LUiKxBmvpMAcJd3QMWO/8RyBGT3eNugo3KokL91mk
         2inyJwIvN6CZoF+ifaKjI8lEYu0ceuBQHYU0SVcXceaS7TGEJuVZMb7vT8M5SHjS/zcd
         pA+srvDVKPifQHodtKazIUlsZXt5hbX8510R/chQvtly7Vwl3mM011BsHrm25EOQloP5
         NnkPKpU7ghp4abGdeFS+2rOAhgN6wRwgj2+Kfp0oF636UcYDSZj7Rng/iRWV5FhJMCPY
         7S5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aVvzxYZy;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id f19si387519iol.4.2019.03.17.10.50.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 10:50:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aVvzxYZy;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x430.google.com with SMTP id i20so9664488pfo.6
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 10:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=e52da1ZJS3vca0jhx0+6Y85+VPoaCDLtPASmm5TudB4=;
        b=aVvzxYZyoKFrxEB9g3EkEIKrHUyXEJj1lWOla7xsYtBKYRJ3QFlgDQoByw+HmEA/26
         vLOQl5js2eJ2wQLYeLNQWpDR7hfL2H9K8tPul0azRb7F0PSaxE5XiBaffyE0f/ZhvpFQ
         f3JlERAFT14bPfA7FEWiLEIWGCjqxOiYb2GtvPnU/1Ir7LcFwFgVhL9ZwK0Ys/dLamTz
         YeomnKyms6GQhp2HdkgC6p/eQt0AUZQbMxsEmvL02F8KxLlZNHU3wCQThIQY1lxeWdQd
         i+Vhs+K3bpV8fvvCwUExNZ/HZve6WWESrbhT3VtjDfx61lvcA/wPEljFhROppf9UYgOh
         +sqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=e52da1ZJS3vca0jhx0+6Y85+VPoaCDLtPASmm5TudB4=;
        b=dJ/7Kf/MaH9y7r9dRVYu9jt35FiYWuyYRWSy9vQ7SuwbgX/IwAVC+XIjzhimuxBJGk
         CtJnNBie+FCoYjtM3E1p8OA22sfaoWl+j18T+tHR5hZfGUJcqeTpPD6bEOlDYQr9+l6W
         d+LfzYyjtO0JkyltQHto16DMoFoSmVGlZq0mCPrKfZ40yILjf0044xxQPuEYzPYo39UK
         Mo/c9MiNilU7gy8ZyFnpX1chwGg5ci3UpaAB404lS5OxCfbHbI/8vYh54c2K6LG4X2GX
         s7rD33WNIpeeQijR37z/4S0K+bhangrQJjNTiVt/0I44pR/djCuxqGkSvKMvkwRot01f
         Z5SQ==
X-Gm-Message-State: APjAAAUhn0Xzkmvpr2oLEqdgdif1i0d5+8y06jWAKHaxcYmWPa8mrtUY
	7hdKTtmP/Oc2MqltIZS1H6A=
X-Received: by 2002:a63:69c2:: with SMTP id e185mr13775312pgc.4.1552845053145;
        Sun, 17 Mar 2019 10:50:53 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.8])
        by smtp.googlemail.com with ESMTPSA id j8sm20070pff.183.2019.03.17.10.50.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 10:50:52 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: cdc: ad7746.c: Fix an alignment issue over paranthesis.
Date: Sun, 17 Mar 2019 23:20:41 +0530
Message-Id: <20190317175041.4077-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the alignent of the line which match the open paranthesis.
Issue found by checkpatch.pl semantic patch results for ad7746.c

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/iio/cdc/ad7746.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 0eb28fea876e..b82c104779e4 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -232,14 +232,16 @@ static int ad7746_select_channel(struct iio_dev *indio_dev,
 		delay = ad7746_cap_filter_rate_table[idx][1];
 
 		if (chip->capdac_set != chan->channel) {
-			ret = i2c_smbus_write_byte_data(chip->client,
-				AD7746_REG_CAPDACA,
-				chip->capdac[chan->channel][0]);
+			ret = i2c_smbus_write_byte_data
+				(chip->client,
+				 AD7746_REG_CAPDACA,
+				 chip->capdac[chan->channel][0]);
 			if (ret < 0)
 				return ret;
-			ret = i2c_smbus_write_byte_data(chip->client,
-				AD7746_REG_CAPDACB,
-				chip->capdac[chan->channel][1]);
+			ret = i2c_smbus_write_byte_data
+				(chip->client,
+				 AD7746_REG_CAPDACB,
+				 chip->capdac[chan->channel][1]);
 			if (ret < 0)
 				return ret;
 
-- 
2.17.1


