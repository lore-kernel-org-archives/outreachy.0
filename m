Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3CB3234
	for <outreachy@lists.linux.dev>; Thu, 14 Apr 2022 23:09:28 +0000 (UTC)
Received: by mail-qk1-f179.google.com with SMTP id e128so3490730qkd.7
        for <outreachy@lists.linux.dev>; Thu, 14 Apr 2022 16:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=0VLp4N16N1/GWwUnD8EMen/RViLBDYcphNsOnIxIrZY=;
        b=A0XKZQMv6pqurFtbkSeKOPEqs7NeCPuuNkbsWic5tLxrwnGRsTQwu+tIJrK1vHzDIJ
         cke2lsVTVqnLRGQen9vKGlUse8jNvOl86w1JHMOd6W8EtEu9huqjiwWFIb1/cBbqahJh
         p2mi8N9178HjjFAtRGl8dz+UCDka2XzEyVISbQZKZewanduiYOX8ZQ5dNuxVz/3YrYiQ
         Gi48e991QJHoT5SSEHTB/DYZYputTgir1/iSyK5GY+1+0/jV48MWw0npO590snIHCweu
         ogiNWpOZeJunEVl4HBlnLrvn5P1aEqcmhSOopx/l0ob6iVIQ+Y3jMOBruL/SEBeXbHMj
         m+1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=0VLp4N16N1/GWwUnD8EMen/RViLBDYcphNsOnIxIrZY=;
        b=GXzW4Bsdh/CuSQHHDAgGnWLjmDLcsZsEJmoHGeFxNLq40cr1lOa9L5yPzDOl7BieQ2
         z5GqCN8Q17PvpUYXTe7y7xj0EbUQtoMsyQOfGTqkxQlQBSYlfO+u7cMHXvPGa6J4BLPC
         I5a04sc3Gz62KeWJCu4UO+XpcWTVqpEsFbb2sJy9uxI6/kgnBghWSNMkxh57IeMP/ox3
         LINdsZRg4rLFXyvzbFumRHND6dzDt86WeVctWozoUjLTP3ltgfBuni5OSjIK2Pqn7W41
         8esbiN6uUyEdNhK1rcTcpmf7omqKhF/JrKp6i7A7MgMKYSz1zW6MQfASaWJBL7NxLuJT
         q0xg==
X-Gm-Message-State: AOAM531fdo3QyCUy68af6hUmNmbL/fMsNkkzNFUTy8pAnP9RYyX58RnE
	t+zKcFsqySxYiTrxWjr/aPpow8UjfzHqxA==
X-Google-Smtp-Source: ABdhPJyUNjwh0MbEnwzekOIHyUyglYPWmGqkMjLPRooJIDMMnP+7lVt8MFkqH7r+qKFPe64+3YU83A==
X-Received: by 2002:a37:f50b:0:b0:680:d577:baf6 with SMTP id l11-20020a37f50b000000b00680d577baf6mr3695391qkk.328.1649977767620;
        Thu, 14 Apr 2022 16:09:27 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id l21-20020a05620a211500b0069bf630f3b4sm1554173qkl.125.2022.04.14.16.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 16:09:27 -0700 (PDT)
Date: Thu, 14 Apr 2022 19:09:23 -0400
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev
Subject: [PATCH v2] mbuto: support building a minimal image for kernel
 selftests
Message-ID: <20220414230923.GA594872@euclid>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Adds suboption -c for the case of -p kselftests for choosing a test collection
to run. For example, specifying "-p kselftests -c net" creates an image that
contains only the tests from the net collection and only the kernel modules
needed to run those tests. If there are missing modules for running the tests, a
warning will be emitted showing missing modules names. The -c option is similar
to the -c option of run_kselftests.sh, but unlike run_kselftest.sh's option it
currently it doesn't support specifying multiple collections. This will be fixed
later.

Also adds suboption -t for the case of -p kselftests for choosing a specific
test. For example, specifying "-p kselftests -t net:ip_defrag.sh" creates an
image that runs only the single test when booted. This option is also similar to
run_kselftest.sh's -t option, but it is also lacking some functionality, which
will be fixed later.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>

v1 -> v2: Update TOOLS, Use variable names for commands, and use capitalized
versions of run_kselftests.sh options (-C and -T).
---
 mbuto | 161 ++++++++++++++++++++++++++++++++++++++++++++++++----------
 1 file changed, 135 insertions(+), 26 deletions(-)

diff --git a/mbuto b/mbuto
index c643c9b..74c81eb 100755
--- a/mbuto
+++ b/mbuto
@@ -205,7 +205,12 @@ profile_kselftests() {
 
 	KERNEL="$(cat include/config/kernel.release)"
 
-	${MAKE} -C tools/testing/selftests/ install >/dev/null 2>&1
+	__skip_targets=$(${AWK} '/^TARGETS/ { print $3}' \
+		tools/testing/selftests/Makefile | \
+		${GREP} -v "^${SUBOPT_collection}$" | ${TR} '\n' ' ')
+
+	${MAKE} SKIP_TARGETS="${__skip_targets}" -C \
+		tools/testing/selftests/ install >/dev/null 2>&1
 
 	MODDIR="$(${REALPATH} .mbuto_mods)"
 	${RM} -rf "${MODDIR}"
@@ -213,19 +218,46 @@ profile_kselftests() {
 	INSTALL_MOD_PATH="${MODDIR}" ${MAKE} modules_install -j ${THREADS} \
 								>/dev/null
 
-	__skip_dirs="drivers/gpu drivers/iio drivers/infiniband drivers/media
-		     drivers/net/ethernet drivers/net/wireless
-		     drivers/scsi drivers/usb"
-	__skip_args=
-	for __d in ${__skip_dirs}; do
-		__skip_args="${__skip_args}-path ${__d} -prune "
-	done
-	KMODS="$(${FIND} "${MODDIR}" ${__skip_args}			\
-		-o -name '*.ko' -printf "%p ")"
+	__cfg="./tools/testing/selftests/${SUBOPT_collection}/config"
+	KMODS=
+	if [ -f ${__cfg} ]; then
+		__mods=$(${AWK} -F'=' '/=m/ {print $1}' ${__cfg} | ${SORT} -u)
+
+		__egrep_pattern=""
+		for __c in ${__mods}; do
+	    		__egrep_pattern='^obj-\$\('"${__c}"'\).*.o$|'"${__egrep_pattern}"
+		done
+		__egrep_pattern=${__egrep_pattern%|}
+
+		__kmods_needed=
+		__find_pattern=
+		for __mo in $(${EGREP} -rn --include "*Makefile" ${__egrep_pattern} | \
+				${AWK} -F'+=' '/+=/ {print $2}'); do
+			__m=$(${BASENAME} -s .o ${__mo})
+			__find_pattern="-name ${__m}.ko -o ${__find_pattern}"
+			__kmods_needed="${__m} ${__kmods_needed}"
+		done
+		__find_pattern=${__find_pattern%-o }
 
-	workers kmod_strip_worker
+		KMODS=$(${FIND} "${MODDIR}" ${__find_pattern} | ${TR} '\n' ' ')
 
-	KMODS="$(basename -a -s .ko ${KMODS})"
+		workers kmod_strip_worker
+
+		KMODS="$(${BASENAME} -a -s .ko ${KMODS})"
+
+		__kmods_missing=
+		for __n in ${__kmods_needed}; do
+			__found=0
+			for __f in ${KMODS}; do
+				[ ${__n} = ${__f} ] && __found=1
+			done
+			[ ${__found} -eq 0 ] && \
+				__kmods_missing="${__n} ${__kmods_missing}"
+		done
+		if [ ! -z "${__kmods_missing}" ]; then
+			notice "WARNING: missing modules: ${__kmods_missing}"
+		fi
+	fi
 
 	LINKS="${LINKS:-
 		 bash		/init
@@ -240,6 +272,10 @@ profile_kselftests() {
 	COPIES="${COPIES}
 		tools/testing/selftests/kselftest_install/*,"
 
+	__run_args=
+	[ ! -z ${SUBOPT_collection} ] && __run_args="-c ${SUBOPT_collection}"
+	[ ! -z ${SUBOPT_test} ] && __run_args="${__run_args} -t ${SUBOPT_test}"
+
 	FIXUP='#!/bin/sh
 
 		export PATH=/bin:/usr/bin:/sbin:/usr/sbin
@@ -266,7 +302,7 @@ profile_kselftests() {
 		echo 3 > /proc/sys/kernel/printk
 		echo "Press s for shell, any other key to run selftests"
 		read a
-		[ "${a}" != "s" ] && ./run_kselftest.sh
+		[ "${a}" != "s" ] && ./run_kselftest.sh '"${__run_args}"'
 '
 
 	for __f in $(${FIND} tools/testing/selftests/kselftest_install/ \
@@ -286,9 +322,10 @@ profile_kselftests() {
 ### Helpers ####################################################################
 
 # List of tools used here, assigned to uppercase variable names
-TOOLS="basename bc cat cd chmod cp cpio depmod diff dirname du file find grep
-       gzip ldconfig ldd ln ls make mkdir mknod mktemp modprobe mv printf
-       readlink realpath rm rmdir seq sleep strip sync umount uname wget which"
+TOOLS="awk basename bc cat cd chmod cp cpio depmod diff dirname du file find 
+       grep egrep gzip ldconfig ldd ln ls make mkdir mknod mktemp modprobe mv
+       printf readlink realpath rm rmdir seq sleep sort strip sync tr umount
+       uname wget which"
 
 # err() - Print error and exit
 # $@:	Error message, optionally with printf format and arguments
@@ -392,6 +429,63 @@ workers() {
 ################################################################################
 
 
+### Suboption Parsing #########################################################
+
+SUBOPTS='
+	kselftests	C	collection	Select a collection of kernel tests
+	kselftests	T	test		Select a test from a collection
+'
+
+subopts_profile=
+subopts_usage_one() {
+	__profile="${1}"
+	__short="${2}"
+	__help="${4}"
+
+	if [ "${usage_subopts_profile}" != ${__profile} ]; then
+		usage_subopts_profile="${__profile}"
+		printf "\tSub-options for profile ${__profile}:\n"
+	fi
+
+	printf "\t\t-%s: %s\n" ${__short} "${__help}"
+}
+
+subopts_usage() {
+	IFS='
+'
+	for __line in ${SUBOPTS}; do
+		IFS='	'
+		subopts_usage_one ${__line}
+		IFS='
+'
+	done
+	unset IFS
+}
+
+subopts_get_one() {
+	__profile="${3}"
+	__short="${4}"
+	__name="${5}"
+
+	[ "${__profile}" != "${PROFILE}" ] 	&& return 1
+	[ "${1}" != "${4}" ]			&& return 1
+
+	eval $(echo SUBOPT_${__name}="${2}")
+}
+
+subopts_get() {
+	IFS='
+'
+	for __line in ${SUBOPTS}; do
+		IFS='	'
+		subopts_get_one "${1}" "${2}" ${__line} && unset IFS && return 0
+		IFS='
+'
+	done
+	unset IFS
+	return 1
+}
+
 ### CPIO #######################################################################
 
 # cpio_init() - Source existing CPIO archive, or create if needed
@@ -972,8 +1066,19 @@ usage() {
 	echo "		relative root for /lib/modules. Default: /"
 	echo "	-p PROFILE"
 	echo "		select profile for add-ons, one of:"
-	echo "			base bash kata kata_debug passt"
+	echo "			base bash kata kata_debug passt kselftests"
 	echo "		Default: base"
+	echo "          when profile is kselftests there are two suboptions"
+	echo "          that are identical to run_kselftests.sh options:"
+	echo "          -C collection"
+	echo "                 select a collection of tests to run"
+	echo "          -T collection:test"
+	echo "                 select a specific test to run"
+	echo "          For example, specifying:"
+	echo "                 -p kselftests -c net"
+	echo "          runs all the tests in net collection; specifying"
+	echo "                 -p kselftests -t net:ip_defrag.sh"
+	echo "          runs only the ip_defrag.sh test from net collection"
 	echo "	-s SCRIPT|-"
 	echo "		fix-up script to run before init, '-' for none"
 	echo "	-v: verbose"
@@ -1026,16 +1131,20 @@ usage() {
 ARGS=${@}
 
 # Parse options
-while getopts c:df:k:m:p:s:vh __opt; do
+while getopts :c:df:k:m:p:s:vh __opt; do
 	case ${__opt} in
-	c) COMPRESS="${OPTARG}"	;;
-	d) STRIP="n"		;;
-	f) OUT="${OPTARG}"	;;
-	k) KERNEL="${OPTARG}"	;;
-	m) MODDIR="${OPTARG}"	;;
-	p) PROFILE="${OPTARG}"	;;
-	s) SCRIPT="${OPTARG}"	;;
-	v) VERBOSE="y"		;;
+	c) COMPRESS="${OPTARG}"					;;
+	d) STRIP="n"						;;
+	f) OUT="${OPTARG}"					;;
+	k) KERNEL="${OPTARG}"					;;
+	m) MODDIR="${OPTARG}"					;;
+	p) PROFILE="${OPTARG}"					;;
+	s) SCRIPT="${OPTARG}"					;;
+	v) VERBOSE="y"						;;
+	?)
+		eval arg=\${$((OPTIND))}
+		OPTIND=$((OPTIND + 1))
+		subopts_get "${OPTARG}" "${arg}" || usage	;;
 	h|*) usage		;;
 	esac
 done
-- 
2.25.1

