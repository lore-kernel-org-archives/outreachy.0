X-GM-THRID: 6463725672479064064
X-Received: by 10.129.201.11 with SMTP id o11mr3593590ywi.30.1504953408180;
        Sat, 09 Sep 2017 03:36:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.140 with SMTP id f134ls2688226ita.16.canary-gmail; Sat,
 09 Sep 2017 03:36:47 -0700 (PDT)
X-Received: by 10.129.105.139 with SMTP id e133mr3539263ywc.4.1504953407332;
        Sat, 09 Sep 2017 03:36:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504953407; cv=none;
        d=google.com; s=arc-20160816;
        b=edgqKLqP8v0zjuvsuLRelei5hvegbj0G9nQLRTj4HmEdnr4mizXVlNIU/KH7Az9ydK
         gew8PDtvVYyglG8pIhEQ/+2HWKF25YAMUiDFowdoPItdBYkAjKFxiXHtTFazDZNUtCk4
         LHXXmK7kj9S8f+xGvkNneisXBZVcP8kv8E2UxOzYuXUIZLFvrwnOh2grNvOaK1P/6OAT
         PWcTP473GYCP1hSeIeW8HM9jSl93BdVbwsphbj7Y+CwTRRn6aErAhJgnUngMGwmw+F21
         qRIYaUMpQpGTJEvoRDp+EBZKjSB1buCx+czAphzN7pdhngSiCSsko0MrFxgA7RU7aVUF
         7qbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=yGLR6xNG+EYYtfDb7lbxKBZj+jJrNHmzm6mpt8yzHcc=;
        b=cJUc3xD+3ACKh8137Iats8DS8zVmmgzgMZ3uycHlW4YyqbnwY97zwnAInGOwIi5zuV
         L0GkE1i7gMn4pomTZGss4FpMh6Lo6J9DjmRVSel855wsZk3ZaYfWt8sOwWAqoW0uB9q+
         zDZDj+x4ci8mMTRBG44sfUX+GjP6F1jMUC65JZebt7CxPrTpebT3A9gEq2uEWrKbLcCe
         G/9GSgvYUoehQyG5iqv/4sDsPCwIYnbuQ4az2EWTjXICLzepjowcV9qHEd/Uws+8UwXH
         Z7o05uVTpKaiybzaVJ0B+ESDe/UTmiYWQF4C7G9eSxYhfNOWGUP+5tV4b387QJOXu9xC
         sXSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D0Dhcj4i;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g19si477198pfd.14.2017.09.09.03.36.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 03:36:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D0Dhcj4i;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v5so2423703pgn.4
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 03:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yGLR6xNG+EYYtfDb7lbxKBZj+jJrNHmzm6mpt8yzHcc=;
        b=D0Dhcj4iq+3R0KDLksFwqTNmMr86Xerb1WcxpLtxvFenwE+VMwercgyMgWtFltvKe7
         NdKgcZ7k92Iqyf1I7J5xQNdG0En+WMttZsp3yRLB07kNcf5gEHBwJwJ1qpXjO/5Q9l9f
         2pdxRNANAmosgTXOmN7r6cjv3BrpLhmiQjwE3ZT0BCETkydAdCZMZ3fQe3gddHbl7aR/
         AneUr6X78GD2VeZBcl7z0POlWamLya3A7B5JCP+wZ7YiO3WLexEou7PSbJDkWU1r+aTg
         jmF4gAC/WgkAasT5H+hOvgfJ3UICr/CHEyqXuvUd2BHX0/kCKSoSrfnRSBK88tQ9yQe8
         1OXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yGLR6xNG+EYYtfDb7lbxKBZj+jJrNHmzm6mpt8yzHcc=;
        b=uewojiK0ATntspSu3MF7IJkBJZ78WdT09Bp5UWMrojN/FmRVWGKliwKppab2QqPUOI
         S0hMHmg0qDNHcPe+aVw+0t9r0WzGWCddNxQGW/qWijw7yP+Jy3OQovgngCnnIVEABm49
         aPAy8Jcli3k306TOPzUb8T80sBF1UX8KL6rsS8n5JjIos775Pv2OKWXgzC0VwUFGDo8l
         JIX/Z5hDkO3Fig8D2kHujf86vCl+utWsrv+3oLCgD53ntMroPrcgb9boNikjbWkZ1Ibo
         peVU5kPsZxGpUy5M+kl6+eD15nI52BCCeUKnFlzuBkJ93+m3dZ76YXXDdKZ0CdFuzeKV
         RwdA==
X-Gm-Message-State: AHPjjUju/LCfIhJ0eq6dWIywdxc2gBygHvUAq+sgZHIz8bTGGG4yUIks
	eGTZe85jOv4h+g==
X-Google-Smtp-Source: ADKCNb7nC/j3OJhrcldiKHQDEhflVO0v8cM9SIoKkkjPA0E5U/cIHpauE6Quw49q1eP0AqbG3baYPw==
X-Received: by 10.84.247.135 with SMTP id o7mr6578695pll.150.1504953407122;
        Sat, 09 Sep 2017 03:36:47 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id c2sm7203185pgq.61.2017.09.09.03.36.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 03:36:46 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	linux-fbdev@vger.kernel.org,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: sm750fb: Remove extra blank lines
Date: Sat,  9 Sep 2017 16:04:47 +0530
Message-Id: <1504953287-14740-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

This was reported by checkpatch.pl

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/sm750fb/sm750_cursor.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index aa47a16..6b27b06 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -18,8 +18,6 @@
 #include "sm750.h"
 #include "sm750_cursor.h"
 
-
-
 #define poke32(addr, data) \
 writel((data), cursor->mmio + (addr))
 
@@ -45,7 +43,6 @@
 #define HWC_COLOR_3                         0xC
 #define HWC_COLOR_3_RGB565_MASK             0xffff
 
-
 /* hw_cursor_xxx works for voyager,718 and 750 */
 void sm750_hw_cursor_enable(struct lynx_cursor *cursor)
 {
@@ -134,7 +131,6 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
 	}
 }
 
-
 void sm750_hw_cursor_setData2(struct lynx_cursor *cursor, u16 rop,
 			      const u8 *pcol, const u8 *pmsk)
 {
-- 
1.9.1


