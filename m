Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DA71FCD
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 16:47:37 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id bz24so3708984qtb.2
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 09:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=G5SKEdGOaIvfBQJSpHuJhVtB76TixYdqOy3GhFLhSCI=;
        b=iq91iNJMVttXcdpXrr+XHPWB6kmqqiyKEa4gAGrR42RnnX4fKXop4+0lZMODXP1zTX
         kaxLFLpc67MqD3U/UOMLaHv78A4lumTAyew/jObqEuIlN53rCcSeNzG2f2G/DX4RjIPH
         46G03V0Jpi+K1I1Y+oketj0FCYJHq8n7jixJAGJO24+LIWYYigA3US7NAlART7REqcff
         47nv6DE9U2vqEuEBuxCgyvTzD6xRG/XDAeq+62Q6FTJcIQ32nN2jaGRm2otdYB9uitrf
         sIpWlMHJty1YQ/0itXkoMseuDDV17fVEezE4X3f+1A7XRXR+HdyYSSHu3A0tj7KkihrK
         3d9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=G5SKEdGOaIvfBQJSpHuJhVtB76TixYdqOy3GhFLhSCI=;
        b=36aUIU8O67bqKXM8v561+Qqz+y72OH3ndMEcmeioT5YWXhXfQ7yKgAepKxwtecorbx
         xONeS5O8YNhY9/jQ9OamzZpBX8n4Rr45k/IbojgIkuzdCzAEiBVtOiy4U7PePtLxC8pc
         80FSPt7jO1OphwUjy8gXzmOSaYhwyrHuMA0SSUT2Xq7DFxwfGSCYkQvv3uvLVVT0EhAP
         fz9gTo+PRL4/4XpfP0DTYkyLinJlgytZhx2Fjvri7fQFPC1PAHnYoJ9erNEm4GtjPZYs
         AsFu6e39QRC2RCJD/c8d/kHciu8UzCl5PpNw0YXYqf4iB9ljGRch34g3btfQMC+7Z4Lb
         qHFg==
X-Gm-Message-State: AOAM530FLZe0rkIwmDAthakazGkf9njN/ZxfbasSEC9xFJiTk1UJXD3J
	hh3lmhSd3Bh99e3gnD+zImo=
X-Google-Smtp-Source: ABdhPJywgbZ4z65uj2wmxLheHMk9axyMGU3bKRCMtfyY/HwTMX3ZJmcojZ77NU2zSMPkgp0ueyOaNg==
X-Received: by 2002:a05:622a:1990:b0:2f3:3eb7:33e9 with SMTP id u16-20020a05622a199000b002f33eb733e9mr275676qtc.13.1650559656314;
        Thu, 21 Apr 2022 09:47:36 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([4.34.18.218])
        by smtp.gmail.com with ESMTPSA id d17-20020ac85d91000000b002f3359b32c2sm3975173qtx.78.2022.04.21.09.47.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 09:47:35 -0700 (PDT)
Date: Thu, 21 Apr 2022 12:47:31 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>
Cc: outreachy@lists.linux.dev, Julia Denham <jdenham@redhat.com>,
	Roopa Prabhu <roopa.prabhu@gmail.com>,
	Stefano Brivio <sbrivio@redhat.com>, netdev@vger.kernel.org
Subject: Re: [PATCH net-next] selftests: net: vrf_strict_mode_test: add
 support to select a test to run
Message-ID: <20220421164731.GA3485444@jaehee-ThinkPad-X1-Extreme>
References: <20220420045512.GA1289782@jaehee-ThinkPad-X1-Extreme>
 <41a48002-817b-4366-d316-9d94e8d81a79@nvidia.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <41a48002-817b-4366-d316-9d94e8d81a79@nvidia.com>

On Thu, Apr 21, 2022 at 07:52:45AM -0700, Roopa Prabhu wrote:
> 
> On 4/19/22 21:55, Jaehee Park wrote:
> > Add a boilerplate test loop to run all tests in
> > vrf_strict_mode_test.sh.
> > 
> > Signed-off-by: Jaehee Park <jhpark1013@gmail.com>
> > ---
> 
> Jaehee, this needs more work. The idea is to be able to run individual tests
> with -t option.
> 
> An example is drop_monitor_tests.sh, see the usage and getopts arg parsing
> at the beginning of the test
> 
> eg ./drop_monitor_tests.sh -t <testname>
> 
> 

Thanks Roopa, I've sent version 2 for your review. 


> >   .../testing/selftests/net/vrf_strict_mode_test.sh  | 14 +++++++++++++-
> >   1 file changed, 13 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tools/testing/selftests/net/vrf_strict_mode_test.sh b/tools/testing/selftests/net/vrf_strict_mode_test.sh
> > index 865d53c1781c..116ca43381b5 100755
> > --- a/tools/testing/selftests/net/vrf_strict_mode_test.sh
> > +++ b/tools/testing/selftests/net/vrf_strict_mode_test.sh
> > @@ -14,6 +14,8 @@ INIT_NETNS_NAME="init"
> >   PAUSE_ON_FAIL=${PAUSE_ON_FAIL:=no}
> > +TESTS="vrf_strict_mode_tests_init vrf_strict_mode_tests_testns vrf_strict_mode_tests_mix"
> > +
> >   log_test()
> >   {
> >   	local rc=$1
> > @@ -391,7 +393,17 @@ fi
> >   cleanup &> /dev/null
> >   setup
> > -vrf_strict_mode_tests
> > +for t in $TESTS
> > +do
> > +	case $t in
> > +	vrf_strict_mode_tests_init|vrf_strict_mode_init) vrf_strict_mode_tests_init;;
> > +	vrf_strict_mode_tests_testns|vrf_strict_mode_testns) vrf_strict_mode_tests_testns;;
> > +	vrf_strict_mode_tests_mix|vrf_strict_mode_mix) vrf_strict_mode_tests_mix;;
> > +
> > +	help) echo "Test names: $TESTS"; exit 0;;
> > +
> > +	esac
> > +done
> >   cleanup
> >   print_log_test_results
