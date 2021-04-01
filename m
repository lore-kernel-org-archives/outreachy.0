X-GM-THRID: 6945912104921595904
X-Received: by 2002:a62:3246:0:b029:224:6c6f:b3f2 with SMTP id y67-20020a6232460000b02902246c6fb3f2mr6011128pfy.68.1617256691822;
        Wed, 31 Mar 2021 22:58:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7246:: with SMTP id c6ls2340321pll.4.gmail; Wed, 31
 Mar 2021 22:58:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxu55yrrUerA9v/3DW6XB6BD9teOwXBwptDgDjEeEj/sfld5ccUWqQQGuyq416negas8EPv
X-Received: by 2002:a17:90b:a01:: with SMTP id gg1mr7254196pjb.22.1617256690603;
        Wed, 31 Mar 2021 22:58:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617256690; cv=none;
        d=google.com; s=arc-20160816;
        b=FCneYx9xFkfJ3bvwOmep3tdJq8DLfSQEinCNFecFm0cR78yitAYaOFBwZPTGRslzCh
         cAoIaMs+OBIXVq5ZhtZnScPkZc1GolvjOkk5y0WtjBZgISvtLprRchGrLGuMR06riRVS
         BwEADK/jekDeaVRVqiJE0ninn/5H6e78hQBrZiZQhLsCR6d23BC4ethhwolL3NTF0lW0
         UELhalDLvFi3AptHBM5tNdPbjovDV/Nk0VcNy99gyMpVZJnSxorRDR0/tJ5b7CJusAwa
         pbiVPVZAgkXD8pRU57Y779Lzfj+0pXadeDPBYQiNcGUrORTu2Yip1U/QsnGZJJjBVw3y
         BW3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Pf/E8nNvjGgFKQoWY8znnFKwLOa74qORqFahFIGf69s=;
        b=YbM3+yqyr2EuwRQMA0YXBwA/+tIZYEoP4dUuBE89y+rU75Cu/YRtEmx0WAXnJt06cQ
         2quCAoQ/O2SOodTppxSxd5VFBTIB7k6eKZW99KMwwOIF/vwGS1Bdn3t/Okb+m2jZStAt
         FcHHVKeadYhKs4MlWn6LaGvQDSprUOhfg/w4E57SNL7cVlD688Gt5V0TWpCKNSqWNMwi
         lKwG+BSnpmKud2ezz1JB1/ASQeeJFnvDrW5sfOA2fzEZ35ZhCzRUbS/JIkybFOdSyOcO
         0/1jZT4C8piCX/J9iVsrVLbQaJ8zryIQB4c9UNHKs3Thlu8CqPjasrGpOkJmgZIfhkEs
         TqYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vbScCll3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id nv12si310737pjb.3.2021.03.31.22.58.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Mar 2021 22:58:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vbScCll3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id C4EC561001;
	Thu,  1 Apr 2021 05:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617256690;
	bh=iBrB88K5OvkJTJ0XirgbUl7GKOoW9cpRiFq0uQoRzVg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vbScCll3vX7xaD53HQtfIc2WoPxqbVWI0C+gxvXSYJFx/9wnchWopinpb7PVARzSf
	 YbSkMLqmikj/JavTfxhGuGzv5EG/0KJ1oiWd0g4exgmmUWp+aR6lVQ+Ojrpf0Wdp06
	 7ZnPHmfzQ5568fbPdiUzU50OniQfW7BCdJI73Ngg=
Date: Thu, 1 Apr 2021 07:58:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deborah Brouwer <deborahbrouwer3563@gmail.com>
Cc: ross.schm.dev@gmail.com, marcocesati@gmail.com, fabioaiuto83@gmail.com,
	dan.carpenter@oracle.com, phil@philpotter.co.uk,
	amarjargal16@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/3] Fix block comment warnings
Message-ID: <YGVg7TbrjGDyadUx@kroah.com>
References: <cover.1617221075.git.deborahbrouwer3563@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617221075.git.deborahbrouwer3563@gmail.com>

On Wed, Mar 31, 2021 at 01:05:34PM -0700, Deborah Brouwer wrote:
> This patchset fixes checkpatch warnings arising
> from the block comments

Note, your 0/X email subject should also have the subsystem/driver
prefix in there so that we know what this series is for.  Much like your
individual patches do.

thanks,

greg k-h

