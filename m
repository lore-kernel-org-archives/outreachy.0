Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00932567
	for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 17:27:39 +0000 (UTC)
Received: by mail-qv1-f41.google.com with SMTP id b17so9649388qvp.6
        for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 10:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3Lzsxif7JnXMrz0zpcGKI/2MEGM+KwY72b00enXWEfE=;
        b=T3YY3yVZfr8qudbg14haTMAcQDT+TEZXomeBG9YFd9kxc630S9nM/fDbvrWpcRe8mD
         mFYu3MYEm3vymbs3W1PKP2Ngvi/xOBDMGPCjRdBIctUO/uCUSVCfmJYVflE5/yhFJgqd
         glRHdWSM9J2PzLxzN/PDqQRZc37DDTcn0CQ1jz8OVzYa6F4pMkV+aRaSYE3o2L7RzIio
         uA9lv84zjF6IrYkqTtpplinaQ4rjEcBHk2+bp6EI5oIQAIhoDtYGpidQURizf+8RiDOQ
         2t8tsiIvvr67ndFLaVxf0yGaC+fQeBF0/m2MYLcWmxLOOAWa+P1c+ycGwQrBSsO22n+u
         Mn5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3Lzsxif7JnXMrz0zpcGKI/2MEGM+KwY72b00enXWEfE=;
        b=wGdb+B+ojf79Rtt/pVKsz0zX/jaG8LUBbZITmyzjk2Vnyk/gzE7VGG67jKajIV5Ol4
         MI6bDrTx8LjujQSfJCa9ofW3s/mZKauXdqrutOkwCNv2xqIObwoskH3mA0visg9L6IGL
         zSff7ebtdJZoMC5Gyv9l+A/najfPmIR2Gexg6afFNCvDJXFrilpg3mA06V4qo0Z6OH7P
         mjO0lcEs4pLASEn0LqKxQ5LqYct4uS7Pr7NF548Vz/OEgEQGBGcLfaPKcTEWO9jpf1EO
         RbIAGRVLiawpTZW5T3TSHBSnuEh8Z735pQ6CDfmHoK8ujAsKWP3Q6pMBeZmww/mTCNFH
         3McQ==
X-Gm-Message-State: AOAM533GTWanB0A1tsvRR/JfBGLau2QFftoP0lth0XpGxB65csfsRwZI
	bvEv1D2iYupSrgSNEHSD/zs=
X-Google-Smtp-Source: ABdhPJxxlcwit91/yBy3l2BkBMKhBQdS9d2Z0KXAWzs3KyA8aFSgdyPFVXm7ShROjYqJ222CQLLSUw==
X-Received: by 2002:a05:6214:2128:b0:445:3722:e393 with SMTP id r8-20020a056214212800b004453722e393mr5485390qvc.112.1650216458770;
        Sun, 17 Apr 2022 10:27:38 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id k66-20020a37ba45000000b0069c5adb2f2fsm5558928qkf.6.2022.04.17.10.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Apr 2022 10:27:38 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev,
	Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Subject: [PATCH 2/4] mbuto: undo commit 6199e368
Date: Sun, 17 Apr 2022 13:27:19 -0400
Message-Id: <0210ec267f4562f13391dc5d0a3913391f54a13c.1650216230.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1650216230.git.sevinj.aghayeva@gmail.com>
References: <cover.1650216230.git.sevinj.aghayeva@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 6199e368 moves argument parsing before checking fakeroot and saves the
arguments in ARGS variable. Unfortunately, passing ARGS to the recursive call
flattens and removes quotes, which disables passing multiple arguments to
suboptions, as in -C "net proc". For now we undo this commit to enable multiple
argument passing to suboptions.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 mbuto | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/mbuto b/mbuto
index 4565a19..44b9a56 100755
--- a/mbuto
+++ b/mbuto
@@ -1159,7 +1159,14 @@ usage() {
 ################################################################################
 
 
-ARGS=${@}
+# If we're not running as root, re-run with fakeroot
+if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ]; then
+	if ! FAKEROOT="$(command -v fakeroot)"; then
+		err "Not root and no fakeroot available, exiting"
+	fi
+	PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"
+	exit ${?}
+fi
 
 # Parse options
 while getopts :c:df:k:m:p:s:vh __opt; do
@@ -1182,15 +1189,6 @@ done
 shift $((OPTIND - 1))
 [ -z "${PROFILE}" ] && PROFILE="base"
 
-# If we're not running as root, re-run with fakeroot
-if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ]; then
-	if ! FAKEROOT="$(command -v fakeroot)"; then
-		err "Not root and no fakeroot available, exiting"
-	fi
-	PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" ${ARGS}
-	exit ${?}
-fi
-
 # Check needed tools, exit if any is missing
 for __l in ${TOOLS}; do
 	cmd_check "${__l}"
-- 
2.25.1

