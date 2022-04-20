Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4ED37A
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 05:01:29 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id lc2so1046165ejb.12
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 22:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=NpFVcX/rQ4/pDaNkozRjOJ0rrg5LCyeh7gZ9ZrDTO40=;
        b=d3nWhttd5RRkY9ZRXXFek2pXWjALd/FZbysGHwVWyAPSLQsiopcIonJW2Cr+QkIYmS
         tXf8InTOePvpULLpqWk9NvSdrjZXkVGLUTEiJupK+DBUp1E/AfjgJo3hym3kzuFy2ckX
         RrsVBhK7NAdvJWCWZj6yzR9sVU5tAtAKRoFEHKM35cXOvXzsQY+7HZLfJ3QHkOqx52vv
         Ml024GGF6BPU6PQ+AwljljbBBWs06bCzqITbmT76GWIqDt5UWtcBR7hTA7gsLTfEUsZR
         hgLLDRt4C+FOuf/wBrvbHfnPyiCUo04xSjD1KK5G+4nuMKyHhiCcdHWr4i35fSqnCvAj
         hmIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=NpFVcX/rQ4/pDaNkozRjOJ0rrg5LCyeh7gZ9ZrDTO40=;
        b=LdruOTGnvYipBaSyoQpvyhoDaZPZYV1FtLTE0+N9e62EQoAt3YdoRWfFxutBjQHTCQ
         goUR0NbdqyDv8MUiJElMXvWlp5sX8u0IN0V1GDyC/V+Ljzv83KcSE4BFLvhtzSU7qp5+
         Ghsg9JuVkbIYQ5WXytETOOlOsszJqoRXWQrvjuWxLynjGBOJ6q5KYEAtypjyOCsXISGb
         2FiJcwi3yZP/LvSDe367HSY1Fby/n0FzgpO4MA3xmBC6CuRAI3XdZvciyLCS88iKMIQ8
         rmpq0/cV5xQP98sGs2vhxmx7Ha+iZZaEUSInM3/QJVvyDjBw+rd8WmQeybHU61sV6f+X
         04aQ==
X-Gm-Message-State: AOAM530L27AKk/BhShDH/IgSkBPoWel1Z6l5Ism0owOh0kQkJ3v1Inq+
	NafmfngN2xcowYZkDEGIA8kColb/yumnJt94fBlSNyKgJjtP8A==
X-Google-Smtp-Source: ABdhPJxo5z09Cj7K/MMsHAxFatlz6zMbXHmRmLITft3p/H0sNoakLV9p3Agenl0JkbOZmKKUmIlyU7ePDG5OKuoEVYU=
X-Received: by 2002:a17:906:36c8:b0:6e7:a66f:766e with SMTP id
 b8-20020a17090636c800b006e7a66f766emr16884096ejc.354.1650430887741; Tue, 19
 Apr 2022 22:01:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20220420045512.GA1289782@jaehee-ThinkPad-X1-Extreme>
In-Reply-To: <20220420045512.GA1289782@jaehee-ThinkPad-X1-Extreme>
From: Jaehee <jhpark1013@gmail.com>
Date: Wed, 20 Apr 2022 01:01:16 -0400
Message-ID: <CAA1TwFDXYFm4HaTuka_0ZcdD0BENwbCAGDKF44=_wpP3nTiWpg@mail.gmail.com>
Subject: Re: [PATCH net-next] selftests: net: vrf_strict_mode_test: add
 support to select a test to run
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>, Julia Denham <jdenham@redhat.com>, 
	Roopa Prabhu <roopa.prabhu@gmail.com>, Stefano Brivio <sbrivio@redhat.com>, netdev@vger.kernel.org, 
	Jaehee Park <jhpark1013@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Sorry, I sent two of the same patch by accident. Please ignore this one.


On Wed, Apr 20, 2022 at 12:55 AM Jaehee Park <jhpark1013@gmail.com> wrote:
>
> Add a boilerplate test loop to run all tests in
> vrf_strict_mode_test.sh.
>
> Signed-off-by: Jaehee Park <jhpark1013@gmail.com>
> ---
>  .../testing/selftests/net/vrf_strict_mode_test.sh  | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/tools/testing/selftests/net/vrf_strict_mode_test.sh b/tools/testing/selftests/net/vrf_strict_mode_test.sh
> index 865d53c1781c..116ca43381b5 100755
> --- a/tools/testing/selftests/net/vrf_strict_mode_test.sh
> +++ b/tools/testing/selftests/net/vrf_strict_mode_test.sh
> @@ -14,6 +14,8 @@ INIT_NETNS_NAME="init"
>
>  PAUSE_ON_FAIL=${PAUSE_ON_FAIL:=no}
>
> +TESTS="vrf_strict_mode_tests_init vrf_strict_mode_tests_testns vrf_strict_mode_tests_mix"
> +
>  log_test()
>  {
>         local rc=$1
> @@ -391,7 +393,17 @@ fi
>  cleanup &> /dev/null
>
>  setup
> -vrf_strict_mode_tests
> +for t in $TESTS
> +do
> +       case $t in
> +       vrf_strict_mode_tests_init|vrf_strict_mode_init) vrf_strict_mode_tests_init;;
> +       vrf_strict_mode_tests_testns|vrf_strict_mode_testns) vrf_strict_mode_tests_testns;;
> +       vrf_strict_mode_tests_mix|vrf_strict_mode_mix) vrf_strict_mode_tests_mix;;
> +
> +       help) echo "Test names: $TESTS"; exit 0;;
> +
> +       esac
> +done
>  cleanup
>
>  print_log_test_results
> --
> 2.25.1
>
