Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF9B3D994
	for <outreachy@lists.linux.dev>; Tue,  2 Apr 2024 08:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712045302; cv=none; b=joBqbBU9C47LQ2dUiJI4tFCnnGk+Ix9cO27+jmSZKpfBfR2Rx7jYXLaVYQT87DH7veFE9Yu28pqj1y+krkHSRksLkaym9nGPvnGxsJQyJJGGvnUoUx6xHqmVdyLBB9HbcJwU2cJyAcbqHVgt6dAm0fEJR7kGs47AIRhT4U2FhQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712045302; c=relaxed/simple;
	bh=RvjIoEFCnlt4dJMFpZZIOO4Sc8JyrvCLEP31AeMdHHA=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=onOKE3kQhVxa5zZruCh/vGlckMwpH+i2+81gnA36Kgw7Y1tA4jvaW1wI0qFgmCRS82XUTcuFff/WDD7+A9eZhEhPqB6ieCwBHqa39lSjaZuEqUYLsypt1kcMt7IACVfOp6VRutNFy7P0gTfJAxZgjBwPqH0QP8DfrROqXJugUnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HnQI7sKh; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HnQI7sKh"
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1e0878b76f3so35087515ad.0
        for <outreachy@lists.linux.dev>; Tue, 02 Apr 2024 01:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712045300; x=1712650100; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cXS4cJz05mC2M6wLT/RtjR7duIEuJE+jEDewfgJLeHk=;
        b=HnQI7sKhCM6hUbLBzR5TecZg3Jd5N7svipZae37Y5mDWDHjAhj7nIoFBUtLsFmyGWb
         z9sXTZof9j+LnNmDK+mlhlNFwVjYA/ckx4GYPD3qIz+yG6NKR80QylpVHfckPMmNDQ+7
         7GcILmA2w2KRSoZAOFu4g4I0t/k2qu4YeY2Jwv4RCLZu/cv9HQzH0mr5005Hyt+JjAQQ
         5USUet+5bj0vRzbPstjoQnAkTTtaUumFurR0wekCNF4f+zkrGi3lhyvRfjp8QD1nT0XX
         ByRP716aCqTJ5gY11WfET2sl9FNXgvbhbMq55bE9j8EpSTVv8Vk4vVzTmzST5iOqmpPx
         l5Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712045300; x=1712650100;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cXS4cJz05mC2M6wLT/RtjR7duIEuJE+jEDewfgJLeHk=;
        b=o6BEfNePmPCpnpU0L36Dty+zjPvgv3ht5cx8pu6RLpRX/tJjb5ckGlkskgwdXLMze7
         sQ5MMgz9qs/dwazzeaj1uHGjx66rkEAKqXbyjhOw/cuFurO4MILkI3nxPdS+rxEg4DnR
         TG0PtktufkgYIMZjrlwC7q535jLKSVhe5vCDadTyCPKY+kBse4U4xVFabp/3hfxLycyX
         lnybOqBgv2upZOOPmdud1HeNFXoKgcVJyAx/vyj8TVI73bw2APMNYoobLUgGWxnmTotx
         XyEGrgag3SEwt3+W6q/SvVE8RbUJZz4F8LJW+69zzCaxyCNqyOZUc2nL0oxofFOkVOrB
         ZEhg==
X-Gm-Message-State: AOJu0YyFX5yKhJQPM/qmNchSsYcwE1adgUVSMflyoBAjbR/Ab3Tfte43
	U7X7NagpOE05rTZ2e1NfqoSzLXfM7H9XkpswYO96mRwzqkEz0HYCJh0jH1YKK1t+H4nC
X-Google-Smtp-Source: AGHT+IE34CFOHQtWBVwkAC+tfxS3OlSnWZqxk6sERGtnE+HKd+m7AK82BE8k/HW5JOx8TzyByc9RTg==
X-Received: by 2002:a17:902:f68e:b0:1e0:c070:b082 with SMTP id l14-20020a170902f68e00b001e0c070b082mr23405632plg.14.1712045299863;
        Tue, 02 Apr 2024 01:08:19 -0700 (PDT)
Received: from [10.0.2.15] ([103.111.134.151])
        by smtp.gmail.com with ESMTPSA id b15-20020a170902650f00b001dda64281a9sm10575031plk.85.2024.04.02.01.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 01:08:19 -0700 (PDT)
Message-ID: <860c9cadb2fa06c8f10db42ad38405ee19d43a16.camel@gmail.com>
Subject: Subject: [PATCH] Add test for more file systems in landlock - ext4
From: Saasha Gupta <saashaa1122@gmail.com>
To: outreachy@lists.linux.dev, mic@digikod.net, 
	linux-security-module@vger.kernel.org, linux-kselftest@vger.kernel.org
Cc: alison.schofield@intel.com, paul@paul-moore.com, shuah@kernel.org, 
	saashaa1122@gmail.com
Date: Tue, 02 Apr 2024 13:37:44 +0530
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

Date: Mon, 2 Apr 2024 19:59:56 +0530

RE: This patch is now properly preformatted.

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

diff --git a/tools/testing/selftests/landlock/fs_test.c b/tools/testing/sel=
ftests/landlock/fs_test.c
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
+			static const fallocate_argv[] =3D { "fallocate", "--length",
+						   "4M", "test-ext4.img",
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
+			if (!WIFEXITED(status) || WEXITSTATUS(status) !=3D 0) {
+				TH_LOG(stderr,
+					"Failed to create ext4 filesystem image: fallocate failed\n");
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
+			static const mkfs_argv[] =3D { "mkfs.ext4", "-q",
+					      "test-ext4.img", "mnt", NULL };
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
+			if (!WIFEXITED(status) || WEXITSTATUS(status) !=3D 0) {
+				TH_LOG(stderr,
+					"Failed to format ext4 filesystem image: mkfs.ext4 failed\n");
+				exit(EXIT_FAILURE);
+			}
+		}
+	}
 }
=20
 FIXTURE_TEARDOWN(layout3_fs)
--=20
2.44.0


