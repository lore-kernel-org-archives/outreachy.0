Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA29D1876
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 07:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650525002;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=63ViWfLlmaj/DhjRP9oFB/1KLHxLMeQrGcqkKvT3aeA=;
	b=QcxqVShYQymURTOj3Hw/XPcWdNd3zsKfvzCfVN7fZA6cf5LBfoieZ9DsVjMf5JHZoq+Ozr
	CRsLRk/pU+wtzp1PL+3RFBhtagBHOdhGYu+v50nlQU7ShWlUp7fev2Jq/MlulPpnE0zVUl
	vDrB6JWpeUqj5EPTR3iaow9zNVqoJUM=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-422-pkZg3qdfNBOWOOQN21RbUQ-1; Thu, 21 Apr 2022 03:10:01 -0400
X-MC-Unique: pkZg3qdfNBOWOOQN21RbUQ-1
Received: by mail-wm1-f71.google.com with SMTP id az27-20020a05600c601b00b0038ff021c8a4so4111586wmb.1
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 00:10:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=63ViWfLlmaj/DhjRP9oFB/1KLHxLMeQrGcqkKvT3aeA=;
        b=Hk4BJqZ7EkmCESFCXNxHJ9cKdnU4aGNCD9wrLMn07J4cxjhr7nXDXzaLa4V3OSBf91
         pN60gwVhaTDyqPyaRPO0anL4XkaS4Fw9ySBcZS9FW18thTmovuMGOhCIX2Xd5lXRp3pP
         2RoptrMy+bmVhyanW0ivO3K4YN/NaKcZUiGQEErVIUHD0I7NS3+ldW1uLPXJ0q7P9KNT
         yBYktHBTcDVVzmXqHUiGi8auvvxKO2NWsaPpQSrFQgCUxBgqCiXthvLuFJSQ1uZ47F+b
         At80m5ruV9E5JEY9CiVQiEqrh+WTsc66lsRcpya2UkeeG3cJpgVJZFbXCqaOABKchoik
         LZtA==
X-Gm-Message-State: AOAM530vF7Es46aD6vkf5Pfara1aR4k/S7iNC2wwnDLcRs0KthG8gk1W
	P6TLOaUbLKg1tVOJora2TsIMcdXI+R+dr27oRU/DMx//EaYe27bVS7RBlhakKqyZdmo2RaHzsmE
	FMi6ZoWx1vfQIaDC63UMy
X-Received: by 2002:a05:600c:34c5:b0:38f:fbcb:e4d with SMTP id d5-20020a05600c34c500b0038ffbcb0e4dmr7147571wmq.174.1650524999947;
        Thu, 21 Apr 2022 00:09:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxXav5e1L/ckc2V1R7UYJ+Xe1T+TSkgXnebYAZ2ub09jZihdAfDOzhB8LCRP40IxAf8HiDmag==
X-Received: by 2002:a05:600c:34c5:b0:38f:fbcb:e4d with SMTP id d5-20020a05600c34c500b0038ffbcb0e4dmr7147555wmq.174.1650524999717;
        Thu, 21 Apr 2022 00:09:59 -0700 (PDT)
Received: from ?IPV6:2003:cb:c702:de00:711b:76af:b335:9b70? (p200300cbc702de00711b76afb3359b70.dip0.t-ipconnect.de. [2003:cb:c702:de00:711b:76af:b335:9b70])
        by smtp.gmail.com with ESMTPSA id v2-20020adf8b42000000b0020aa790a258sm1628401wra.8.2022.04.21.00.09.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 00:09:59 -0700 (PDT)
Message-ID: <d46accec-28f7-d678-b475-c4402bba8211@redhat.com>
Date: Thu, 21 Apr 2022 09:09:58 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH 3/3] memblock tests: remove extra column of spaces in
 block comment
To: Rebecca Mckeever <remckee0@gmail.com>, outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
References: <cover.1650452552.git.remckee0@gmail.com>
 <663c930475c3c0a32965024c1094d3288629a3af.1650452552.git.remckee0@gmail.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <663c930475c3c0a32965024c1094d3288629a3af.1650452552.git.remckee0@gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20.04.22 13:19, Rebecca Mckeever wrote:
> Remove extra space at the beginning of each line in block comment
> for consistency and to conform to Linux kernel coding style.
> 
> Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
> ---
>  tools/testing/memblock/tests/basic_api.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
> index 834d8705ff8a..05448a25f1f9 100644
> --- a/tools/testing/memblock/tests/basic_api.c
> +++ b/tools/testing/memblock/tests/basic_api.c
> @@ -303,12 +303,12 @@ static int memblock_add_checks(void)
>  	return 0;
>  }
>  
> - /*
> -  * A simple test that marks a memory block of a specified base address
> -  * and size as reserved and to the collection of reserved memory regions
> -  * (memblock.reserved). Expect to create a new entry. The region counter
> -  * and total memory size are updated.
> -  */
> +/*
> + * A simple test that marks a memory block of a specified base address
> + * and size as reserved and to the collection of reserved memory regions
> + * (memblock.reserved). Expect to create a new entry. The region counter
> + * and total memory size are updated.
> + */
>  static int memblock_reserve_simple_check(void)
>  {
>  	struct memblock_region *rgn;

I'd pull this patch to the front, so you don't end up modifying a wrong
style in patch #2. You could also just squash this patch into patch #2
and mention it in the patch description.

-- 
Thanks,

David / dhildenb

