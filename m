X-GM-THRID: 6661088091510407168
X-Received: by 2002:a1f:1b82:: with SMTP id b124mr7761661vkb.11.1551108971310;
        Mon, 25 Feb 2019 07:36:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab84:: with SMTP id u126ls486800vke.0.gmail; Mon, 25 Feb
 2019 07:36:10 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYR3tGAfy+dilKyD0PgO80re8ceBeMb+7jePnVvOIxtWRuIHugmZANLdl+oY+u0tX3w6vTq
X-Received: by 2002:a1f:f8c1:: with SMTP id w184mr8842415vkh.13.1551108970672;
        Mon, 25 Feb 2019 07:36:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551108970; cv=none;
        d=google.com; s=arc-20160816;
        b=i51rt3JzRGUVQYQz0TL9H38bgdcfD3+ZMjC/i9Hp5LmJ7yFw++VZ3tayIWQupy67xr
         ZwZCkLILMnnGO20pILe3/uC5752fWmtUhW2VmTE8T3jrhGqc/J4/Hj8tmUf9Chg0Cb1G
         A74FsT2zAPQKY3l0KVsn7rTWWVMtBHFa0C6HVVOjZxysk2/5/8JOA+2z3pgvSzHvH5Z7
         nNOicNB2+NyiKYZ0lDGK6sGZo8T7O5QAHeg1gE/4DSz4GGwB691cnVawu7tq4SHjb3YM
         7N71K3icsLfHjf9P8zffMfWdPSOsuzJZcbtKFg+GcZD4b5yYLG8YPhwCmlwrRubt+W0i
         xyTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=uUwEbGN2erls4pkHz/8rOjhdNLxHd5Kmxs+a/RBo168=;
        b=TXJSVeL0PJREYAW416rOBmbbYtsbtyFKeslOXe6xaQk4kg8s5X5YHXiO5NhGbgrMsX
         gZYUdaXQWNkvSd+vfnHBtJGLiZ2WV2PtiE98GbNrDP1yBFXE1aTlFz1mmGd/kPgzhACc
         gqAK8xyxU2kK3tBxtWrKDr6bccar6LOiHb49X6NFwUimbaa2XUw4E/zpcRE8r2gXx6UA
         Fp0o+HuQGkKyOW/yc3NFGdrQ1Qe1+IiIesWCNQMwxWMJeaHrWzWXXBGosjoceQscbaj2
         EMzT8yW3U9EpOHSHv+k4PL0iE/9s8fZl1eF9SVRZsP9ReQptb6QQ7qXxueyiZA5xOnA1
         C4cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NIF6XqHK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id b19si407422vkf.3.2019.02.25.07.36.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:36:10 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NIF6XqHK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id u9so4648677pgo.7
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uUwEbGN2erls4pkHz/8rOjhdNLxHd5Kmxs+a/RBo168=;
        b=NIF6XqHKbRgCHcZSWusiaw8uxzCWzoapdcz/9kL3PeEDb2M+PA8MkhWZ4ihHWDzMDc
         xjEDWDBEktSOiIxJnIPpFzyCwdIv/z3mSe+bwFnSWCOrpvoyiZJZY6klKcbrVVjdsizc
         11S6eVdRiKKMCNSstjHHIjW2NCbmcUaTWnQ4eEpQD8e4QbLqXeY68ycG36lu7KhKpwAf
         O5chSB4ukE/aoEaPH0ydadDH9506EiJMTugjUzkIRhfG9ZDouKvHelZyxKHXkOuStWbR
         hJoqmWAz+ThnM0QDGeO7hpFhyYrMIENlkwF4v4VV5QWpqxzEzamesraNVP4bqmwwli3Q
         HfWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uUwEbGN2erls4pkHz/8rOjhdNLxHd5Kmxs+a/RBo168=;
        b=OJYJGQg16agCN28HGZLMa7BDFFCVqYC+L/D5sWhOEaUugfT6HPq/1K328mDWkFytSl
         y27a6ENho5rk70j18l/vr0GAdsSuiKkPTgu9NrpirGGnW3gquq8SloII94r+zO4kdOuZ
         YVq4vhkOPdiv4jWThqvUG22WpxDEJk/ar3ZJMLepDp/gOGWDELGh8hYaFSZoHV/IqxTB
         Fq4rMP7RoTWHRmPLC+fwzOtbSDJYlIhxf9qpnp+E/KItCd3pLMwYlaqnN3g7aG7YJ8Tp
         IywR0P0NCLh3bd34Sc9PuMsQ+JfXId2YDLB0LWMvF5umSqWtDr5/XDtt9j5ei1EUCQo3
         /dRA==
X-Gm-Message-State: AHQUAuZj/oy+J27TYCE5fYPd3z/v7sU1OtMreUk0CVTIFI9di97Q07Vs
	+IEz2xR69QejBw8Lnic7cbFM7Zfx26Q=
X-Received: by 2002:a65:6683:: with SMTP id b3mr19563527pgw.423.1551108970138;
        Mon, 25 Feb 2019 07:36:10 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f18sm14048855pgf.26.2019.02.25.07.36.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:36:09 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder clear <elder@kernel.org>
Subject: [PATCH v3 2/4] Staging: greybus: Blank lines not required before '}'
Date: Mon, 25 Feb 2019 21:05:44 +0530
Message-Id: <20190225153546.10484-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225153546.10484-1-bhanusreemahesh@gmail.com>
References: <20190225153546.10484-1-bhanusreemahesh@gmail.com>

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


