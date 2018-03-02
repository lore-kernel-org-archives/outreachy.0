X-GM-THRID: 6528173745715019776
X-Received: by 10.101.81.10 with SMTP id f10mr796709pgq.58.1519958895256;
        Thu, 01 Mar 2018 18:48:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.102.195 with SMTP id a186ls1724817pgc.4.gmail; Thu, 01 Mar
 2018 18:48:13 -0800 (PST)
X-Google-Smtp-Source: AG47ELs7z5ZgdapV+43w1QAC76hwWSO5gHG2L2EAwZoaLNhmhiVnubFtsdk+4FZYCa0NmQq2WqJ0
X-Received: by 10.99.106.7 with SMTP id f7mr804712pgc.33.1519958893900;
        Thu, 01 Mar 2018 18:48:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519958893; cv=none;
        d=google.com; s=arc-20160816;
        b=AwinxUtZQcaZPq+pCSoqNbtGp0X0+R7Ob/JeQBs8mD/YSQ0cXeTkov2eFNpMpmrrMb
         H5FYLPy6D+UjCHpnbKdR2nT+H6ODpp+J8exYlfprBDDdUvMOB9ux4CP0J64GY7PT/eSN
         UZ6gE0Icx2BlTYqNBp/6/zwezFXa5ZBSYu6py1lCzoUZz2bUmEcbBNoCwGMLc/PR+zil
         JuXuEiW6MN4E1Nn15vWo3pe+8exJVbeUPgrRLkh/fksO+hxvMI9va+Gur6CTvUa9ZiNq
         MWJUgDqk3ltYdrny6hV0D9AmlVEsCKpAe2QSiSASXTMMa7x26Hrj5jUiYrrH6rRTIDmR
         XTzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature:arc-authentication-results;
        bh=8lXCtt5fUNlOceIxx94o4ZjvXbWOgNSekMHzQa/skRA=;
        b=TX9qIn4oxXzmVev2S27mdWzvRnbcaMf08Lxm0fGrb8H4NOn4uJs9kTMjTc+anxXmQZ
         JpU+y5qMLoChO89rQOzZGu8m03KOQmQPzqyfk8jPi9quv5Or3p0i57RdVxn9NHIaAE5A
         gzFLLt/C7XiJvIAqqvEF6brp6j4EilRWPKJDNhz/tlGwcO5eWW6lqYE0qY2vGyoGYGMF
         2JvaMTIyTablWa9kwl0cy76ieZMgOT/EgfHh7UY1Obz9VJ6LJuc5qCWcQudKA4IaRc8U
         e+tfEoDfPd7Ju6dfMeDM2BTZoY/Gf4PFd4JSv/j1wHL6WccSI6wEBklntfOxYRKTvP9K
         Mywg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q8YYSASB;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::22c as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x22c.google.com (mail-pg0-x22c.google.com. [2607:f8b0:400e:c05::22c])
        by gmr-mx.google.com with ESMTPS id f26si85606pfh.2.2018.03.01.18.48.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 18:48:13 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::22c as permitted sender) client-ip=2607:f8b0:400e:c05::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q8YYSASB;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::22c as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22c.google.com with SMTP id e9so3166562pgs.10
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 18:48:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8lXCtt5fUNlOceIxx94o4ZjvXbWOgNSekMHzQa/skRA=;
        b=Q8YYSASBrfmvtWfynbSwuFVBSK1o4pqI9xyjlnkb9uAOHKodvXbrN4sS/tGidx7wu1
         7PQQpI0/q4l+CDTpEacaD+dxRbgqG6dd15iqH0wrn+9XZQP2ENx4qkn/3+g1bDEuafjd
         mOMkN0Ltc6MsfmA572xETiy4pbtGldjJwLTpyilvJ+kjpqRo8/Ho1axJ6GgDgTRp6CZ+
         4WQi+HbeyyYg/iTKDKUIOgHwI/YVoa6BnU66i3qLq081KzJ89UC82KFKu8vKLpDxQmOS
         52HzCTkwe74eaXZRuh2hQUYxCCVBajn3yMNE2FgUjxFS1RGGCNKi0b4IU3AXkd4tuNLY
         rNvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8lXCtt5fUNlOceIxx94o4ZjvXbWOgNSekMHzQa/skRA=;
        b=fr+J6WaENyTNtyAXwP9PO4/U79xTdTpxJUOXymsnLmJlW9CwgSmZLnPhUsD+cqrwZi
         6TjNe0Pi3eqwPDCs4OVIGtfXWXdzVDpTZsv+0Vu8Ej9mNmYiGjRjr5SHkA56ZOlau7AR
         BdONRfPGfJKXBPPbRmZzEJcY2WEEJlncOKrmWJehQt8IEy51T6rM4nJaFbEoqtpIFnv9
         DwK/GJ899VhVB2nqosyPzi2gbkFbkKrPlHv8FP0UyasX2exySS9Rw+3ZCOEuYFdorlBp
         UMs1igeiDxl3QnFYQR1KOkZGbcJcWYX41yPpBCv8pqFdVRw9XCakixQrW1jdu3/tB5o3
         CcBA==
X-Gm-Message-State: APf1xPAdh7X6opYOZiFWtLqAM0HmK1w/TF18noa4nyAWdQ9jhRM1iFsu
	r6i7vQ/ZFxscQeqaIvK79jWuCg==
X-Received: by 10.99.125.78 with SMTP id m14mr3300774pgn.391.1519958893153;
        Thu, 01 Mar 2018 18:48:13 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h17sm11302106pfd.64.2018.03.01.18.48.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 18:48:12 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
X-Google-Original-From: Arushi Singhal <arushisinghal@gmail.com>
Date: Fri, 2 Mar 2018 08:17:49 +0530
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Fixed 'tabstop' coding style warning
Message-ID: <20180302024749.GA16440@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace a mix of tabs and spaces indentation by tabs only.

Fixed checkpatch warning "Statements should start on a tabstop" in
rtl8712 module.

Signed-off-by: Arushi Singhal <arushisinghal@gmail.com>
---
 drivers/staging/rtl8712/drv_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
index ae79047..ede99e9 100644
--- a/drivers/staging/rtl8712/drv_types.h
+++ b/drivers/staging/rtl8712/drv_types.h
@@ -161,7 +161,7 @@ struct _adapter {
 	u8	EepromAddressSize;
 	u8	hw_init_completed;
 	struct task_struct *cmdThread;
-	 pid_t evtThread;
+	pid_t evtThread;
 	struct task_struct *xmitThread;
 	pid_t recvThread;
 	uint (*dvobj_init)(struct _adapter *adapter);
-- 
2.7.4


