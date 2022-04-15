Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E41D3219
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 15:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650035427;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vWnqC1Cl4rd8pRlQnrTIuKUUEN60sZEootSethmcuIA=;
	b=Er5xmsvVkGp3OVk30s4jKX3o/DMxR55JHo/TGqjLNdHETg5ZEpHMcRZqkh+E/+qgTHsPT/
	FiNiBCvfBhQlfxoXekpDVdBcaQ7/6deplc34fGn25P+wOkgVXP2J7FHjBaQv+FLrG1feVV
	TO5C9wSF93z0er+QUinQUAt5TlMqGNs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-352-2eAG_mWsOna5gUsF45l_tw-1; Fri, 15 Apr 2022 11:10:25 -0400
X-MC-Unique: 2eAG_mWsOna5gUsF45l_tw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6253B185A7BA;
	Fri, 15 Apr 2022 15:10:24 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0F86640D0184;
	Fri, 15 Apr 2022 15:10:24 +0000 (UTC)
Date: Fri, 15 Apr 2022 17:10:19 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2] mbuto: support building a minimal image for kernel
 selftests
Message-ID: <20220415171019.091e123c@elisabeth>
In-Reply-To: <20220414230923.GA594872@euclid>
References: <20220414230923.GA594872@euclid>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

This is really valuable work, thank you. I took the liberty of fixing
up a few things, listed below, and pushed:

On Thu, 14 Apr 2022 19:09:23 -0400
Sevinj Aghayeva <sevinj.aghayeva@gmail.com> wrote:

> Adds suboption -c for the case of -p kselftests for choosing a test colle=
ction

...this is now -C.

> to run. For example, specifying "-p kselftests -c net" creates an image t=
hat
> contains only the tests from the net collection and only the kernel modul=
es
> needed to run those tests. If there are missing modules for running the t=
ests, a
> warning will be emitted showing missing modules names. The -c option is s=
imilar
> to the -c option of run_kselftests.sh, but unlike run_kselftest.sh's opti=
on it
> currently it doesn't support specifying multiple collections. This will b=
e fixed

it ... it doesn't.

> later.
>=20
> Also adds suboption -t for the case of -p kselftests for choosing a speci=
fic
> test. For example, specifying "-p kselftests -t net:ip_defrag.sh" creates=
 an
> image that runs only the single test when booted. This option is also sim=
ilar to
> run_kselftest.sh's -t option, but it is also lacking some functionality, =
which
> will be fixed later.

Reformatted a bit to fit in 70 columns, using imperative verb mood
consistently.

>=20
> Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
>=20
> v1 -> v2: Update TOOLS, Use variable names for commands, and use capitali=
zed
> versions of run_kselftests.sh options (-C and -T).

Moved before "Signed-off-by:". In general you should put this after the
--- below, but I personally like to retain version history in the tree,
and that's also the case for net and net-next kernel trees.

> ---
>  mbuto | 161 ++++++++++++++++++++++++++++++++++++++++++++++++----------
>  1 file changed, 135 insertions(+), 26 deletions(-)
>=20
> diff --git a/mbuto b/mbuto
> index c643c9b..74c81eb 100755
> --- a/mbuto
> +++ b/mbuto
> @@ -205,7 +205,12 @@ profile_kselftests() {
> =20
>  =09KERNEL=3D"$(cat include/config/kernel.release)"
> =20
> -=09${MAKE} -C tools/testing/selftests/ install >/dev/null 2>&1
> +=09__skip_targets=3D$(${AWK} '/^TARGETS/ { print $3}' \
> +=09=09tools/testing/selftests/Makefile | \
> +=09=09${GREP} -v "^${SUBOPT_collection}$" | ${TR} '\n' ' ')
> +
> +=09${MAKE} SKIP_TARGETS=3D"${__skip_targets}" -C \
> +=09=09tools/testing/selftests/ install >/dev/null 2>&1
> =20
>  =09MODDIR=3D"$(${REALPATH} .mbuto_mods)"
>  =09${RM} -rf "${MODDIR}"
> @@ -213,19 +218,46 @@ profile_kselftests() {
>  =09INSTALL_MOD_PATH=3D"${MODDIR}" ${MAKE} modules_install -j ${THREADS} =
\
>  =09=09=09=09=09=09=09=09>/dev/null =20
> =20
> -=09__skip_dirs=3D"drivers/gpu drivers/iio drivers/infiniband drivers/med=
ia
> -=09=09     drivers/net/ethernet drivers/net/wireless
> -=09=09     drivers/scsi drivers/usb"
> -=09__skip_args=3D
> -=09for __d in ${__skip_dirs}; do
> -=09=09__skip_args=3D"${__skip_args}-path ${__d} -prune "
> -=09done
> -=09KMODS=3D"$(${FIND} "${MODDIR}" ${__skip_args}=09=09=09\
> -=09=09-o -name '*.ko' -printf "%p ")"
> +=09__cfg=3D"./tools/testing/selftests/${SUBOPT_collection}/config"
> +=09KMODS=3D
> +=09if [ -f ${__cfg} ]; then
> +=09=09__mods=3D$(${AWK} -F'=3D' '/=3Dm/ {print $1}' ${__cfg} | ${SORT} -=
u)
> +
> +=09=09__egrep_pattern=3D""
> +=09=09for __c in ${__mods}; do
> +=09    =09=09__egrep_pattern=3D'^obj-\$\('"${__c}"'\).*.o$|'"${__egrep_p=
attern}"

Mixed spaces and tabs in indentation. You might want to use an editor
showing you that ('git am' told me, though, so I guess git in general
would warn you about that and maybe that's good enough).

I personally use (also) a GUI editor (not joking), Geany, which shows
whitespace in a clear but non-distracting way, as it doesn't need to
use a different character or terminal colour for it.

> +=09=09done
> +=09=09__egrep_pattern=3D${__egrep_pattern%|}
> +
> +=09=09__kmods_needed=3D
> +=09=09__find_pattern=3D
> +=09=09for __mo in $(${EGREP} -rn --include "*Makefile" ${__egrep_pattern=
} | \
> +=09=09=09=09${AWK} -F'+=3D' '/+=3D/ {print $2}'); do
> +=09=09=09__m=3D$(${BASENAME} -s .o ${__mo})
> +=09=09=09__find_pattern=3D"-name ${__m}.ko -o ${__find_pattern}"
> +=09=09=09__kmods_needed=3D"${__m} ${__kmods_needed}"
> +=09=09done
> +=09=09__find_pattern=3D${__find_pattern%-o }
> =20
> -=09workers kmod_strip_worker
> +=09=09KMODS=3D$(${FIND} "${MODDIR}" ${__find_pattern} | ${TR} '\n' ' ')
> =20
> -=09KMODS=3D"$(basename -a -s .ko ${KMODS})"
> +=09=09workers kmod_strip_worker
> +
> +=09=09KMODS=3D"$(${BASENAME} -a -s .ko ${KMODS})"
> +
> +=09=09__kmods_missing=3D
> +=09=09for __n in ${__kmods_needed}; do
> +=09=09=09__found=3D0
> +=09=09=09for __f in ${KMODS}; do
> +=09=09=09=09[ ${__n} =3D ${__f} ] && __found=3D1
> +=09=09=09done
> +=09=09=09[ ${__found} -eq 0 ] && \
> +=09=09=09=09__kmods_missing=3D"${__n} ${__kmods_missing}"
> +=09=09done
> +=09=09if [ ! -z "${__kmods_missing}" ]; then
> +=09=09=09notice "WARNING: missing modules: ${__kmods_missing}"
> +=09=09fi
> +=09fi
> =20
>  =09LINKS=3D"${LINKS:-
>  =09=09 bash=09=09/init
> @@ -240,6 +272,10 @@ profile_kselftests() {
>  =09COPIES=3D"${COPIES}
>  =09=09tools/testing/selftests/kselftest_install/*,"
> =20
> +=09__run_args=3D
> +=09[ ! -z ${SUBOPT_collection} ] && __run_args=3D"-c ${SUBOPT_collection=
}"
> +=09[ ! -z ${SUBOPT_test} ] && __run_args=3D"${__run_args} -t ${SUBOPT_te=
st}"
> +
>  =09FIXUP=3D'#!/bin/sh
> =20
>  =09=09export PATH=3D/bin:/usr/bin:/sbin:/usr/sbin
> @@ -266,7 +302,7 @@ profile_kselftests() {
>  =09=09echo 3 > /proc/sys/kernel/printk
>  =09=09echo "Press s for shell, any other key to run selftests"
>  =09=09read a
> -=09=09[ "${a}" !=3D "s" ] && ./run_kselftest.sh
> +=09=09[ "${a}" !=3D "s" ] && ./run_kselftest.sh '"${__run_args}"'
>  '
> =20
>  =09for __f in $(${FIND} tools/testing/selftests/kselftest_install/ \
> @@ -286,9 +322,10 @@ profile_kselftests() {
>  ### Helpers ############################################################=
########
> =20
>  # List of tools used here, assigned to uppercase variable names
> -TOOLS=3D"basename bc cat cd chmod cp cpio depmod diff dirname du file fi=
nd grep
> -       gzip ldconfig ldd ln ls make mkdir mknod mktemp modprobe mv print=
f
> -       readlink realpath rm rmdir seq sleep strip sync umount uname wget=
 which"
> +TOOLS=3D"awk basename bc cat cd chmod cp cpio depmod diff dirname du fil=
e find=20

Trailing whitespace (after 'find').

> +       grep egrep gzip ldconfig ldd ln ls make mkdir mknod mktemp modpro=
be mv
> +       printf readlink realpath rm rmdir seq sleep sort strip sync tr um=
ount
> +       uname wget which"
> =20
>  # err() - Print error and exit
>  # $@:=09Error message, optionally with printf format and arguments
> @@ -392,6 +429,63 @@ workers() {
>  ########################################################################=
########
> =20
> =20
> +### Suboption Parsing ##################################################=
#######
> +
> +SUBOPTS=3D'
> +=09kselftests=09C=09collection=09Select a collection of kernel tests
> +=09kselftests=09T=09test=09=09Select a test from a collection
> +'
> +
> +subopts_profile=3D
> +subopts_usage_one() {

I added usage comments for this function and the ones below.

> +=09__profile=3D"${1}"
> +=09__short=3D"${2}"
> +=09__help=3D"${4}"
> +
> +=09if [ "${usage_subopts_profile}" !=3D ${__profile} ]; then
> +=09=09usage_subopts_profile=3D"${__profile}"
> +=09=09printf "\tSub-options for profile ${__profile}:\n"
> +=09fi
> +
> +=09printf "\t\t-%s: %s\n" ${__short} "${__help}"
> +}
> +
> +subopts_usage() {
> +=09IFS=3D'
> +'
> +=09for __line in ${SUBOPTS}; do
> +=09=09IFS=3D'=09'
> +=09=09subopts_usage_one ${__line}
> +=09=09IFS=3D'
> +'
> +=09done
> +=09unset IFS
> +}
> +
> +subopts_get_one() {
> +=09__profile=3D"${3}"
> +=09__short=3D"${4}"
> +=09__name=3D"${5}"
> +
> +=09[ "${__profile}" !=3D "${PROFILE}" ] =09&& return 1
> +=09[ "${1}" !=3D "${4}" ]=09=09=09&& return 1

Used named variables for $1 and $4 instead.

> +
> +=09eval $(echo SUBOPT_${__name}=3D"${2}")
> +}
> +
> +subopts_get() {
> +=09IFS=3D'
> +'
> +=09for __line in ${SUBOPTS}; do
> +=09=09IFS=3D'=09'
> +=09=09subopts_get_one "${1}" "${2}" ${__line} && unset IFS && return 0
> +=09=09IFS=3D'
> +'
> +=09done
> +=09unset IFS
> +=09return 1
> +}
> +
>  ### CPIO ###############################################################=
########
> =20
>  # cpio_init() - Source existing CPIO archive, or create if needed
> @@ -972,8 +1066,19 @@ usage() {
>  =09echo "=09=09relative root for /lib/modules. Default: /"
>  =09echo "=09-p PROFILE"
>  =09echo "=09=09select profile for add-ons, one of:"
> -=09echo "=09=09=09base bash kata kata_debug passt"
> +=09echo "=09=09=09base bash kata kata_debug passt kselftests"
>  =09echo "=09=09Default: base"
> +=09echo "          when profile is kselftests there are two suboptions"

From this point on: you used spaces instead of tabs, and usage of
capital letters is a bit inconsistent (why "when" after we had
"Default"?).

> +=09echo "          that are identical to run_kselftests.sh options:"
> +=09echo "          -C collection"
> +=09echo "                 select a collection of tests to run"
> +=09echo "          -T collection:test"
> +=09echo "                 select a specific test to run"
> +=09echo "          For example, specifying:"
> +=09echo "                 -p kselftests -c net"

-C and -T in these examples.

> +=09echo "          runs all the tests in net collection; specifying"
> +=09echo "                 -p kselftests -t net:ip_defrag.sh"
> +=09echo "          runs only the ip_defrag.sh test from net collection"
>  =09echo "=09-s SCRIPT|-"
>  =09echo "=09=09fix-up script to run before init, '-' for none"
>  =09echo "=09-v: verbose"
> @@ -1026,16 +1131,20 @@ usage() {
>  ARGS=3D${@}
> =20
>  # Parse options
> -while getopts c:df:k:m:p:s:vh __opt; do
> +while getopts :c:df:k:m:p:s:vh __opt; do
>  =09case ${__opt} in
> -=09c) COMPRESS=3D"${OPTARG}"=09;;
> -=09d) STRIP=3D"n"=09=09;;
> -=09f) OUT=3D"${OPTARG}"=09;;
> -=09k) KERNEL=3D"${OPTARG}"=09;;
> -=09m) MODDIR=3D"${OPTARG}"=09;;
> -=09p) PROFILE=3D"${OPTARG}"=09;;
> -=09s) SCRIPT=3D"${OPTARG}"=09;;
> -=09v) VERBOSE=3D"y"=09=09;;
> +=09c) COMPRESS=3D"${OPTARG}"=09=09=09=09=09;;
> +=09d) STRIP=3D"n"=09=09=09=09=09=09;;
> +=09f) OUT=3D"${OPTARG}"=09=09=09=09=09;;
> +=09k) KERNEL=3D"${OPTARG}"=09=09=09=09=09;;
> +=09m) MODDIR=3D"${OPTARG}"=09=09=09=09=09;;
> +=09p) PROFILE=3D"${OPTARG}"=09=09=09=09=09;;
> +=09s) SCRIPT=3D"${OPTARG}"=09=09=09=09=09;;
> +=09v) VERBOSE=3D"y"=09=09=09=09=09=09;;
> +=09?)
> +=09=09eval arg=3D\${$((OPTIND))}
> +=09=09OPTIND=3D$((OPTIND + 1))
> +=09=09subopts_get "${OPTARG}" "${arg}" || usage=09;;
>  =09h|*) usage=09=09;;

Moved ;; here too.

>  =09esac
>  done

Thanks again!

--=20
Stefano

