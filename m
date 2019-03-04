X-GM-THRID: 6663863789016842240
X-Received: by 2002:a24:9fc4:: with SMTP id c187mr470877ite.23.1551728766861;
        Mon, 04 Mar 2019 11:46:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls5833091jaf.3.gmail; Mon, 04 Mar
 2019 11:46:06 -0800 (PST)
X-Google-Smtp-Source: APXvYqzhAVwAwHeky+dba6h2hn+NJKxSZy12IsLhRNXRAUrv/xVne2C6E0htPQNQrf05fK4MVgOe
X-Received: by 2002:a02:cd8a:: with SMTP id l10mr8141277jap.10.1551728766003;
        Mon, 04 Mar 2019 11:46:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551728766; cv=none;
        d=google.com; s=arc-20160816;
        b=i5vsOQcNkJmIc1Hnw1ejBPu7w6KEQGE+LFtMzRFN8ypEj09vHmUrtCQ1PoHq25hNOB
         Wb2Yn7BWV/oeEiQZuEsEN2GXQlOx10iDKEHRRBWXsj8kB8qVYlJFdTDLKjkERAtCP/Jv
         KfmACqavNrjHl8SK1a0U042IGWk8x/aEkLESEl8/bv6gUMKECr9GY9XhC8etUyI7Wr2V
         D9ISPgbEywb5JDYPtXJuJU518I4MOpclCjLVbdsCQ45GOpyFQWWNut/ivphXcU7OJWN0
         EOcVtvf/jM9SY+w09cCLqyt2reKCvCimSGHfJz0eWN2+dBekQzDM7NzzMpxBrX13WPRN
         lM0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=/rWzBHMAcxKjeFwK1iabBCNK2826oNiS8hORbNU2sSk=;
        b=BVHblZiuG7/uGaypptiM3LLNf9owtF0yjw2OQzO+UNQ/MaU0XXy8uKWfjqDiwNnFUA
         XicLAIXOxX4hqHH02ndoTbzChMLAX4VHXLg9XEh3WP1GhoPPK5Fwk+QdD+0cIr4nAKiX
         XFvof3wPuIDQrYMDzske3wJZo8kIX1D++kW7pzY3bqrpYvN4rvfRVYTAKa6yDpRkpguC
         0RCseWwHpTNgfoaUut2Uxn0+779uOzBghIlZC3Z+3xwthwBbvBkXuDAh5q9bAKWzaUeI
         WtyRQt3AA2e7G8W4+N6D/IgDMu+UV7sZl1jSRG6pmKWcWT0LcYpKNpIUluW9yFIGUVP/
         4TPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LpsROzeK;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com. [2607:f8b0:4864:20::335])
        by gmr-mx.google.com with ESMTPS id x22si462978ita.0.2019.03.04.11.46.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 11:46:05 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) client-ip=2607:f8b0:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LpsROzeK;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x335.google.com with SMTP id 98so5292603oty.1
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 11:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/rWzBHMAcxKjeFwK1iabBCNK2826oNiS8hORbNU2sSk=;
        b=LpsROzeK4q5FuIXkxsj6OEPge0p7s24SRBMtabHrYW0bw8V7OsRMXp0V/dvRp9CBAb
         kQsqrIqMjOOzAgK9eRRzyOxZ1Xru+88+UYQU+dpwu2LQ/VmHk5SpWrBReqSBCqy+HHaH
         5rmFEOJEY0uf/HzgBWzsUCAVSUxaA1VGxRGQAUJsyhyoBrUwXobymi7XXH9ibQU3RHZE
         b/QxwiclVyLc6FlmZq2X06tOVLi9GaUvJvtVUj4DWTl1rYGcxEnVC/jkSHir9hds1Qoo
         kAeUQqT9cVZiwuyD/p3A0MIqVV6M7tetc1yt8y7+hSGQAnohMebQvBkKR1v3zIU+tBcw
         kaGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/rWzBHMAcxKjeFwK1iabBCNK2826oNiS8hORbNU2sSk=;
        b=kgG2wDjSGgRrqOHndaAUQyQIY1uB0hdkJRFjkEsc9b/T/HdCBhvwTjvlwFyKVnDBTG
         9IsDnzi0IYGoP8wIYOJGRBbufFnBYzC3zxeZz4HFJFxerU0R1EKRJs84rd+MKmcCXJta
         WmZnkLkvokJZyeXSnzQ1h1QyRTdC85zmfa509rRXEFErKAcA1MU7vyY5ZPgF/TYUrCoP
         EgaBtHc8IlPK06HWadWuVy/4Npi6mG0LoP21tvmvGMVKMZPHe7e98bBm5zhiIJV/7cjI
         AXcFFL4UmvK1QibEj6k/m8ybAxCVP5gGz8p6ZZ3Pp07ZzHW6fSuVGgEwK26UZIYpYG+c
         cibg==
X-Gm-Message-State: APjAAAXq5Ho9z7Q5zUh1Qrp6gvUjOnNcNvz6hsGRBQh5bf69N8vHhn1c
	wfyMU2gTFj3AR/7Z88+OI3M=
X-Received: by 2002:a9d:16f:: with SMTP id 102mr14161622otu.16.1551728765659;
        Mon, 04 Mar 2019 11:46:05 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id b185sm2793189oii.1.2019.03.04.11.46.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 11:46:05 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v6 0/2] Fix checkpatch.pl issues 
Date: Mon,  4 Mar 2019 13:45:54 -0600
Message-Id: <cover.1551727866.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551718323.git.madhumithabiw@gmail.com>
References: <cover.1551718323.git.madhumithabiw@gmail.com>

This patchset fixes the comment styles of SPDX-License Identifier based
on License Identifier syntax.

Madhumitha Prabakaran (2):
  Staging: vt6655: channel.h: Fix comment style of SPDX License
    Identifier
  Staging: vt6655: desc.h: Fix comment style of SPDX-License Identifier

---
Changes in v6-
- Changed changelog below the Signed-off-by for both patches

Changes in v5-
- Fixed subject lines for individual patches and versioned the patches

Changes in v4-
-Fixed matches in subject lines of the patches

Changes in v3-
- Fixed commit log and version number

Changes in v2-
-Included cover letter in patch set

 drivers/staging/vt6655/channel.h | 2 +-
 drivers/staging/vt6655/desc.h    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.17.1


