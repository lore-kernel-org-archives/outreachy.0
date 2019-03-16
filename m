X-GM-THRID: 6668964143803924480
X-Received: by 2002:a1f:ae53:: with SMTP id x80mr5355975vke.8.1552740672420;
        Sat, 16 Mar 2019 05:51:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7c4a:: with SMTP id x71ls1635154vsc.1.gmail; Sat, 16 Mar
 2019 05:51:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyb39KupSk/HavJDPk1XjOPa1UjTYeCxgggLtC8ndTHRs2v+XcCb15TGZYsdo2VVrzbD6Pz
X-Received: by 2002:a67:fac9:: with SMTP id g9mr5244082vsq.22.1552740671760;
        Sat, 16 Mar 2019 05:51:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552740671; cv=none;
        d=google.com; s=arc-20160816;
        b=ig+E7/BeGzBhxrVn2fxTvWxeI9yOLtC6/VotG2zY6PjF1cVnCaeczNXIyYmxP1N4wJ
         mRpz3zN3EmqdVV+MnLPP/phBHNRV/MInZr5Ago1u3ietANpzp+TsvjahQB8UKhTBKCJh
         g5BlziVB4ilJ5jw13LRY8WkwLFnZFp5jt5Z3VsPCMQ6kj4Si9kNTvy4wVazs1XsOfa4G
         ezEL2/ymVUy8RmeEQystR6+CsUO9o3LGKdTw1ZSfRTlC5xN6B/QNaBw8kT+L5Vhiue4r
         XZEXc+3iSNT6hKaVLmBLkaPSlhay50wbamV45SKx0UqFD1vX/2o6zhOpRJhFHgvfImrg
         cWkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=QaQmtTAKH4dqtC7pmP28MgFhOHc38rYu3/CRADw4T14=;
        b=Mo/FALImhYdNtK6NU3jZmt2NzqvKtyN3LLdvCwcAJAD+TAQJvHWOyPA3U0u+D/UCqS
         ZMxlgGbIM9tCfegmzjIBWrZNCKLXp/4HWZNnFEM5k/wcPfXdijVHUPsO5TLwKNhQII25
         05zg0ibX7NVNaEgGP3jP/0goO6mXG7F5MK5/T9HV3aMV1dp8ErjznDW7xS9w7L0b4Mea
         P63ypa1tL5xNCGl49pDMDcvU++EiRqQ0SxfjAyrmg8KXkfnfR25Pg7jLgP6iLsyquSYZ
         sXeRqwdLtS4KFSqe6DI4Uo8QEnOeumIplwr4AGSLeIxO1I7vyftCPXihJ1UYLGKAX1xe
         lcqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pp6+fXtp;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id q85si290668vke.5.2019.03.16.05.51.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 05:51:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pp6+fXtp;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id l11so8292108pgq.10
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 05:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QaQmtTAKH4dqtC7pmP28MgFhOHc38rYu3/CRADw4T14=;
        b=pp6+fXtp3Z3H3u3JWQrP4zUf+M9qqIUTxqfC6N8lBtLlPmyD55yCMJkwNasuqvmGVM
         oNGFra/XbGFV36s0VWdBOY4yzonO9EplWLTBqbu51LyhoRwiF2jjh5ttt5JwSS8k4RkA
         QUbCnkrLV7RQCFvc1y0f1n2Ce/ct1YZshFueTwbTWAzTS5VqhONptRNAF69TYKTPo0YA
         91eMTgRpiUV5YaK+Ig9DoHCFUhXYze5UtCFCFuR6JUcXsZ15Ve+FXfNz2+xo8bokk6eq
         T8DGRaIBLKmLHB0QEdyQknIQxiato0ArYSFy1ZoyBE21slVYNWtd1ltB9n7KzGk990eX
         IuCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QaQmtTAKH4dqtC7pmP28MgFhOHc38rYu3/CRADw4T14=;
        b=fiOID4nn7wR+uslsJEvx9NxGi00R24L7k3v5EAMilFldXS9Uq5tuf6XrEGG1trvbXK
         7wNltvuDQHvTONcxQdu4jaF6pNn4B0ksc46WfLe98UAXBm6I1lJ0+9mOBHXVGOKYUbal
         lb29l4LiF1v6Jd+Biq81jP+/f4j01poC4mQHl0pFCp3GB4KpymQ2ffLo8s+h1VncHsaG
         MxvAEYoJVQkj2l5ETgjXzaYYS8a5sN/VIWdh1BBoM3frot55fP866VnTYIjb+CCFeWf4
         fJ5z+Yb6SC6PaHgitLnNkDUfwe2hL3/qGS0Tb8DMRw/WE4lsp3aoU5UXxBf07M/M+/2E
         Xs6w==
X-Gm-Message-State: APjAAAVAn8oDD5CF4Cm84DYKPs17tdOONiElefB4WOXiMb09rlm8erXg
	tLI3qEm90QGgbfvm4l7Fa+s9HCXf
X-Received: by 2002:a65:6219:: with SMTP id d25mr6345616pgv.155.1552740670535;
        Sat, 16 Mar 2019 05:51:10 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.93.114])
        by smtp.gmail.com with ESMTPSA id o2sm6462674pgq.29.2019.03.16.05.51.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Mar 2019 05:51:09 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] staging: greybus: char * array declaration as static const
Date: Sat, 16 Mar 2019 18:20:53 +0530
Message-Id: <1552740653-4845-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

changing type from char * to static const char *const

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/greybus/audio_manager_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
index 6ef7381..f673e58 100644
--- a/drivers/staging/greybus/audio_manager_module.c
+++ b/drivers/staging/greybus/audio_manager_module.c
@@ -158,7 +158,7 @@ static void send_add_uevent(struct gb_audio_manager_module *module)
 	char ip_devices_string[64];
 	char op_devices_string[64];
 
-	static const char * const envp[] = {
+	static const char *const envp[] = {
 		name_string,
 		vid_string,
 		pid_string,
-- 
2.7.4


