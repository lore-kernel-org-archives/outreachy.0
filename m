X-GM-THRID: 6663863789016842240
X-Received: by 2002:ab0:49af:: with SMTP id e44mr11868402uad.21.1551685535660;
        Sun, 03 Mar 2019 23:45:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls3286221vsc.4.gmail; Sun, 03 Mar
 2019 23:45:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqxf0g3VdKISjfPUG6d/f0tpHiN/JTJo0jKNZEFRhRYlFn9kd5gSasGfFpPuuKORLEUfuzuu
X-Received: by 2002:a67:7ac7:: with SMTP id v190mr11974804vsc.17.1551685535043;
        Sun, 03 Mar 2019 23:45:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551685535; cv=none;
        d=google.com; s=arc-20160816;
        b=QH2vqOHV2vjfdxQuCZ1o9C4Kel/XHGz4vSzjwfXN0BN57GjY68/gWCurHVFERuirU4
         YU6J/MkZ/vzKH8AxmKBseFpnI7M97JYd0PCZwbA4WNW/4gy0f5ml+g3dwKgJNEacqtBU
         Z73fkb4Lsh4/i1AxNFyrTUN0xI1Ytm3kJzDx3SEp3pAJE//CI3NSLSReTOEKBVO5auKK
         m7tKDoWmDGXv93mx+yXkBmCHVaMt+zgnYQjzwcN1i/Sv6cRJWiIlsODebqGhMhWeWFSI
         9riTRrfa9IrLBYXtXNuO3mp0Ksg46ze3e+39Vc6s6MrMvsryXJmZsEtHiNKy9Q1d9UCC
         C3XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Yh9mNMRjV00g4/eU2u6JApF9+osMfpLTgiQzU8weqI0=;
        b=B4ioALtnFP//pq5ZhnJq3hrGkvBBrTIBNbYnwnF85PGQ5dtRWdr/aoCpLVC9dY4c9E
         /IUCD4M9EceiJlCYrKYRHX9Lt8PelSWsbc485cn2WWjYSxarfoi+t4uAAzTT2KF20WV5
         8AxE+iV/bJkQAWPPcd6+2yRXPHD9NtVNqiwD724/fgILyBR+P5NrkMId7VzCucgnoTz5
         gVZzx+yv8ZBc4+mVupzdbl+4cf0fh77JdlxQyIjANLtG6cEY5rpRbq/el0IJkjZCR30X
         +COaXJU+zSUsXwaMecXtf3chAsrcpkO9COr6dbNMvVfpuWDZT0ElSy0y2UHh0dLsoBZm
         gzew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Mbp5kSiE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s73si323419vkd.1.2019.03.03.23.45.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 23:45:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Mbp5kSiE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 78A1920836;
	Mon,  4 Mar 2019 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551685533;
	bh=FLaeJ8kOwWDGa8Ru7aKBGc0MU1kukqN1YfgPgPeI4fo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mbp5kSiEnfpwlalB2ru9iYWTXD/YiRc5fYFVEhY8cxePKIdGqSfwsF7x59AcvNcc/
	 gqm5XbKww22pV8evwTOpOklKICa2odsDrnNOMDdzbRKr3d9Q1aAtSXg4t2ciG1KEyY
	 SDUsgxzvwYkOFl+5YfXyZ2THAIzF611o/UAhjOPQ=
Date: Mon, 4 Mar 2019 08:45:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vt6655: Fix line over 80 characters
Message-ID: <20190304074530.GB22711@kroah.com>
References: <20190304011949.17148-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304011949.17148-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sun, Mar 03, 2019 at 07:19:49PM -0600, Madhumitha Prabakaran wrote:
> Fix the warning issued by checkpatch.pl
> WARNING: line over 80 characters
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vt6655/card.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

You sent multiple patches with the same subject line, and no hint as to
what order they need to be applied in.


I have now removed all of your pending patches from my "to review"
queue, please fix them up and resend them properly.

thanks,

greg k-h

