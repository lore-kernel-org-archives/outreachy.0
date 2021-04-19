X-GM-THRID: 6952884734330404864
X-Received: by 2002:adf:fb8a:: with SMTP id a10mr14999387wrr.21.1618844627835;
        Mon, 19 Apr 2021 08:03:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:49d4:: with SMTP id w203ls4821250wma.2.gmail; Mon, 19
 Apr 2021 08:03:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzQQj96KGj8pbtXGWGTyk7C3SZDB0CHVmON2YJbwDHFMCNIs4EJ1WP45OhJuzpJ04/FsDqz
X-Received: by 2002:a7b:c857:: with SMTP id c23mr22695167wml.28.1618844626442;
        Mon, 19 Apr 2021 08:03:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618844626; cv=none;
        d=google.com; s=arc-20160816;
        b=mHcRAzRk5dQQ4Kr841mEV1F+tfeKSMbFZTjBhE/+JBOioVhzckcycAzJJYkwGHN0a3
         JBlKyx4QNOrJpeNRoEgLjvn9VIQJmAeswm/6f4dHEpNljZZDop+rqW8BJQLdXyFiZ92u
         8KIO8XxYVytAIUOrNThP98fSTq2LJEVKlsa/kog4T/ON5gluhBm80S5YhKy+AswD072f
         kr07NU69pO040V3u0SuR8iYJlOgaJk45b7xsE0eBcPGHIFzTknORP3R56Ok8xq4Fl9HA
         mntwMV++eLGqIiQSeVI/4ld/kvKnAOn6+FVN1eIJZPbGdUAHP7yTWKzphcrt0lj3JjNS
         1v3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=OXFx+n1AMQvwAtX2ANI3rRZXcsHjDRiIiHwYqRCFtTA=;
        b=j0h5v+W9ZN92vjj96a4RyJYyCPLqecHVhDA2DwCCZ/dFKXnQ7f7TkKQ+Y3Mi4Bz+0g
         kEjwR+CIZNSQgw5f9l6XfykwmWzOFb3XkuSFYyn7EmUbgxYKQXRKfkQv23mRYYheEZuU
         X4eMduvN6nyG4tNSib9+KhRdiXHUQQSwUjwjjM76eDxWbcCu2hJy52AUm7cfbJCdCzV4
         bIqXVlukevrHTa84fup6QStlaWKQwP0fz4Quf4jpHPmb3lNYEEbNtGZzyUsQoPa4H2pv
         c6S9aCJfnreUPwK9EFST9LHyMiQvqpKxM/hXoyq83pEMbcKLgzDKH+REdf7w9MIEQfWo
         KkBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8z5t2lM;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id s141si58036wme.2.2021.04.19.08.03.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 08:03:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8z5t2lM;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x531.google.com with SMTP id j12so16078409edy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Apr 2021 08:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OXFx+n1AMQvwAtX2ANI3rRZXcsHjDRiIiHwYqRCFtTA=;
        b=V8z5t2lMwxqnMquWE0kaPRGcE+epfh0UKyAzflP18e0RTGqB/wwiemTFrws2ZEf4rP
         gZv4oeAa2kEzyW/qdiwwW7R36UUSn71VGUfq3eDFfjgCiChExiJQ/4tdWSXlFI6HRhCH
         sJ7ITM9/kBYT+bPm3h/v4gFNx1qWhpFmdrTPVQblAIj62wRqVAUWnbL00lqYnbtwtzvE
         +uWYA+xLlEWL258JI5kCC0jPWb8TcTCA7UcbGwIgRxrOGxQR3IvfJhdto9F9iOq5JkOZ
         k5/IZVHTumcwR8lF984bMBoZ0Gv6beiFOOlhoQvi7xwxaB+KTv73e736RbAYoisQkuPc
         DXDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OXFx+n1AMQvwAtX2ANI3rRZXcsHjDRiIiHwYqRCFtTA=;
        b=hKAkMhxdTaVhyd6SdlZssIdrAo66UQmkAb5BT7u1qqkeq0mZT5yUVW1xh/sfNfZSuR
         bODGcIJe0AOw7JmOZ3MpJ6DsCCW66DrdgaIqhlE1X1HHKLGUFWXxpJuZLIyFm4Lhpv/l
         8EHgnb8CgFFgSJ5ZbeJmVldH3eXncg6j1B0y4T7b/cqbfK7YjQB8Hbn3TvtNI85YAtYZ
         /Cn04Q945OtbQQXCg8EPdzWHrJr87ZtRE0uFLokSFdkD9BxO9VcbM3EVsot4oR8wtpmE
         xZu7VwjjrfXE7WXKVbStOPEMM8/ocQYkV+PVImT301cV9TatNoUNw5gZUd0NDE87H5QH
         pkmA==
X-Gm-Message-State: AOAM530GZN3nfdYfpqO5FcSBCSvF/nxDDe6ALhVAgsZWA8GMUQ6DpTQj
	fo7PplslPHTtxPLVqT7FQlb5aeTRzwMuLVCS
X-Received: by 2002:aa7:d787:: with SMTP id s7mr7830676edq.240.1618844625996;
        Mon, 19 Apr 2021 08:03:45 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id o5sm1965954edc.8.2021.04.19.08.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 08:03:45 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v2 0/2] Replace drm_modeset_*_all with DRM_MODESET_LOCK_ALL_*
Date: Mon, 19 Apr 2021 17:03:39 +0200
Message-Id: <20210419150341.24959-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace the deprecated API with new helpers, according to the TODO list
of the DRM subsystem. The new API has been introduced with commit 
b7ea04d299c7: DRM_MODESET_LOCK_ALL_BEGIN() simplifies grabbing all modeset 
locks using a local context. This has the advantage of reducing boilerplate.

Changes from v1: Added further information to the commit message.

Fabio M. De Francesco (2):
  drm/amd/amdgpu/amdgpu_device.c: Replace drm_modeset_*_all with
    DRM_MODESET_LOCK_ALL_*
  drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_*_all with
    DRM_MODESET_LOCK_ALL_*

 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 18 ++++++++++++------
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c    |  6 ++++--
 2 files changed, 16 insertions(+), 8 deletions(-)

-- 
2.31.1


