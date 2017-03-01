X-GM-THRID: 6392549731830071296
X-Received: by 10.129.118.12 with SMTP id r12mr2948575ywc.169.1488381468822;
        Wed, 01 Mar 2017 07:17:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls1340563itj.3.gmail; Wed, 01 Mar 2017
 07:17:47 -0800 (PST)
X-Received: by 10.107.19.74 with SMTP id b71mr2824238ioj.21.1488381467942;
        Wed, 01 Mar 2017 07:17:47 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id s64si762255pfk.0.2017.03.01.07.17.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 07:17:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id y23so3895566pfk.2
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 07:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Qqrh7nA8O80YAH2FpWYj2Vv0QJHJy0sZm/yN9oxGxEw=;
        b=ZQDN5+B6j84aaZ7VEcXBgSGNtaqqUCjcZZ8MZeEatNTKjU6CtaOFjxXEG4sjUtZydU
         c+r7yr40FE1G/UsKMtSE0EuRq00Bshe5A1flk66TeBXAoGa1RAvLY4bgf1GK+zkuwWbD
         VOwOhqLnr7AshJ6BsOmZeahr4Tc/E4x4CvqazoVtIThNi5uF6+8ulFnbqguTHntH48OT
         fA6wZsBe9KvxcUIHXwAStVtgkGZKgtkfztt1fM6vsIrSZHKeu+dXZHP5mSpo7Dw5A4Ax
         c4Mx7W8KoUVjXtE5eclCZIyaCpSvFWzuxmxQQCs8XBGxbHp5CjkmbwdTmbdZlDmPwQ9p
         GVKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Qqrh7nA8O80YAH2FpWYj2Vv0QJHJy0sZm/yN9oxGxEw=;
        b=Au0KewNHDQvQ9jSadkGphPXkjCrpIuU93WIfDheGtpxDlOHTWzoE/Ph4GnUmZ8aUWI
         aUVOQJHgNhCOOvVIhPmqgG0gRm55cKrSY+3V7KDYxWeIZT5MR+KquvUBMT2v3r4rBH+5
         ZKTJCfDKsjnmrDYW/hptNiyAOCq4f5wajTzwj3DnvALf6mSmBbMplE+twV2jxHfLuoO4
         rL5JkP51W9HqNvTMRa4x9h1c3B6Qju/vhUdlUAnKHTc0fGcb4s+PR9WlaksYKUp1Eb5A
         HoDxMACgJkveyhJ6eyKixvGEVNik4v5VdHXbho2uKlrTFLKwlQc6SdQWloaHfxPTB9qT
         GbcA==
X-Gm-Message-State: AMke39m/Ie3XWtzVKcM6FMzS5+C6ILGWFd1p8tij5lvUebXQotYO/nf+ZtWa2Cj0aEi6iw==
X-Received: by 10.99.117.3 with SMTP id q3mr9454810pgc.222.1488381467702;
        Wed, 01 Mar 2017 07:17:47 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id p66sm11292806pfb.88.2017.03.01.07.17.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 07:17:47 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: rtl8192u: constify ieee80211_qos_parameters structure
Date: Wed,  1 Mar 2017 20:45:26 +0530
Message-Id: <1488381326-7061-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Declare def_qos_parameters instance of the ieee80211_qos_parameters
structure as const since no modification is done to it. It is only
used in two other places in the driver where it is the src parameter
to memcpy.

Done using Coccinelle script:

@r1 disable optional_qualifier@
identifier i;
position p;
@@

static struct ieee80211_qos_parameters i@p ={...};

@@
identifier r1.i;
@@
+const
struct ieee80211_qos_parameters i

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index b631990..bbb5f58 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1814,7 +1814,7 @@ static void rtl8192_link_change(struct net_device *dev)
 	}
 }
 
-static struct ieee80211_qos_parameters def_qos_parameters = {
+static const struct ieee80211_qos_parameters def_qos_parameters = {
 	{cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3)},
 	{cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7)},
 	{2, 2, 2, 2},/* aifs */
-- 
2.7.4


