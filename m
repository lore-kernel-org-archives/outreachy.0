X-GM-THRID: 6754760383787958272
X-Received: by 2002:a1c:f00a:: with SMTP id a10mr19921134wmb.138.1572800003339;
        Sun, 03 Nov 2019 08:53:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e74f:: with SMTP id c15ls11794272wrn.5.gmail; Sun, 03
 Nov 2019 08:53:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqy5KFNqt3uCawM3vqzpnsTyhnZh9DEGr7SgRgF9LTwWy9pQ+lgWhaAEovtgtbj9tOywMylt
X-Received: by 2002:adf:d4cc:: with SMTP id w12mr1881295wrk.93.1572800002290;
        Sun, 03 Nov 2019 08:53:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572800002; cv=none;
        d=google.com; s=arc-20160816;
        b=A6dU9v58Wz/dzXV9BjwCaz2MEVfTyliCGnP9EG0pVXdrq42+ylbFy8OFtpMaeaGxxT
         06ouv2qLqgBMZwnuWYlh48kr6evK7sdPnILRAaTzJE4+aZGIj9IVtw1Hj0HmF3BcJijk
         A6DfI8XRYToTIiuDSkUEeWpu2vQqdjgnQ4tnBo31FcP7waokMNspFyHMt/QUS+JBystT
         ofi9+781yTiOiDraK8+yPxXCf9NvpLxW64+jQrYQLjUPkq0/vWapm0wJ2scb9qRUjqPE
         LmVtBCsE3Tt7yNxCPAqV5j9hvoa43TbXqEwewVcMQKhZzQ3ekLpI2MTTHt6U3sqqcXhP
         G0qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=mA5G1epQzRTz38eWubhTP5LZGDjipBZLW0fAeMv8hDA=;
        b=LIhiyUjzlyZRka9hiz4L/ECOJHARla/SLFjEMaLdplmsKnSLh1KR1IlVbuQI7vBVTb
         KZam/YptLboh/sVVDJJAHLMr/jZI8XGqZAWl0CGDVkvGHVA8xYm6lUzLA++vb+iozcE6
         RfSabTKunghKd+fcMFr3Usaz7CP/O0J9icZeA42ccY9GSjwVRWNtPsIBM5euKl/RrJ/E
         wTJJbhU09oXhD/vlvlJ2XmYRTKA9pwGN2KHzSGkLpzYNJiLDHbrvm1i3LyZX8KmVfJXD
         uJUXJtxEVItqbvJi/EZRBUmNT/Bhshv0hy2utMP5Rcaaf6IXU0r3kBNM6ea5Nzw+ipE7
         pTPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VLMoJrel;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q22si643200wme.2.2019.11.03.08.53.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 08:53:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VLMoJrel;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id p4so14412617wrm.8
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 08:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mA5G1epQzRTz38eWubhTP5LZGDjipBZLW0fAeMv8hDA=;
        b=VLMoJrelkmVqDOoXE3OmJyI9DWWb1gwW6511Wzk0Jf1gLgzpLHUkDtaQCmv1DJM58V
         R/xCmYunmoh9j1DtwCVJHHeGEsfu67fAWtt6GTL6KwN3rca3vdxk+ZBYbEG5yC5a/8l3
         uMZVyafdRiQq+SLtqMhH6cSBj/8vzMg0nV+riqRK635TH9X0keGDJcEgfeFS93DSEK+9
         Xs4dsJcDS7YuXYFUqBj/DzyuS8oCBHEDqJrypy7vX7hMZJyInp/1xwn1kSHwsr1QmjqU
         oWVigpGxmNahCpUuKlIurkEfshWt+Kwk3bg0H5+0UdJZzIyTIPvyW4+SXdlRvzO1NBP1
         Eodg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mA5G1epQzRTz38eWubhTP5LZGDjipBZLW0fAeMv8hDA=;
        b=K5770eCJ40ibbKJqeyKXdXe4FgPYYP5tSmEYsQnohT8fIDwtwZZQAINGrmbrujI2Yz
         a9kzEFTveomsyTkl+mtQDkRd19244IyAkOuifProboY2aXCsIBHJJCxt0ffcDBTnCV/D
         dKwtS3OIMw3BvXNK4kZKAErr9attkrAw4rhGpqqd4SC2TPlv9CsOlSbd+34D/1nzYQHg
         b9AtVdNIvuH+GA6wrifVsUlwaAzJk1q/7NMpfcXgqDeR+51/IbUFo68VPUn4uvmynuwY
         JHgEHT1wriLkIkwFhq6vQqnckthKlPa/C+ZNOTwBgibA0pj5EnnBo1Z5kB1BISXrfVK3
         lIJw==
X-Gm-Message-State: APjAAAVVgTJMATO23KfLilVl6V1jke/tiqGOdXhrLlEbxjUVWdiYKQx2
	2X4NwdwR6qjwiylPENEZfhvgeBgyUvG9
X-Received: by 2002:adf:f20c:: with SMTP id p12mr4290146wro.379.1572800001651;
        Sun, 03 Nov 2019 08:53:21 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id o187sm13180408wmo.20.2019.11.03.08.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 08:53:21 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v4 0/2] staging: wfx: cleanups 
Date: Sun,  3 Nov 2019 16:53:06 +0000
Message-Id: <20191103165308.23843-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

changes since
* v1 submits changes with no accurate log message and title
* v2 improves on log message description: remove the word "fixing", rephrase
log message and  title.
* v3 gives accurate description on the changes and reasons behind.
* v4 includes a log of changes done on each version.

Jules Irenge (2):
  staging: wfx: replace 0 by NULL as the return value of a
    pointer-returning function
  staging: wfx: replace 1 by true when stored in a boolean variable

 drivers/staging/wfx/queue.c | 4 ++--
 drivers/staging/wfx/sta.c   | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.23.0


