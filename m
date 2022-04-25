Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59AF7C
	for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 13:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650893943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U/nJVlrnckJY6gYEpBiKmEsvpHCZZ3VcmakjaLJFA5o=;
	b=VKawoTl7MD840PNCpt2qXroLcPRPmkyQS/QfkBZ4xW88jYCicnT+z4DjJ4KT12F2oQ7DgN
	ncR0vXSL9isxbmUqCOB+H8pXdkcXuSCNxJXSWVcdq1wwUHMPJh5QNcxMoO/s5wO/BZEOcg
	WstIxPhcgU6Pc1h6oso5TeecGwWjf+o=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-623-eB-3TTP7M9iJg9w4c3r77w-1; Mon, 25 Apr 2022 09:39:01 -0400
X-MC-Unique: eB-3TTP7M9iJg9w4c3r77w-1
Received: by mail-wm1-f70.google.com with SMTP id g13-20020a1c4e0d000000b0038eba16aa46so7155996wmh.7
        for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 06:39:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=U/nJVlrnckJY6gYEpBiKmEsvpHCZZ3VcmakjaLJFA5o=;
        b=qTvxDfUEtTD4TOWhksrz0hb7eRscDphDitRtUuBPG8HEhP1a43mD4zTD28QK2CdVGN
         0CWcCV1oRy1gi1lnSGw4UR8NhnlxxDH1YznmhnlSjU2PciW/vBaeXjhuzooF/y0xCrIq
         z0/Mr5t0ZQhlZfrF7SCgxYGBIm9XzWA1l/DNGxButbwWGAji9P5cHcq1PRuLer+0Or7r
         7O2EEQ52zwzIBExG2fN/cg1G/LOjUvWtg7F/3PYPUNH/aoaJ32QAX4RZdJioOn9obG6O
         I2GRFXkk15y3xEOTFkYUOZ5ga/4XIktZKPhcljfP7lpJ956LEmsh46NeBsbxRQ5s9W7X
         IvSA==
X-Gm-Message-State: AOAM532HpFSvwtw6cjLMjwI2x4ryl3OhG4lrNu2Hjd6LNECg00gc6GbX
	zSOPGfpf/U5EaUxj9Sz41AXTgapGrTzLomKASLjEZgvpr7VEC4syIBNrDtUb1sUNmYXS6W8jZ7a
	ppk1n9j6QUvDiywaaKiP4
X-Received: by 2002:adf:df05:0:b0:20a:c402:6811 with SMTP id y5-20020adfdf05000000b0020ac4026811mr14592007wrl.275.1650893940357;
        Mon, 25 Apr 2022 06:39:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzl7suWwaROQq9b2PYFvA50sZlPXavnDV5jI48/WjywXp6wyfpRVASVT+F8KZzW6eKW4s1J6A==
X-Received: by 2002:adf:df05:0:b0:20a:c402:6811 with SMTP id y5-20020adfdf05000000b0020ac4026811mr14591990wrl.275.1650893940038;
        Mon, 25 Apr 2022 06:39:00 -0700 (PDT)
Received: from ?IPV6:2003:cb:c700:fc00:490d:ed6a:8b22:223a? (p200300cbc700fc00490ded6a8b22223a.dip0.t-ipconnect.de. [2003:cb:c700:fc00:490d:ed6a:8b22:223a])
        by smtp.gmail.com with ESMTPSA id e30-20020adf9bde000000b0020ad8ffb0f9sm3844998wrc.69.2022.04.25.06.38.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 06:38:59 -0700 (PDT)
Message-ID: <8d80cb56-4216-2d5b-7ab5-8abd60d2871c@redhat.com>
Date: Mon, 25 Apr 2022 15:38:58 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v3 1/5] memblock tests: update style of comments for
 memblock_add_*() functions
To: Rebecca Mckeever <remckee0@gmail.com>, outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
References: <cover.1650633253.git.remckee0@gmail.com>
 <2ea997e7b5c4737d674a2e5d9288938d557cb0c3.1650633253.git.remckee0@gmail.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <2ea997e7b5c4737d674a2e5d9288938d557cb0c3.1650633253.git.remckee0@gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22.04.22 15:32, Rebecca Mckeever wrote:
> Update comments in memblock_add_*() functions to match the style used
> in tests/alloc_*.c by rewording to make the expected outcome more apparent
> and, if more than one memblock is involved, adding a visual of the
> memory blocks.
> 
> Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>

Please make sure to not drop Rb/Ack tags and instead carry them along
when you resend patches. This, for example,  makes it easier for
reviewers to spot what needs attention and review.

Reviewed-by: David Hildenbrand <david@redhat.com>


-- 
Thanks,

David / dhildenb

