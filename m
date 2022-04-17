Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA0E2567
	for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 17:27:44 +0000 (UTC)
Received: by mail-qv1-f48.google.com with SMTP id b17so9649554qvp.6
        for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 10:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vKTtbL4ChUQMWVWtQvafu3bl7a0OhdRnGgNcCyGAf5o=;
        b=iwGVMBqxiaMz+KLSJ1MlKf8pt+kQaROkLPSOG6ekJ4IunTJi9x5zQt9bw+ABfbnCxx
         aDd25GsFUnDQ329QdWwmdWIDgBFzeCqSaImSaZc4VahOWsDSK+PzaZZFQCf+oH6sxxH9
         whf4DMnkZDFGwX88cj5S2GyBWT9+n/HYWRgKcovhIZzoHVX+W/jDPjlKyTXQ3KTv+Ng5
         V/kCbD7j1AsGY4qFc5xjQctWEhc5BzOcJ9m3P/9KtmKND+6A2DQ5hzL8Zrb8W8jET9+N
         or10aPRrB07IVaxl1Ikcag5WAZLpTYrSbT619m5/gOrf2yk2kBdDTKOILVFb8E6AKXu6
         p6kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vKTtbL4ChUQMWVWtQvafu3bl7a0OhdRnGgNcCyGAf5o=;
        b=FGs3MIBhMfFdn4ekFX+BDlJcRMYiANACxVCh03/UibHv8IFuOfo+NxVB8pjABO5xUs
         CUQMQO34tNtymcdASV+5iHz6SfZN0QrM4XPSsc+tf0Pv8YCqidK1dgrqU32WxCksK7Kx
         W7PuBvYxQKjSdp4hAI04zOEnVZSbpEf0z36FEfJqzdImsrpZIZdHPJtTT70RQ6rK7Ln2
         9PFIlvJQuV5r32famAaaT+ogUExKXuVcZdr4xPq8hmUMdLck9JGmMNh6UhyUvoTs/ssD
         457J3FyN/kZ87/1XaBVNngrURkDwcQJsv+CeDWVH7i2PdY0NELIlrbCy0sQLvfV3IC/9
         Licg==
X-Gm-Message-State: AOAM532OJiYYnz2MJ/rPHo0kt7Qaix3qmUZ1YHx1SxIUgqa8lBHwr6HF
	w3AXu7FRERhyifZW4iJK2ayr8p9YOzPYQg==
X-Google-Smtp-Source: ABdhPJyPoxuDYa7CnNrxO0ELcu1GPsJ5SCqmOgZ29w97aXDzvoWYruyQGWo8RO77Aaemis+nSiCopg==
X-Received: by 2002:ad4:5dc8:0:b0:446:493e:aed with SMTP id m8-20020ad45dc8000000b00446493e0aedmr4515203qvh.92.1650216463482;
        Sun, 17 Apr 2022 10:27:43 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id x22-20020a05620a099600b0069e5db6be55sm3453709qkx.36.2022.04.17.10.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Apr 2022 10:27:43 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev,
	Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Subject: [PATCH 4/4] mbuto: enable passing multiple collections and tests to suboptions
Date: Sun, 17 Apr 2022 13:27:21 -0400
Message-Id: <be5e5b5b0ca84d7c53bae5dccd537980e028f484.1650216230.git.sevinj.aghayeva@gmail.com>
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

The run_kselftest.sh script, which is run upon booting the image created by
mbuto, allows specifying multiple collections and specific tests, as in:

    run_kselftest.sh -c "net proc" -t "x86:iopl_32 timers:rtcpie"

The above command runs (1) all the tests in the net collection, (2) all the
tests in the proc collection, (3) the iopl_32 test from the x86 collection,
and (4) the rtcpie test from the timers collection. This patch enables the same
functionality in mbuto. Now users can run mbuto as follows:

    mbuto -p kselftests -C "net proc" -T "x86:iopl_32 timers:rtcpie"

and mbuto generates an image that runs the same set of tests. In addition, mbuto
installs only the tests in the specified collections in the image. For example,
for the above command line, mbuto will install all the tests in the net, proc,
x86, and timers collections (but it will only run iopl_32 and rtcpie test from
the last two). Mbuto also installs only the modules needed for running these
tests and warns the user if there are missing modules.

Mbuto also warns the user if an invalid collection name is passed to the -C
suboption. Due to irregular structure of Makefiles in selftest directories, it
is hard to warn the user if an invalid test name is passed to the -T option. In
this case the user will find out about the mistake after the kernel boots and
run_kselftest.sh fails to run the test.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 mbuto | 47 ++++++++++++++++++++++++++++++++---------------
 1 file changed, 32 insertions(+), 15 deletions(-)

diff --git a/mbuto b/mbuto
index f9ee6c5..49b8139 100755
--- a/mbuto
+++ b/mbuto
@@ -203,14 +203,31 @@ profile_kselftests() {
 		exit 1
 	fi
 
-	KERNEL="$(cat include/config/kernel.release)"
+	KERNEL="$(${CAT} include/config/kernel.release)"
+
+	__testpath="./tools/testing/selftests/"
+	__makefile="${__testpath}Makefile"
+	__colls=
+	for __c in ${SUBOPT_collection}; do
+		if ! ${GREP} -q "^TARGETS += ${__c}$" ${__makefile}; then
+			notice "WARNING: collection ${__c} doesn't exist"
+			continue
+		fi
+		__colls="${__c} ${__colls}"
+	done
+
+	for __t in ${SUBOPT_test}; do
+		__colls="${__colls} $(echo ${__t} | ${AWK} -F':' '{print $1}')"
+	done
+	__colls="$(echo ${__colls} | ${TR} ' ' '\n' | ${SORT} -u)"
+
+	__pattern=$(list_join "${__colls}" '^' '$' '|')
 
-	__skip_targets=$(${AWK} '/^TARGETS/ { print $3}' \
-		tools/testing/selftests/Makefile | \
-		${GREP} -v "^${SUBOPT_collection}$" | ${TR} '\n' ' ')
+	__skip_targets=$(${AWK} '/^TARGETS/ { print $3}' ${__makefile} | \
+		${EGREP} -v "${__pattern}" | ${TR} '\n' ' ')
 
-	${MAKE} SKIP_TARGETS="${__skip_targets}" -C \
-		tools/testing/selftests/ install >/dev/null 2>&1
+	${MAKE} SKIP_TARGETS="${__skip_targets}" -C ${__testpath} install \
+								 >/dev/null 2>&1
 
 	MODDIR="$(${REALPATH} .mbuto_mods)"
 	${RM} -rf "${MODDIR}"
@@ -218,10 +235,12 @@ profile_kselftests() {
 	INSTALL_MOD_PATH="${MODDIR}" ${MAKE} modules_install -j ${THREADS} \
 								>/dev/null
 
-	__cfg="./tools/testing/selftests/${SUBOPT_collection}/config"
+	__files=$(list_join "${__colls}" "${__testpath}" '/config' ' ')
+	__cfgs="$(${CAT} ${__files} 2>/dev/null)"
+
 	KMODS=
-	if [ -f ${__cfg} ]; then
-		__mods=$(${AWK} -F'=' '/=m/ {print $1}' ${__cfg} | ${SORT} -u)
+	if [ ! -z "${__cfgs}" ]; then
+		__mods=$(echo "${__cfgs}" | ${AWK} -F'=' '/=m/ {print $1}' | ${SORT} -u)
 
 		__pattern=$(list_join "${__mods}" '^obj-\$\(' '\).*.o$' '|')
 		__result=$(${BASENAME} -a -s .o \
@@ -253,12 +272,11 @@ profile_kselftests() {
 
 	DIRS="${DIRS} /tmp /run/netns /var/run"
 
-	COPIES="${COPIES}
-		tools/testing/selftests/kselftest_install/*,"
+	COPIES="${COPIES} ${__testpath}kselftest_install/*,"
 
 	__run_args=
-	[ ! -z ${SUBOPT_collection} ] && __run_args="-c ${SUBOPT_collection}"
-	[ ! -z ${SUBOPT_test} ] && __run_args="${__run_args} -t ${SUBOPT_test}"
+	[ ! -z "${SUBOPT_collection}" ] && __run_args="-c ${SUBOPT_collection}"
+	[ ! -z "${SUBOPT_test}" ] && __run_args="${__run_args} -t ${SUBOPT_test}"
 
 	FIXUP='#!/bin/sh
 
@@ -289,8 +307,7 @@ profile_kselftests() {
 		[ "${a}" != "s" ] && ./run_kselftest.sh '"${__run_args}"'
 '
 
-	for __f in $(${FIND} tools/testing/selftests/kselftest_install/ \
-		     -executable); do
+	for __f in $(${FIND} ${__testpath}kselftest_install/ -executable); do
 		case $("${FILE}" -bi "${__f}") in
 		"application/"*) libs_copy "${__f}" ;;
 		esac
-- 
2.25.1

