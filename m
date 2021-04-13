X-GM-THRID: 6950478192224239616
X-Received: by 2002:a17:902:db01:b029:eb:36ed:36f4 with SMTP id m1-20020a170902db01b02900eb36ed36f4mr1445109plx.61.1618313832869;
        Tue, 13 Apr 2021 04:37:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1062:: with SMTP id 34ls8677687pgq.6.gmail; Tue, 13 Apr
 2021 04:37:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzguJQqFcuPiso4oK50B2GHY+EvLZeMzhoRuBXVZ1b5GWqDKyHz4aCmy7MvULG3vB/UScx5
X-Received: by 2002:a62:3201:0:b029:211:3dcc:c9ca with SMTP id y1-20020a6232010000b02902113dccc9camr29007895pfy.46.1618313831704;
        Tue, 13 Apr 2021 04:37:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618313831; cv=none;
        d=google.com; s=arc-20160816;
        b=Ya2PL4J88NAjU3RqPpIDUVkC39KmKzq7N4Gc4t4hZZLOsViuK/lieLKiXWDvJBo8RX
         unV+XHICiUX+zpu1byeOLJxYtDk9ixgYMWwpTagCOepMmjuXXQemIGU58P48UOn8sAs4
         PfphcOl2dP8FkHM9kM01HD/6zhBvrfHr6GBHD//LxzPgiP8RUyuKwPiJhckYws6VpwVD
         xlP0eYPaHURPva78itsGOyuYRuxvIwmL8QScIEDAfSTsj69mU5CjCeCPEjq22HiwCJmW
         xSZSXV01vEQgVq6aXF21rojxLO8UbjbLcSUJ/O9Zzk+pPH1bO/zg44XMq+P4HxJst/vE
         blMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VvdioMNgqTqn+Z0VYCK+V6kf5Xmns4O+u6K2T/9jby0=;
        b=Y3JH19D56gCalRKy1GRbrnFtkPA57weNYdQ9rmX9vOskV/FuUFYPW0LqGOxBE50INN
         2XkE3Ew9LqYMYxVBqOWzULD5JPBKGZ5sgRsWvpIZcOuWjZT75iHEjGLun9kOZord1hJq
         b4nvm2M2QjNeIjP3gJL3wIe+QsxySVJHZ7pw6/jK7qEqFBqEq8z5vlE4v9fVkFA5Rmzg
         pekPTYDrcaULBzAOFNzmw7+V/IXGF+CDWzwaqmFFb4uGhE+ZLVoFzkc0GXGKPI99yO+p
         jM9Cz6zJCFluR5UZFq9W28ksnEl5KV3T0WF/jTK8gePItx3wg3N0jAIvkBHwLPVFQBhG
         tAsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vwlgYfes;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q5si351900pfs.5.2021.04.13.04.37.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 04:37:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vwlgYfes;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8BE6161244;
	Tue, 13 Apr 2021 11:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618313831;
	bh=HPs/cyVTjjgPMGZKDl4psfL7z6Thd81yUjkA+JoeUAk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vwlgYfesHJz2OcRmhIhj2KOtkf0Ym+DTZZnAM9yp0y7312niBbhbil3fdiwQMB5IY
	 w0Kxt23pa7YHuTMobnL93UzuRAWlzAmKw5vFGiEmblEVvy2QCtWyjah33C4PcUvpSw
	 x3Bdgj44qp34ADUSfU6c3w02Vu/iO97QahSPf/HM=
Date: Tue, 13 Apr 2021 13:37:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v5 0/3] staging: rtl8192e: Cleanup patchset for style
 issues in rtl819x_HTProc.c
Message-ID: <YHWCZALi323oaGA5@kroah.com>
References: <cover.1618283232.git.mitaliborkar810@gmail.com>
 <YHVN0JRWqNDJYF3T@kroah.com>
 <YHV2LyXrJjVnMsyT@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHV2LyXrJjVnMsyT@kali>

On Tue, Apr 13, 2021 at 04:15:03PM +0530, Mitali Borkar wrote:
> On Tue, Apr 13, 2021 at 09:52:48AM +0200, Greg KH wrote:
> > On Tue, Apr 13, 2021 at 08:55:03AM +0530, Mitali Borkar wrote:
> > > Changes from v4:-
> > > [PATCH v4 1/3]:- No changes.
> > > [PATCH v4 2/3]:- No changes.
> > > [PATCH V4 3/3]:- Removed casts and parentheses.
> > 
> > This series does not apply cleanly, please rebase and resend.
> >
> Resend as v6? Does not apply cleanly as in? Were mails not threaded
> properly?

Yes, send a v6, after rebasing on my tree and the staging-testing branch
and resend.

They were threaded properly, it looks like others have made changes to
the same files that you were, which is quite common when doing small
cleanup changes like this.

thanks,

greg k-h

