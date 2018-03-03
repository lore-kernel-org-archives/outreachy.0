X-GM-THRID: 6528703529529376768
X-Received: by 10.129.87.77 with SMTP id l74mr4417265ywb.222.1520091980702;
        Sat, 03 Mar 2018 07:46:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.79.19 with SMTP id d19ls20624ywb.16.gmail; Sat, 03 Mar
 2018 07:46:19 -0800 (PST)
X-Received: by 10.129.120.74 with SMTP id t71mr4133335ywc.182.1520091979530;
        Sat, 03 Mar 2018 07:46:19 -0800 (PST)
Received: by 10.129.177.7 with SMTP id p7msywh;
        Sat, 3 Mar 2018 07:32:56 -0800 (PST)
X-Google-Smtp-Source: AG47ELvVzoA8aAvXR//SblKFjfiNUo86Zz6o63pcART5TbfWebIlVAslmUe6dOs3oLnt3uf+FqhQ
X-Received: by 10.129.90.8 with SMTP id o8mr4271500ywb.48.1520091176633;
        Sat, 03 Mar 2018 07:32:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520091176; cv=none;
        d=google.com; s=arc-20160816;
        b=gEZU0IWwAmQ5EtNQiFu40ThYii8b8G2zmOPqg7HnvPiJ10JyDonN4PlS4zq6zGeS5C
         0UXuy7Cj3Se2XgCdpU/HaadwKcM+KEeKDirrn/YsN+coxJlornczoQYMTU4euX9uRfwY
         Cqj3uJz4WNb2IAWAF03fZNYyKK64IRxEWj2SCROv5WKyigQVnt1s+qm6gmkGn+9DODvq
         hJ4shwVUkojyh0CZz2d+gfV0zADyvJOBSU5SxOQlU3Lp2vKKbf4wV19LaZrDCMbIQlxw
         pefUMqGPlJEVusVmqFRt60vrKfXuKh7emjtDE8J7X1Pk08scg5Arn0ASBtTnEpyl6hHi
         Yf+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=szlQCenMFtc2IThlmJ39Ep7QLQigcIiyKIFYka79wqk=;
        b=ekJM9GeTN+UMysBHAOsnH5S3YmvME+vzGJXSAF2LjmztCd5rbrlGdigS+SFNdY/z4s
         TKZxVKAqmWeeWXS2Mu/TaqlZ/g4s4le/AK8XdDp9KHskZRPri8LtiT3wWXxurrnG/h20
         rBX5j2IH542EBLk1fguR4IQ5o4WchcenTPkcoduSr4MASI8SkP9+pwo4eBn7BiBv1NdQ
         t5v96AQn2QZCRigQofc7BX4GYmIAfPA04/IO+Qj9e0jSjxhD+i57p99GrnE5I6TKT0jv
         lodephsXmbyynqIQuVgN0z5igj8h7A9qmuDMgtprSsLhNBMqOqORvUGKrwsOfvTNnNqp
         roOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennis.dalessandro@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dennis.dalessandro@intel.com
Return-Path: <dennis.dalessandro@intel.com>
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id v8si480317ywg.3.2018.03.03.07.32.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 07:32:56 -0800 (PST)
Received-SPF: pass (google.com: domain of dennis.dalessandro@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dennis.dalessandro@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dennis.dalessandro@intel.com
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 07:32:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,418,1515484800"; 
   d="scan'208";a="21612604"
Received: from ddalessa-mobl2.amr.corp.intel.com (HELO [10.254.131.219]) ([10.254.131.219])
  by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2018 07:32:53 -0800
Subject: Re: [PATCH] infiniband: hw: Drop unnecessary continue
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: mike.marciniszyn@intel.com, Doug Ledford <dledford@redhat.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma@vger.kernel.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20180303130336.GA8210@seema-Inspiron-15-3567>
From: Dennis Dalessandro <dennis.dalessandro@intel.com>
Message-ID: <8758a94b-ca48-7b82-6192-fd7ad6a515e4@intel.com>
Date: Sat, 3 Mar 2018 10:32:52 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180303130336.GA8210@seema-Inspiron-15-3567>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/3/2018 8:03 AM, Arushi Singhal wrote:
> Continue at the bottom of a loop are removed.
> Issue found using drop_continue.cocci Coccinelle script.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>   drivers/infiniband/hw/qib/qib_init.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/infiniband/hw/qib/qib_init.c b/drivers/infiniband/hw/qib/qib_init.c
> index 3990f38..1bd3b32 100644
> --- a/drivers/infiniband/hw/qib/qib_init.c
> +++ b/drivers/infiniband/hw/qib/qib_init.c
> @@ -681,7 +681,6 @@ int qib_init(struct qib_devdata *dd, int reinit)
>   		if (lastfail) {
>   			qib_dev_err(dd,
>   				"failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\n");
> -			continue;
>   		}
>   	}
>   
> 

Please run checkpatch before posting patches. This will fail as you left 
braces around a single line.

-Denny

