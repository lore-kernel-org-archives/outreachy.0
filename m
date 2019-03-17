X-GM-THRID: 6668974051336126464
X-Received: by 2002:a25:5d04:: with SMTP id r4mr6146396ybb.89.1552820384817;
        Sun, 17 Mar 2019 03:59:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:41d4:: with SMTP id o203ls2951902yba.0.gmail; Sun, 17
 Mar 2019 03:59:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxBWf6ieWOH1pBNcpBnX3AZOGzavlrDhKllwe0VLSwXD82pJ2HhiGGNRtB4577l/IqaSV2w
X-Received: by 2002:a25:910e:: with SMTP id v14mr6533206ybl.74.1552820384376;
        Sun, 17 Mar 2019 03:59:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820384; cv=none;
        d=google.com; s=arc-20160816;
        b=gSmqZT0JXI9h+U9XKKn5sVFU8BTejTTdQo9vAyp/jKVlm5rYjV9a4EpwLoXIJfpv6/
         o/InPOTfwiKINowi/Y0XizFlP4J0GluNn3EVHwvkeE4uVNJmqD9uqAt+P8w40nGjjk8W
         Nd2svd4pd9UOBFpDjwgFyE41qI3DnV6krIOtzdyF9I/qS8ELiia700C84Z4TXrGOceiJ
         K12KT9l7jLxtbT7GkNVGGp7k5SVxp2s5eqK/3G/Jb6Ym38gT/yeE7/EXnPpGyvzQ1C8b
         EzydUi6h7Pi+Pdb2Wsx63vY8GF39U6Up6iA6Kfx6XcWNtVBkwWNh+VIO87qogHEgr/uE
         FgSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yEV1w6+sD5ZdksvtDBVwlGz79bdNJXOKonBVaoOIK+U=;
        b=dBQw06lxsSf1+5hDUz2Kxh1dph5CRleR0sUNNUFoYUkQUlBIVNFCFbL4OUa+35qxtk
         k7QSm2jqj8zQ0T+AYWHWOQq7IHtwAuV8kxRy0VYbpQ3TVdfhyqb0th4FJIJ6aH6wnN8e
         KinViomMi9SIq1OTny1uVyoWJLpx3qg+p6RKcngnDujsHnymUvD2+gdVH1C2QxBgCgUj
         r3Ue7f88bdscKJYZAryI1kAUXNVcRJXs8Fj+I7evJWe4aAwvqUe3hJVDlLAS+CY5Mi+V
         yhA1lB0AXLzbikkOy/QNkcF0I1NQFlZMW2Hkl+jL/uFSxXB5SMMljRUCQLAB6UA9oC75
         HFpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e7gY1WNa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 62si450474ybf.2.2019.03.17.03.59.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:59:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e7gY1WNa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EA34421019;
	Sun, 17 Mar 2019 10:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552820383;
	bh=5ZlsWuFikIwh6PTduKmvGadUfZZg+hxKd/n1zoarQt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e7gY1WNaldmeNTYtck/RQOBrHNYpNYx86415OlmmjpPUNN/9jPwUChIfuRi9e8VvY
	 +t+2fAV8vs088FuquLkQwtQQTBc+BFq9JHKrLfavEpJ8emlOoWn/e3AMO4aTiDwsDj
	 rJ2xwvfyKrUNEwjdTnTnfdE4NHiF36C0kMXR3NQ8=
Date: Sun, 17 Mar 2019 11:59:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/7] Staging: rtl8723bs: Drop wrappers and change
 function names
Message-ID: <20190317105939.GA709@kroah.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>
 <2b464c5d0bc1e9308855a23db02c721e5cf6d3e8.1552782299.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2b464c5d0bc1e9308855a23db02c721e5cf6d3e8.1552782299.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 16, 2019 at 07:32:18PM -0500, Madhumitha Prabakaran wrote:
> - Drop wrappers rtw_init_cmd_priv and rtw_init_evt_priv,
> as their only purpose is to call other functions
> _rtw_init_cmd_priv and _rtw_init_evt_priv, respectively.
> - Change function names
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 20 ++------------------
>  1 file changed, 2 insertions(+), 18 deletions(-)

I wanted to just apply this one patch, to make your patch series smaller
overall when you rebase for the next ones, but when this patch is
applied, the build breaks :(

You can never break the build at any point in a patch series.  Every
patch that goes into the kernel has to be stand-alone and not cause any
problems.

So when you fix up your patch series, please do so with this in mind.

thanks,

greg k-h

