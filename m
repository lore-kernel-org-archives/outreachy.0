Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF16D17CA
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 04:03:20 +0000 (UTC)
Received: by mail-qv1-f47.google.com with SMTP id x20so5808297qvl.10
        for <outreachy@lists.linux.dev>; Thu, 14 Apr 2022 21:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=L96pSfq/y/LU5Ii+9L+Ld5DmAuLv3zyEzL5USs8GnHE=;
        b=mcNaQX4MejtlAZX4/BNaGW9UBAcI0w/GMK5wK229Bs29y6tzFpVgyzMkaP/8Jqm+au
         M9Qe0fCtMmi6Hu9KNht9Q65xjoDYtLlOMWqw+AmVspmkkA5Pbv6cEvvS3gnAEpTxUwdK
         CIy6eJiKaH1tE/peEkUbOnTS2ZOK6n5G+BdOyuGApRl55TaFTDT8QsSz5SyYAiqn8w1Z
         5qGJ68cxCo8P9pkapOe0c3QyP4mT4/Hd3swZZWlZ/fwl22Key0QxOKphepyK03V50+LN
         /RT/zS39Wu0bfklisOMeF2NzwDsfW8YPHYVdWefefDcliftcMquihiqLWQvvK3ZzaQzT
         Kgbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=L96pSfq/y/LU5Ii+9L+Ld5DmAuLv3zyEzL5USs8GnHE=;
        b=HVQBOKoNwBjnnV69XLVK5Iwc1buFo0zAPzPNivNMn/7Sfheg/0H2P0HOBc9B2PZz44
         SKeeTgW3fDDc3QRbziyYVI2fdQXNWrO7OcFKJKXvcHJwhFzY9dBhToUpv172K1XwoxkX
         XuuStwhn6mM/FiUgVzge6dugh3QnetSFy6+nx6f5kZcuSCsLlikTLeyYV+yVJlPx/nvW
         7rqPjgwnUg7k8N9lPw3g5+9+WDojVnkBtXq2Gmv/T7rM0TBSOEo4bdov6yY9vfjlR4va
         fACSE8e1RYPSf6bzX00N+htTqxjdLVGBq3g4Aqk0+0YYRLB2j+N+GcGIXjZvquZbmcjd
         +HOQ==
X-Gm-Message-State: AOAM532qLZaEha5uzXBGO5xOSplxCDQ02kMVnbHfPClAq+dKTJiJIVWM
	bE9CkkqP8WDGeVfKwoFnnQE=
X-Google-Smtp-Source: ABdhPJxFLSBqqq9CRgK2y+X9QCK9WRtEWeVuz6JLrwtoUaIAji9YOzb/FCgrra0VsaHm2OXxedozrQ==
X-Received: by 2002:a05:6214:2469:b0:446:356c:474c with SMTP id im9-20020a056214246900b00446356c474cmr1741395qvb.102.1649995399668;
        Thu, 14 Apr 2022 21:03:19 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id v67-20020a379346000000b0069bdb3bb132sm2007258qkd.37.2022.04.14.21.03.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 21:03:19 -0700 (PDT)
Date: Fri, 15 Apr 2022 00:03:12 -0400
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev
Subject: [PATCH] mbuto: add a function to find the difference of two lists
Message-ID: <20220415040312.GA769838@euclid>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Adds a function to find the difference of two lists and use that function to
determine the list of missing modules.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 mbuto | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/mbuto b/mbuto
index 74c81eb..14176c3 100755
--- a/mbuto
+++ b/mbuto
@@ -245,15 +245,8 @@ profile_kselftests() {
 
 		KMODS="$(${BASENAME} -a -s .ko ${KMODS})"
 
-		__kmods_missing=
-		for __n in ${__kmods_needed}; do
-			__found=0
-			for __f in ${KMODS}; do
-				[ ${__n} = ${__f} ] && __found=1
-			done
-			[ ${__found} -eq 0 ] && \
-				__kmods_missing="${__n} ${__kmods_missing}"
-		done
+		__kmods_missing=$(list_diff "${__kmods_needed}" "${KMODS}")
+
 		if [ ! -z "${__kmods_missing}" ]; then
 			notice "WARNING: missing modules: ${__kmods_missing}"
 		fi
@@ -426,6 +419,22 @@ workers() {
 	while ! ${RMDIR} "${__sync_dir}" 2>/dev/null; do ${SLEEP} 1; done
 }
 
+# list_diff() - Given two lists, $1 and $2, returns the tokens that exist in $1
+# but not in $2
+# $1: list
+# $2: list
+list_diff() {
+	__diff=
+	for __e1 in ${1}; do
+		__found=0
+		for __e2 in ${2}; do
+			[ ${__e1} = ${__e2} ] && __found=1
+		done
+		[ ${__found} -eq 0 ] && __diff="${__e1} ${__diff}"
+	done
+	printf '%s' "${__diff}"
+}
+
 ################################################################################
 
 
-- 
2.25.1

