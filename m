X-GM-THRID: 6661088091510407168
X-Received: by 2002:a63:8dca:: with SMTP id z193mr6982218pgd.124.1551108572407;
        Mon, 25 Feb 2019 07:29:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:8f45:: with SMTP id r5ls662452pgn.8.gmail; Mon, 25 Feb
 2019 07:29:31 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ia1r28ZZGzEFedHucC1BqjPtQBAx84//Egn9oJ5g6YyKWSFv3xiYL2btg4Wu7vHtJ6mVfn9
X-Received: by 2002:aa7:8083:: with SMTP id v3mr6805870pff.100.1551108571645;
        Mon, 25 Feb 2019 07:29:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551108571; cv=none;
        d=google.com; s=arc-20160816;
        b=GmUSYTwhwX5+N5y/kvnE/IqC3/g2/dGKxUDMW2OjA+rq/J6ZTsQx4+SHKpnjiinuib
         Uc30FwQLEJ3KlCL+vTzy3H0i1bo4ct5U6DwidS4q+UcRhjg5nALpIgyOQHZparstVP0Z
         2O+MlOzIre41N7xWyXvoB5J+Cb9BCmtiSyaO6u8BOHrwRDquI4iMCL6PorZlqZ/DpNk+
         eXA+jQoZiswnFpTL7P8nDS7eeNjojrmff+zwTtRpKooVJt/aF3gKKqy3jMkW21elFDt1
         z8XvqiskZcQ4Ocss0iVHAjphecjwUwldyT4CBNZ7eIr9l0G0pmx5lOoK/Jj3VPWPPdXe
         ZY8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=uUwEbGN2erls4pkHz/8rOjhdNLxHd5Kmxs+a/RBo168=;
        b=vuA+FG8XgrGLnonN4/IOZ1zTW1F4dWs0VwN0/ss5/17BbzIflYysDZWpLYB35poZ/a
         HRaGeUC7u9ZZCspRP/2W6U7WCXU8XijRtUqNUBoctpaHSeIUXtvUsn/Almars31T4kM3
         qFoaBYlJNwjc2yZFezYIGI5A5O9al+IayriguklwNAlty8OLrn57dBkUKye/T/ybW/N7
         kk2Z0bbRstzcNHRUeU6tVUdANQBCB4V+83m1LDhFX5mId3zDQpip+AO6pmeo1paubilX
         4GcZk1Iqmwsc3iY/Y/ZOZB4MS1Y9hD1S8/YI8SVKMs5VgoJl7yjOHxkNAu8Q53PK4DGZ
         cQvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N1Xy+STO;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id t24si337758plo.2.2019.02.25.07.29.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:29:31 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N1Xy+STO;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id c17so1483114plz.13
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uUwEbGN2erls4pkHz/8rOjhdNLxHd5Kmxs+a/RBo168=;
        b=N1Xy+STOYJZiPwZTphva74/ky2rRejOxuO9tnUSP+bi74j0X4kdSEjrTtMe0ODIAUL
         9UtAiU6G6+GhopijYd9LVqedV3++HWfuG39aIWs2t8iZZkL1mHoURddzQCsAWMc07QNg
         RVT6odhtWVyQdwARTW5medaqVxlgItgwq3k9PMHieb2GwtrBQ27jeoyAuzaCPob3sMPA
         OK4J24WKkG/MMB5o5ODXXflK0Fcl40lzotqZHYDOr48mmxiy5PDanPd/FSJB23HOkbyF
         pUSXiJNjB70LgmuPW16av26NiGTf8ySL0LnIsJ5dkOoP5uPQ25zOV2WwQqRdUsIZtKFZ
         M3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uUwEbGN2erls4pkHz/8rOjhdNLxHd5Kmxs+a/RBo168=;
        b=myAW0g5KiemCkw7TZszQGBTvVhY/3tgeF7g5OVkPpfxpF4FeaNpAg5TmwObNwLuok5
         dNfaYDU0aSE3XXl0KtNxFZP5PlqtLgQEcAhofc2EJQY4HdCaajR2cxWDSezudO2PdZe8
         tu7mPVLilD1B71edDAdKL1yC0d270QDWMSg+uFZ7xJxCDoNJqV0E5O9Mucn6EEt/vSYz
         aAH+qez6/8sU2osOjQ7nVInaAbrtX/C7G43UvB+Gaq42zSF3k7dp9m0rkvA0WLe+INv2
         BliOUXudXOiM3DNyV4ebErOgvhh5QGrly3DthFqVbvelhV67v+RURlOLu6lgh7ORPsml
         31/Q==
X-Gm-Message-State: AHQUAuZgwAri/0/owvRSxyoEARLWiN4qOOsBBl9ED54IMvnYToSO9NCm
	VXHR94kAC8Q6Wh7FE3L0KeLCvCnTCZ0=
X-Received: by 2002:a17:902:9a02:: with SMTP id v2mr21064439plp.201.1551108571181;
        Mon, 25 Feb 2019 07:29:31 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f15sm2284515pfa.11.2019.02.25.07.29.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:29:30 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>
Subject: [PATCH v2 2/4] Staging: greybus: Blank lines not required before '}'
Date: Mon, 25 Feb 2019 20:59:10 +0530
Message-Id: <20190225152912.10274-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225152912.10274-1-bhanusreemahesh@gmail.com>
References: <20190225152912.10274-1-bhanusreemahesh@gmail.com>

Remove blank line to resolve checkpatch.pl issue:
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/greybus/audio_topology.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 8bcbc3c4588c..4ac30accf226 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -923,7 +923,6 @@ static int gbaudio_tplg_create_wcontrol(struct gbaudio_module_info *gb,
 		break;
 	default:
 		return -EINVAL;
-
 	}
 
 	dev_dbg(gb->dev, "%s:%d DAPM control created, ret:%d\n", ctl->name,
-- 
2.17.1


