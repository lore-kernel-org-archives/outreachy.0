X-GM-THRID: 6467951789613252608
X-Received: by 10.46.80.25 with SMTP id e25mr665765ljb.26.1506066767649;
        Fri, 22 Sep 2017 00:52:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.85.202 with SMTP id g71ls150lje.14.gmail; Fri, 22 Sep 2017
 00:52:47 -0700 (PDT)
X-Received: by 10.46.21.29 with SMTP id s29mr1121225ljd.25.1506066766985;
        Fri, 22 Sep 2017 00:52:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506066766; cv=none;
        d=google.com; s=arc-20160816;
        b=FkhScS5DzLkH4+lfWm5t8dyxB03Bm5uxAmTQcWBbDFhHsNiMkRgIMBRF2+sVXtytmd
         iN8y6j7PpKQmv0UGqX7Zy1fjU53gAc5566MBYBH5Q8NGoCC36+7nB614H6vokn1paRZk
         gW0JIHiAHVJwZOjuC5i5XeHUtBhjdOnbQGyKeSR+sCmOmljoYxG4u4acuAHS5WXXRfWo
         n8qHUPOLfq/Jp1J+NwJHW+uGypc15zJodSXecTGIJeiSkK6TnX7UI4ozxo5krksuvDkb
         zU5hGZ0wYBR4qk0Zx9aM/DIXZ2/dF6Oy6R8rfZNUzGKzjM/Bpb3U1FfD+apgH0OHC31f
         9vWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=CcQ3ljSi1FcqoeEnUh5zQ581gWQm6LuRiGSMUsmu3Ws=;
        b=DO8JrYeh0rRmUbfEvl9enatt4Kb9atNOv5944xfOBPfvWbogZdt7jziJEOLR7bJKjV
         G0gycAgpaiAKfYAJWpeozV4eJHCH7e0/WNeLaBNeCM0uF21OBLlLnby/YHJBlSEbO9vt
         IehRub/IM/CmXhNSrdRgbI7pa9sX5y1CWhWR+oWcP9dLsMWpODJz6CfpLHuOVUyYF98e
         uZvAfpIsgnzk/GjOjdn90C0yrdxym8APHObjQdM2jwmxYRD7M7plKVHdgRARdHhEVtgM
         sRpkhVKM4s++FxmDiTq3etdAA+BJWgy3C6ImymGMrQtTQjcGQ6/fRzUnFnqvod4hdqFg
         YiUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ebX6jlT+;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id d82si243695wmd.1.2017.09.22.00.52.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 00:52:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ebX6jlT+;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id m127so512997wmm.0
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 00:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CcQ3ljSi1FcqoeEnUh5zQ581gWQm6LuRiGSMUsmu3Ws=;
        b=ebX6jlT+d+dj9UzCVRIhlV4laQNpZRJ2gD0zAD0BiUjWCY893FQZuD5ScMje+sbSVq
         1xibKpNYhfXEtyo8ZzDP8tLY1EAO8KyKeqN4P1dY/8Ko2X97zcnGSjDbcNqwKx2u1PiW
         0hQ0sfOc3vPrRjgqA4jOYDIpTi81Hc/ZM+SgLE2nxreGcHm7lVaUCRdIxcVcBtUTHi1a
         JvgWCCg96RVkfFvfUDijSPBHA9szkDbmKWgkmjqmcrTlrjUxgCb5yV2W8sdQq2ehMg/A
         zY/smtOFiultRctWs/v57wCJZG26UbNADcqtaNNtjpobG/qTt3bL7xGxMEEfY34PLRmr
         e+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=CcQ3ljSi1FcqoeEnUh5zQ581gWQm6LuRiGSMUsmu3Ws=;
        b=EMHu3B0+Z80PCRn4lq9eXYrpwjsxjU3O7m2moNLavt+SZW9QJKMxHZ1VN4OmCtXc17
         OruviY9LgCBGi8r8FPt0VWVinb7wHP98Z9gbwuU7pmim2hpue9i/eL3vBnoLusprGv3g
         vZS8XADugaD8VjRaNoQw9O37lpZlO9m7y9/tHIVnYStrEbW55zmGVfZ8OAvORBrpqwb0
         hdsKZPiyHph/yx7bgtVc5N5fVehPclHBFOBlhPtCYxySBiDdTXAxsKJmtjSVTzKhVAoa
         CW/UQgjXhlDN7HY8xu5ED7GhB6fkcMlnfxm/wr05NQjzSRZ46DC8hJBuK64RlyAC05oH
         2Lcg==
X-Gm-Message-State: AHPjjUgGFP967inounZNfbwl1W3es63zrOJFNm1YcmLCnt4nsmTGWlWV
	YIHXQCoxeEa32jnSZ0TiW68=
X-Google-Smtp-Source: AOwi7QBndP0K6S37oFnvQFpENZYIAYKheLgeuQkAwLEFiomC0OOmXJSSm7ETPJrEeKHqQnWYHgzRsQ==
X-Received: by 10.28.60.8 with SMTP id j8mr2858757wma.16.1506066766762;
        Fri, 22 Sep 2017 00:52:46 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id f188sm2978760wme.21.2017.09.22.00.52.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Sep 2017 00:52:46 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Samuel Ortiz <samuel@sortiz.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/3] Staging: irda: net: Do not initialise statics to NULL
Date: Fri, 22 Sep 2017 00:52:12 -0700
Message-Id: <438d38d0151022c814595f48c670c0f1fbc1d20b.1506065957.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506065957.git.georgiana.chelu93@gmail.com>
References: <cover.1506065957.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506065957.git.georgiana.chelu93@gmail.com>
References: <cover.1506065957.git.georgiana.chelu93@gmail.com>

There is no need to initialize static variables to NULL
because they are stored in .bss segment. This segment
is initialized to 0 at the beginning of the code execution.

Issue found by checkpatch.pl.
ERROR: do not initialise statics to NULL

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/irda/net/irda_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/irda/net/irda_device.c b/drivers/staging/irda/net/irda_device.c
index 890b90d0..3501478 100644
--- a/drivers/staging/irda/net/irda_device.c
+++ b/drivers/staging/irda/net/irda_device.c
@@ -54,8 +54,8 @@
 
 static void __irda_task_delete(struct irda_task *task);
 
-static hashbin_t *dongles = NULL;
-static hashbin_t *tasks = NULL;
+static hashbin_t *dongles;
+static hashbin_t *tasks;
 
 static void irda_task_timer_expired(void *data);
 
-- 
2.7.4


