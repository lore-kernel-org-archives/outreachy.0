Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82D93225
	for <outreachy@lists.linux.dev>; Thu, 14 Apr 2022 21:35:18 +0000 (UTC)
Received: by mail-lj1-f179.google.com with SMTP id n17so2706056ljc.11
        for <outreachy@lists.linux.dev>; Thu, 14 Apr 2022 14:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rAaNbv/SoHeB9Ei19o3wRu1Ks5Ni6dSISGy1eIEirkY=;
        b=A0kmNElDUYTXWe75tPlT0wm2JWH49KbU0Qs7oXoefizMUuOSwWZHGIfxUNMIDmntvB
         Viik/Bq8k9UR/9w4sDPBO/eEuZhz4I+QAprcUeJJjuX1YzfLu1pm7LXNDloU7yQDnL90
         yAZa16SviOhWtZ0nKMbGedh6q5wjUgNASQ1hW7lAws5/VCRtUXBwEetUAq2ma6+gKS92
         mLFtKRxOIBRfOTq+lvY/+wbdh04AnoVbfaT5RpqlqXit05CKLliz/hZ2kPRW8ZTKLh44
         2D3HAq8jW7zH1Nn981G3r0eJPbl1pEz0om5L3effhAI+P8nxfElyYbDs7dBnBu5kuyQ6
         SxHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rAaNbv/SoHeB9Ei19o3wRu1Ks5Ni6dSISGy1eIEirkY=;
        b=QBhu0IdAK+6ScuFOCNcy36uroB5uRBybIMlVW2yFvT+7dk0bHmH7UBOXrdBC+TNk/V
         MkZ/ddK9gSKuwT9awa/tYYiAfdpQHrjQHHgA9EKjybf5CTe1dlCy75ckvfgbJ/RiXzg6
         xGtUODhbgVozWlU8i5exioQETaVoxe2ywF2bSVoVw+GWjs1Si07+OQqK/S0he/SYNKLk
         ix7OeFOZAb8d4TN6CKTeGa+kWFKqbrzHi+izKQtKmK5UwEQW3Kf27H5S2/t4o5TQ5Dy9
         8wgV9QRBu+ksSV267vmb81Hc7GouAmsVmLY1AbMJWV+d6GvvU52eIiUN4pTLi2UAvakC
         yR4g==
X-Gm-Message-State: AOAM531SYkzF/rqqN4VIq7b/q+kUAS7p31r6K9rfgEBsfri+eht5BxMG
	9kG423W1kNjcrWYQpCp2I3a/MdrXWFIl1qjYarv+o9d4uXo=
X-Google-Smtp-Source: ABdhPJyU2pbP0nzLMyU4xAihdKYJKx9gqzT80QiGBXlcJtSowmluV4ejZ+5Lef7k2aurtk+IL1TpKIZz/HazEeC+owk=
X-Received: by 2002:a05:651c:1546:b0:24c:7e0c:38b1 with SMTP id
 y6-20020a05651c154600b0024c7e0c38b1mr2656582ljp.375.1649972116365; Thu, 14
 Apr 2022 14:35:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20220413201758.GA387675@euclid> <20220414151211.6ba90067@elisabeth>
In-Reply-To: <20220414151211.6ba90067@elisabeth>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Thu, 14 Apr 2022 17:35:04 -0400
Message-ID: <CAMWRUK4scFOEXQA-PvGi=xMTQUXgqcOsUgCNXhs_8diQOspXag@mail.gmail.com>
Subject: Re: [PATCH] mbuto: support building a minimal image for kernel selftests
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy linux kernel <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 14, 2022 at 9:12 AM Stefano Brivio <sbrivio@redhat.com> wrote:
>
> Thanks for the patch! The feature looks really nice now. I haven't had
> time to test it as much as I wanted yet, a few comments below.
>
> Note: I can also change those myself before pushing. This is usually not
> the case for kernel trees -- the maintainers/committers will only apply
> patches with no changes from their side (i.e. you would have to send a
> new version).
>
> But there are also some exceptions there, I guess it depends on how
> busy a given maintainer is.
>
> On Wed, 13 Apr 2022 16:17:58 -0400
> Sevinj Aghayeva <sevinj.aghayeva@gmail.com> wrote:
>
> > Adds suboption -c for the case of -p kselftests for choosing a test collection
> > to run. For example, specifying "-p kselftests -c net" creates an image that
> > contains only the tests from the net collection and only the kernel modules
> > needed to run those tests. If there are missing modules for running the tests, a
> > warning will be emitted showing missing modules names. The -c option is similar
> > to the -c option of run_kselftests.sh, but unlike run_kselftest.sh's option it
> > currently it doesn't support specifying multiple collections. This will be fixed
> > later.
> >
> > Also adds suboption -t for the case of -p kselftests for choosing a specific
> > test. For example, specifying "-p kselftests -t net:ip_defrag.sh" creates an
> > image that runs only the single test when booted. This option is also similar to
> > run_kselftest.sh's -t option, but it is also lacking some functionality, which
> > will be fixed later.
> >
> > Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
> > ---
> >  mbuto | 156 +++++++++++++++++++++++++++++++++++++++++++++++++---------
> >  1 file changed, 132 insertions(+), 24 deletions(-)
> >
> > diff --git a/mbuto b/mbuto
> > index c643c9b..e786592 100755
> > --- a/mbuto
> > +++ b/mbuto
> > @@ -205,7 +205,12 @@ profile_kselftests() {
> >
> >       KERNEL="$(cat include/config/kernel.release)"
> >
> > -     ${MAKE} -C tools/testing/selftests/ install >/dev/null 2>&1
> > +     __skip_targets=$(awk '/^TARGETS/ { print $3}' \
>
> We should use ${AWK} and add it to the list of required tools, so that
> if it's missing this becomes clearly visible, and so that one can use
> their own version or wrapper of it (perhaps for debugging).
>
> > +             tools/testing/selftests/Makefile | \
> > +             grep -v "^${SUBOPT_collection}$" | tr '\n' ' ')
>
> Same here, ${GREP} and ${TR}
>
> > +
> > +     ${MAKE} SKIP_TARGETS="${__skip_targets}" -C \
> > +             tools/testing/selftests/ install >/dev/null 2>&1
> >
> >       MODDIR="$(${REALPATH} .mbuto_mods)"
> >       ${RM} -rf "${MODDIR}"
> > @@ -213,19 +218,46 @@ profile_kselftests() {
> >       INSTALL_MOD_PATH="${MODDIR}" ${MAKE} modules_install -j ${THREADS} \
> >                                                               >/dev/null
> >
> > -     __skip_dirs="drivers/gpu drivers/iio drivers/infiniband drivers/media
> > -                  drivers/net/ethernet drivers/net/wireless
> > -                  drivers/scsi drivers/usb"
> > -     __skip_args=
> > -     for __d in ${__skip_dirs}; do
> > -             __skip_args="${__skip_args}-path ${__d} -prune "
> > -     done
> > -     KMODS="$(${FIND} "${MODDIR}" ${__skip_args}                     \
> > -             -o -name '*.ko' -printf "%p ")"
> > +     __cfg="./tools/testing/selftests/${SUBOPT_collection}/config"
> > +     KMODS=
> > +     if [ -f ${__cfg} ]; then
> > +             __mods=$(awk -F'=' '/=m/ {print $1}' ${__cfg} | sort -u)
>
> ${AWK}, ${SORT}
>
> > +
> > +             __egrep_pattern=""
> > +             for __c in ${__mods}; do
> > +                     __egrep_pattern='^obj-\$\('"${__c}"'\).*.o$|'"${__egrep_pattern}"
> > +             done
> > +             __egrep_pattern=${__egrep_pattern%|}
> > +
> > +             __kmods_needed=
> > +             __find_pattern=
> > +             for __mo in $(egrep -rn --include "*Makefile" ${__egrep_pattern} | \
> > +                             awk -F'+=' '/+=/ {print $2}'); do
> > +                     __m=$(basename -s .o ${__mo})
>
> ${EGREP} (to be added to list), ${AWK}, ${BASENAME}
>
> > +                     __find_pattern="-name ${__m}.ko -o ${__find_pattern}"
> > +                     __kmods_needed="${__m} ${__kmods_needed}"
> > +             done
> > +             __find_pattern=${__find_pattern%-o }
> >
> > -     workers kmod_strip_worker
> > +             KMODS=$(${FIND} "${MODDIR}" ${__find_pattern} | tr '\n' ' ')
>
> ${TR}
>
> >
> > -     KMODS="$(basename -a -s .ko ${KMODS})"
> > +             workers kmod_strip_worker
> > +
> > +             KMODS="$(basename -a -s .ko ${KMODS})"
>
>
> ${BASENAME}
>
> > +
> > +             __kmods_missing=
> > +             for __n in ${__kmods_needed}; do
> > +                     __found=0
> > +                     for __f in ${KMODS}; do
> > +                             [ ${__n} = ${__f} ] && __found=1
> > +                     done
> > +                     [ ${__found} -eq 0 ] && \
> > +                             __kmods_missing="${__n} ${__kmods_missing}"
> > +             done
> > +             if [ ! -z "${__kmods_missing}" ]; then
> > +                     notice "WARNING: missing modules: ${__kmods_missing}"
> > +             fi
> > +     fi
>
> Not a strong preference: this could also be implemented as a separate
> helper. Example:
>         https://passt.top/passt/tree/test/lib/util#n16
>
> >
> >       LINKS="${LINKS:-
> >                bash           /init
> > @@ -240,6 +272,10 @@ profile_kselftests() {
> >       COPIES="${COPIES}
> >               tools/testing/selftests/kselftest_install/*,"
> >
> > +     __run_args=
> > +     [ ! -z ${SUBOPT_collection} ] && __run_args="-c ${SUBOPT_collection}"
> > +     [ ! -z ${SUBOPT_test} ] && __run_args="${__run_args} -t ${SUBOPT_test}"
> > +
> >       FIXUP='#!/bin/sh
> >
> >               export PATH=/bin:/usr/bin:/sbin:/usr/sbin
> > @@ -266,7 +302,7 @@ profile_kselftests() {
> >               echo 3 > /proc/sys/kernel/printk
> >               echo "Press s for shell, any other key to run selftests"
> >               read a
> > -             [ "${a}" != "s" ] && ./run_kselftest.sh
> > +             [ "${a}" != "s" ] && ./run_kselftest.sh '"${__run_args}"'
> >  '
> >
> >       for __f in $(${FIND} tools/testing/selftests/kselftest_install/ \
> > @@ -392,6 +428,63 @@ workers() {
> >  ################################################################################
> >
> >
> > +### Suboption Parsing #########################################################
> > +
> > +SUBOPTS='
> > +     kselftests      c       collection      Select a collection of kernel tests
> > +     kselftests      t       test            Select a test from a collection
> > +'
> > +
> > +subopts_profile=
> > +subopts_usage_one() {
>
> I know I supplied this myself as a snippet, but I forgot to add a
> comment about the function usage. :)
>
> > +     __profile="${1}"
> > +     __short="${2}"
> > +     __help="${4}"
> > +
> > +     if [ "${usage_subopts_profile}" != ${__profile} ]; then
> > +             usage_subopts_profile="${__profile}"
> > +             printf "\tSub-options for profile ${__profile}:\n"
> > +     fi
> > +
> > +     printf "\t\t-%s: %s\n" ${__short} "${__help}"
> > +}
> > +
> > +subopts_usage() {
>
> Same here.
>
> > +     IFS='
> > +'
> > +     for __line in ${SUBOPTS}; do
> > +             IFS='   '
> > +             subopts_usage_one ${__line}
> > +             IFS='
> > +'
> > +     done
> > +     unset IFS
> > +}
> > +
> > +subopts_get_one() {
> > +     __profile="${3}"
> > +     __short="${4}"
> > +     __name="${5}"
> > +
> > +     [ "${__profile}" != "${PROFILE}" ]      && return 1
> > +     [ "${1}" != "${4}" ]                    && return 1
> > +
> > +     eval $(echo SUBOPT_${__name}="${2}")
> > +}
> > +
> > +subopts_get() {
> > +     IFS='
> > +'
> > +     for __line in ${SUBOPTS}; do
> > +             IFS='   '
> > +             subopts_get_one "${1}" "${2}" ${__line} && unset IFS && return 0
> > +             IFS='
> > +'
> > +     done
> > +     unset IFS
> > +     return 1
> > +}
> > +
> >  ### CPIO #######################################################################
> >
> >  # cpio_init() - Source existing CPIO archive, or create if needed
> > @@ -960,7 +1053,7 @@ usage() {
> >       echo "${0} [OPTIONS] [ADD_ON]..."
> >       echo
> >       echo "Options:"
> > -     echo "  -c gzip|lz4|lzma|lzo|auto|none"
> > +     echo "  -z gzip|lz4|lzma|lzo|auto|none"
>
> I wouldn't change this. Okay, I'm probably the only user at the moment:
>         https://passt.top/passt/tree/test/lib/setup#n37
>
> but "-c" reflects "compression" better. Perhaps we could use uppercase
> letters for all the sub-options instead? Also to distinguish that
> visually on the command line.
>
> >       echo "          compression method for CPIO file. Default: none"
> >       echo "  -d"
> >       echo "          don't strip binary objects"
> > @@ -972,8 +1065,19 @@ usage() {
> >       echo "          relative root for /lib/modules. Default: /"
> >       echo "  -p PROFILE"
> >       echo "          select profile for add-ons, one of:"
> > -     echo "                  base bash kata kata_debug passt"
> > +     echo "                  base bash kata kata_debug passt kselftests"
> >       echo "          Default: base"
> > +     echo "          when profile is kselftests there are two suboptions"
> > +     echo "          that are identical to run_kselftests.sh options:"
> > +     echo "          -c collection"
> > +     echo "                 select a collection of tests to run"
> > +     echo "          -t collection:test"
> > +     echo "                 select a specific test to run"
> > +     echo "          For example, specifying:"
> > +     echo "                 -p kselftests -c net"
> > +     echo "          runs all the tests in net collection; specifying"
> > +     echo "                 -p kselftests -t net:ip_defrag.sh"
> > +     echo "          runs only the ip_defrag.sh test from net collection"
> >       echo "  -s SCRIPT|-"
> >       echo "          fix-up script to run before init, '-' for none"
> >       echo "  -v: verbose"
> > @@ -1026,16 +1130,20 @@ usage() {
> >  ARGS=${@}
> >
> >  # Parse options
> > -while getopts c:df:k:m:p:s:vh __opt; do
> > +while getopts :z:df:k:m:p:s:vh __opt; do
> >       case ${__opt} in
> > -     c) COMPRESS="${OPTARG}" ;;
> > -     d) STRIP="n"            ;;
> > -     f) OUT="${OPTARG}"      ;;
> > -     k) KERNEL="${OPTARG}"   ;;
> > -     m) MODDIR="${OPTARG}"   ;;
> > -     p) PROFILE="${OPTARG}"  ;;
> > -     s) SCRIPT="${OPTARG}"   ;;
> > -     v) VERBOSE="y"          ;;
> > +     z) COMPRESS="${OPTARG}"                                 ;;
> > +     d) STRIP="n"                                            ;;
> > +     f) OUT="${OPTARG}"                                      ;;
> > +     k) KERNEL="${OPTARG}"                                   ;;
> > +     m) MODDIR="${OPTARG}"                                   ;;
> > +     p) PROFILE="${OPTARG}"                                  ;;
> > +     s) SCRIPT="${OPTARG}"                                   ;;
> > +     v) VERBOSE="y"                                          ;;
> > +     ?)
> > +             eval arg=\${$((OPTIND))}
> > +             OPTIND=$((OPTIND + 1))
> > +             subopts_get "${OPTARG}" "${arg}" || usage       ;;
> >       h|*) usage              ;;
> >       esac
> >  done
>
> The rest looks good to me! I'll try to test this later today and push.

Thanks!

> We should also update the demo script by the way, I can take care of
> that unless you want to play with it.

Once you push it, I'd like to make it completely compatible with
run_kselftests.sh script. I'll catch up with you on IRC.

> Once that's ready, we can document this a bit and probably other
> applicants can also benefit from it.
>
> --
> Stefano
>


-- 

Sevinj.Aghayeva
