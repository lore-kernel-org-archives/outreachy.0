Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219C07B
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 17:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650042237; x=1681578237;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=GkC2axadFzRWFa14gWifp0Dd3lGnKVvWSLEk+2vLLyQ=;
  b=GvzHHthU1oRPpkwRAsQPFG8BlUGVeu4WNIZw0XQE41E4v+FI4sNXhubr
   uDePbeTD9jX2Fj1BiciHM4HTcLlrKHnhMSLdPNCNX1dBElnefooJkHQsA
   be2rz7txp2D0ix7Z5iYgwFaL+rBtBZsmU2BldYuZoBn1VYoM5P+en1HMP
   mRXncfPYeWwMRxMJaX7bjUg0VEF3llbzkF1sQ7wWc2RobaFhU7Dr0tOls
   J4IHm0bDMcpazAJ5RCzsB36YuFgqWRXvw3Uj1YTNmuzNEJvF4Au2prBbR
   Xyb1GCPW+LStHI+Jnsa8BpSO4kTi2sQlWjFxHFvkl3X11ZVNhGn94T5bN
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="262945404"
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; 
   d="scan'208";a="262945404"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2022 10:03:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; 
   d="scan'208";a="662160463"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2022 10:03:52 -0700
Date: Fri, 15 Apr 2022 10:05:43 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH v2] mbuto: support building a minimal image for kernel
 selftests
Message-ID: <20220415170543.GA1251615@alison-desk>
References: <20220414230923.GA594872@euclid>
 <20220415171019.091e123c@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220415171019.091e123c@elisabeth>

On Fri, Apr 15, 2022 at 05:10:19PM +0200, Stefano Brivio wrote:
> This is really valuable work, thank you. I took the liberty of fixing
> up a few things, listed below, and pushed:

What repository is this in?

> 
> On Thu, 14 Apr 2022 19:09:23 -0400
> Sevinj Aghayeva <sevinj.aghayeva@gmail.com> wrote:
> 
> > Adds suboption -c for the case of -p kselftests for choosing a test collection
> 
> ...this is now -C.
> 
> > to run. For example, specifying "-p kselftests -c net" creates an image that
> > contains only the tests from the net collection and only the kernel modules
> > needed to run those tests. If there are missing modules for running the tests, a
> > warning will be emitted showing missing modules names. The -c option is similar
> > to the -c option of run_kselftests.sh, but unlike run_kselftest.sh's option it
> > currently it doesn't support specifying multiple collections. This will be fixed
> 
> it ... it doesn't.
> 
> > later.
> > 
> > Also adds suboption -t for the case of -p kselftests for choosing a specific
> > test. For example, specifying "-p kselftests -t net:ip_defrag.sh" creates an
> > image that runs only the single test when booted. This option is also similar to
> > run_kselftest.sh's -t option, but it is also lacking some functionality, which
> > will be fixed later.
> 
> Reformatted a bit to fit in 70 columns, using imperative verb mood
> consistently.
> 
> > 
> > Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
> > 
> > v1 -> v2: Update TOOLS, Use variable names for commands, and use capitalized
> > versions of run_kselftests.sh options (-C and -T).
> 
> Moved before "Signed-off-by:". In general you should put this after the
> --- below, but I personally like to retain version history in the tree,
> and that's also the case for net and net-next kernel trees.
> 
> > ---
> >  mbuto | 161 ++++++++++++++++++++++++++++++++++++++++++++++++----------
> >  1 file changed, 135 insertions(+), 26 deletions(-)
> > 
> > diff --git a/mbuto b/mbuto
> > index c643c9b..74c81eb 100755
> > --- a/mbuto
> > +++ b/mbuto
> > @@ -205,7 +205,12 @@ profile_kselftests() {
> >  
> >  	KERNEL="$(cat include/config/kernel.release)"
> >  
> > -	${MAKE} -C tools/testing/selftests/ install >/dev/null 2>&1
> > +	__skip_targets=$(${AWK} '/^TARGETS/ { print $3}' \
> > +		tools/testing/selftests/Makefile | \
> > +		${GREP} -v "^${SUBOPT_collection}$" | ${TR} '\n' ' ')
> > +
> > +	${MAKE} SKIP_TARGETS="${__skip_targets}" -C \
> > +		tools/testing/selftests/ install >/dev/null 2>&1
> >  
> >  	MODDIR="$(${REALPATH} .mbuto_mods)"
> >  	${RM} -rf "${MODDIR}"
> > @@ -213,19 +218,46 @@ profile_kselftests() {
> >  	INSTALL_MOD_PATH="${MODDIR}" ${MAKE} modules_install -j ${THREADS} \
> >  								>/dev/null  
> >  
> > -	__skip_dirs="drivers/gpu drivers/iio drivers/infiniband drivers/media
> > -		     drivers/net/ethernet drivers/net/wireless
> > -		     drivers/scsi drivers/usb"
> > -	__skip_args=
> > -	for __d in ${__skip_dirs}; do
> > -		__skip_args="${__skip_args}-path ${__d} -prune "
> > -	done
> > -	KMODS="$(${FIND} "${MODDIR}" ${__skip_args}			\
> > -		-o -name '*.ko' -printf "%p ")"
> > +	__cfg="./tools/testing/selftests/${SUBOPT_collection}/config"
> > +	KMODS=
> > +	if [ -f ${__cfg} ]; then
> > +		__mods=$(${AWK} -F'=' '/=m/ {print $1}' ${__cfg} | ${SORT} -u)
> > +
> > +		__egrep_pattern=""
> > +		for __c in ${__mods}; do
> > +	    		__egrep_pattern='^obj-\$\('"${__c}"'\).*.o$|'"${__egrep_pattern}"
> 
> Mixed spaces and tabs in indentation. You might want to use an editor
> showing you that ('git am' told me, though, so I guess git in general
> would warn you about that and maybe that's good enough).
> 
> I personally use (also) a GUI editor (not joking), Geany, which shows
> whitespace in a clear but non-distracting way, as it doesn't need to
> use a different character or terminal colour for it.
> 
> > +		done
> > +		__egrep_pattern=${__egrep_pattern%|}
> > +
> > +		__kmods_needed=
> > +		__find_pattern=
> > +		for __mo in $(${EGREP} -rn --include "*Makefile" ${__egrep_pattern} | \
> > +				${AWK} -F'+=' '/+=/ {print $2}'); do
> > +			__m=$(${BASENAME} -s .o ${__mo})
> > +			__find_pattern="-name ${__m}.ko -o ${__find_pattern}"
> > +			__kmods_needed="${__m} ${__kmods_needed}"
> > +		done
> > +		__find_pattern=${__find_pattern%-o }
> >  
> > -	workers kmod_strip_worker
> > +		KMODS=$(${FIND} "${MODDIR}" ${__find_pattern} | ${TR} '\n' ' ')
> >  
> > -	KMODS="$(basename -a -s .ko ${KMODS})"
> > +		workers kmod_strip_worker
> > +
> > +		KMODS="$(${BASENAME} -a -s .ko ${KMODS})"
> > +
> > +		__kmods_missing=
> > +		for __n in ${__kmods_needed}; do
> > +			__found=0
> > +			for __f in ${KMODS}; do
> > +				[ ${__n} = ${__f} ] && __found=1
> > +			done
> > +			[ ${__found} -eq 0 ] && \
> > +				__kmods_missing="${__n} ${__kmods_missing}"
> > +		done
> > +		if [ ! -z "${__kmods_missing}" ]; then
> > +			notice "WARNING: missing modules: ${__kmods_missing}"
> > +		fi
> > +	fi
> >  
> >  	LINKS="${LINKS:-
> >  		 bash		/init
> > @@ -240,6 +272,10 @@ profile_kselftests() {
> >  	COPIES="${COPIES}
> >  		tools/testing/selftests/kselftest_install/*,"
> >  
> > +	__run_args=
> > +	[ ! -z ${SUBOPT_collection} ] && __run_args="-c ${SUBOPT_collection}"
> > +	[ ! -z ${SUBOPT_test} ] && __run_args="${__run_args} -t ${SUBOPT_test}"
> > +
> >  	FIXUP='#!/bin/sh
> >  
> >  		export PATH=/bin:/usr/bin:/sbin:/usr/sbin
> > @@ -266,7 +302,7 @@ profile_kselftests() {
> >  		echo 3 > /proc/sys/kernel/printk
> >  		echo "Press s for shell, any other key to run selftests"
> >  		read a
> > -		[ "${a}" != "s" ] && ./run_kselftest.sh
> > +		[ "${a}" != "s" ] && ./run_kselftest.sh '"${__run_args}"'
> >  '
> >  
> >  	for __f in $(${FIND} tools/testing/selftests/kselftest_install/ \
> > @@ -286,9 +322,10 @@ profile_kselftests() {
> >  ### Helpers ####################################################################
> >  
> >  # List of tools used here, assigned to uppercase variable names
> > -TOOLS="basename bc cat cd chmod cp cpio depmod diff dirname du file find grep
> > -       gzip ldconfig ldd ln ls make mkdir mknod mktemp modprobe mv printf
> > -       readlink realpath rm rmdir seq sleep strip sync umount uname wget which"
> > +TOOLS="awk basename bc cat cd chmod cp cpio depmod diff dirname du file find 
> 
> Trailing whitespace (after 'find').
> 
> > +       grep egrep gzip ldconfig ldd ln ls make mkdir mknod mktemp modprobe mv
> > +       printf readlink realpath rm rmdir seq sleep sort strip sync tr umount
> > +       uname wget which"
> >  
> >  # err() - Print error and exit
> >  # $@:	Error message, optionally with printf format and arguments
> > @@ -392,6 +429,63 @@ workers() {
> >  ################################################################################
> >  
> >  
> > +### Suboption Parsing #########################################################
> > +
> > +SUBOPTS='
> > +	kselftests	C	collection	Select a collection of kernel tests
> > +	kselftests	T	test		Select a test from a collection
> > +'
> > +
> > +subopts_profile=
> > +subopts_usage_one() {
> 
> I added usage comments for this function and the ones below.
> 
> > +	__profile="${1}"
> > +	__short="${2}"
> > +	__help="${4}"
> > +
> > +	if [ "${usage_subopts_profile}" != ${__profile} ]; then
> > +		usage_subopts_profile="${__profile}"
> > +		printf "\tSub-options for profile ${__profile}:\n"
> > +	fi
> > +
> > +	printf "\t\t-%s: %s\n" ${__short} "${__help}"
> > +}
> > +
> > +subopts_usage() {
> > +	IFS='
> > +'
> > +	for __line in ${SUBOPTS}; do
> > +		IFS='	'
> > +		subopts_usage_one ${__line}
> > +		IFS='
> > +'
> > +	done
> > +	unset IFS
> > +}
> > +
> > +subopts_get_one() {
> > +	__profile="${3}"
> > +	__short="${4}"
> > +	__name="${5}"
> > +
> > +	[ "${__profile}" != "${PROFILE}" ] 	&& return 1
> > +	[ "${1}" != "${4}" ]			&& return 1
> 
> Used named variables for $1 and $4 instead.
> 
> > +
> > +	eval $(echo SUBOPT_${__name}="${2}")
> > +}
> > +
> > +subopts_get() {
> > +	IFS='
> > +'
> > +	for __line in ${SUBOPTS}; do
> > +		IFS='	'
> > +		subopts_get_one "${1}" "${2}" ${__line} && unset IFS && return 0
> > +		IFS='
> > +'
> > +	done
> > +	unset IFS
> > +	return 1
> > +}
> > +
> >  ### CPIO #######################################################################
> >  
> >  # cpio_init() - Source existing CPIO archive, or create if needed
> > @@ -972,8 +1066,19 @@ usage() {
> >  	echo "		relative root for /lib/modules. Default: /"
> >  	echo "	-p PROFILE"
> >  	echo "		select profile for add-ons, one of:"
> > -	echo "			base bash kata kata_debug passt"
> > +	echo "			base bash kata kata_debug passt kselftests"
> >  	echo "		Default: base"
> > +	echo "          when profile is kselftests there are two suboptions"
> 
> From this point on: you used spaces instead of tabs, and usage of
> capital letters is a bit inconsistent (why "when" after we had
> "Default"?).
> 
> > +	echo "          that are identical to run_kselftests.sh options:"
> > +	echo "          -C collection"
> > +	echo "                 select a collection of tests to run"
> > +	echo "          -T collection:test"
> > +	echo "                 select a specific test to run"
> > +	echo "          For example, specifying:"
> > +	echo "                 -p kselftests -c net"
> 
> -C and -T in these examples.
> 
> > +	echo "          runs all the tests in net collection; specifying"
> > +	echo "                 -p kselftests -t net:ip_defrag.sh"
> > +	echo "          runs only the ip_defrag.sh test from net collection"
> >  	echo "	-s SCRIPT|-"
> >  	echo "		fix-up script to run before init, '-' for none"
> >  	echo "	-v: verbose"
> > @@ -1026,16 +1131,20 @@ usage() {
> >  ARGS=${@}
> >  
> >  # Parse options
> > -while getopts c:df:k:m:p:s:vh __opt; do
> > +while getopts :c:df:k:m:p:s:vh __opt; do
> >  	case ${__opt} in
> > -	c) COMPRESS="${OPTARG}"	;;
> > -	d) STRIP="n"		;;
> > -	f) OUT="${OPTARG}"	;;
> > -	k) KERNEL="${OPTARG}"	;;
> > -	m) MODDIR="${OPTARG}"	;;
> > -	p) PROFILE="${OPTARG}"	;;
> > -	s) SCRIPT="${OPTARG}"	;;
> > -	v) VERBOSE="y"		;;
> > +	c) COMPRESS="${OPTARG}"					;;
> > +	d) STRIP="n"						;;
> > +	f) OUT="${OPTARG}"					;;
> > +	k) KERNEL="${OPTARG}"					;;
> > +	m) MODDIR="${OPTARG}"					;;
> > +	p) PROFILE="${OPTARG}"					;;
> > +	s) SCRIPT="${OPTARG}"					;;
> > +	v) VERBOSE="y"						;;
> > +	?)
> > +		eval arg=\${$((OPTIND))}
> > +		OPTIND=$((OPTIND + 1))
> > +		subopts_get "${OPTARG}" "${arg}" || usage	;;
> >  	h|*) usage		;;
> 
> Moved ;; here too.
> 
> >  	esac
> >  done
> 
> Thanks again!
> 
> -- 
> Stefano
> 
> 
