X-GM-THRID: 6755114272133480448
X-Received: by 2002:a1c:5641:: with SMTP id k62mr19576319wmb.97.1572797716489;
        Sun, 03 Nov 2019 08:15:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:1:: with SMTP id g1ls14316606wmc.2.canary-gmail;
 Sun, 03 Nov 2019 08:15:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqzThsCTIy7vxh4B6MOf2b2Tc1WSitGzMs0VySWUl2+ZEQaFjbPz8ZQ9WvK5h32Xp6KghPL+
X-Received: by 2002:a05:600c:2212:: with SMTP id z18mr20882887wml.154.1572797715538;
        Sun, 03 Nov 2019 08:15:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572797715; cv=none;
        d=google.com; s=arc-20160816;
        b=wibQif/ZMvtGzCxli6eOA8aXewybAqQ56f9PXJ3AZpzshX/nBoeOciwuc+GR4YfV1g
         rjMZO2gzC3mJedn6LSWgJ9IXo9rnUhWKBGqoSiFCIOgMqqMtEFBVJus/zffWrA128fLl
         WaiMH9mtZ8iMG2We8a1JBdZBkXk43IXTOAkiSgU4BNSD4l+ChXjprAmEUMHULbp5dpLt
         dG3B998qyHzgkVG+opEcv0GB6Qh+kFED69pI1nXPtGEC8558akgZM1DidbunGgYRDRbB
         l7LQEISKOEaw8MwhLzsybPp21DLswE7KpAEacfAqxKHyEGlTZp2/fGcf1Wx3j3iCrzEp
         q6BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gEhtDftg4+EfEAIlqFsZqwrISasSGYfR/2wzJWUKLpw=;
        b=0mZyjF+Uj8Xbh1UATwI4inCt4aLuFp+eDfMWjNcU1/pUqm0hiIHL//OvuQc74dIOCt
         4iz0y6pZXIBb4kJ+HF5piw7l+UxG49wqY05+nKiivJiOY/+Pp4nIErO2Lh8Wu3K/Wwg3
         6hUQfvjmYNm0mv8BTdeyLIcIFz5yn3xFP4NU/hpyRQBOadCAqfn8axFsg98+gjjWKCyo
         iRZHMKaf5QKz3r85jI20/q1oKBMVu+klcX4f6I6dTSfyF592+OUrWob5ehfAt30A59tq
         pfLU3EP5y91Um9MrLA+QxmZ4hvK6JMvKbJBrDY4nVK+wrpZ1FMkqwfsY39N4RKULcj3J
         75sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VYX9oGM+;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id l10si687055wmd.0.2019.11.03.08.15.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 08:15:15 -0800 (PST)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VYX9oGM+;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id v3so12266010wmh.1
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 08:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gEhtDftg4+EfEAIlqFsZqwrISasSGYfR/2wzJWUKLpw=;
        b=VYX9oGM+wr33lNrIZhl4VjK50aEj3EajOo1+pancHjv73ZrvwsMSi2/eXVhMxFZ0n+
         ibn0jmwqPbips6kC2Rvmr6sJwJAdGzZhab0715FUN9x2KktcMq9su68AdOQA3sBImCR1
         LIrIIClmQKEixemyapKOU/kW7WnGQLSxf0xrohfyeefndSo1bq6GWIYCp018Ewe4FU7n
         cOBro5wWsacHOpPzu5ATikH7TudwaCLGSWUckqqRGSMiQOfR3a2jFnKvMpaInGeI/j9V
         sQsWBjvlqD0O7KVm63aNjrPnpEuQHJ6KPb+oKbsP7JX7gQWQEJC+Bovh3FJOq3hyoiYx
         e9uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gEhtDftg4+EfEAIlqFsZqwrISasSGYfR/2wzJWUKLpw=;
        b=OrhtSOboLIe/HGH+k4AcV1jpYAx4pKDlM29HnqmT9Ka9Mf81waFfmSbQAPyud4Nrsx
         ci9JMe8H2UJh52Wur6HhI4TJTOgQkIPlKNr1e/DlpisPDbaV+mhk9KRt/HlHlaJeL184
         d9edSylOLYhHbaESMaZz/6zNi72ESQkrKqilGcwhCjMv0dzHmnh3HYdphjz1nq1D/drl
         aivdEWLfi2eAew3Fa986hnoPTcWcc10bI7g9f+pasY4SW55LU5Jg9k2rZqWMmzPLC4Il
         9c3UT7cJkPoff8tHI4/2bEVi39dZbUOHxmNC7Ul6jPvcyrcSQ6/XHmXKdyvLlV9+qEkq
         FAtA==
X-Gm-Message-State: APjAAAU8bCOIrcoUFR9ESbITkX41WZ1Snpe0/D2O4OGrPHhLsxZ6f9ge
	Qff8zQoHUkvohX2Dk8S+S2g=
X-Received: by 2002:a1c:1f03:: with SMTP id f3mr19243927wmf.131.1572797715279;
        Sun, 03 Nov 2019 08:15:15 -0800 (PST)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:fd8b:953d:f833:bf1a])
        by smtp.gmail.com with ESMTPSA id d13sm12575387wrq.51.2019.11.03.08.15.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 03 Nov 2019 08:15:14 -0800 (PST)
Date: Sun, 3 Nov 2019 16:15:13 +0000
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org
Subject: [PATCH v2 3/3] Staging: media: omap4iss: Add comment to memory
 barrier
Message-ID: <62b034d416bc0b0f2fc2a10c225bcf1441b4eecc.1572797322.git.chime.evan.dri.devel@gmail.com>
References: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix "WARNING: memory barrier without comment" from checkpath. Add comment
to memory barrier smp_wmb() on line 660

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index ce34c19874c7..85b0d9cbaa14 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -657,7 +657,7 @@ int omap4iss_module_sync_idle(struct media_entity *me, wait_queue_head_t *wait,
 	if (!wait_event_timeout(*wait, !atomic_read(stopping),
 				msecs_to_jiffies(1000))) {
 		atomic_set(stopping, 0);
-		smp_wmb();
+		smp_wmb(); /* Prevent stores reordering across the barrier */
 		return -ETIMEDOUT;
 	}
 
-- 
2.17.1


