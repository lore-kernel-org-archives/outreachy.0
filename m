X-GM-THRID: 6671730149569855488
X-Received: by 2002:a81:1b52:: with SMTP id b79mr14940241ywb.285.1553383225809;
        Sat, 23 Mar 2019 16:20:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:e6ce:: with SMTP id p197ls4914310ywe.0.gmail; Sat, 23
 Mar 2019 16:20:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyPvMTsg3/3PgO+pqfKBg2o3xpgY9UK3KnMMx+eP+6C+O3MPf4HLPDceD5TVX/YfnvgJH86
X-Received: by 2002:a81:4f01:: with SMTP id d1mr14629515ywb.326.1553383224617;
        Sat, 23 Mar 2019 16:20:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553383224; cv=none;
        d=google.com; s=arc-20160816;
        b=R+gzs83+dGklVU8wMOEzQvYQOwt1vFaxknwAhxiC3XaYpwrm0iV+ieUbLlSSlDDH6Y
         rpGGm9nHrzIDa2pvpokjchYUpUIw8M56dgB9UqXtNmLXxZvaxuO2VTa3S+evSc6URQT8
         kNUhUkRpFfBzcyDnnwkmm73o4d10z3MVv607y5xc77UYgkOpsY81Tlwwif9COS7iJ5In
         JKUv+Ah+sYZ8XkOMm7IgFNWP96m/MeWZytGrgXnFph2kQvP+QnNX0PQVsMoKttIAn+mO
         JwIkrqcug3GbdSR6/Wu6GT+aPqCdfD4aOONjkphVqKPNkLxBsF/rELVRQW80Tm+vaJpg
         vu3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=TPkTk46HXEWCMzJ1uHBmV3+i6Pvu4Rc3YMySHtdtg/U=;
        b=Q/WBu5+NeS6Nphpiis1ax6wZjPGjbB5/lNv9ulGlV/TGteBMCNeGsQpzHdleTiSBaN
         ctqWoMC0WW5mSWKqw7t3UyBXyEMUcMOSViPY5hHcQI3BFNmuWmM8+f1cl3yUv/FqtA2Y
         o7n8byFuXo4f76RLsMHcqwG1KhmuyCLjTpo5BZ1Ol1ATqWptpacM2lslLfkAG0+IecYt
         hb9XZKsZcigBSheqYZUGulWOfPl0NrXmz2dLTL+1ubfrcE+tz5niJoPBWUDmd7D9EB6d
         gOEaMcP/FRX/KFlM3yDNQj/uAOkdv6iVIq5YBg+vGS5dPKnrtZnQThtJLStaoC5QFNOJ
         5P3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SMDug1fT;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k62si878749ybb.4.2019.03.23.16.20.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 16:20:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SMDug1fT;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id e24so3017439pfi.12
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 16:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TPkTk46HXEWCMzJ1uHBmV3+i6Pvu4Rc3YMySHtdtg/U=;
        b=SMDug1fTNHTuSze6iOPlx8bRBr/0ySoi+owx9QFfjcOXl5f/uOj8EUkGEOGTr4ZB9L
         s2mlElOJy9NMwkm6hf5a6YzfIuBEDZae4mZHD1zfoV330ZR9J5MyDMPGwyEXuIGZyv1h
         rvdVIciSInkC5VrPhYxjyq1NoCyayzQOMswHgo6VZMTeCLdwLADyXxTGpVPQFDOS1tXo
         CPDBfWrbdAobm80RXo1E3v+Dq/GVlO5rCZv9B7NfQWVl4saCd/ch8y/xsh0QdBCmT5k+
         3hU4m+Pi2225Y6+K09z76ARmtYUzSRS0iqIZwlrfgCWCmSVZ9bOJUiW2ur9T5CqqjUPP
         aYhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TPkTk46HXEWCMzJ1uHBmV3+i6Pvu4Rc3YMySHtdtg/U=;
        b=c/Hrl8A0iNB67eSoZ5Bdh9vOyKcaYmGZHeXSmxrFMd3mYfcmQJDfcL2AbR3gsKSGPG
         mIiBgh+yPCkYs9g8x5014hoEtVFU3/7G2MQ4+8geglnYKCXdZPXhHooEgdPsj8XJwxeX
         7BI2toGZBsit4yaF8/cxpvjrNJqrOfIi/xBrVyf8edvkkpZ3h2NVg6XEcdIEcx4LND0a
         Wf5FrtaqzzB/gcRfIuQVke5lXw+jncQq12EuzR7otZrrmP67mtqRxR/Aw+5WrH9VLzaA
         tc+2CcDza8LPj2ccW3gIoxxHJkV19DfaJu7qaihzkwTxUPyG7lHpF2Y1WzcbjxhGbC1i
         kkqQ==
X-Gm-Message-State: APjAAAVR36fy0qDzFPOxHw+MbNSM9Yhs9328sU8TmYlno62+797S0YSV
	hz2ey9uE0MyR8SV27PLoenR3Z2r8weg=
X-Received: by 2002:a62:ed08:: with SMTP id u8mr16613057pfh.200.1553383223659;
        Sat, 23 Mar 2019 16:20:23 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.188])
        by smtp.gmail.com with ESMTPSA id o5sm27475102pgc.16.2019.03.23.16.20.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 16:20:23 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: media: zoran: Use unsigned int instead of unsigned
Date: Sun, 24 Mar 2019 04:50:07 +0530
Message-Id: <20190323232007.10799-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace 'unsigned' with 'unsigned int' to get rid of checkpatch warning

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/media/zoran/zoran_device.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.h b/drivers/staging/media/zoran/zoran_device.h
index a507aaad4ebb..20bf75dfbb76 100644
--- a/drivers/staging/media/zoran/zoran_device.h
+++ b/drivers/staging/media/zoran/zoran_device.h
@@ -34,12 +34,12 @@ extern void GPIO(struct zoran *zr,
 /* codec (or actually: guest bus) access */
 extern int post_office_wait(struct zoran *zr);
 extern int post_office_write(struct zoran *zr,
-			     unsigned guest,
-			     unsigned reg,
-			     unsigned value);
+			     unsigned int guest,
+			     unsigned int reg,
+			     unsigned int value);
 extern int post_office_read(struct zoran *zr,
-			    unsigned guest,
-			    unsigned reg);
+			    unsigned int guest,
+			    unsigned int reg);
 
 extern void detect_guest_activity(struct zoran *zr);
 
-- 
2.17.1


