X-GM-THRID: 6950478192224239616
X-Received: by 2002:a05:6102:18f:: with SMTP id r15mr9066563vsq.2.1618389112503;
        Wed, 14 Apr 2021 01:31:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6122:2164:: with SMTP id j4ls85901vkr.7.gmail; Wed, 14
 Apr 2021 01:31:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzXlsaNC51r1+m+xhWRKjuUKBuUxbDrFEYJos+YqnOhERg2AZ5mgYD7sioZQNsfNJYgyopQ
X-Received: by 2002:a1f:d382:: with SMTP id k124mr27173510vkg.0.1618389111561;
        Wed, 14 Apr 2021 01:31:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618389111; cv=none;
        d=google.com; s=arc-20160816;
        b=rwYa36ufS7fS4hptEtwfyWNmKtBVScZtM9nfQskgndj5hUrqPPZGnn7oOxWc0gfalc
         fRzSDXE9hi6qoImhey0LmV6LQGAHAs31fqhJ1Oxk4Lf1Wf/YyIOBCFBqHVAvzoEfJLg5
         s0zAw3M2eIg+nNIm/2nnqaU1M3wAzK4ZsMNRQYJuSzebZFVGoSgHQ9F3V4lYyErhEYzg
         t0tUbL3nIcP6y0RkDVfClU+NbxciaOGfFEiD+xHnFg/k+v/k/cMMka6pm4wl1BgS13Q2
         TfqST2BeAFMLXgoIr3AhUC2l3PFosPoAYtvduWLIzzTJOsBuiuzpBHlJXzA1AtochGzF
         /SSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZWYPAXSW//aZZN6i+fgMGQrErwxATnQwEzN5YlVazqU=;
        b=iOy9uYuje07qGA0rHbP+DdddZjuMc/AS65Q0yf3bqc+NsnSctWoBlTOU5Zkwl+SDnD
         jJXEfk3gVW+7fnI90jUjE7LKav4bpokAKs5JPmMrjQxYn7PLKq9qrULFAdgZXFMYzaVH
         Y0vSkgjiEhRJjGHZj4PUfWwG2ttLw6ozvZQLPaDc70A9PBsaoQHi2IwTHaVYTkP7bOMh
         pFhstMm94iWGFiwX/p2gmZUzROBKPZ9U065a3X7fwFSskFg2H8aUvHlfL6NjosuK5eNe
         xgYyoWZC7CG6sKAZ4kPFdX6gk9h9RusxlJr+/UhvhMe3YCM5QUztHnJWqiGS6HT2tX12
         mIKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yeS7dj4e;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v23si985367uak.0.2021.04.14.01.31.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 01:31:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yeS7dj4e;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id B527C61027;
	Wed, 14 Apr 2021 08:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618389110;
	bh=UqnrkAY5MJVDS6ANSGLwQ1hvxAhnqyVqlb1wgCE9y8I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yeS7dj4eSk4apT2HzoxUc+pbEYrUvjYMSx3dzWyn8TsEyjqWQ4pU1pvvfCc0eHGCj
	 aeUm/eK9RmiZXvYHAJM++d9wKTD5hVCAYWusRYbAPzjf88060nqJA/W33HfRvkPtlZ
	 TsQy0WudHHFJyEebu07vQ9EGlSLri54T18y0IDgQ=
Date: Wed, 14 Apr 2021 10:31:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v6 1/2] staging: rtl8192e: remove parentheses around
 boolean expression
Message-ID: <YHaoc3N2fidI0TQ6@kroah.com>
References: <cover.1618383684.git.mitaliborkar810@gmail.com>
 <60483f646c16ffd3c19ca8f508a1f1c3a0a13db6.1618383684.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <60483f646c16ffd3c19ca8f508a1f1c3a0a13db6.1618383684.git.mitaliborkar810@gmail.com>

On Wed, Apr 14, 2021 at 12:51:55PM +0530, Mitali Borkar wrote:
> Removed unnecessary parentheses around '!xyz' boolean expression as '!'
> has higher precedance than '||'
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---

This series does not apply to my tree :(

