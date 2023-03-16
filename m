Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3631520EE
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 08:20:44 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id gp15-20020a17090adf0f00b0023d1bbd9f9eso4568019pjb.0
        for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 01:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678954843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kTCGCOoDJTxIEcj5bZXvO/9uvZr0Hq0Yj/9WZl7ZrcM=;
        b=LYfWJ2Im6lx8NmcnsrXeODvku8gcbTvbt9carygzY+TwIPeiu1A33V+kNAb7EPte92
         0hbI0dZBniexpxPcHjkIDK+v0cSGSbsJPuqDIldmeutDJ4zpaXZUkZv3Mp+dHKmywp/p
         h04H5tfWUP2FdZbfJsbzDWlw9KQTuCgpFqergXH9QpouFFeK1VJDvmb2ZgZCajm5708j
         4V0e4DnMp0TVLUckRKfK1owtAM3P0g0nzEsh97UAUxAHqsdQalhvQEww2YHfbZHqLKAI
         /c4bPnpQMjHblyyG0Z35Lj9QQwuWz/1eYVyRFM8hobDVRAe7P7KhUFmCZ8PTL5VHS3XW
         IG9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678954843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kTCGCOoDJTxIEcj5bZXvO/9uvZr0Hq0Yj/9WZl7ZrcM=;
        b=uPG0mX62Kd+4WqoYLC1I03LfVDEh3BEvF/fIi++l+OwfhBSkbsTFxRawiBhA5bMm6k
         GmHVgOVBOkHgdKer7Ts0x5WmmdJtIIi8XkQ5ZAYjLU8zQTZ6loZWtgIcdyyz63Kqflq+
         7z08AqPfgBrNJKCWmu4zsZthHsfL/9xfren1qIDiY1GyHjeRg50cgs/vofYjp0Qdzrih
         9g09pXlBQUjuAdAPbh7nW76xGuWqbqCRntPXxwdKr0QfcfVNVk5nvvwXDwhRwQawGeXl
         K6+Zq5Gqwfi9l9BqVqpp2aPE3Jo3rLWUfvsACeq84fia0lMA96I/lBGQ0YNhCQuvoxMU
         uE5g==
X-Gm-Message-State: AO0yUKWxBe9mwk5yWYSdp5J09noTZM/o2RdmELvKL/Eks8TGhdS+3+Ou
	2em1iFCBDt6iOQt6w7zS2q4=
X-Google-Smtp-Source: AK7set91QijUBosQWbwaN6tYo42UuCgbepN6LgMJtsHMDX0vNygxCCjiKUpvz1HALzap7+2pLzhIiA==
X-Received: by 2002:a05:6a20:28a2:b0:d6:5b4d:3704 with SMTP id q34-20020a056a2028a200b000d65b4d3704mr2504937pzf.14.1678954843511;
        Thu, 16 Mar 2023 01:20:43 -0700 (PDT)
Received: from debian.me (subs02-180-214-232-12.three.co.id. [180.214.232.12])
        by smtp.gmail.com with ESMTPSA id x52-20020a056a000bf400b005a8b4dcd21asm5031137pfu.15.2023.03.16.01.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 01:20:43 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id F3F3A106628; Thu, 16 Mar 2023 15:20:39 +0700 (WIB)
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Documentation <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Outreachy <outreachy@lists.linux.dev>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Akira Yokosawa <akiyks@gmail.com>,
	Alison Schofield <alison.schofield@intel.com>,
	Kloudifold <cloudifold.3125@gmail.com>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Subject: [PATCH] Documentation: submitting-patches: Disqualify style fixes from Fixes: tag
Date: Thu, 16 Mar 2023 15:20:34 +0700
Message-Id: <20230316082034.14191-1-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.40.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1357; i=bagasdotme@gmail.com; h=from:subject; bh=9Ccoy6InasjXBSua2evwgPqlaLuGC0nVBJcOlvJaLvc=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDClCF/3ur/SWuHvxPt+tjII3EvPUW84mHNfTmVj36Ez6z 8gndy6bd5SyMIhxMciKKbJMSuRrOr3LSORC+1pHmDmsTCBDGLg4BWAi6+MY/tnlzYs8/D5zYtPW fMOYyO7/KepNN7VclmV9iGZzb9+rxsTI0P5YVE+l6YrY5Enyd//Prcm5tX3HrxO5sf/0OLZYPNj rwwMA
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
Content-Transfer-Encoding: 8bit

An interpretation of submitting-patches.rst regarding Fixes: tag
interprets that the tag can be attributed to all kinds of issues
(including coding style ones). However, from the discussion on Outreachy
mailing list [1], Greg noted that the tag should not be meant for
patches that fix coding style issues.

Clarify the position on the doc.

Link: https://lore.kernel.org/outreachy/ZBFPnZbvdI46Ah6r@kroah.com/ [1]
Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 Documentation/process/submitting-patches.rst | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/process/submitting-patches.rst b/Documentation/process/submitting-patches.rst
index 69ce64e03c70f8..564418e42ffc01 100644
--- a/Documentation/process/submitting-patches.rst
+++ b/Documentation/process/submitting-patches.rst
@@ -568,6 +568,9 @@ process nor the requirement to Cc: stable@vger.kernel.org on all stable
 patch candidates. For more information, please read
 Documentation/process/stable-kernel-rules.rst.
 
+Note: Fixes: tag is appropriate only for real issues (e.g. reported bugs
+or compiler warnings). Coding style fixes should not bear this tag.
+
 .. _the_canonical_patch_format:
 
 The canonical patch format

base-commit: 6015b1aca1a233379625385feb01dd014aca60b5
-- 
An old man doll... just what I always wanted! - Clara

