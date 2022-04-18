Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01383A29
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 16:55:26 +0000 (UTC)
Received: by mail-qt1-f169.google.com with SMTP id x18so4688294qtw.4
        for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 09:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=90APaw3gYAwmUXhCcVz0syTcxIJhDie/Qj6PZ3uugh4=;
        b=Oz4OCRKAPsHdqzaf8/WY1HOq3DXk9AxCjtYPbe9C1KgYQFGn5qmcWFmLY+RYokcYV3
         gJQ0nnJqk3oqJj8ekejoCjf4rQDuG6CBQPjBKgEU5JJp04QtiXrzGC2oX5oSy1O+b+IL
         CFzM0CYlmoIZvlkcU2BgSzAmGgpfrZG550O2TertnxdijkWScaah9/Q7BenMx7GMy2r6
         K04LbqcPRX9t7f2Qs1Qe/rn1Wt7naudxXXw5zyF1Ll1JR7a3ha3aFVawPL6TTKM0zTCh
         vepeJ+ECuCtO8zhuRWAdHgt1yT9uDKFFBXZbfu5RPamafsLuzlP4WNQc4HbQRGcINb4O
         jPIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=90APaw3gYAwmUXhCcVz0syTcxIJhDie/Qj6PZ3uugh4=;
        b=Hb6B+V7+3fMxwX85Hy5bl5ax3HTJTJn0SJj1pmbR1yCbLrmr6q9LCueDlNMqTaD9+P
         TmGYeDta7H4snJTOFrTyTXA9rKgxsipAJsQTTGyljn5x1RPFLxz/hkdedEwNmzop8OS+
         1GfVoqod8Nmoh3jJoi/KeZP6goKBadjKl37POO8gC/OysZGK834gmayQcXdaK0Lvtm9b
         7VaRM3av3eWvcYn1IVfzeXJKLsK3fUQJKgwIIlltSFYZ0/qBe4ar2HFOJEJzr7gew0d3
         H6vwFnbkcO4WvTUU+p7mbamy/iyWxGjISiNTYCqkRyN7b2EbsvoXnD6LKAYNkADhKL/c
         mpjw==
X-Gm-Message-State: AOAM531eJCfAkwaXXq24Xo0CZxpy0My3IRCpGoexYytLuayliCBw6PYC
	qj/ey6zKGfzqRPeeHS5FjNymBcqaUzQiYw==
X-Google-Smtp-Source: ABdhPJx+nDDNt5GE07hEOEqpQI6HeUeE63Dezd5wo0xvuSxD7B/VTsu7Ilu84t6zGLP2FCcn3kEUdA==
X-Received: by 2002:a05:622a:110:b0:2e1:f084:d855 with SMTP id u16-20020a05622a011000b002e1f084d855mr7773737qtw.198.1650300925827;
        Mon, 18 Apr 2022 09:55:25 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id m139-20020a37a391000000b0069e88edfdacsm2908699qke.105.2022.04.18.09.55.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Apr 2022 09:55:23 -0700 (PDT)
Date: Mon, 18 Apr 2022 12:55:19 -0400
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev
Subject: [PATCH v2] mbuto: always display help message
Message-ID: <20220418165519.GA54466@euclid>
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

v1 -> v2: Testing with fakeroot removed revealed some bugs that are now fixed.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 mbuto | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/mbuto b/mbuto
index 49b8139..26c4189 100755
--- a/mbuto
+++ b/mbuto
@@ -1177,12 +1177,10 @@ usage() {
 
 
 # If we're not running as root, re-run with fakeroot
-if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ]; then
-	if ! FAKEROOT="$(command -v fakeroot)"; then
-		err "Not root and no fakeroot available, exiting"
-	fi
-	PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"
-	exit ${?}
+__not_root_and_missing_fakeroot=0
+if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ] && \
+		! FAKEROOT="$(command -v fakeroot)"; then
+	__not_root_and_missing_fakeroot=1
 fi
 
 # Parse options
@@ -1204,6 +1202,14 @@ while getopts :c:df:k:m:p:s:vh __opt; do
 	esac
 done
 shift $((OPTIND - 1))
+
+if [ ${__not_root_and_missing_fakeroot} -eq 1 ]; then
+	err "Not root and no fakeroot available, exiting"
+elif [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ]; then
+	PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"
+	exit ${?}
+fi
+
 [ -z "${PROFILE}" ] && PROFILE="base"
 
 # Check needed tools, exit if any is missing
-- 
2.25.1

