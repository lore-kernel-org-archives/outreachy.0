Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F63129A8D
	for <outreachy@lists.linux.dev>; Thu,  4 Apr 2024 12:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712233009; cv=none; b=OSZkOZ6gDKVYMH0a9o2v0G5Je79Z/1jVYGzs87z0vb2uodH8BXi4+zfBHVl2QJCGH0F8dt40GSf6eM38/RqtOV+Bt20lSiT/nqN4WI+z5h174m4+sAFrK+zfbN6DgfCN5ySq4A87n/tyL22uwaOy8xStzgJwBFpN95n7/qFEd5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712233009; c=relaxed/simple;
	bh=OrnyRAznfz0HaoBMmuRRvJwgEktTbAkUuzxqcJvq3Bo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=W1LD16cUjpLo6BKQt5LG+OYLmDkyOTc2DgDMzTnElEFcU4cVPYXDDJbJNZvz4iOmzYygeomdOEejXlX+0VVFlJ909o8yP2Shf3eksuOEaCvzrvjnwktv8lwlX1LLXvQSuc29JBggIhP0vTeTJVAG5UnPZh5K5we4Lw3ZSOEtVBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WJvQXeHG; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WJvQXeHG"
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-56e2393b073so281440a12.0
        for <outreachy@lists.linux.dev>; Thu, 04 Apr 2024 05:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712233006; x=1712837806; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8AAXdi6UnwgE8mvtF9U8oApK2XyGAr7kUWfIztB0ZU=;
        b=WJvQXeHGkwTPFjK4NvPnZdlZgHFQfieLcMTDC0L07vJkwTHCsB8jI4/tG9+Y41Mno4
         8DmrIMIylT0QxRCbt8IoZQvUQdvB2ojeJzX3seYnmmYulX+Iy0DoZ05JtkNwUXjD8qWU
         AXb0cppE4Px45LPx2i9ysBb/sGi25QbNps4q1POcQKO7moXUFjANLYbo438y9xswbxVQ
         Eldx5/z9hDQYBZNxkA+7koXvwIRsLzIsRTfPc3WEcKAQQb6juy5sZAQ7Hh6+B2hyd7Yd
         xb4n7Bb1CIQiQwsq/YTzL7bomqI9DHJXVKH9pFfz0V1LccFx7lRVzkqkDa6cdeDk5BTo
         4KSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233006; x=1712837806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c8AAXdi6UnwgE8mvtF9U8oApK2XyGAr7kUWfIztB0ZU=;
        b=j2zCdgcSJxG9Nar6OhHw+ri9UR+ynqCzuWayh9McU8NabMZJdi+xVyxTDHT/i3lJ0c
         9H5eUyusYUSvftg4UMF5lZswpIgLlRDSDodg4UuDWeitp2L1Un5gp5rtLql0sHBzhC08
         80Za28HZKk8FLHjX2hfh9wazEfvVkseTCE1PGIu4AjLvBAlJIprNu8HzAGDND0xlx0Nv
         gEkLMIPTjnhpOvMgvoTn8+Cp30hVpA9i4ZYGym7htG9VY0mFjquxl2Wx2Q0ai/SxC1Oy
         87GJOJdJibXewj5ccI+1i3LdpADHlNNNh2vnTAGNuk2B/z7mR3gjLrKK9ukhsDGu3CBu
         79KA==
X-Forwarded-Encrypted: i=1; AJvYcCUU0slCVjLY3dV6tYeedsMyVUxeJBhVSN1+zFKPuVDl0j9aS2lBCFLlh3YGoUNZpCxTvnabPDX7qWkFWSO7goNInjNoy/9Iz775
X-Gm-Message-State: AOJu0YxAncqeIJtOMj+roUeyJLajudBYAp1JKFHyiLsHC5IgAppidp9P
	ZaWlUEgGzG6pOYvsao4DUI28CjY4B7llzqoRy9GJIF8xilq67Iqd
X-Google-Smtp-Source: AGHT+IHI+m/JUz68f3ZXkP11/1Bukju4pMSINUlPdlcJzyhLnmLRJ29mVu0SsOgQem3HUZoxhIqiuA==
X-Received: by 2002:a17:906:af0c:b0:a4d:fb90:4a4e with SMTP id lx12-20020a170906af0c00b00a4dfb904a4emr5193795ejb.2.1712233005512;
        Thu, 04 Apr 2024 05:16:45 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id h19-20020a1709060f5300b00a4e30ff4cbcsm7948001ejj.194.2024.04.04.05.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:16:45 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>,
	Linux-kernel-mentees-request@lists.linuxfoundation.org,
	fabio.maria.de.francesco@linux.intel.com,
	skhan@linuxfoundation.org,
	outreachy@lists.linux.dev,
	linux-security-module@vger.kernel.org,
	Paul Moore <paul@paul-moore.com>
Subject: 
Date: Thu,  4 Apr 2024 12:16:21 +0000
Message-Id: <20240404121621.9162-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240402.MooNaiJoo2cu@digikod.net>
References: <20240402.MooNaiJoo2cu@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Subject: [PATCH v3] selftests/landlock: Add tests for io_uring openat access control with Landlock rules

> What is tested exactly?

The test_ioring_op_openat() function is testing the enforcement of
Landlock rules for read-only access.
It's specifically checking whether the Landlock rules correctly allow or
deny read-only access to the specified file when using the openat system
call with io_uring. The test does this by preparing a submission queue
entry for the openat operation with io_uring_prep_openat(), submitting
this operation to the kernel via io_uring, and then checking the result.
If the operation is successful, it means that Landlock allowed the read-only
access as expected. If the operation fails, it means that Landlock correctly
denied the access.

> +static int test_ioring_op_openat(struct __test_metadata *const _metadata, const __u64 access, const char **paths)
> +{
> +     int ruleset_fd;
> +     int ret;
> +     struct io_uring ring;
> +     struct io_uring_sqe *sqe;
> +
> +     /* Test Allowed Access */
> +     const struct rule allowed_rule[] = {
> +             {
> +                     .path = paths[0],
> +                     .access = access,
> +             },
> +             {
> +                     .path = NULL,
> +             },
> +     };
> +
> +     ruleset_fd = create_ruleset(_metadata, allowed_rule[0].access, allowed_rule);
> +
> +     ASSERT_LE(0, ruleset_fd);
> +
> +     ret = io_uring_queue_init(32, &ring, 0);
> +
> +     ASSERT_EQ(0, ret);
> +
> +     /* Test allowed path */
> +     sqe = io_uring_get_sqe(&ring);
> +
> +     /* Prepare SQE  for the openat operation */
> +     io_uring_prep_openat(sqe, AT_FDCWD, paths[0], O_RDONLY, ruleset_fd);

> Can you please explain what this call to io_uring_prep_openat() do?

io_uring_prep_openat() prepares the submission queue entry for the openat
system call. In my tests the call to io_uring_prep_openat() is preparing
an openat operation to open a file at a certain path with read-only access.
This operation is then submitted to the kernel via io_uring, and the test
checks whether the operation is allowed or denied based on the define
Landlock rules.
