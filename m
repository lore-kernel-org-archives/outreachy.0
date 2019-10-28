X-GM-THRID: 6752781300622426112
X-Received: by 2002:a17:906:8155:: with SMTP id z21mr16074277ejw.180.1572254418563;
        Mon, 28 Oct 2019 02:20:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:af86:: with SMTP id h6ls4059039edd.3.gmail; Mon, 28 Oct
 2019 02:20:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyofUcmxNs2AL9YtBR7dI+NAznWmeE1KPzH1e0/LiQOYiMHdIOr0oQmabJ5a1mCzgLVp2Kg
X-Received: by 2002:aa7:d6ca:: with SMTP id x10mr18234227edr.27.1572254417671;
        Mon, 28 Oct 2019 02:20:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572254417; cv=none;
        d=google.com; s=arc-20160816;
        b=Ec3Qezt/YL0EaMhSzXIpqWUqNSWqtuZJVSs19lSj8lUtYtP7cwwOZFFyhhJa8Zy06q
         qPNmRU/YqOUPvfS10EBc7UcLnoTu0VWD+c+k/PjsRvzK137ay5S61ofmdY7Wg9CUbGCW
         PmOGGjfRN4HmaEb2urNzvvFK3a4J1zjaG4O0JeA17N1+rGsQcpxfgK9iTnWyfZj45Vl/
         54hwHWDQNJULuzjHVdZZBj7yyCljaunf8R8C+cGINppZQ7nINZpLs35K+qKtgCDepEVQ
         OYOFmGuK1fJyaDw/SbzN+kRHcAxMLpEI0lPafp5568hpcdHhPK4qi/0eYLvuRyIlhlNG
         BqAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=wIuGwn2jgbDtMcHHOszupBu+fQifNyNj/PTHe+Q5iEw=;
        b=UQNbCt8L653UiYQI4znrlQqDOhk8E2mLVnFV9/N9+9BqXxjoaTyZhDVwuUppPKLKcu
         7G7hYYPtT+/3u/8zCwGY31maVJXJM5WKzwK/GrPySmbSCdYcIrK6x83XoUBrszpypsgS
         f+AFTuioI/zhXFED6DBCJMooeixP09Oh5vPIvixB4xcAGCaY55zodGdpkWpkfPFLkLTw
         9v7BIkq91gtCkAxr2LbVbSTJ8VJulWkU1FzGGvZoclF4Rl89c24fZ3GMLU3LQTsE6llp
         TMl0SnD09BzY+V/rjMwBIZQJEWHJDBGlRVLJ32vFiqoy1Ud7iqhI1MM7sRBc0kemaL1t
         l6zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CMh/MkDf";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id z18si453637edd.5.2019.10.28.02.20.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 02:20:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CMh/MkDf";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id c22so8274458wmd.1
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 02:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wIuGwn2jgbDtMcHHOszupBu+fQifNyNj/PTHe+Q5iEw=;
        b=CMh/MkDfospgY1lS3Xa8YLvgA9gN95y9aLEw+FmGBfX8eZl2bSwff0ji6BoiaaTSLy
         MOJK+6FLYglo4N6XVNJmnHdND7sNqftfNoXJocRfHqY8UgcbKumVjpa7W7zjCIHbjphq
         Bpsq49P0mzhpqPzd1E2iLq2T1Yka06IFlCMvpJAl5jyGgJp0O0Pwz43p6dJmNQ4csW9l
         T5RLdsVBLcBayfL+eTTaDCLM7Pq+42LucGCwv9KfRrGvRvVt4stEiYwVyGh0LkMF4pBb
         LkrHy+VKanwipDT7oyQZU28VX1uF6YWijZbK+woXWBY/8RAsAdecnMhEVnz4uW68Issh
         qwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wIuGwn2jgbDtMcHHOszupBu+fQifNyNj/PTHe+Q5iEw=;
        b=DduYQ1gInO/YbBkIs6sHVR0AQRV38giYgZVlRCQj24WErSkfqT5bwJj0P8aL6wnxZs
         JxCb5hnZgiPKmGeVy9+OzLUghxsVx2+UnDRB5xiPmhKXauz9gEBy9nZj94h7oOruv8Vx
         Qw1J15GQgyyEVgadgg9hxCzamJuentR9r+AW4l8RJj9I58afzydRoNmIGS0P1s7WJKBC
         ADxpnhqv08bDmtljtJKoUyM1yaSFjwAgqFKrBcsGsGd2PCUyviiGSJ9mkDep/hAY9g1L
         kgfY6waAe5XQjUsyhKynE5kcDAYspMvF5mypjsblIGUHAOO70jltJHlmJvhaICnhlSvK
         mp5A==
X-Gm-Message-State: APjAAAUZlbh9vmBBGm6Uom1CDX0NY6kruLtkNR41+LdUv6nIu1XRaKwQ
	x6/b0YA229yZG5KN+8lRkik=
X-Received: by 2002:a1c:1d10:: with SMTP id d16mr15486351wmd.14.1572254417401;
        Mon, 28 Oct 2019 02:20:17 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from localhost.localdomain ([197.254.95.38])
        by smtp.googlemail.com with ESMTPSA id z9sm11427513wrv.1.2019.10.28.02.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 02:20:16 -0700 (PDT)
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
Subject: [Outreachy][PATCH 1/2] drm/amd: declare amdgpu_exp_hw_support in amdgpu.h
Date: Mon, 28 Oct 2019 12:20:04 +0300
Message-Id: <20191028092005.31121-2-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028092005.31121-1-wambui.karugax@gmail.com>
References: <20191028092005.31121-1-wambui.karugax@gmail.com>

Declare `amdgpu_exp_hw_support` as extern in amdgpu.h to address the
following sparse warning:
drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:118:5: warning: symbol 'amdgpu_exp_hw_support' was not declared. Should it be static?

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
Suggested-by: Harry Wentland <harry.wentland@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu.h b/drivers/gpu/drm/amd/amdgpu/amdgpu.h
index f4d9041ef430..3610defdfae1 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu.h
@@ -140,6 +140,7 @@ extern int amdgpu_vm_fragment_size;
 extern int amdgpu_vm_fault_stop;
 extern int amdgpu_vm_debug;
 extern int amdgpu_vm_update_mode;
+extern int amdgpu_exp_hw_support;
 extern int amdgpu_dc;
 extern int amdgpu_sched_jobs;
 extern int amdgpu_sched_hw_submission;
-- 
2.17.1


