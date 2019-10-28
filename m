X-GM-THRID: 6752781300622426112
X-Received: by 2002:adf:cd84:: with SMTP id q4mr13961139wrj.153.1572254416621;
        Mon, 28 Oct 2019 02:20:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6807:: with SMTP id w7ls3997875wru.7.gmail; Mon, 28 Oct
 2019 02:20:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyQ+DsFz07q80WCgIRarfUpluwAyohQOo2Lm8KMV/xMS2tIRKwwds2p/4hXL10lNl9ca2OE
X-Received: by 2002:a5d:5282:: with SMTP id c2mr11958675wrv.64.1572254415497;
        Mon, 28 Oct 2019 02:20:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572254415; cv=none;
        d=google.com; s=arc-20160816;
        b=yc9ki5eRdngm2TfcvZk1FaoiK7uJ5J05GEXed90OTnMrVAGXOrBeXE+aC0KyIWUr+Y
         qhX398mjD+7ZMjuJPcXuYulWiBAKPYSyANBB0/LT9Uxy88bKDqEweOaTwITqTyVTUXGW
         WerDoI0SdqFZqoBycqlwdzToyxb+BrhXp1MeFtjj7iTIK7FEZEI9H/I+WuCe3QOYyrmI
         dXcD/c4RoRwq1S+Me5SDt75v2IHQTkLFYm76b0G/kLm/NK1ic84GZWx5xMOeaS15cjHJ
         D0UkRWKSq4wprZnnJ77zkpaDhhj5SDQ/LJ0+2PXqzOj3Oact/zXDJZG2YynzpRsRER1B
         dQpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=UntOsok0RJA5xyBdV5DE84ry7KtJuNs3rA69E2z2DlM=;
        b=EF33kQfyn/HxT36MecABoJ2VcPzyN5Yqxlg6v93oRYJTKS1uv4A5V7Q+z9u2vdcmSr
         tuEpd535i3dKxrW7IY+6XBJj6dWqUc3TiO25/VnbFEnm8oy5VULQanEYxwZMbe0hqo1V
         I1RAgclyN/1rBxy1sZwCWI7CR1GfXUJvlGEqeeMjaZ5sKYUGKWsEsUhzGLI96dsEgK4w
         HyG50jz1cUzJSrPXIbl0jzWMj+UyUfk72d1Av9WcJrErLklZCmvkcFYlZyV9fhH5vymO
         O1vl2VH2WEHOkxuHcKxgZia91TzR5mXbfAHhLkItRSap/l0xzLXbU/tbxveKT6tNfKLQ
         tr3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JP4d5d7R;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id c12si542751wrn.2.2019.10.28.02.20.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 02:20:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JP4d5d7R;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id p21so8571972wmg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 02:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=UntOsok0RJA5xyBdV5DE84ry7KtJuNs3rA69E2z2DlM=;
        b=JP4d5d7Rp2a/4tRoivSLq+T9QpD49Linqp+deoL1VU3fPfpuQx1pkHQc0AfSvCfx4S
         82e22oG+ChZcIaEWz2LAlG7Uv6N5f7OqHWgD8fs5Vi3gEPxj7GQtWAvfBDi0kHC32QWu
         /fyaI9E+kMjFLnw/Pe06IVT5vCAny2fA4QgtTxE0TW8ElrzkyucDbRNs74XJz1+s00My
         qFHluGcSUbJsjB/LxULcAycCqhuSAfpePvB4FQpwDD6QbgPQq7tQ15nlOWqRppw+sdpS
         rotuwM+0dwCWSbLcG2OwUT9Tc5Fc2UEbpWBRuTtCvWsFzWBgwBMmsSgnrcQc7tpmlbmp
         Us3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UntOsok0RJA5xyBdV5DE84ry7KtJuNs3rA69E2z2DlM=;
        b=sZcSudP1fADQGO/LXribZ2E+uS6RIW2XgEE/gENGi8Y1i7tUQZMNPJwK9RICNuiEEY
         lMAygBZR6Tuqj0R5w2cUYiIlabok5QAKOGbbe470hRpdIRwBaxvfaW5E7LoxiibIpJ/1
         oNKqOUNHJzivLonKE/2MLcl0awRRoH2/KWtaEEiyoKrZQZMsr3Sl86XDDo4Yy8jKo7gw
         gfXFTPKSw6xqPfEiQGGZb8uCfUTbc3GsbQxLBPKCQnBpnDrTm6GTQ2ziy+UBgawrYmIK
         3KbdC1ZwGKjesKQSR0qyWAliiAUHw1eirawfbI+aNrkD9+zlUT3m8LkRdRPCTNpDH1yP
         oJbw==
X-Gm-Message-State: APjAAAXUdBWLSRqH6cZYaN+3LzVI+QFcM/75eMV6PcLnlYNLDkB25Xve
	jfaaNVXCmbK+rUeP0a7SBqzLv1ttgK4tVQ==
X-Received: by 2002:a7b:c753:: with SMTP id w19mr15828228wmk.25.1572254415073;
        Mon, 28 Oct 2019 02:20:15 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from localhost.localdomain ([197.254.95.38])
        by smtp.googlemail.com with ESMTPSA id z9sm11427513wrv.1.2019.10.28.02.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 02:20:14 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Cc: alexander.deucher@amd.com,
	christian.koenig@amd.com,
	David1.Zhou@amd.com,
	airlied@linux.ie,
	daniel@ffwll.ch,
	outreachy-kernel@googlegroups.com
Subject: [Outreachy][PATCH 0/2] sparse warning cleanup
Date: Mon, 28 Oct 2019 12:20:03 +0300
Message-Id: <20191028092005.31121-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset addresses the sparse warning about the
`amdgpu_exp_hw_support` variable and corrects the mispelling of the
word "_LENTH".

Wambui Karuga (2):
  drm/amd: declare amdgpu_exp_hw_support in amdgpu.h
  drm/amd: correct "_LENTH" mispelling in constant

 drivers/gpu/drm/amd/amdgpu/amdgpu.h        | 5 +++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 4 ++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c    | 2 +-
 3 files changed, 6 insertions(+), 5 deletions(-)

-- 
2.17.1


