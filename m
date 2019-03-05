X-GM-THRID: 6663618170330284032
X-Received: by 2002:ab0:664d:: with SMTP id b13mr2094799uaq.8.1551803528656;
        Tue, 05 Mar 2019 08:32:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls4342004vsc.4.gmail; Tue, 05 Mar
 2019 08:32:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqyD8ze2ImOhd317MUPWwTduuG200moIWMibvpbNnHUnMtwVnPpoIySu0hXKdHi3DzMxszjM
X-Received: by 2002:a67:f983:: with SMTP id b3mr2023510vsq.16.1551803527741;
        Tue, 05 Mar 2019 08:32:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551803527; cv=none;
        d=google.com; s=arc-20160816;
        b=Wv/XNv0JNb/cn3udPOMSKzgRgjxekAoyUexPnjM9zH6ji10DQcZYVYLALq7LwjZMwU
         Rju3UI3TnUHPtSW42Uqj0hIl1T9UorJfHHOlrIJDtuf7UvKOy1CkLrHwQzKzRS3cwmvZ
         z3p0WW6KEIjCNG5Xytaw1Qp11JqLU865bSLVxtP6dgIINQOl9eeKQVIJJG8IM4X8yKzj
         2VIRafFnYzjGopCgfe/new7O6TzMjoM4pexLmHVrRDk8MjvvzM1Dy9Xrus/Psp9IjA9k
         7PDHOnZMG1UnbL5JTEUNMlYhTcqcxdsWDtKq5CeB8KEC3HRFb8ARp+vsSrLQm8eTap0W
         DLeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=kNYHfViUQROGvmIXz1c9a51GTRVhWCDwH77yMBdt3EE=;
        b=PhfTQRCf2jz3MNI0DO8xZa+PxVog42vceQyFlEip1HSWtYxtpSJB4yyDHlpJfdlcNo
         5DHbCZ/t3xQueac1GMN0x6TEj5P4sxLOpMUCxz11w+6PPYzLf2G/pjEUMdCKsz5mMuwj
         et2vYqy0O92eAYsw5GNnhN6BSgMYcj5hD7Tt94Fyh/WDF3NhACIsA/+Rr7p5maGgj4nW
         kFvKM/QjUxDR/pHYAbB0bwBAjYrCUO34BbhFVh6acLEGqjrOeudu6AyXjJLTDQZr++wx
         sIGp2XXc6jHi95hKLYuDvSbNpH8NZvdAJFM/7vN2wyXYLDEjLUt4k/ZNK7fD0g6LJIT0
         8bew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PPHzKWDI;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id s73si598334vkd.1.2019.03.05.08.32.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:32:07 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PPHzKWDI;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id a81so7295333oii.11
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 08:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=kNYHfViUQROGvmIXz1c9a51GTRVhWCDwH77yMBdt3EE=;
        b=PPHzKWDIocHkn3h3+BgFahh2xU9OH+rLgdtEUlzARGH3Bgfwm4M9VfyOGR+wkDulpZ
         YG1bJhm2lue1+Xg1d+dYPJ5CASdK5VgBGUjgITu27SRFxJR53noR19QW1y6ZcXpyXxWS
         RcjnIdw5REPju3yi/wVIjOjaxZHsQnBzGuQqv6ouU7F16li5J/ljLbWmiU+l5WHufDoF
         p+yw6Os/eO8cm8crp3/wPfmxI2Og2uNTGHnRR/6WoVeFVbM0pIelle+tK+z6xqi85jSu
         JVCXRuFzY9Zzb9CzW23xbj5xj5qeAL/0ILmP0oXWn9T4g5F49ghZaXX3p/vi3U0ONorE
         EOiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=kNYHfViUQROGvmIXz1c9a51GTRVhWCDwH77yMBdt3EE=;
        b=DEfv6+r4xHoJGUyFgoRBybl7L86Xi4iXbFs8XqSsbrAthNkOXv3PyJLDrtggbcuB0T
         gwoPLsS2zfyK0ubPj1x/hfK4Mpc+e2Ao363QVLn8i5lQptHWTVO88+GIClN0alOkJOjz
         oPPMPx8cb3dIhXJ0nql/O/yK8cmP8Vl41ahl+5hcMOlK2k9oDEjBQsJ8NgmsCQudEpS3
         8dcXFyN+z3s/rKlVxi0+JtKZpn6+r5BDsIIjscyP+T8hIKT/1CztQrQAP3DVaYVX32AA
         /Al4awMZqJOEecuHzT+PJMB90sgJLOdcBOtXSeUeRQ4Rid7eYcW3Do0rw3m5G+vKVaT9
         4IBw==
X-Gm-Message-State: APjAAAVrsNgftEifXj3MXZ2pIfM7eNP6YwOzKiyknfesTmZiwIhrpJJu
	b6SVeq7K5EkjqgsXP2/Fv8E=
X-Received: by 2002:aca:5652:: with SMTP id k79mr2532631oib.19.1551803527269;
        Tue, 05 Mar 2019 08:32:07 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id p187sm3737799oif.17.2019.03.05.08.32.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 08:32:06 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 2/4] Staging: vt6655: Fix line over 80 characters
Date: Tue,  5 Mar 2019 10:31:56 -0600
Message-Id: <1b43b055b975227b98e2d711b7e39e258e6eea84.1551803156.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551803156.git.madhumithabiw@gmail.com>
References: <cover.1551803156.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551803156.git.madhumithabiw@gmail.com>
References: <cover.1551803156.git.madhumithabiw@gmail.com>

Fix the warning by checkpatch.pl
WARNING: line over 80 characters

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 6bbbbe1314d5..490cecf8fb9d 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -62,6 +62,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv);
 bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
 bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char byRxRate,
 		    u64 qwBSSTimestamp);
-bool CARDbSetBeaconPeriod(struct vnt_private *priv, unsigned short wBeaconInterval);
+bool CARDbSetBeaconPeriod(struct vnt_private *priv,
+			  unsigned short wBeaconInterval);
 
 #endif /* __CARD_H__ */
-- 
2.17.1


