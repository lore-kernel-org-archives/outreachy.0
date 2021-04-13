X-GM-THRID: 6950478192224239616
X-Received: by 2002:a0c:8bda:: with SMTP id a26mr24521264qvc.1.1618300372500;
        Tue, 13 Apr 2021 00:52:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:f20e:: with SMTP id m14ls10675139qkg.8.gmail; Tue, 13
 Apr 2021 00:52:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyo5HRxBI2kmr4fBpvUDnuYIOoSfAvy9CkvXKqpMUoANLkdngsTnmKrbHBgEf7hz/kl+cY1
X-Received: by 2002:a05:620a:2491:: with SMTP id i17mr17742456qkn.128.1618300371740;
        Tue, 13 Apr 2021 00:52:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618300371; cv=none;
        d=google.com; s=arc-20160816;
        b=s16SLvGtac4rjt//RcF6omIJ41vSac6aHirDX/JlB8FR39TYlV7r5ap6uIlog/Opr6
         4rz9S0RPy4L/h3gHc3q00hc5KAgyHGhAWnoWqD4rlTssd0IGrm+AykF2YjDs3aPI+ue+
         CoAw1S0ApmUeJjJmWGjRgOeuLlM6HWZgnFPGF7Rem5DD4RlSq5+U1lARfU+7qeFvttG/
         2mUEl6SwcQf1x2NM5/PnEzK7b42gx3pJR7w/g/ufXl7GlNeFDPaXxLMI3RL8gXoCcKl0
         jZdJbnjHCVrRiEfjybNFfP/6fl8U3TFHFUe/r/Ilbf5er6A+EbIT0pSSyZpL5HJU0RD7
         CfAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wyy6FFxR0i9QhleHrzZ6gh7j23fKBFd0Cq5fJ5/HRAs=;
        b=BLS2fxkO51WMj6YEh5LJc2woksn6i8qYcwIBPbZgn5rL0NHpMFOXjFQLH49kRtvVNi
         J9UQ1W++P2SYyVd7pqvvTOvtPiJrEfKn6t4Rt/V3DxIZGQEmzOJzvgIQsDIDpCmkCAxV
         stwmVR5vI+XqzSB95fOxjSzz8QwbYXWWgWPRxGloC++kDCQXQzZ41gmghOMTSEwEqoZb
         p7O8U80/sprtXE3uk4hHKVB1VqT2GbGUUaDguD8JhclAcMTkj6ILW6A3AA47aJK/n2WW
         83ErmCyu2lVbs7hSCv5R+baQyHB+4pVfNWX0sPZvXivdya+dBYROc3ZQ+4cyQWyEFYe7
         CmfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=qupzavy3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c22si1168380qtg.5.2021.04.13.00.52.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 00:52:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=qupzavy3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 24AB661244;
	Tue, 13 Apr 2021 07:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618300370;
	bh=wyy6FFxR0i9QhleHrzZ6gh7j23fKBFd0Cq5fJ5/HRAs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qupzavy3DlQyTnfQNp21YrR1XZr5M9igQeUPYC8w0+gnLHZ/hXE3ctl9dKsE4YViH
	 luQveDNiFNYDV5ZT0q3AFZhPU/j25y2PvRf4odPM1FjBsKisC4+Nc8ksSIgI+yHTbE
	 YKsvjlBXBSCM7Kiho876BJVG5vYovZaMSOB9GMgY=
Date: Tue, 13 Apr 2021 09:52:48 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v5 0/3] staging: rtl8192e: Cleanup patchset for style
 issues in rtl819x_HTProc.c
Message-ID: <YHVN0JRWqNDJYF3T@kroah.com>
References: <cover.1618283232.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618283232.git.mitaliborkar810@gmail.com>

On Tue, Apr 13, 2021 at 08:55:03AM +0530, Mitali Borkar wrote:
> Changes from v4:-
> [PATCH v4 1/3]:- No changes.
> [PATCH v4 2/3]:- No changes.
> [PATCH V4 3/3]:- Removed casts and parentheses.

This series does not apply cleanly, please rebase and resend.

thanks,

greg k-h

