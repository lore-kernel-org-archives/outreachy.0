X-GM-THRID: 6528798605512278016
X-Received: by 10.99.4.206 with SMTP id 197mr1966563pge.25.1520104381510;
        Sat, 03 Mar 2018 11:13:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.198.5 with SMTP id m5ls3766453pfg.3.gmail; Sat, 03 Mar 2018
 11:13:00 -0800 (PST)
X-Google-Smtp-Source: AG47ELsiuwEToM1RUZaxdLxXs3yCieCMU+Nh+UG51cCVNLa7l+GdV6rCJ8Jt/tmOy3R0SY/460j6
X-Received: by 10.99.114.84 with SMTP id c20mr1928082pgn.144.1520104380144;
        Sat, 03 Mar 2018 11:13:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520104380; cv=none;
        d=google.com; s=arc-20160816;
        b=lTv2TE5NuouZhAvG++wKDCvsXOLn4cL0MWAG6oHNoAfMm/3PE/jiW8AaFZhrY0nP7N
         BeOfVsz4wedNoEORvFf9zA7mpV+BLbdEevzVLEhN+ni5vmBtgEks/Y0F7hWP7zKWisnK
         sw/oc2Ucwg5eueVtyfQX40zMAbACCFRSmncZ1djxxv+cKVWaX6p+5P84NUTqmJiNDBcb
         3dnyhNxABW8LIveW2qCkGVHDIIFIQVn48SUmW+Rm51pKip6smQ09yLVnu2Vqr3PIjehI
         rhXAEVUVJJPaIwF4TFZVKZnxjHvff489QpBIOAOXfgWn8gGukqZ2A1V4WNmOp9pW/BdX
         Y3Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=uW7FZKZxFjo2PYzQj4coaSuf8VhAhrxG3cOBk+QKQ/s=;
        b=saen15Ht2Q9AmNaMzIYjWHz0v+QMltfFwZ8QD1odTDWs+t0NN0HeOeLjh9UJ21bLHm
         JfQ5ytaGrANDQBxNwiAyc8E9d00jzTYrfpaRpo8wRfdHz/Juql92DYJTEjYWVDcddzT5
         7eGxPekbBwiev7Px3tHMGIQcZ0h2/6UN+g1p3l2ptPVOPVIGm6aN+bD7M8hULcOmhTeB
         CqPruRSTep3nlrQ6Dgps8xfuRsmoDp9lcZSm4e3Sl0oY2nR8Hw7nopJ04O3gZM+yBhTq
         MRw5q7oDSoVmcFbF20ElLCT+ZgmTydiFNjrFR1pMInl+pB07g39tuumynkm46ox/g5lq
         fY3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=gpXIAkjs;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id q12si446939pgn.2.2018.03.03.11.13.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 11:13:00 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=gpXIAkjs;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x244.google.com with SMTP id f23-v6so7507894plr.10
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 11:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=uW7FZKZxFjo2PYzQj4coaSuf8VhAhrxG3cOBk+QKQ/s=;
        b=gpXIAkjsBQsCyMyqxqCi75crCa6D9lCH35lJHfYL3cHXUJoWi08qhtM0jpTFjGOYlN
         9VjHrafnsCNaezTA7MPUaiX1YHezJ4d+jk9mYNxLmIjFL9vyjEZH2rkmnUcDiXQC5jSu
         Ex4+ng0cFsNnTirDWIwajsY27m317vbAWXDMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uW7FZKZxFjo2PYzQj4coaSuf8VhAhrxG3cOBk+QKQ/s=;
        b=aMr+8vSgTfQfKFbJU1MOs3UjaYSd+hYN6vV611ZrC3siP28jyAZLHJvpeHe4pJu4Lv
         qcJmIdG0LsfKNGdvoAmqkB67Wf9o9uETYe2fDHPeIwLuHLy8QzCmxoO0TEfJHQC4sqHH
         moe9stF8FGCmHp5JEqDhHp8WemjUDOfwcR4OYI/h53/99XYr1FSNZGDxdpNbf48W5i3o
         DSgPrZL7T/Kc+CRN9+peaN/+R5YEmsG8XiSBM2+Tw6ohkdYfLyuZpdvp4ujhGVqJRNu/
         fI05VKv1UX/UyIS8iaUhm4Bpe477yjbYq1a790i+TWlCuC7ROLIv+MQgu628DXDQ94Xq
         nfhQ==
X-Gm-Message-State: APf1xPDlEzXKNfJz5TM52fiSMIfHGCblIDVAIreruMBaa5tP7fEQBnmR
	4HV+DDsRO4n5/ycFOGMa3bAh2+Nh
X-Received: by 2002:a17:902:b416:: with SMTP id x22-v6mr8549938plr.279.1520104379523;
        Sat, 03 Mar 2018 11:12:59 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id u128sm17797372pfu.54.2018.03.03.11.12.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 11:12:58 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	eric@anholt.net,
	stefan.wahren@i2se.com,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: vc04_services: bcm2835-audio: Change to unsigned int *
Date: Sun,  4 Mar 2018 00:42:44 +0530
Message-Id: <1520104364-24339-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Change 'unsigned *' to 'unsigned int *'. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index 0630040..8359cf8 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -414,7 +414,7 @@ static int snd_bcm2835_pcm_lib_ioctl(struct snd_pcm_substream *substream,
 	int ret = snd_pcm_lib_ioctl(substream, cmd, arg);
 
 	audio_info(" .. substream=%p, cmd=%d, arg=%p (%x) ret=%d\n", substream,
-		cmd, arg, arg ? *(unsigned *) arg : 0, ret);
+		cmd, arg, arg ? *(unsigned int *)arg : 0, ret);
 	return ret;
 }
 
-- 
1.9.1


