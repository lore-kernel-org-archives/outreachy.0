Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4891373
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 11:19:14 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id c11-20020a9d684b000000b00603307cef05so880810oto.3
        for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 04:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KadArFvzGN0vjjHctUCz2D0KHHo4AWfMoHgl9oGcXV0=;
        b=efUbmaJ+hK5/eo0c801MFSNKfMdjkLH1PODhYzVgVy6xWSBL7HDSKa7Pz5klboL+0A
         7DfqtIBN7QOaf8c9sPUMPIAwcLzXVPMocbuF/GLIHjV+0vURPRY1idjI8hqKdjMQ4Pin
         o6JgNhajCMU6bZnf2cmE/3PjuUgC8UFU1mx3xh3Juo4MEeL7P6QAV3ArWtSjWykrY3OX
         tV9gm7UATVVbXhVSQQbFKnXsM3aMmPNFoKWyc7hMOcXrb3n3Svbfd3GUYjCfyVbQcNTR
         1F99wIZ9gK3ZbhsKqM1kQhd4ex57mPaznrV7WhSBHEDhArY4uIMtBSZT+VaAiAbld2SP
         e9XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KadArFvzGN0vjjHctUCz2D0KHHo4AWfMoHgl9oGcXV0=;
        b=M9P7zOp7hlmDRyYUdbOAIAb2yR9OtGFhzBMcqNKCriXJXQCPsxRqBLAHefs6zwBEhW
         ptINkKNMp/7uY+FneZV++v31EYV8imTj6n3gA1XZ7jZ0zNWt2TtvzTNYrfgYgYPshuoh
         LCqgbJofjjoxNszLXNGnsUTftDu8Bg0Rd5bffEUpRmEvfUgJCX1tiHyTF4ca3Utg6um9
         DPZ0kcVaRHVzV5PuFsHn4F1D4GiFGBISsFe/+37cGMF5SoqfPRIhNW8OZ0f5IeHQwRqA
         uFi2EFely2fwtJcLXuKe7dk48G7BftShgHPlxcv4VyEjP6Ife5tNsrj1hZb8SD3cQEm7
         k4FQ==
X-Gm-Message-State: AOAM531DiGuJanfiYMln/P1pmNbbX4HRLC6C7CxwZjzUB0ugBfam5wPQ
	f/AuZBlMQ+hrcGvKmAjLgZg=
X-Google-Smtp-Source: ABdhPJzdklnuDqor0UNqYZX4Il6pCuIYRti2R1k7WVjPv3qiH4n0Hib51Mk1DRzK9/7+ro2C94Xatw==
X-Received: by 2002:a05:6830:4123:b0:605:6523:bfd6 with SMTP id w35-20020a056830412300b006056523bfd6mr681918ott.128.1650453553933;
        Wed, 20 Apr 2022 04:19:13 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id l14-20020a4ac60e000000b0032993003287sm6550188ooq.38.2022.04.20.04.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 04:19:13 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH 0/3] memblock tests: update style of comments
Date: Wed, 20 Apr 2022 06:18:59 -0500
Message-Id: <cover.1650452552.git.remckee0@gmail.com>
X-Mailer: git-send-email 2.32.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These patches update the style of comments for memblock_add_*() and
memblock_reserve_*() functions to match the style of comments in
tests/alloc_*.c and remove extra spaces in those comments to conform
to Linux kernel coding style.

Rebecca Mckeever (3):
  memblock tests: update style of comments for memblock_add_*()
    functions
  memblock tests: update style of comments for memblock_reserve_*()
    functions
  memblock tests: remove extra column of spaces in block comment

 tools/testing/memblock/tests/basic_api.c | 153 ++++++++++++++++-------
 1 file changed, 109 insertions(+), 44 deletions(-)

-- 
2.32.0

