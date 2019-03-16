X-GM-THRID: 6668919663112486912
X-Received: by 2002:ab0:20d2:: with SMTP id z18mr5043707ual.24.1552728857861;
        Sat, 16 Mar 2019 02:34:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:9f55:: with SMTP id i82ls1927347vke.3.gmail; Sat, 16 Mar
 2019 02:34:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy/VfM5YKgFVfh9J3T/aRAFQ+7Cc0BTS1Msn0n3N20+Xn/50qC2sdj4ZxFgbyLlkHxgM8cF
X-Received: by 2002:a1f:403:: with SMTP id 3mr4909210vke.25.1552728856430;
        Sat, 16 Mar 2019 02:34:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552728856; cv=none;
        d=google.com; s=arc-20160816;
        b=FalBuFbR9AmVXzXqIzygNH0riqT6BP92cQAd+tL6mzQQznyq6mALY3MZbO1025gBJn
         PHvmonXBuncu1JzJ4L3S+auAEnnTfYfo8YyZ3ZGb8FbrGpHyTC1MySYRktCLmZ7sHDWp
         vUchTBT8XnnW7ky27bE5nXhDeBarLE+YqxW/UVTemivOa8E5u5ALpDIH9jycqdNbtAg7
         t+RJlRwAXKzqqbA8/JTHxkDqmLKEiF1foaTg54+l/+HNGa5Zbl0qiQiw0f3mLq6eQ6Wl
         nZeKNCcobHDx31VuAIuO/X1jamOf9/fjMVS/g1l+eXO1ntW+1tb9u76I8R9pejCYPZdR
         MFrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=3Ne5FoqWxsGSqLX0JbyBVMFHH2hkG8NfaFuL+PHOhkw=;
        b=JlHZ7IQ7BqrBkZoMq74HAjAX4MIa3BwXkgucQ5kDnu0r5oFONnH6tZVJIJwVROOoQZ
         StanZ1Mu9KS6GpTBuGxEbqsO6rfvZgcYYSIRmHaQtOWPsOKp09qL3UC+YUrAkPF7rNTx
         NgPz7OBosT0Zw+E+emCYi587lyuQuc7k4+W8MfAwR1xinIB3zziykxkvAqlJOv36Tv3g
         rzciaSyB10Zj1pA/b6L2WHB0Ycu0A72b1w3vpdQ85PhpEPcbU4MLidCCjH6mPmFUxtfH
         E0SGWmsOc6pzT8ng8a5QxwJDjuyTclhUW7bRSJ0uTrrsClpwgHw/f2eQqu6tu+TBKpdY
         FZ3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PxuaGnLC;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id e17si242152vke.0.2019.03.16.02.34.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 02:34:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PxuaGnLC;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id l11so8085708pgq.10
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 02:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3Ne5FoqWxsGSqLX0JbyBVMFHH2hkG8NfaFuL+PHOhkw=;
        b=PxuaGnLCOMHT6+60RRBrJqJbW19quXXJ8Els1EtaZieDZtOgjGa41rJoo0yY7CGEOC
         JDBWXwOXxY7k6pVL+ehGtyoKEDb3n6zzlCb5BpSSw/zcVeh2/5FlBlAT4bwSVDRgNC6W
         v9G8TryoBFo47R8Djy8jz8Nq3X3Q4yJhr2EobERqwYfVbk6H+3bFyWrSWe+xq53fkOZr
         CYTuiT6v//Cvtvob10R5tuvFHe2gYoZTj0jikMba2wNtrjQm9d8yTd5wEfPO7ina7xbt
         MnYOGBFarEjVQbSReCbAtIgO8L8XoQEWfO0pEOn4omOCP3Mb78Zvn4jWe3G5DK5KkdV1
         jmNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3Ne5FoqWxsGSqLX0JbyBVMFHH2hkG8NfaFuL+PHOhkw=;
        b=pO+jD55cgxbMte2X+ba0WCF38bP7Qj1IlckZ1/fE5yZcm5MxEojQN3szWFFMsvDr8U
         JGmEjKLtgo5IoAT/tvveB1UK79bBNcWOLT/vz3owELIWV6jocPJwfzVAfTxnQw82tSs5
         Rk0FBHpI2c6epazC5VzuCwC13GlSFjmNFggAljzkdLva/TSmLHvw4Ihtdl3rHCykrRnk
         aL8NBuzzpEn251wnkz3u9ALxITHtUbNF+poSCMZ/gwckm/PGJq2QXDgTcEmCdXQgMJtT
         W5Jcf6kU7YaNpLah4s1zWPjxA8jJuKF0uF0S7+PAzFxncr8MumRioH1QC5ZxZUk9/F9F
         ujmA==
X-Gm-Message-State: APjAAAXqJCfTGFKestnrckfzJQWfUBgVolPGGuwKrmY9Zh37PRuI29yq
	VK2zwILo9puHqt9MFfh33l0hOrvW
X-Received: by 2002:a63:ff1d:: with SMTP id k29mr7782871pgi.258.1552728855708;
        Sat, 16 Mar 2019 02:34:15 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.159.39])
        by smtp.gmail.com with ESMTPSA id j20sm5536786pfa.158.2019.03.16.02.34.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Mar 2019 02:34:14 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] staging: vc04_services: bcm2835-camera: avoid multiple assignments
Date: Sat, 16 Mar 2019 15:03:59 +0530
Message-Id: <1552728839-7072-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

To avoid style issues, avoid multiple assignments.
Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c    | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index d22b928..5e5b610 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1011,11 +1011,15 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 		/* Make a further decision on port based on resolution */
 		if (f->fmt.pix.width <= max_video_width &&
 		    f->fmt.pix.height <= max_video_height)
-			camera_port = port =
-			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
+			camera_port = 
+			&dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
+			port =
+			&dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
 		else
-			camera_port = port =
-			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
+			camera_port = 
+			&dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
+			port =
+			&dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
 		break;
 	case MMAL_COMPONENT_IMAGE_ENCODE:
 		encode_component = dev->component[MMAL_COMPONENT_IMAGE_ENCODE];
-- 
2.7.4


