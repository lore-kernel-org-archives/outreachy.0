Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFC58004E
	for <outreachy@lists.linux.dev>; Thu, 28 Mar 2024 16:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711641892; cv=none; b=nQFlKN/3htB8TK0l1UnzTZO11zXGVW5zO6V7xBKbXolzba1VvjQBK84DP3HFquATfGowZ3TRsJSLIBlwp754kLstZzIaVPMi4DQrP8qd5ssrqXLOuUJdm6g2S1UHcekVKTeCzEHsveFpezEaYfjYMciYrL2MqbgrlQOdsME4uC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711641892; c=relaxed/simple;
	bh=cFNL53wgKHM/0hLWPm8O7daOnoMrCmcZ6dFjPK62hPo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=V2biEoB4WexkTGRFr5s1f63DLzVENXid3w7kmbcaHHguSWHZTqb+REY97XzfQOyMgDvk0MUp8HxiQB2C+yJSUH/WB9+1sUfyyaL/X58sNNlysLB/7y0t7EqgYojNwa9RAGhuIpUNrNGa6IsUbkdONMWvpwTPqX/Yh1h8kjrv87c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ki/UFW2c; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="ki/UFW2c"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711641891; x=1743177891;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=cFNL53wgKHM/0hLWPm8O7daOnoMrCmcZ6dFjPK62hPo=;
  b=ki/UFW2c7wtZjNPmu00mnoaur6VXp7UYK6+KuQ7peHvUvF4sWOTMQ0zc
   8nmsn658IcRzjDc/R7/iF6wFMrmd25CwidQfHW2FQOhCDIkz7hZeUF1UO
   0g94+heRuAx+aiY8cTud92lUQH7Qe5yo/fPrzjst8kNp1ktr3f/+X5OaZ
   SxSgGGlHSmZaKEtXPGsuzwrbTJsclzNk3j5F90Mhjr8RhxiPNDlTfY+HU
   kmVQWRvWBmPkUsCo9FyQ9iK/l3zZynCNabiX7X4C/Bt36LgsxsHE0YJz8
   itTilfim7WpKgJE7pcQrnuoMmPRySbg7HGqvfxHa6XPgXsEMQwqx12ihb
   w==;
X-CSE-ConnectionGUID: 8bQ+C8zXQOCl1JHfXk2Jig==
X-CSE-MsgGUID: vyNU/OkER16B89Mgg0pD3A==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6657275"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6657275"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2024 09:04:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="47871551"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO fdefranc-mobl3.localnet) ([10.213.16.221])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2024 09:04:36 -0700
From: "Fabio M. De Francesco" <fabio.maria.de.francesco@linux.intel.com>
To: Dorine Tipo <dorine.a.tipo@gmail.com>
Cc: mic@digikod.net, skhan@linuxfoundation.org, outreachy@lists.linux.dev,
 Dorine Tipo <dorine.a.tipo@gmail.com>
Subject:
 Re: [PATCH v2] Add Landlock test for io_uring IORING_OP_OPENAT operation
Date: Thu, 28 Mar 2024 17:04:33 +0100
Message-ID: <5043999.MHq7AAxBmi@fdefranc-mobl3>
Organization: intel
In-Reply-To: <20240327132001.30576-1-dorine.a.tipo@gmail.com>
References: <20240327132001.30576-1-dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 27 March 2024 14:20:01 CET Dorine Tipo wrote:
> This patch expands Landlock test coverage to include io_uring operations.
> It introduces a test for IORING_OP_OPENAT with Landlock rules, verifying
> allowed and disallowed access. This mitigates potential security
> vulnerabilities by ensuring Landlock controls access through io_uring.
> 
> It also updates the Makefile to include -luring in the LDLIBS.
> This ensures the test code has access to the necessary liburing
> library for io_uring operations.
> 
> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> ---

Hi Dorine,

I'm adding inline a few comments and questions for you. However, since my 
experience with io_uring (inexistent with Landlock) is limited, I won't 
comment on the use of its API.

> Changes since V1:
> V2: - Consolidated two dependent patches in the V1 series into one patch
>       as suggested by <fabio.maria.de.francesco@linux.intel.com>

NIT: No need for an entire email address. Next time"Fabio" will suffice  :)

>     - Updated the subject line to be more descriptive.
> 
>  tools/testing/selftests/landlock/Makefile  |   4 +-
>  tools/testing/selftests/landlock/fs_test.c | 132 +++++++++++++++++++++
>  2 files changed, 134 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/testing/selftests/landlock/Makefile
> b/tools/testing/selftests/landlock/Makefile index
> 348e2dbdb4e0..ab47d1dadb62 100644
> --- a/tools/testing/selftests/landlock/Makefile
> +++ b/tools/testing/selftests/landlock/Makefile
> @@ -13,11 +13,11 @@ TEST_GEN_PROGS := $(src_test:.c=)
>  TEST_GEN_PROGS_EXTENDED := true
> 
>  # Short targets:
> -$(TEST_GEN_PROGS): LDLIBS += -lcap
> +$(TEST_GEN_PROGS): LDLIBS += -lcap -luring
>  $(TEST_GEN_PROGS_EXTENDED): LDFLAGS += -static
> 
>  include ../lib.mk
> 
>  # Targets with $(OUTPUT)/ prefix:
> -$(TEST_GEN_PROGS): LDLIBS += -lcap
> +$(TEST_GEN_PROGS): LDLIBS += -lcap -luring
>  $(TEST_GEN_PROGS_EXTENDED): LDFLAGS += -static
> diff --git a/tools/testing/selftests/landlock/fs_test.c
> b/tools/testing/selftests/landlock/fs_test.c index
> 9a6036fbf289..9c8247995d42 100644
> --- a/tools/testing/selftests/landlock/fs_test.c
> +++ b/tools/testing/selftests/landlock/fs_test.c
> @@ -21,7 +21,10 @@
>  #include <sys/stat.h>
>  #include <sys/sysmacros.h>
>  #include <sys/vfs.h>
> +#include <sys/types.h>
>  #include <unistd.h>
> +#include <liburing.h>
> +#include <linux/io_uring.h>
> 
>  #include "common.h"
> 
> @@ -4874,4 +4877,133 @@ TEST_F_FORK(layout3_fs, release_inodes)
>  	ASSERT_EQ(EACCES, test_open(TMP_DIR, O_RDONLY));
>  }
> 
> +/* Test io_uring openat access control with landlock rules */
> +static int test_ioring_op_openat(struct __test_metadata *const
> _metadata, const __u64 access, const char **paths, const int paths_size)

"access", "paths", and "paths_size" are not used anywhere. Why are there 
three unused arguments in the test_ioring_op_openat() signature?

> +{
> +	struct io_uring ring;
> +	struct io_uring_sqe *sqe;
> +
> +	const char *allowed_paths[] = {
> +		file1_s1d1, file2_s1d1,
> +		file1_s1d2, file2_s1d2,
> +		file1_s1d3, file2_s1d3,
> +		file1_s2d1, file1_s2d2,
> +		file1_s2d3, file2_s2d3,
> +		file1_s3d1,
> +	};
> +
> +	const char *disallowed_paths[] = {
> +		/* dir_s3d2 is a mount point. */
> +		dir_s3d2,
> +		dir_s3d3,
> +	};
> +
> +	/* Test Allowed Access */
> +	const struct rule allowed_rule[] = {
> +		{
> +			.path = allowed_paths[0],
> +			.access = LANDLOCK_ACCESS_FS_READ_FILE |
> +				  LANDLOCK_ACCESS_FS_WRITE_FILE,
> +		},

I suspect that you are forgetting the other elements as well as the final 
NULL element. Don't we need to fill allowed_rule[] with the other pairs of 
allowed paths and their respective access?

> +	};
> +	int allowed_ruleset_fd = create_ruleset(_metadata,
> allowed_rule[0].access, allowed_rule);

Please check how create_ruleset() is implemented. And pay special attention 
at this snippet:

for (i = 0; rules[i].path; i++) {
		add_path_beneath(_metadata, ruleset_fd, rules[i].access,
				 rules[i].path); 

It loops on the elements of rules[], working on the fields of each element 
struct (i.e., "path" and  "access"), but "allowed_rule" is an array with a 
single element. 

Furthermore, I think that you are forgetting a NULL final struct that marks 
the last element of allowed_rule[]. Am I overlooking something?
 
> +	ASSERT_LE(0, allowed_ruleset_fd);
> +
> +	int ret = io_uring_queue_init(32, &ring, 0);
> +
> +	ASSERT_EQ(0, ret);
> +
> +	/* Test each allowed path */
> +	for (int i = 0; i < ARRAY_SIZE(allowed_paths); ++i) {
> +		sqe = io_uring_get_sqe(&ring);
> +		io_uring_prep_openat(sqe, AT_FDCWD, allowed_paths[i], 
O_RDONLY,
> +				     allowed_ruleset_fd);
> +		/* Verify successful SQE preparation */
> +		ASSERT_EQ(0, ret);
> +
> +		if (ret != 0)
> +			return ret;
> +
> +		ret = io_uring_submit(&ring);
> +		/* Verify 1 submission completed */
> +		ASSERT_EQ(1, ret);
> +	}
> +
> +	/* Test Disallowed Access */
> +	const struct rule disallowed_rule[] = {
> +		{
> +			.path = disallowed_paths[0],
> +			.access = 0,
> +		}

Again, what happened to the other disallowed path and to the final NULL 
element of disallowed_rule[]?

> +
> +	};
> +	int disallowed_ruleset_fd = create_ruleset(_metadata,
> disallowed_rule[0].access, disallowed_rule); +
> +	ASSERT_LE(0, disallowed_ruleset_fd);
> +
> +	/* Test each disallowed path */
> +	for (int i = 0; i < ARRAY_SIZE(disallowed_paths); ++i) {
> +		sqe = io_uring_get_sqe(&ring);
> +		io_uring_prep_openat(sqe, AT_FDCWD, disallowed_paths[i], 
O_RDONLY,
> disallowed_ruleset_fd); +		/* Verify successful SQE 
preparation */
> +		ASSERT_EQ(1, ret);
> +
> +		if (ret != 0)
> +			return ret;
> +
> +		ret = io_uring_submit(&ring);
> +		/* Verify 1 submission completed */
> +		ASSERT_EQ(0, ret);
> +	}
> +
> +	/*  Cleanup: close ruleset fds, etc. */
> +	close(allowed_ruleset_fd);
> +	close(disallowed_ruleset_fd);
> +
> +	return 0;
> +}
> +
> +/* clang-format off */
> +FIXTURE(openat_test) {
> +	struct __test_metadata *metadata;
> +	const char *allowed_paths[11];
> +	const char *disallowed_paths[2];
> +};
> +
> +/* clang-format on */
> +
> +FIXTURE_SETUP(openat_test)
> +{
> +	/* initialize metadata, allowed_paths, and disallowed_paths */
> +	self->metadata = _metadata;
> +	const char *temp_allowed_paths[] = {
> +		file1_s1d1, file2_s1d1, file1_s1d2, file2_s1d2,
> +		file1_s1d3, file2_s1d3, file1_s2d1, file1_s2d2,
> +		file1_s2d3, file2_s2d3, file1_s3d1};
> +

Can you please say why you are defining both temp_allowed_paths[] and 
allowed_paths[]? 

> +	memcpy(self->allowed_paths, temp_allowed_paths,
> sizeof(temp_allowed_paths)); +
> +	const char *temp_disallowed_paths[] = {dir_s3d2, dir_s3d3};

I have the same question for temp_disallowed_paths[] and 
disallowed_paths[]. 

I see that they are initialised with the same set of information. Why don't 
you define them only once and pass references where needed?

Thanks,

Fabio 

> +
> +	memcpy(self->disallowed_paths, temp_disallowed_paths,
> sizeof(temp_disallowed_paths)); +}
> +
> +FIXTURE_TEARDOWN(openat_test)
> +{
> +	/* Clean up test environment */
> +}
> +
> +TEST_F_FORK(openat_test, test_ioring_op_openat_allowed)
> +{
> +	test_ioring_op_openat(self->metadata, LANDLOCK_ACCESS_FS_READ_FILE 
|
> +			      LANDLOCK_ACCESS_FS_WRITE_FILE, self-
>allowed_paths,
> +			      ARRAY_SIZE(self->allowed_paths));
> +}
> +
> +TEST_F_FORK(openat_test, test_ioring_op_openat_disallowed)
> +{
> +	test_ioring_op_openat(self->metadata, 0, self->disallowed_paths,
> +			      ARRAY_SIZE(self->disallowed_paths));
> +}
> +
>  TEST_HARNESS_MAIN
> --
> 2.25.1




