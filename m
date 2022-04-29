Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B2E7B
	for <outreachy@lists.linux.dev>; Fri, 29 Apr 2022 13:34:11 +0000 (UTC)
Received: by mail-qt1-f177.google.com with SMTP id y3so5743290qtn.8
        for <outreachy@lists.linux.dev>; Fri, 29 Apr 2022 06:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ipC9V82PFie+nvLtXqZTiVELTpXRF2kluOqV2ATDd/o=;
        b=RpvdKuYYL82ArlGfHeY0e2JeUZRnEjWcJt6ga8q+uF0hsXkBfN6g7EeyyfOmRZo2lk
         T+dDqpdRPHDCIcUpPbIduLnAShr44NgLPMJGR84bA2ZooaPufQXtx+pfdziaaClUh7+C
         fdZ3cD6MOuP5l9Nb5zoV3kcVNRwD4y/7KWyGEDUuPvS1urLQjVlUGFDbiFI5vPI5h0Bt
         sEM/kpMwJELVULgU03lmXGI+hVQn7OSy1Ki/VjrAKGM4PKquuf/XqBtwx8TyLkQviV18
         LsEUrEynABnIOLNkg/ZzrzZuWxvEA5Gpwr5Zts5PEkI7b8waxEVx75Ah/2bFI65L1aty
         a3Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ipC9V82PFie+nvLtXqZTiVELTpXRF2kluOqV2ATDd/o=;
        b=2KalGh+CpaJPpsUDyF5Ziea+iCsJQgiqlncOKtO+OO5kbZgOx5k/VDkunLAOh9i6E9
         iXRVo3qpCn3Kqj+eQvKSfAFSD0WUsKMy8sYhPMEKQ6Kx4NWsqU2OgrA4KEazjdpv7+ho
         BJcj4+w9tCHXbSRm4Qwwlg9nfZVQtL47JWp72usdHHHT5sr93xdk4Xm9VE8uUtAfUGbX
         fmnovrckU1Mjk9MuOmoCzsKZ06TXHHTSR+MKjzxnQxU0PpEEbl9PXR3jSSWYFp7KW1GY
         mkF0sKFV1xGWwwnOkw0tKsZEZIvI12ROGg30tSAX71HxUSwQxg8bEulFsCZl6EBRyq+Q
         DEGg==
X-Gm-Message-State: AOAM530bpOl52tcSbHmTFbkG3jRMIWfn0IKFcFMyJIf1VbhIeev+rKwi
	DPvuZ6n4m/yGqUkpGNCUWxs=
X-Google-Smtp-Source: ABdhPJx3iweKB+MlPQk3JOc/lfPOKyByYoSeXHHWVKhSOQ2tQjWHKPpe5DWEudu1hEVP4bbobpcbPw==
X-Received: by 2002:a05:622a:38a:b0:2e2:2fdf:246e with SMTP id j10-20020a05622a038a00b002e22fdf246emr27435314qtx.482.1651239249773;
        Fri, 29 Apr 2022 06:34:09 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([4.34.18.218])
        by smtp.gmail.com with ESMTPSA id h23-20020ac85697000000b002f387e4000dsm1626104qta.11.2022.04.29.06.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 06:34:09 -0700 (PDT)
Date: Fri, 29 Apr 2022 09:34:05 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>
Cc: outreachy@lists.linux.dev, Julia Denham <jdenham@redhat.com>,
	Roopa Prabhu <roopa.prabhu@gmail.com>,
	Stefano Brivio <sbrivio@redhat.com>, netdev@vger.kernel.org,
	David Ahern <dsahern@gmail.com>
Subject: Re: [PATCH net-next v3] selftests: net: vrf_strict_mode_test: add
 support to select a test to run
Message-ID: <20220429133405.GA631146@jaehee-ThinkPad-X1-Extreme>
References: <20220428164831.GA577338@jaehee-ThinkPad-X1-Extreme>
 <cf8ae870-8208-b4eb-fbaa-c81be95df05d@nvidia.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cf8ae870-8208-b4eb-fbaa-c81be95df05d@nvidia.com>

On Thu, Apr 28, 2022 at 04:02:51PM -0700, Roopa Prabhu wrote:
> 
> On 4/28/22 09:48, Jaehee Park wrote:
> > Add a boilerplate test loop to run all tests in
> > vrf_strict_mode_test.sh. Add a -t flag that allows a selected test to
> > run.
> > 
> > Signed-off-by: Jaehee Park <jhpark1013@gmail.com>
> > ---
> > version 3:
> > - Added commented delineators to section the code for improved
> > readability.
> > - Moved the log_section() call into the functions handling the tests.
> > - Removed unnecessary spaces.
> > 
> > 
> >   .../selftests/net/vrf_strict_mode_test.sh     | 47 +++++++++++++++++--
> >   1 file changed, 43 insertions(+), 4 deletions(-)
> > 
> > diff --git a/tools/testing/selftests/net/vrf_strict_mode_test.sh b/tools/testing/selftests/net/vrf_strict_mode_test.sh
> > index 865d53c1781c..423da8e08510 100755
> > --- a/tools/testing/selftests/net/vrf_strict_mode_test.sh
> > +++ b/tools/testing/selftests/net/vrf_strict_mode_test.sh
> > @@ -14,6 +14,8 @@ INIT_NETNS_NAME="init"
> >   PAUSE_ON_FAIL=${PAUSE_ON_FAIL:=no}
> > +TESTS="init testns mix"
> > +
> >   log_test()
> >   {
> >   	local rc=$1
> > @@ -262,6 +264,8 @@ cleanup()
> >   vrf_strict_mode_tests_init()
> >   {
> > +	log_section "VRF strict_mode test on init network namespace"
> > +
> >   	vrf_strict_mode_check_support init
> >   	strict_mode_check_default init
> > @@ -292,6 +296,8 @@ vrf_strict_mode_tests_init()
> >   vrf_strict_mode_tests_testns()
> >   {
> > +	log_section "VRF strict_mode test on testns network namespace"
> > +
> >   	vrf_strict_mode_check_support testns
> >   	strict_mode_check_default testns
> > @@ -318,6 +324,8 @@ vrf_strict_mode_tests_testns()
> >   vrf_strict_mode_tests_mix()
> >   {
> > +	log_section "VRF strict_mode test mixing init and testns network namespaces"
> > +
> >   	read_strict_mode_compare_and_check init 1
> >   	read_strict_mode_compare_and_check testns 0
> > @@ -343,16 +351,37 @@ vrf_strict_mode_tests_mix()
> >   vrf_strict_mode_tests()
> 
> this func is no longer used correct ?, you can remove the function (that was
> one of the comment from david too IIRC)
> 

Yes! thank you for catching this -- the vrf_Strict_mode_tests is unused 
so we can remove this function. I will make that change and send in 
patch v4 soon. 

> 
> >   {
> > -	log_section "VRF strict_mode test on init network namespace"
> >   	vrf_strict_mode_tests_init
> > -	log_section "VRF strict_mode test on testns network namespace"
> >   	vrf_strict_mode_tests_testns
> > -	log_section "VRF strict_mode test mixing init and testns network namespaces"
> >   	vrf_strict_mode_tests_mix
> >   }
> > +################################################################################
> > +# usage
> > +
> > +usage()
> > +{
> > +	cat <<EOF
> > +usage: ${0##*/} OPTS
> > +
> > +	-t <test>	Test(s) to run (default: all)
> > +			(options: $TESTS)
> > +EOF
> > +}
> > +
> > +################################################################################
> > +# main
> > +
> > +while getopts ":t:h" opt; do
> > +	case $opt in
> > +		t) TESTS=$OPTARG;;
> > +		h) usage; exit 0;;
> > +		*) usage; exit 1;;
> > +	esac
> > +done
> > +
> >   vrf_strict_mode_check_support()
> >   {
> >   	local nsname=$1
> > @@ -391,7 +420,17 @@ fi
> >   cleanup &> /dev/null
> >   setup
> > -vrf_strict_mode_tests
> > +for t in $TESTS
> > +do
> > +	case $t in
> > +	vrf_strict_mode_tests_init|init) vrf_strict_mode_tests_init;;
> > +	vrf_strict_mode_tests_testns|testns) vrf_strict_mode_tests_testns;;
> > +	vrf_strict_mode_tests_mix|mix) vrf_strict_mode_tests_mix;;
> > +
> > +	help) echo "Test names: $TESTS"; exit 0;;
> > +
> > +	esac
> > +done
> >   cleanup
> >   print_log_test_results
