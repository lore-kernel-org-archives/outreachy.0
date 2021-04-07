X-GM-THRID: 6948187802890665984
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:ac2:43a3:: with SMTP id t3mr513824lfl.340.1617754335453;
        Tue, 06 Apr 2021 17:12:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3d16:: with SMTP id d22ls216304lfv.1.gmail; Tue, 06
 Apr 2021 17:12:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxxLHr+dNhCHBTmAsUw+annFzNVpf+IxWf3KXheS2X/Q9zBY7zxF4oXs0BVJ6CRwNwdjdHx
X-Received: by 2002:ac2:546b:: with SMTP id e11mr495925lfn.48.1617754331677;
        Tue, 06 Apr 2021 17:12:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617754331; cv=none;
        d=google.com; s=arc-20160816;
        b=KJsJl6tJe+h/LPVT0raaklLhqOKR2al20WGY30aG59vGVozaa9wva+JTbtTf3/SLLG
         NgQ9K2XjFlON9j0W6GpPOY8iVzdP47z0D98YbA049aDb08XeUkOXgyqHcLppm9bgv20I
         oOuXJ+if102DfbV385XKHicE+2LkKz1QveOmKGCiMn444FRPt8Akmx5p2LiHePjbIwdw
         JQ1dCberxvPYmBwpAhaJT4wrVeHjAAmTkLIzYHie4YIfks9BotSRl/Ks+jRhS+Nyewil
         JeKteVC/TJBymER/oYdlMKvxDvdKFbO98Huw3AUgVBllW0L4vK3EOtCnKHPQBxdoqOdN
         tsgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uMHhjh9mzGNNjIsBnKqqpdnfx67GUITX4xpvtYKhuNk=;
        b=LjcjxaW+PmBOqNuHxU2CinjVf2GI8IXWAWKip2FOKUzpcg/5SPNPodVX7vUkXTZaoE
         eTTIuW+xLCnNK7qq3QWtFoR+2SdAPZaMq3rK0Lof3Eho+CSfQoPhkDY+WOulrXF9kSxs
         cIMxKc9WQAUsgjOGgbKqCnQo3UMt5o6FoknRyOO+EovAuQPi1fzd7oENYzIjfKnDc+Yf
         pxBYbsGNGlvLPEnFajhgKONr71gbnSwKGOGfs7j6FpJeSLiK+MR5L6ODeWzh68bqB8NW
         u2r+8BOf1Bf6Z6JtMFU+gpV9XkVhlCl7Xjo+5G/VMgj8qGx7DOgKv97tL/ru1Cxy00Gs
         ovJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hFvn9jvt;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id a10si1719482lfs.11.2021.04.06.17.12.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 17:12:11 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hFvn9jvt;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=uMHhjh9mzGNNjIsBnKqqpdnfx67GUITX4xpvtYKhuNk=; b=hFvn9jvtSJ07lRnkG+jEOTF4uC
	UWtiN4rFbNIuGtz7dAU+G/144MJERPJ8dfwxXZp3CqDZ/wdxC5Ma0LSxKkVUzC/NadJtfUaLijmQS
	vx/sJmJohL1TuyDch6pNIsotM7PPOkzyG+sfT2wQEfAc8YCZLgRXGpcBs459lobdsMViWPida65lM
	iyEYL5UoOI8LS38Ni2+7h6cNPXq+1Ab+qSk6t8RKnJkCwstjiQ5QMgCWvIu3zAGsuCYR8HsjOEh15
	L3JhXvj21VKCuh1otBAzfDR1L02onhRfHfFyuXBip0GR/aWlKCLlSKxgNsS8gApK7D57zaabJ72bY
	JOuaLxLA==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lTvne-00Dcda-E0; Wed, 07 Apr 2021 00:12:06 +0000
Date: Wed, 7 Apr 2021 01:12:02 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Issues regarding 'git push'
Message-ID: <20210407001202.GW2531743@casper.infradead.org>
References: <346d0168-53d2-4dff-8fff-005ea3bf10aen@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <346d0168-53d2-4dff-8fff-005ea3bf10aen@googlegroups.com>

On Tue, Apr 06, 2021 at 04:17:18PM -0700, Mitali Borkar wrote:
> Every time I run git push' , following is the output:
> fatal: remote error: access denied or repository not exported: 
> /pub/scm/linux/kernel/git/gregkh/staging.git
> Can anyone please help me fix this?

Well, that's the right error.  You can't push to gregkh's repo.

What do you want to do, that you think 'git push' will accomplish?


