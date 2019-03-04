X-GM-THRID: 6664599066779844608
X-Received: by 2002:a9d:70cd:: with SMTP id w13mr11945808otj.18.1551722890894;
        Mon, 04 Mar 2019 10:08:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:62c:: with SMTP id 41ls7813877otn.2.gmail; Mon, 04 Mar
 2019 10:08:10 -0800 (PST)
X-Received: by 2002:a9d:560d:: with SMTP id e13mr12361919oti.45.1551722890245;
        Mon, 04 Mar 2019 10:08:10 -0800 (PST)
Received: by 2002:aca:4944:0:0:0:0:0 with SMTP id w65msoia;
        Mon, 4 Mar 2019 09:58:15 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ib11a88bel6iYqpHRG69Zn/CWWm5nWz6gyZfYManxUseybTPfJjqoIjXnzheF+K5XCg6R4I
X-Received: by 2002:aca:bb45:: with SMTP id l66mr12653620oif.35.1551722295629;
        Mon, 04 Mar 2019 09:58:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551722295; cv=none;
        d=google.com; s=arc-20160816;
        b=LWWXqL5HxC9JmKjpu4dgUZvBo9CCZcby6YcjnSzlVpuQpBwT4+3GN9clwWts69iB/5
         aFm0ItTsOSp4thfa+9pvPVkec6AI6wysrvFazxv1oFuSr2xSO+92UOv4B/0tgwdIskwa
         V/gH1svA3bwlbyl50JTJP5UFE53i4U4M5N30RiyhHcW6d2KpXp/L/AcCKNZQWuXQZ4E0
         dLSoNUMJlSDssJfLb48k1vL6gR/FNHIfQT5KTdvK0TcDkWVE6NZUkYqny4vbhuV/+6/J
         /eskNO7Dt4ifYMJtxD5n4qPJSOIB1RuCmf12tK064gDqCllc0BSKTpPlahjmY4HKg2ry
         8Dfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Y/0FbkSenXqzMeydm/GTHu+8zxs9Lh8j1sHZs5ClHho=;
        b=XCqVqMm2+ZhASWf+W5gyjcOX6I7ZoQoaT6BgmELGbYbCC1uaVrd/O0KYr25xQLuqih
         CtpckpckvhQvqlHZr9+0BfeYDcILsJcA4A0alnHRbREUHAnNwe6cR0bFjkztcFzjWzr4
         nEVVeBH+XWko8OvTCfUJpNG2jZtLxxRtnYve6IXPWGq5/ETaUT/xXG0IIB0fSVaAmWln
         y1Z1iyg4alyEUwLMD/ORzGZJ1t7fvm02xFYJ5H0ETDSmpr8WP8WQq3dVUeKht5zzk48j
         awzsNRlCWlWj/hu+ivsQP06J/SaynH0tZbiI3p1/AO19eTQZGAGPPxZ0sr75dbssEfAg
         6Bcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=rqCMXQCG;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic309-20.consmr.mail.sg3.yahoo.com (sonic309-20.consmr.mail.sg3.yahoo.com. [106.10.244.83])
        by gmr-mx.google.com with ESMTPS id a188si277516oih.4.2019.03.04.09.58.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 09:58:15 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) client-ip=106.10.244.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=rqCMXQCG;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551722292; bh=Y/0FbkSenXqzMeydm/GTHu+8zxs9Lh8j1sHZs5ClHho=; h=From:To:Cc:Subject:Date:From:Subject; b=rqCMXQCGS9scMJ1uYz1oG34YhRrzlzJJ8jiZac9KJoZykSUuWEWCcrJXIThNq9H02dQ4wz0SXdyAntPmQQnGF/Fj+nL01RAoyFQbSGPUGcnf5DHIo0LntfuJVpkXVvjd93iPFC9kURBL+IkB8nb7XXqgpg6H5xZbrp2/Ulp3mKp4k9/9IiVQiNb92EEx/ooewU+dnoumkHHrHkRlZ2a8g6yr33Et82fmDWi5WQY7h7XNZRbz/d+ZooXkecPpD2wrzDmy5wQOKU7N556XNh07wDXfUMQZnA0bhmUscOPBlYB+3WWkQlEmBlXFSFb1x4tEkXPXRD2WyG6rJnFrB2M9xg==
X-YMail-OSG: A49miDAVM1nM5zos8UESYJ3AocZ6hC4YqhP5aZ5uXHyqzAxt8lCi4.twg9y.4k.
 FUoSCAlTedJ2SzWUqqCvhX08pXpyFcH4XiEWldV8J1Xa55HueEGiPggVKz5JZ1EL14YndcuWO.Wu
 BhVcWpmyTAgilmZFPHytEx8l4DZbPas36lVd_ozOkVGWznaRFtO_E4q6uYfXLWBJWV_W7HKXf8iC
 5BJ_phixbXHWB.s_kjZMI1EEVMfn5f7WHWu1C3UElJwpFfYFmf53vBi6439utn4KDmj4nFPGsWNz
 L40yQstSmXhnDQPm.QkCatXRhnLtWPWGXlYLWMcvNoJi.voDkBvQWvmN7b0gO7dz6OOZMIog6olS
 dJP0WRaa5lO4B1YWgPwYCO30GxaG288zxhEQ0mJi_gqojQuot_.K1Ncq473bUEzlQiky0CMjRvx6
 revbzAtuYstpXAd3.9B8zuyOVny__B1eBP5pj3eXFuppM7qhTp_U25CtM2351uZ02FxIpok0GFV5
 cTo9.DecRFdrLEi3Cpp3KUDR3hkxWxiABW7Oj_.Frsj4EtuucqdwJm_AD2D_7KB.ud2xAD5.JUHV
 LZzxD1FqkrlcgC38gzvYLgd27rMHuu8E9NqsvNQedav2m6q.xkZDy6pS2PyJsvqwTAX4kmtCLpbe
 s38jdZqMz_uVuoJrWDZR.WitRZisLEFIVriP4DwAp7Wc6YekbEbnBK3gitQ1ZWlERNINv9i3fYBp
 AcWxUj9eiHQ1I0fEFd_n2SQEm4eXMazjr75_GAni1YdLEclKHrPHdd3XXnFG1UN6SU1ss17SzYNP
 SklO6ajWBbCzi0WaNGUmSW9zAvjWd41QoZxoRbM1u1fLopSIiZ5BqoeyEVB1wKxVr8GSXOrqr4r6
 0CZUKIl8sNlPzQhpdmW.VRZMUCBqdaS_zonmNzzUQ3Eg.o3mgxUIZHjI5tUoFPj2f_HGIQJbF2su
 q9m3VK416RnNnYq0enzYJ8SgRboPZQFlXIZk.OvLtaJZWod.edGA2mtuTn6AppRG2AyqLnbfG6.q
 M_TXi2DEF5DFjPQzAL8PXkzuU9wCqiZ7OCicGyLODjo.TaOhVCAa9bYyUsv13zwxyLi8iMJuRHnX
 A8_I.jtLOLdS1y2egRsA-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.sg3.yahoo.com with HTTP; Mon, 4 Mar 2019 17:58:12 +0000
Received: from 157.40.35.255 (EHLO localhost.localdomain) ([157.40.35.255])
          by smtp424.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 62cc2d951ddf07b7b49a4fa8c4dcb93c;
          Mon, 04 Mar 2019 17:58:11 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: octeon-usb: Add brackets to avoid precedence issues
Date: Mon,  4 Mar 2019 23:27:53 +0530
Message-Id: <20190304175753.543-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add parentheses around macro arguments to avoid precedence issues. Issue
found with Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/octeon-usb/octeon-hcd.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.h b/drivers/staging/octeon-usb/octeon-hcd.h
index ae7ae50071ae..0ee74f63fdbf 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.h
+++ b/drivers/staging/octeon-usb/octeon-hcd.h
@@ -51,10 +51,10 @@
 #include <asm/bitfield.h>
 
 #define CVMX_USBCXBASE 0x00016F0010000000ull
-#define CVMX_USBCXREG1(reg, bid) \
+#define CVMX_USBCXREG1((reg), bid) \
 	(CVMX_ADD_IO_SEG(CVMX_USBCXBASE | reg) + \
 	 ((bid) & 1) * 0x100000000000ull)
-#define CVMX_USBCXREG2(reg, bid, off) \
+#define CVMX_USBCXREG2((reg), bid, off) \
 	(CVMX_ADD_IO_SEG(CVMX_USBCXBASE | reg) + \
 	 (((off) & 7) + ((bid) & 1) * 0x8000000000ull) * 32)
 
-- 
2.19.1


