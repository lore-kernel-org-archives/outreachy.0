Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B14082F32
	for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 20:18:02 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id t207so2373112qke.2
        for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 13:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=jknqev5FnuoTvXd/SaZtXMXPtCSthRd1XB6DCwHKA4A=;
        b=iuhvLaAo4sw7oWUkUke1yamcslpWSOZjFMXmy+r33jGusF1e4f2uSLHyIZZg3dyGbs
         xNLjkI9+RNuE7845jtQ0TE5dKkhfJB8PFS+v4m3l6nsr4V2nDrIJxbP7qoeRRRa2Loqh
         EaMDRbdJxAK+XlFYYGuu9H/T7mWbNg3WidQvhv4HFs1QrJ+NGHS+1fuF2lCTFrF6rVBP
         0TCCANe1sHPozO/GF5qEEPsvNoZ3H0HYNbk9sZ/j3Av8maO9gVw9TEtQ0SD+mfHOWKxi
         vJQAzqV9EgFa529Ltywapv9TuRzSaOJbG14153UYDXjmA9uZkjbWmRFUfvrmjxTwkEnr
         wgtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=jknqev5FnuoTvXd/SaZtXMXPtCSthRd1XB6DCwHKA4A=;
        b=1bfiJzBIa60blQD8kaKJhEHYgBisUI5+8thnxlEzKduXEZ9B0vSA9P8ENkdv5eh4BT
         FyH7x2f4s2Nw5c/BNAIyDLYMSGxNJp9hJ8CIrUrTJdLw2K7rLAgWwT1c08zZqhD0/t+u
         RCQ+7VIoKRM/pNWrF1XpWzlB4FedTcyTKQMpakz6NN9rX9aAKS5ylIvSKSSEN/hvhtuU
         sfW0IkxCWD6BBd3YGx667K5u6L4ggO0qLQhlHCaWNiFlIscveFcfqcJyy+yYlWYvS68f
         x9V36b3/xBibQONoEtptI+xaPCXJlMLhg18+79u1kGFqh6+9dz5tT7L2ubWX9OfLMLFF
         u0gg==
X-Gm-Message-State: AOAM533IrNYjtNWym8HgbyA8Xb1bm+6GbCeshdMwKXJ50Ovg4OL3IwKs
	6+o3R9OZODI2L/b6uIJFjh9q0b/8GcHOcQ==
X-Google-Smtp-Source: ABdhPJwCxMXIWWFzEAE3HcWOUrf5Wb0He8Mibx2Ad+qX9XNQOEsMaPmCSY/sANluqAyOrnQB07I4dA==
X-Received: by 2002:a05:620a:190f:b0:69c:34f3:cdc5 with SMTP id bj15-20020a05620a190f00b0069c34f3cdc5mr8101127qkb.579.1649881081437;
        Wed, 13 Apr 2022 13:18:01 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id d18-20020a05622a05d200b002f07ed88a54sm3973137qtb.46.2022.04.13.13.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 13:18:00 -0700 (PDT)
Date: Wed, 13 Apr 2022 16:17:58 -0400
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev
Subject: [PATCH] mbuto: support building a minimal image for kernel selftests
Message-ID: <20220413201758.GA387675@euclid>
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
---
 mbuto | 156 +++++++++++++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 132 insertions(+), 24 deletions(-)

diff --git a/mbuto b/mbuto
index c643c9b..e786592 100755
--- a/mbuto
+++ b/mbuto
@@ -205,7 +205,12 @@ profile_kselftests() {
 
 	KERNEL="$(cat include/config/kernel.release)"
 
-	${MAKE} -C tools/testing/selftests/ install >/dev/null 2>&1
+	__skip_targets=$(awk '/^TARGETS/ { print $3}' \
+		tools/testing/selftests/Makefile | \
+		grep -v "^${SUBOPT_collection}$" | tr '\n' ' ')
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
+		__mods=$(awk -F'=' '/=m/ {print $1}' ${__cfg} | sort -u)
+
+		__egrep_pattern=""
+		for __c in ${__mods}; do
+	    		__egrep_pattern='^obj-\$\('"${__c}"'\).*.o$|'"${__egrep_pattern}"
+		done
+		__egrep_pattern=${__egrep_pattern%|}
+
+		__kmods_needed=
+		__find_pattern=
+		for __mo in $(egrep -rn --include "*Makefile" ${__egrep_pattern} | \
+				awk -F'+=' '/+=/ {print $2}'); do
+			__m=$(basename -s .o ${__mo})
+			__find_pattern="-name ${__m}.ko -o ${__find_pattern}"
+			__kmods_needed="${__m} ${__kmods_needed}"
+		done
+		__find_pattern=${__find_pattern%-o }
 
-	workers kmod_strip_worker
+		KMODS=$(${FIND} "${MODDIR}" ${__find_pattern} | tr '\n' ' ')
 
-	KMODS="$(basename -a -s .ko ${KMODS})"
+		workers kmod_strip_worker
+
+		KMODS="$(basename -a -s .ko ${KMODS})"
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
@@ -392,6 +428,63 @@ workers() {
 ################################################################################
 
 
+### Suboption Parsing #########################################################
+
+SUBOPTS='
+	kselftests	c	collection	Select a collection of kernel tests
+	kselftests	t	test		Select a test from a collection
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
@@ -960,7 +1053,7 @@ usage() {
 	echo "${0} [OPTIONS] [ADD_ON]..."
 	echo
 	echo "Options:"
-	echo "	-c gzip|lz4|lzma|lzo|auto|none"
+	echo "	-z gzip|lz4|lzma|lzo|auto|none"
 	echo "		compression method for CPIO file. Default: none"
 	echo "	-d"
 	echo "		don't strip binary objects"
@@ -972,8 +1065,19 @@ usage() {
 	echo "		relative root for /lib/modules. Default: /"
 	echo "	-p PROFILE"
 	echo "		select profile for add-ons, one of:"
-	echo "			base bash kata kata_debug passt"
+	echo "			base bash kata kata_debug passt kselftests"
 	echo "		Default: base"
+	echo "          when profile is kselftests there are two suboptions"
+	echo "          that are identical to run_kselftests.sh options:"
+	echo "          -c collection"
+	echo "                 select a collection of tests to run"
+	echo "          -t collection:test"
+	echo "                 select a specific test to run"
+	echo "          For example, specifying:"
+	echo "                 -p kselftests -c net"
+	echo "          runs all the tests in net collection; specifying"
+	echo "                 -p kselftests -t net:ip_defrag.sh"
+	echo "          runs only the ip_defrag.sh test from net collection"
 	echo "	-s SCRIPT|-"
 	echo "		fix-up script to run before init, '-' for none"
 	echo "	-v: verbose"
@@ -1026,16 +1130,20 @@ usage() {
 ARGS=${@}
 
 # Parse options
-while getopts c:df:k:m:p:s:vh __opt; do
+while getopts :z:df:k:m:p:s:vh __opt; do
 	case ${__opt} in
-	c) COMPRESS="${OPTARG}"	;;
-	d) STRIP="n"		;;
-	f) OUT="${OPTARG}"	;;
-	k) KERNEL="${OPTARG}"	;;
-	m) MODDIR="${OPTARG}"	;;
-	p) PROFILE="${OPTARG}"	;;
-	s) SCRIPT="${OPTARG}"	;;
-	v) VERBOSE="y"		;;
+	z) COMPRESS="${OPTARG}"					;;
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

