X-GM-THRID: 6670850540425969664
X-Received: by 2002:a1f:96d2:: with SMTP id y201mr2434440vkd.44.1553178425185;
        Thu, 21 Mar 2019 07:27:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab84:: with SMTP id u126ls920619vke.0.gmail; Thu, 21 Mar
 2019 07:27:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx8zN/YbkTHTeh78NNvoMeTtaBQSvfCaBm2E36haMPXtxFMamlIqAbjFpe3YXCUEIkMEpGc
X-Received: by 2002:a1f:e4c5:: with SMTP id b188mr2352545vkh.70.1553178424456;
        Thu, 21 Mar 2019 07:27:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553178424; cv=none;
        d=google.com; s=arc-20160816;
        b=UUnrOGfmuKAi98PpjmJ4zezNkRbaGo73vAIBMnE1Yl00FXFIz+NhBGAIJSlE1STXe4
         rQlhcsKGmhHe64wwUBJRmUCHbH8LvRHZK9tnJ/8s6VIlR0zcgWnCZztWYW/U7Fp4GKsV
         3wYMfHPYCidxBBZzMLSeEXNq22gXvTcyTHp3QYh0XJ0quWVKucS4F/Krt4/vXeD2nanT
         aXVY7m/5FBKP5QdT3AHFK+AH77iPaz6pIsi/mEp/cThXSLZo5e/YYxDkFwkV90ym3AAU
         HM9u6oObfmLuJH0Ir5estGjHF91zoSUIx0Ee+KqZiV1IQk96N+dkrwputm/MGHEFwNMF
         i3ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WLCwnCch76azQd5RPEtKKW+c0g9DxZMWKk0iuqALag4=;
        b=B/Nihl0F0Z87BX9LyuwX6SlLn4u5v+BjxsW5TJcykb9HNmyYdOzrBAoOZss1xcLtic
         Ea1kM7KnlFP0fb6ATwMc+0yqylZ1prdY6QUPU/81pGzXAnuUaIO6f3LRKBVpG6dTBL+C
         3uOTH3VApHVwjG0tEMG4zfTDFi39ansGoYkQN1uADvQP7rPnxQ7mENxPOolvTrd0dtzb
         MSO4YpKjpy8nO6PSgNGflGf4iHOEfB1A8nr5N9YgUTXSv9PrNrDzxMok6ZQ4erARU0Xl
         SXD6/WHVel7z1bAdx16MvB1ba5oj+6WxT9+6kNHdZTdyAT/GzKBRGsEQj10mDa3sskMP
         mgKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mPB2zHvg;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id g14si134938uah.1.2019.03.21.07.27.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 07:27:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mPB2zHvg;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id p10so4416434pff.3
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 07:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WLCwnCch76azQd5RPEtKKW+c0g9DxZMWKk0iuqALag4=;
        b=mPB2zHvglwm1OHKQvdwPneo2gndC4JsQYAjgIEkyAvugEhKZiQZtaLW5dNmO68AQwi
         AlpIZKlS7JoFZBi0q4rlJp3GG5MUJY/RPGoReplEPQHk70h0u7Cuv48Z48chNzYmsS2x
         TEqVUiUfWwjrC+ceFgxe1BA14fJ67xnCm5Cxfm6WY3ulgFLcdXhdiYDbRAjyQP0sALFT
         JaUAdVTn2ZhBeEiYZrbpBCdi7ZzZok6X+e6nU0iH7yX04RmZYjDVeaMNhxIT2cr46r68
         2yKX42PZQQ1/ncyceBFrMSixwoV36qQ8FKbVUB019+mlgFZTvvhKceuW/WfGMC6LScP0
         3Qog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WLCwnCch76azQd5RPEtKKW+c0g9DxZMWKk0iuqALag4=;
        b=o7tb4hJgVmwj2HjNv4YT2ViNn5HUZTuqoAhrYN1STyoi77rnHEpUvreKNg3QPr1/Gj
         hN/yo/0Del0J3n9HYsfrlwv6l9Gd/miHmNkxVIeD3NCOmDR16KOXEMGuMrYBBaVpHppu
         2bG9dCj0+BQG6ozK/xb3BQfq/YPXDuqx+TQHzFEPf0+euJoSRqXsF7RmZ5fElVbVaV7h
         3BB6AF+CGxXsF3cZmnnNy881ROHDVqaOtBS/r/saWXF8PCguPF6QbxaejVH6s2TAA6AZ
         gYTRZs8O0zdN5wRuHVwptOTCbyHueAZqs6xyAHA7sS89Iv+wkIsCm1Zx6S5knirzSLvu
         Xw0w==
X-Gm-Message-State: APjAAAXCXa5yJ1YqZfhIVrsoh6Sc+Y86uEHyi3S8m8QR1Lr3EqUAIWqs
	Jp5Vdly1sZ0OabZqD6i7QOulT9NZ
X-Received: by 2002:a63:6ec5:: with SMTP id j188mr3567431pgc.191.1553178423266;
        Thu, 21 Mar 2019 07:27:03 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.235.30])
        by smtp.gmail.com with ESMTPSA id r8sm6313585pfd.8.2019.03.21.07.27.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 07:27:02 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: rtl8712: remove blank line
Date: Thu, 21 Mar 2019 19:56:43 +0530
Message-Id: <1553178403-5944-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

To avoid style issues, remove multiple blank lines.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.h b/drivers/staging/rtl8712/rtl8712_cmd.h
index 92fb776..366b90a 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.h
+++ b/drivers/staging/rtl8712/rtl8712_cmd.h
@@ -128,7 +128,6 @@ enum rtl8712_h2c_cmd {
 	MAX_H2CCMD
 };
 
-
 #define _GetBBReg_CMD_		_Read_BBREG_CMD_
 #define _SetBBReg_CMD_		_Write_BBREG_CMD_
 #define _GetRFReg_CMD_		_Read_RFREG_CMD_
-- 
2.7.4


