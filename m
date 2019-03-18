X-GM-THRID: 6667995620579475456
X-Received: by 2002:a67:7c41:: with SMTP id x62mr11780933vsc.45.1552929921978;
        Mon, 18 Mar 2019 10:25:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls3608257vsc.3.gmail; Mon, 18 Mar
 2019 10:25:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx+hpdxm9ofaJYqIuxnblNAzT9j+n6Au6KzuFWrVSvQvFaLvaWUwmmfhy0eolWlaJ4nN4nm
X-Received: by 2002:a67:7e0f:: with SMTP id z15mr4105102vsc.24.1552929920560;
        Mon, 18 Mar 2019 10:25:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552929920; cv=none;
        d=google.com; s=arc-20160816;
        b=XaXDmrKjiITELQegCR/5ygJlsYAYyL2GwXyqYxm1kE/CpRIXrVvNep5Q4JQU2OxoH0
         +UpRqUz69fdbyTKXPRWLnqNqiG/k/SAsFihQDFF0sRw2liA3bxxEryC6D7Sgfy+fxau9
         kLaLnQ4AVCLH0ytg5TbEu2wA0rarm5laarc7H7i7r5RLI8KEbWWNThpNSqcW/QZrci62
         pmYrSEtMBaFyyX9WikL9mNoUBPZPtr5BjlJZ6UCddENoEHKVHzUr50xw0NSlZlJPzwog
         W8aDpS4BOKVaH+AAAQHPujccix0itMrTUxdWzI3Fj+8RdRpZNgqNGAoFQTIsOp7JkbmU
         R+FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=j3V6AbjiV4RsnXqBzbkR69BPrpKgmeGYeSstVWnLDz4=;
        b=hFPX0foHbSXBJvI8gfvxCie5daJt/TQwcwkNYWobNt0OGHXRiLiZbM7+zlm3taSR3c
         NsazET6ZuJrFZ9jzoiWRz89nRvVr723i4388tE1CoIb7UJQxomH+DMjrE0JkvHFg2Yve
         LRwL7uFvqqLbqPYJJKZra1wPdFKjGGm1a0uo12xuaotM0UESvOSylAnKlKQQXjzk+bmd
         37h66hhPVb8M54hsMDQLO3mtMrj+cGVhwF/ETMkWyV8/2EaxyS3dPEpN0p3R2RfKLO1Q
         53lBBwHx697h2sFO4rLltqBLZTFNZ5VI5nxboGR9ndoaBfJceIRHX23shM4axoeLTiJR
         tccQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QBe5ZUu+;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x12d.google.com (mail-it1-x12d.google.com. [2607:f8b0:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id 12si326129vkg.3.2019.03.18.10.25.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:25:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) client-ip=2607:f8b0:4864:20::12d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QBe5ZUu+;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x12d.google.com with SMTP id m18so5013725ita.3
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 10:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to;
        bh=j3V6AbjiV4RsnXqBzbkR69BPrpKgmeGYeSstVWnLDz4=;
        b=QBe5ZUu+fWB5SJ8LdGRPbI6rLj3TJQEf4lAtffPapdB/mHVt9Xw2Jzlqc2htG8rrwE
         0mR+XpRrLnWQa3M2aQKTTuT0BD1mB1P6HBCXfByak7sz7iBkH9y9UX0TNlC3MRp1+r+L
         Cbb0JODmZiyQCVyeWnqRpM88mXcNARh6t6lOZAy2wc50Hgb6/DlvRpxiLorZBNtWIxAT
         pP1vdBzI1K1pZ0Ct4RBZMiAdmNRTdy26kA0Ndi7faMGsbDfCSUKhGVFZSuk9tPKG4fp1
         fOxVztT+A/RbEWp3gOXKsy9Bn7awr4aJT8vXYP+50kmuyi4NT9jhuVb1OHqAEaJl7A2T
         dAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to;
        bh=j3V6AbjiV4RsnXqBzbkR69BPrpKgmeGYeSstVWnLDz4=;
        b=dmA/IH1wnnrZSdTOz6eSfe658G/w8Crv30oZGdb762v28tlr+pJd3tutTc/b3Ze8Nj
         IrjHWrvIlA3CPDql9u/g5oeRdZsJzkpjX+Tf0zFo16nT7sJy1LArQ+MrnoAFwySUtR7e
         FAik3CS5kt0lDja2y4eUKjPVcdcMen7OEUgwHH+LOeLF5amIqZPZFA5khir8QcGKwv0m
         9NGFjIQP6IGGmZ4vvaLbPz3j2qv74wN7oPpU9y3EHmAfCCl4VvuGIeJz56aU7w4cBP1w
         JRizJ0GI/5ru1ntY/zJLnhQI4qcmTwuWjEm48oKBWCxz3ocwjOxCGm3u8lsdkD/cFFnT
         k8aA==
X-Gm-Message-State: APjAAAX73X1f715NjUcuutQPiflqBQo7zjVH7psU/dYZzqOK242TLpXJ
	j4OFXCgNnGPpanQsaMEC+g==
X-Received: by 2002:a05:660c:68a:: with SMTP id n10mr11858097itk.154.1552929920298;
        Mon, 18 Mar 2019 10:25:20 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:10b9:a837:3f7e:30cf])
        by smtp.gmail.com with ESMTPSA id o17sm4550018iob.62.2019.03.18.10.25.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Mar 2019 10:25:19 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Branden Bonaby <brandonbonaby94@gmail.com>
Subject: [PATCH v3 2/2] staging: wlan-ng: line over 80 character limit
Date: Mon, 18 Mar 2019 13:25:06 -0400
Message-Id: <e158dc88264eb7e8104e8833f54726ca3dece999.1552927880.git.brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: 4ac095466db03b6d17609ffac12a95a7daeb4df7.1552927880.git.brandonbonaby94@gmail.com

Align function to prevent it from going over
the 80 character a line limit for readability.
WARNING: line over 80 characters

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index da4e6db36679..65199908501c 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1368,8 +1368,8 @@ struct hfa384x {
 void hfa384x_create(struct hfa384x *hw, struct usb_device *usb);
 void hfa384x_destroy(struct hfa384x *hw);
 
-int
-hfa384x_corereset(struct hfa384x *hw, int holdtime, int settletime, int genesis);
+int hfa384x_corereset(struct hfa384x *hw, int holdtime, int settletime,
+		       int genesis);
 int hfa384x_drvr_disable(struct hfa384x *hw, u16 macport);
 int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport);
 int hfa384x_drvr_flashdl_enable(struct hfa384x *hw);
-- 
2.17.1


