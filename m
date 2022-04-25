Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B9F7C
	for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 13:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650893957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pm+NNZ/YV7VS9Z5vMhYXE2vlZstaKvSFd8SQzWKhXa4=;
	b=Xz6xcl74RfZsQe2JF6DB2j7ar3GPrS7nJ8kpcsC1g84RG6AGBRvB1ugkgpLcnOv2gVySny
	OI6MZOejfl3ppwvGIsr0F470sFVF0SHAN5n0cPnlFBcXI0mYyfu7aP+3eimREgJPYHhrGT
	bwBzsmDJd5zFWqEuQkt0w4mmdLvy7II=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-195-VMw0Svk9Myq46QrM5U6NyQ-1; Mon, 25 Apr 2022 09:39:16 -0400
X-MC-Unique: VMw0Svk9Myq46QrM5U6NyQ-1
Received: by mail-wm1-f72.google.com with SMTP id i66-20020a1c3b45000000b0038eab4e0feaso6747063wma.9
        for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 06:39:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=pm+NNZ/YV7VS9Z5vMhYXE2vlZstaKvSFd8SQzWKhXa4=;
        b=YQ4tnDVOBWzAvDKDUrS2Q42z8R2p4OeZV71cNwBW95B0CS7HrRjOakz+2iHF9U6OZz
         rUszHBsfOxS72vaj0WB3U7HFuLLkmBpFgvjh30RE6ONlWwMednAiosUimYrWXmjqSHAA
         7NE+O3GbUROPHkOP7gmN4gqwd8XX5nMiyNUiPhJco/2GRHvtxVzEl+8f/p2gEOBFJTCb
         KuyvnQ1+GU6JntfCWD8JNYB9fmUzx7ZHPoxY2PSHeCU/qlMyRy9yr1rOeT6lRx6o6R6t
         7vuk68B7Cdgi2cmHhf+DxSzQELuZgj10KbQCCrapxXb5HIektvCZRIYvwmJhWOc+iqXT
         tVhw==
X-Gm-Message-State: AOAM532NXEML4a5n7iQ1l7aGPA7DT09bFGfhJcZ8ikSQGhPJE43fAU4s
	B40nYgkHIXXDsrrHivwswKiIXwg9o+17pfh0etweXYInd4oYEgzV+JWUG5v8Gq/R0MK4GpS+l8w
	a0qbjo/m552Qn8xPMHzmy
X-Received: by 2002:a05:600c:b54:b0:390:82ee:e15b with SMTP id k20-20020a05600c0b5400b0039082eee15bmr16338579wmr.17.1650893955016;
        Mon, 25 Apr 2022 06:39:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzyVm6uYzjDLqJQlFa/Cd3V5cm8Gl9fxAcUxr6d7iLSE7Dfvnf9RSY0cKHsP9GHjWUFipXAsg==
X-Received: by 2002:a05:600c:b54:b0:390:82ee:e15b with SMTP id k20-20020a05600c0b5400b0039082eee15bmr16338550wmr.17.1650893954706;
        Mon, 25 Apr 2022 06:39:14 -0700 (PDT)
Received: from ?IPV6:2003:cb:c700:fc00:490d:ed6a:8b22:223a? (p200300cbc700fc00490ded6a8b22223a.dip0.t-ipconnect.de. [2003:cb:c700:fc00:490d:ed6a:8b22:223a])
        by smtp.gmail.com with ESMTPSA id q16-20020adff950000000b00205aa05fa03sm8733178wrr.58.2022.04.25.06.39.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 06:39:14 -0700 (PDT)
Message-ID: <bdbd5cb5-b480-46b9-4b81-10d2891fa7ea@redhat.com>
Date: Mon, 25 Apr 2022 15:39:13 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v3 2/5] memblock tests: update style of comments for
 memblock_reserve_*() functions
To: Rebecca Mckeever <remckee0@gmail.com>, outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
References: <cover.1650633253.git.remckee0@gmail.com>
 <7e21d96491ed573f1f7823cfe56c4d8ced4f78fe.1650633253.git.remckee0@gmail.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <7e21d96491ed573f1f7823cfe56c4d8ced4f78fe.1650633253.git.remckee0@gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22.04.22 15:32, Rebecca Mckeever wrote:
> Update comments in memblock_reserve_*() functions to match the style used
> in tests/alloc_*.c by rewording to make the expected outcome more apparent
> and, if more than one memblock is involved, adding a visual of the
> memory blocks.
> 
> If the comment has an extra column of spaces, remove the extra space at
> the beginning of each line for consistency and to conform to Linux kernel
> coding style.
> 
> Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
> ---

Reviewed-by: David Hildenbrand <david@redhat.com>


-- 
Thanks,

David / dhildenb

