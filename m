X-GM-THRID: 6663618170330284032
X-Received: by 2002:a63:505d:: with SMTP id q29mr3194251pgl.12.1551494525630;
        Fri, 01 Mar 2019 18:42:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:5c1:: with SMTP id f59ls5194272plf.1.gmail; Fri, 01
 Mar 2019 18:42:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqyTHtZQ5a01VoNyPxPLua6B+GN/cH/LTZdMdhpc0s5IxTWHyBsAT9W5hwww5SeAQNHnObOY
X-Received: by 2002:a17:902:227:: with SMTP id 36mr2563377plc.35.1551494524982;
        Fri, 01 Mar 2019 18:42:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551494524; cv=none;
        d=google.com; s=arc-20160816;
        b=w9vuwvOy0po8ezboqkqL07ojX3I4/WwsiRIhziygpUjRHyWe/pMqy1UP2YOmcMafzr
         7FzSFXcH8fkd6Y/2ERJ0J8lucaXSm/VOPMDCXiOmEEu7xgrvSqZmzGggRq/IWRfosJ0f
         0/TaDLJ0lzFQJAyKkWgmnO1bq7PeHAcecbrl+adpMowjYH11oi3bl7sIZxkxrcZT2XHj
         4jFfEV8coDSKzc9B8iTAKbJtqssDA0IhHCAbvMuM3birqEOjm+p6LT8Y+rqudOP02Pws
         1Hsvbe273CRagIBD5PkpuJM+hWlF0PSMBOHddfONkCHdEIdyfmSDgxixtg3hyb4uIcib
         UeCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=UpOZOnO0aAwaJGffGC4mHCzcrKdw4RyH5bqMo8yZ54o=;
        b=ggjMLf1JKSVKPxFmrMy1mdQq7dOqecJC0Bt8NAaMZ9rvCYUP2UiWENnDtCr/WNSpl7
         qiHGlGyonVYF+D2fOOxoKeTvTwztlwPkwIeZJ8FPIsoeNBeMEHhAX/wXxFxFQzL9ylsy
         wgwg43uc4TVq3+zZvWcsw7Ryak7vyEVKPKH2lelJRF4yzJ8nmQ5xiadb4VZCTceuGybP
         6snG9g4+gwEP6hr6JLHihpXgTsz4umYZdnuJnECWixDkM7XiiS/WqoHxgfD3DEe6u9u1
         ro1wiW4xf3v+7R+X4lBReM10bFzbozZbVjFUz+Ap1euBVyJDbBJjcQRRm7RtbP1l/wlw
         AKlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Js9qYjdj;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id t11si1018393plz.4.2019.03.01.18.42.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 18:42:04 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Js9qYjdj;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id j10so440086oij.13
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 18:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=UpOZOnO0aAwaJGffGC4mHCzcrKdw4RyH5bqMo8yZ54o=;
        b=Js9qYjdjJnjSh5/dlrGJ0PXzd8qTmv4XP2jvNHyaPxqNjaHnaIATybFbnghd9O5QbL
         4KCWOy+umkJ+Uc0jVkl6OiDa0b4IE3/geFgQOeUfkwCGKPr6njqQwJcHeOPZkZtbvxLa
         FVwiF4er8a+8HI/h4XPyHWJ47XwlfvnXSg/AwLeXI7rheOU/eg00x10t7MV05+a2G0UH
         Fuu7QV8eI9ytXK+SmVhkSlISvw3uAXQVDp4keX13d5z5gHs4jD5T4XR0+a0XantAEpii
         ZXeke2VzQ+yTRb9LDkDuYlLoLAGlg3Mcfpbedn/2ULHSrOsNO66rcsx5wzKn9F3VVTwc
         stmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=UpOZOnO0aAwaJGffGC4mHCzcrKdw4RyH5bqMo8yZ54o=;
        b=a/CcIhm4t7BqtAJBLjC7AXSmH1qPvoDdZmLqlfcbWuJ2vFsQ8+2YU47wUIYjRpAtrm
         t4oJXza8uhtCVQo8LZPEolCj5jjwOwx1boBRXLezcRtj4aN1fcM4zx0BGdthixUUXwmT
         qIl+6RtlPwdKLNNkyX4g+itaIW9fKZ0TiFfmcYmzPfMbQ9WGRKamevX+pgYY9HmBHl2o
         OoTn3xV6adHWW1tGeithYC5YIqvYvLAE99TG2zIhNSOYdbuYxGZ2MsDGoTuCD0ibRaHh
         gNIcVFOTaW+XwuXShk/pkDkQ8Yfs0E9LrlPAQVJkXCUjFnguJ/ZPvpgC4T5ZHu2RCEIc
         RtKA==
X-Gm-Message-State: AHQUAuY6aMUscIcGG0Vp58MijRKvz40qUB0wFh3n1PljRKWJKuSulrJ9
	i4gFWUqy0OqY5mfFG3F9nsw=
X-Received: by 2002:aca:3a87:: with SMTP id h129mr5548451oia.86.1551494524302;
        Fri, 01 Mar 2019 18:42:04 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id g3sm10826368otb.66.2019.03.01.18.42.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 18:42:03 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 6/8] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Fri,  1 Mar 2019 20:41:40 -0600
Message-Id: <f818032337f13f76dd677a64ac42ca5bed34e34c.1551494031.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifier for header file type based
on License Identifer syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/key.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/key.h b/drivers/staging/vt6655/key.h
index 0942d8703f98..9347776fa3a5 100644
--- a/drivers/staging/vt6655/key.h
+++ b/drivers/staging/vt6655/key.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


