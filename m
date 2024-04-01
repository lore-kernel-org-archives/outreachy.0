Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09CC54BD3
	for <outreachy@lists.linux.dev>; Mon,  1 Apr 2024 21:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712006392; cv=none; b=H9kk4Nogc9PzcJyq4xihcJurLDD/ERkfIoYnXbHCiDT7DbjUs2yZSKQpv9DBEyFEkjAHTsQbhpPHGxiuFjXl52HvUGCsVINWGKzaQgnHeUYH+ZXtJblp7MkQZEr4fUNSP6NpC3gSqFK6RYie/PP25O0wv4oN9HAy6CRiOzh2Aqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712006392; c=relaxed/simple;
	bh=kdpmtDg4h+ZaTEw599M0gGG7yvAN5EtrhRYwskEeHao=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=s2/Eejn6D2E7CVr3dhW/L9i9TWdwVtA79eob71wxjPlvdaBpY75HdmPIvq7vsSX9OHDmyI3YRvcONcvnWJwXGcylCPnITD9YxYbWs5SZcD0atBx5LcEHsJdlFHpSG2kcai24uBq08ZXfDMyryjS7Yodq6facPKwRiaOktE+4RTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B5gAQdQD; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B5gAQdQD"
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1e244c7cbf8so14133795ad.0
        for <outreachy@lists.linux.dev>; Mon, 01 Apr 2024 14:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712006389; x=1712611189; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=qatYW0FVH4vK7aU+YtR0sJpjoSbWBUdIZVdcV4l8QGY=;
        b=B5gAQdQDw07tYCIkPAqCWr5e8Srmmj0/lyt8ayR5+MddIyIa0/QDj1bzzr9PyKrIR1
         jvj/SYaZ2J0rGJ0XN6o9hnkpAs2HHOzpjXnvQM6ltvrxE/OOpoH8iJoFkv4U9BGrGslu
         dbh+BV7cQlRVSRCd/D2slBWyl2OxKTafKU9HNn7+iucIHuQ2k1UFm7+FJT81O9/ZXnzb
         4xRoKX6yjrc8vaQmYKBDinFoto4DkS5BYAF2EnFC2TxEcPN/7FZ0ilxkBzj2FCPkSo5E
         CcfxhKXjHenClaHvZ5GGJpaZgaf9L5CEB1OrwQBvqiPv0YCZLQS7HqNHvkoNWCElNenc
         s0Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712006389; x=1712611189;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qatYW0FVH4vK7aU+YtR0sJpjoSbWBUdIZVdcV4l8QGY=;
        b=Ih8h03KD+LM94M7RH8iMyAVJdIAXZcnlspZl0WfOSfv6q+UcnQIkJ9CG1Oggna/Q9N
         CTCvgkyLFgwdQIXm1zYB7OZ7nkmySaiuhTQJ7uYobsda+rhZiEMK7+1GrL+JJdCjhhm0
         5poHMTdxctR/Tth5lmhnDzC077QnSbzdmEnZ0PI1kAe+nLNWaKj1sloHfM9BG5KOk/Ft
         gdLe/D5ZnyUOAdskP2zwlkmhdxyCSid16MXBTBB67OqQ2+aWuyYc/p4RdMScoQOJ+gT0
         Hy0V4iIV8RVZZbtnR6gR4Y5FVwKRfEQn7qU4zF8BU7LcQb0+uf5OWCJtl1nKVb0erLOH
         YtDA==
X-Gm-Message-State: AOJu0YyPgRyy9KoAWh3WxUg6BCOfdFwsX1pjBJiYKpN2/pFWnm43W3AS
	fQHz99LwgaGqpR2/kGjr6DTXhpN1rbHlYGpPGpFOQwrX1Wn0skUuCTCwlnLx1AiKF59QU34=
X-Google-Smtp-Source: AGHT+IFyatp8pZR7m4gdRImie5+Pxs8LyqcglgAU6FWLI1nl9divwmsv0dBs9FwBXQCCuhdsSLfAqg==
X-Received: by 2002:a17:902:ea11:b0:1e2:3e0a:fc61 with SMTP id s17-20020a170902ea1100b001e23e0afc61mr9242312plg.34.1712006389310;
        Mon, 01 Apr 2024 14:19:49 -0700 (PDT)
Received: from [10.0.2.15] ([103.48.100.252])
        by smtp.gmail.com with ESMTPSA id kv7-20020a17090328c700b001e0d8fd208fsm9449296plb.291.2024.04.01.14.19.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 14:19:49 -0700 (PDT)
Message-ID: <4398bb88a2f3b58646267e3d6ceb5414c86b65cb.camel@gmail.com>
Subject: [PATCH] Add test for more file systems in landlock - ext4
From: Saasha Gupta <saashaa1122@gmail.com>
To: outreachy@lists.linux.dev, mic@digikod.net,
 linux-kselftest@vger.kernel.org,  linux-kselftest@vger.kernel.org
Cc: alison.schofield@intel.com, paul@paul-moore.com, julia.lawall@inria.fr, 
	saashaa1122@gmail.com
Date: Tue, 02 Apr 2024 02:49:14 +0530
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

From 7bb9c34291b295e192155d2b800d2ef7ce910dfc Mon Sep 17 00:00:00 2001
From: Saasha Gupta <saashaa1122@gmail.com>
Date: Mon, 1 Apr 2024 19:59:56 +0530
Subject: [PATCH] Add test for more file systems in landlock - ext4

Landlock LSM, a part of the security subsystem, has some tests in place
for synthetic filesystems such as tmpfs, proc, sysfs, etc. The goal of
the new issue, and hence this patch is to add tests for non synthetic
file systems, such as ext4, btrfs, etc

This patch adds tests for the ext4 file system. This includes creation
of a loop device (test-ext4.img) and formating with mkfs.

Signed-off-by: Saasha Gupta <saashaa1122@gmail.com>
---
 tools/testing/selftests/landlock/fs_test.c | 65 ++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/tools/testing/selftests/landlock/fs_test.c
b/tools/testing/selftests/landlock/fs_test.c
index 9a6036fbf..b2f2cd5a5 100644
--- a/tools/testing/selftests/landlock/fs_test.c
+++ b/tools/testing/selftests/landlock/fs_test.c
@@ -4675,6 +4675,14 @@ FIXTURE_VARIANT_ADD(layout3_fs, hostfs) {
 	.cwd_fs_magic =3D HOSTFS_SUPER_MAGIC,
 };
=20
+/* Add more filesystems */
+FIXTURE_VARIANT_ADD(layout3_fs, ext4) {
+	.mnt =3D {
+		.type =3D "ext4",
+	},
+	.file_path =3D TMP_DIR "/dir/file",
+};
+
 FIXTURE_SETUP(layout3_fs)
 {
 	struct stat statbuf;
@@ -4728,6 +4736,63 @@ FIXTURE_SETUP(layout3_fs)
 		self->has_created_file =3D true;
 		clear_cap(_metadata, CAP_DAC_OVERRIDE);
 	}
+
+	/* Create non synthetic file system - ext4 */
+	if (stat(self->dir_path, &statbuf) !=3D 0) {
+		pid_t pid =3D fork();
+
+		if (pid =3D=3D -1) {
+			perror("Failed to fork");
+			exit(EXIT_FAILURE);
+		} else if (pid =3D=3D 0) {
+			static const fallocate_argv[] =3D { "fallocate",
"--length",
+						   "4M", "test-
ext4.img",
+						   NULL };
+			execvp(fallocate_argv[0], fallocate_argv);
+			perror("execvp failed");
+			exit(EXIT_FAILURE);
+		} else {
+			int status;
+
+			if (waitpid(pid, &status, 0) =3D=3D -1) {
+				perror("waitpid failed");
+				exit(EXIT_FAILURE);
+			}
+			if (!WIFEXITED(status) || WEXITSTATUS(status)
!=3D 0) {
+				TH_LOG(stderr,
+					"Failed to create ext4
filesystem image: fallocate failed\n");
+				exit(EXIT_FAILURE);
+			}
+		}
+	}
+
+	/* Formate and mount non synthetic file system - ext4 */
+	if (stat("mnt", &statbuf) !=3D 0) {
+		pid_t pid =3D fork();
+
+		if (pid =3D=3D -1) {
+			perror("Failed to fork");
+			exit(EXIT_FAILURE);
+		} else if (pid =3D=3D 0) {
+			static const mkfs_argv[] =3D { "mkfs.ext4", "-
q",
+					      "test-ext4.img", "mnt",
NULL };
+			execvp(mkfs_argv[0], mkfs_argv);
+			perror("execvp failed");
+			exit(EXIT_FAILURE);
+		} else {
+			int status;
+
+			if (waitpid(pid, &status, 0) =3D=3D -1) {
+				perror("waitpid failed");
+				exit(EXIT_FAILURE);
+			}
+			if (!WIFEXITED(status) || WEXITSTATUS(status)
!=3D 0) {
+				TH_LOG(stderr,
+					"Failed to format ext4
filesystem image: mkfs.ext4 failed\n");
+				exit(EXIT_FAILURE);
+			}
+		}
+	}
 }
=20
 FIXTURE_TEARDOWN(layout3_fs)
--=20
2.44.0


