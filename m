X-GM-THRID: 6747044768827572224
X-Received: by 2002:a5d:9446:: with SMTP id x6mr27019518ior.8.1570918776105;
        Sat, 12 Oct 2019 15:19:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:13c6:: with SMTP id 189ls1450726jaz.0.gmail; Sat, 12 Oct
 2019 15:19:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwkiBDKTsxA+FIXvVkLzt8STVNPmyg3XQoY24fXJZX/bZWc3ya/pEifWp8G1T7SLBSjBXWo
X-Received: by 2002:a02:3081:: with SMTP id q123mr27232269jaq.24.1570918774868;
        Sat, 12 Oct 2019 15:19:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570918774; cv=none;
        d=google.com; s=arc-20160816;
        b=nLEhB/wVT8rK2oY0AUDT6aJlzeogSUx5KrifUvd62Sb4f04BSuJCIJEDLEis4gNP25
         r0MgCj9ij0rf8lGUpMgZbIf+9o7iHJEpBMa6TD3lsvOsW8k3Jgj03LDAfqmO+T0A/gro
         rQxHPWndCGjqYnSSYbyJNPX+Cov+bKv2DsOn3YKduYPDCW5iZCULzXvFii/vUDw4CW4g
         f+C/mv89wAz6A6+3SmiozF8tqEjOnKxOPF3r3agYVMZ2BHR7cEtoedTj1jxfplcSFrjs
         XlbM0gbUPZBAmhh2I0yRekulpaZmHDRgusfgYjnqxRFSRtFevEmjn7sqZSTqh/LcL2mB
         PDqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gKNRZ7QA+ZEVI6VxEit6zyGpLvUFrfR83bS8N3vOnGI=;
        b=U+pLzSLdjPY59HaDT+fdcmTUpim/HSM8D+SxsZIaFROyLNJnS+oJ/rF70ANGmkwlNU
         n8JZpAfDZkU4B9iVzRuYNUNgQUgvLGfIBM6QF6ItGCNiLi6bb/UB57N2f5+Hqct9FDBh
         67xfb/a3PO3aPN1OIcYrZVIIPNBw1KyUWhIKIS7KmtmBCcYq/17hFzHTXzSvz/3Dw227
         7XzGMdmS0SoSYuKqSteET6xyCXgi8PeW7XtbjAWfjE1+tKT2mNUhYOmgIMMEQblH5pW8
         jgyPnQpVnp2LagSIGfROwn9u61cuyjKytHtipMsg0yKb4hqPTE4e6Xx9QrPGkii3IhNK
         CUAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gipVWh4Z;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id x3si200571iom.2.2019.10.12.15.19.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 15:19:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gipVWh4Z;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id p1so7838940pgi.4
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 15:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gKNRZ7QA+ZEVI6VxEit6zyGpLvUFrfR83bS8N3vOnGI=;
        b=gipVWh4ZasAHndkuZHKi4c6oaHscFQkoNJSaLtErA9RtWN1/W1yK/34E+zx9c//o/x
         GoD4zWWBnXBz0qYqCs197z+EehDSjMnLXkvmntzSWWgHqdoAsWenAlr0QDfUxSruXkj4
         rwhfeoEzJBfv6u2Gzi8+GqL7AjMSg2+MR2Nx4lccKc1qfUM+5qN0vqfz1dLW5bUib5UR
         TeFvfifcTzO7dwLGvZhts2z03PaYwtCAonqH0H3kp9Qc6iNNa649lyNJOszRZXSICc3p
         1nAsOJf2ewPZb+UwSA2JKsd9Qc4OpCMGaNojnNP2Pck1ALgEbZyAJD+AFtUZlQ1zoR8d
         rlsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gKNRZ7QA+ZEVI6VxEit6zyGpLvUFrfR83bS8N3vOnGI=;
        b=noC39POQEl4R+7+/K3qVlim3hjfJqDhRBiZqSUPxzWCtmMti9OWLc7mqkP9OZ1JxVR
         Qp737kaDLLxhHZhDCiHAMeiPVhVIV9AsCPOXbvb6cWT/sE5T6cECgj8UQ5GTxLF/1po/
         UruWhU6hjyCvUXkyduBrUIZhD0kyuh4T829uB9npoD5YimY+vYy+/ZMoOADHO48mSFvR
         3mikUzXjlTibGR1WWAzFrj3Etos7MttzcvTU1XKFKLENJzcGR+MnRslZxWs0GAHJs6SZ
         SBK1qvNdmBTWJhcuyOSDneLGj1ys84d8Ef2oNkgDR7AGhF6Q9lwxN7DEYngdbWVStild
         0NkA==
X-Gm-Message-State: APjAAAUZ388DXORvQ/D6ehQsCqWW7DjuVio7R3puuRAkaIR8Zu0+afgt
	7PBe+2oaYHrBpC3jZndTdCF8AB+jIwns4g==
X-Received: by 2002:aa7:908b:: with SMTP id i11mr24895893pfa.140.1570918774118;
        Sat, 12 Oct 2019 15:19:34 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id 30sm13839562pjk.25.2019.10.12.15.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 15:19:33 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com
Subject: [PATCH 0/2] Formatting and style cleanup in rtl8712
Date: Sun, 13 Oct 2019 01:19:14 +0300
Message-Id: <cover.1570918228.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series addresses the use of unnecessary return variables and
line-breaks in function headers, both in
drivers/staging/rtl8712/rtl871x_mp_ioctl.c. 

Wambui Karuga (2):
  staging: rtl8712: remove unnecessary return variables
  staging: rtl8712: clean up function headers

 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 103 ++++++++-------------
 1 file changed, 38 insertions(+), 65 deletions(-)

-- 
2.23.0


