Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD6D7A
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 15:55:38 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id q75so2805165qke.6
        for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 08:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=rMbcoiiKdv/dV0rlsS/FQYGQZIPeFQVaWwscYitL/QI=;
        b=YRNZpTBvwMwsyUrFbpP+BjkpSEVtqdFcqAlpPPL9bbxKXhbUQa7ILTITQ1IAcVjxIi
         bzFfrcCSATwnz9+lZrD9vmKp29H42kKYbQgagv5nx1qs/b2YShpE8VaokAhoSiCPK7K1
         A5D9RZTMAP8NaTokgnjp3TvD0TFe3XprPDaUvDqoCdMsShpRC5PoO61W//oB7ex2l/Ae
         Fr9fufIJBMudjbubOzyldnMF2Ky+vP98eLNNxAmzRqMBEWz3ue9/ZfAgAu8X3VonE8Xp
         Rcm93+Qky1I9JB6mmzOJQy9T4ddo7rz1o0aLVhR+3aWTDXABDkF/IBVoTEvzsSeqh5Le
         tvzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=rMbcoiiKdv/dV0rlsS/FQYGQZIPeFQVaWwscYitL/QI=;
        b=GXT4ihMYBdr6MaEaFndBx5vtD5L8tncKjhTPNaHegCRRgVd2N1TjRgpL+gt6p2d5od
         Qm6mdytB+K7BEmebtUoFnY0aNaf/Tsain1jnBBcct1hq5T1M71hVWyPsxm+N3nFJAAQX
         zrrMN32ceimNffrV74I8m+uDcbzfI+kGZJ6m2+DmvZkVHeI5soignqk+bwBJHME1oLiK
         bPM7HN5iae0z2FPuWcd4h2Br/miDeZHR5bYAIIR95byksoqpQ2s2NNPAtYOoQMJEWw9t
         /BnVjnhO10s0+tOK5whpgiiLn5N52bLVLnLfBVnGsZEyBe4sEMZlZ1giqm8E0ODgsFrr
         Wxgg==
X-Gm-Message-State: AOAM531NNBusumBDfCENSzMg3uKye0NwLayEDnQ7groFNY1eDBgPGgwb
	GkgGAyqN1goa9XNh2yXzyn0=
X-Google-Smtp-Source: ABdhPJxmIzes8LZK4xfGHhywE9zT25xBdalkv1rpFJ+BgSQtR/flsBb8kAo8/BmSkWH6ektrv4W6TA==
X-Received: by 2002:a37:9ad5:0:b0:69e:8c03:7e0 with SMTP id c204-20020a379ad5000000b0069e8c0307e0mr4025044qke.747.1650297337377;
        Mon, 18 Apr 2022 08:55:37 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id p13-20020a05622a048d00b002e1ce0c627csm8136969qtx.58.2022.04.18.08.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Apr 2022 08:55:35 -0700 (PDT)
Date: Mon, 18 Apr 2022 11:55:30 -0400
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev
Subject: [PATCH] mbuto: always display help message
Message-ID: <20220418155530.GA43865@euclid>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Currently, if the user is not root or if fakeroot is not available, no help
message is displayed. Parse the command line, display the help message and then
exit if the user is not root or if fakeroot is not available.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 mbuto | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/mbuto b/mbuto
index 49b8139..c9f0b18 100755
--- a/mbuto
+++ b/mbuto
@@ -1179,7 +1179,7 @@ usage() {
 # If we're not running as root, re-run with fakeroot
 if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ]; then
 	if ! FAKEROOT="$(command -v fakeroot)"; then
-		err "Not root and no fakeroot available, exiting"
+		__missing_fakeroot=1
 	fi
 	PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"
 	exit ${?}
@@ -1203,6 +1203,11 @@ while getopts :c:df:k:m:p:s:vh __opt; do
 	h|*) usage						;;
 	esac
 done
+
+if [ ${__missing_fakeroot} -eq 1 ]; then
+	err "Not root and no fakeroot available, exiting"
+fi
+
 shift $((OPTIND - 1))
 [ -z "${PROFILE}" ] && PROFILE="base"
 
-- 
2.25.1

