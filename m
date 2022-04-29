Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A5E1851
	for <outreachy@lists.linux.dev>; Fri, 29 Apr 2022 17:05:54 +0000 (UTC)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-e656032735so8785423fac.0
        for <outreachy@lists.linux.dev>; Fri, 29 Apr 2022 10:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=jnCtyXnESVbchZJWJZYW28GNNZvgABPwKrO6SozJwzs=;
        b=bPoBi1YAZsJTWrA/ZdRHRXaVulHPlcKW1cma6SzYu9pZWqGe/3kdUgR90zifXX5wVW
         ZEZUbGQRZoIR6K3+alzmSuvyHCnnDl+gBtjsv0QTrQzq5GfmDOeXPzMIQCLlSoIWj2C6
         dAXwhrHF6efP+QlTTFu8GyDtxnchRoR/rnExNn074cqA0aBF6bBTuKJic3cMCRT4OaJ4
         fqKMD6ikNKXPNzDlzA4jylHu++DflQLatPXNEXcHZa1l2r3FQIYalBmudqlibGa2ZRVf
         4fSLhf96V6sFtjx02T6iUc2JKIiphNsejTbytvAE6dsWrH+D761KIpZfPN+3qB+Iyig1
         JA6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jnCtyXnESVbchZJWJZYW28GNNZvgABPwKrO6SozJwzs=;
        b=YnrpSBwEvYnDJc2o1aIrSlOBBFuiyToQXf9ztpDpYIFBPHVq3ifUNBzB6MeZz3COJa
         m7T9RxCvxwbudsMG9gNF8ZY7ET74joTAwMHCQNXrYbx/JEJBcsJZXNsB+hehVJR3Lwbs
         VzZXYMq9V7DMGw0SCz9zWwkASw7moxqLwMdtAhADm7W7jTXuxrmE1LEb1nKe8ZP19Bo4
         1U6q5JEEiDSGq1ja0ndY4qAkwqWS5IKeVMEkw7u+zQ3Cjnmd8fwS8WpOjpnti9CC3h7u
         8y3+NA8chee5L5jeygqlWZ48MllEQquMzU3l6AiEPUtBqxQ7iEz98nXnDOOLArfOQbF9
         ohOQ==
X-Gm-Message-State: AOAM5327w8QD4TcUhX2Di/kQCRBHOrS2FsHpgfd2UbtbO4ZvZdYZQF39
	WQEU6yTesMFzTK9ZYGdxQvXtYO/zz6I=
X-Google-Smtp-Source: ABdhPJyNcQuLw0ifPKxmkw5JvY7VEa1Lt5XOsdxB612ehcujy7YbtWBAGWZLtRICdNpeuERvfz9iaQ==
X-Received: by 2002:a05:6870:889d:b0:e6:170e:a37b with SMTP id m29-20020a056870889d00b000e6170ea37bmr1725074oam.38.1651251954058;
        Fri, 29 Apr 2022 10:05:54 -0700 (PDT)
Received: from [172.16.0.2] ([104.28.224.252])
        by smtp.googlemail.com with ESMTPSA id 5-20020a9d0105000000b005fbe5093eb0sm1257355otu.54.2022.04.29.10.05.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 10:05:53 -0700 (PDT)
Message-ID: <c1070b15-ee51-c487-7081-5e1048a1298c@gmail.com>
Date: Fri, 29 Apr 2022 11:05:47 -0600
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.8.0
Subject: Re: [PATCH net-next v4] selftests: net: vrf_strict_mode_test: add
 support to select a test to run
Content-Language: en-US
To: Jaehee Park <jhpark1013@gmail.com>, outreachy@lists.linux.dev,
 Julia Denham <jdenham@redhat.com>, Roopa Prabhu <roopa.prabhu@gmail.com>,
 Stefano Brivio <sbrivio@redhat.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>
References: <20220429164658.GA656707@jaehee-ThinkPad-X1-Extreme>
From: David Ahern <dsahern@gmail.com>
In-Reply-To: <20220429164658.GA656707@jaehee-ThinkPad-X1-Extreme>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/29/22 10:46 AM, Jaehee Park wrote:
> Add a boilerplate test loop to run all tests in
> vrf_strict_mode_test.sh. Add a -t flag that allows a selected test to
> run. Remove the vrf_strict_mode_tests function which is now unused.
> 
> Signed-off-by: Jaehee Park <jhpark1013@gmail.com>
> ---
> v2 
> - Add a -t flag that allows a selected test to
> run.
> 
> v3 
> - Add commented delineators to section the code for improved
> readability.
> - Move the log_section() call into the functions handling the tests.
> - Remove unnecessary spaces.
> 
> v4 
> - Remove unused function
> - Edit the patch log to reflect this change.
> 
> 
>  .../selftests/net/vrf_strict_mode_test.sh     | 48 +++++++++++++++----
>  1 file changed, 39 insertions(+), 9 deletions(-)
> 

Reviewed-by: David Ahern <dsahern@kernel.org>


