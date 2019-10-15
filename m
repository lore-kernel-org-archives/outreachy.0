X-GM-THRID: 6748161945131548672
X-Received: by 2002:a17:906:b7d0:: with SMTP id fy16mr37017480ejb.207.1571178889421;
        Tue, 15 Oct 2019 15:34:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9796:: with SMTP id e22ls4532892edb.14.gmail; Tue, 15
 Oct 2019 15:34:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwwRScbhV6wbE9nX+5af06dGjPKRDA2dRNN/L8o60M2n5nzh35ibg0WoJIReHPUyUAX4+OQ
X-Received: by 2002:a05:6402:2022:: with SMTP id ay2mr35927569edb.219.1571178888501;
        Tue, 15 Oct 2019 15:34:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571178888; cv=none;
        d=google.com; s=arc-20160816;
        b=W8esbHIDVxKV0M7CnkvNRWp/ENLkHWkjnaoGa2U+O/poAjJuE+XxLxNxWX2PMp8QOV
         QsOzTp592D1cB1Etxa7uc2dRMBT1ygRLVErOHmzgBnpDVrJxSNniEJ9GH+IXFgFsIfbZ
         3FsCL8LYhL9PyTX9ZXkPb3xMoxon/RwgWj540ZN/1wZduohUPNC74n9wLw1uz7PYMEtW
         7jj7jB1Ovd05Mx+uyDcX1qhVFCbxhd6p06LElR6RlttNXlNINI3ZutqR4zZUYapXJREs
         coGzqGFmAdcEkUnb1Xw512Rov+ju3sPp8xVhWeVTlPFBeWpLsO/6WHpyKYVu3MrlZw2i
         vt4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=BR/+JcLXGlF7qNlnYNXPVWo3Nql+mobYo3ybFiUKVk4=;
        b=nRbaRkbnlsNgaPZ3XSy7MYJJKA20pEzKltMzjDWSOs74B+MAbXCPjhHPwHLg9wyQ+2
         Y7Q7TvJ14y5gZQFm/+YJ7iriFdbI2ScYgURDrz3biDs3vlRc5mlUg3HGrPU4ncz+HHvq
         Q+DfbPOamnKVIGiknOLy+ANBww1tbSHJycrHqc+WtjpjKRrj2fieY9kIAIgnxUicY936
         xYPCPERedBU4gQN7GATAyh3jAjj51Mnm5Cq9F2+OCg8EdmepZARLbHw5dKAuSjDnLHCg
         ByoX3cbjDxMa45WCgubaXeuLb1eoLvXAFyftRW/DuXWgUiGslXqn7ko/ZsipHomC8nwN
         TU/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XE5sn3iX;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id q8si1249176edn.5.2019.10.15.15.34.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 15:34:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XE5sn3iX;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id i16so709630wmd.3
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Oct 2019 15:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BR/+JcLXGlF7qNlnYNXPVWo3Nql+mobYo3ybFiUKVk4=;
        b=XE5sn3iXKdNmwXYBgSR/Fm7Fn+i5kb49u8oZLnlZNLAqvDO/yQY3vXi0OryQZUyTyz
         1Rqv3gw8NiClH2JJsSE6iIGkl/rPMP9B5ndr7PlbXe8b4bwU8b1Lw9LLhUSqPuL1ATdP
         m0iWdn8fkmAC9HeT8IZWVRJ49WmpPdU44Rb5zGopErJYhidVQlOaOctQ+Fgp9D+kDgHj
         h0zXwqMNPIbo0tzROn/kplccKVmXownn0VSmLlqB3zlxfB/txeQ0L+MOgjN2C6khacyw
         YVtmSb86Uh/LpT6tqbeIkHhVzDHH1hjbX5uTnFE9/0A6QibobxjJqtQd9LSGnkSk954Y
         pRPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BR/+JcLXGlF7qNlnYNXPVWo3Nql+mobYo3ybFiUKVk4=;
        b=Q8tE4aUmsuUTvuwpuDzJmd89FCcO5b+R5chlGnjlNe//TcglLgb/vVMRRK190ApC6b
         r7l1Iu0FW4VBrINjvuxSzp3jWzVYkcFv4merZdAiQbKVLMLZypDzGyljzXJ+ds2k87EA
         r+fTV2z5ph4hjg/nkd7FK4j9MkfwlyFhtB+6r8oyv35XJReOctm2MwDjuiK8CtqXvYWO
         LHQSWR3eiR0pfTU1T/1iMdtyjZUB+kO6pshudqxDkkWGILeDK/8KqPFJKkOoJwaaMmTM
         plXmNCx/KgQunuNbHADcEHLZphCbiTDUFVWCAtNyKH0jqYNKpQrGQuMmI4HiQp2bjcdS
         Zu5w==
X-Gm-Message-State: APjAAAUbkwIfJqkvo6L95BFxGYiPGpgZW/uTJVu0RhK65bQ6QYL4APr+
	L+FdZFqQfjbmGxI+gy71LfSD0JAvxmE1tuY=
X-Received: by 2002:a1c:7219:: with SMTP id n25mr543117wmc.33.1571178887899;
        Tue, 15 Oct 2019 15:34:47 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id m18sm35667084wrg.97.2019.10.15.15.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 15:34:47 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mjourdan@baylibre.com,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	khilman@baylibre.com,
	linux-media@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	devel@driverdev.osuosl.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: meson: add space to fix check warning
Date: Tue, 15 Oct 2019 23:34:33 +0100
Message-Id: <20191015223433.18784-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix "alignment should mactch open parenthesis" check.
Issue detected by checkpatch tool

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/media/meson/vdec/codec_mpeg12.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
index 48869cc3d973..21e93a13356c 100644
--- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
+++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
@@ -81,7 +81,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
 	}
 
 	ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
-					(u32[]){ 8, 0 });
+				  (u32[]){ 8, 0 });
 	if (ret)
 		goto free_workspace;
 
-- 
2.21.0


