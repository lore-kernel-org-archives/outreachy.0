X-GM-THRID: 6948463626776739840
X-Received: by 2002:a4a:e615:: with SMTP id f21mr6112141oot.91.1617863094773;
        Wed, 07 Apr 2021 23:24:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7456:: with SMTP id p22ls1111624otk.11.gmail; Wed, 07
 Apr 2021 23:24:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzxJR7h9eFG4TcKdgK/3/7kDFKA/f8Fogbrzu+W8dbEyTIg7FlBD1kYzcAqwUP8Fav1F2/D
X-Received: by 2002:a9d:d02:: with SMTP id 2mr5958352oti.330.1617863093903;
        Wed, 07 Apr 2021 23:24:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617863093; cv=none;
        d=google.com; s=arc-20160816;
        b=YGmM53h9/nksv6IZL3lu2b9QtmVDKInbTYkm+MqQKj64pXZWXuJuuoCUoJpjKc3i8z
         jmQhaQnp/x/uPqAcQY0qFsx39VEuJXplmIr3NkUyznAH+D1TCkDX15T8uasxS1Sqf2jQ
         BEEDQFzkW+SJKsjm8xidOlgmmrIDlvnbwBjBNeuRt73xv33Y+4c/LyDkdpqn+bNJu//1
         +TtuVA49/p+Eim1iMMPSDrhehnZWKngsxSoI6XXYEfftK+72nxPNDZzXLoxfLHGL1gbT
         AaaHzzy5hjWC+g1esmD0BoWT0se5g4rKte9f6qlcvlnRxzjzfArFb+seia2pX065pjXi
         Nc1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sjxX9tCZgh/Blz8cOgBNQ0zrgLRPpvtKQKsvkokDa+0=;
        b=oestCE6LkaAPslDlXS/StZcSXGtKF5oVTGT3MXROCXKcRhLAXRWwSwuYSNQvblgo/R
         Ap2AljN4E0H+pe5rzAyFnzikGpexvjerW7/GWjoISXCzQVvZkPZi3UaMqtaN1lm611Hn
         F/pbAgNUJib80haWCx6+oqmpMe2TcRm56sbC59my/N8PhE5HA7kMui5mhYJ7/k720UI/
         h/t4TtjcnzL3mZm6pzb4Lin4WlJMxY8b88a8HymBBPBqqV04TyjSmQel+df+2bgvqY5H
         4UH8oozWG0YUw0qqrGfZgZU+1f/i6aUcTc36NCUHK+bYVX7b8Miy2+tfwqZ7ESIpAEwI
         Lxlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=fmahgufK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k10si1701788otj.2.2021.04.07.23.24.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 23:24:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=fmahgufK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8A953610CF;
	Thu,  8 Apr 2021 06:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617863093;
	bh=sjxX9tCZgh/Blz8cOgBNQ0zrgLRPpvtKQKsvkokDa+0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fmahgufK5maORTGIza2vLT0hMnIbROyczIFMOJNODaNaADo654CQQHB69gYa91mfy
	 8rpoCvMzQKNrDsmSdif9p3nsX1ZSekbx/x+KEx+Krf8acX5Nj+5HuOBn6QNGQi0rMy
	 yybXmYKjwqxlzn1UEo23h9Yl1dtddBE0VSnrxVJs=
Date: Thu, 8 Apr 2021 08:24:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8723bs: hal: Remove
 camelcase in sdio_ops.c
Message-ID: <YG6hsvA54ieV6ujj@kroah.com>
References: <20210407181914.7079-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210407181914.7079-1-fmdefrancesco@gmail.com>

On Wed, Apr 07, 2021 at 08:19:14PM +0200, Fabio M. De Francesco wrote:
> Changes from v2: Remove unnecessary comment. Shortened a function name.
> Changes from v1: No changes to the code but only to the subject for the
> purpose to differentiate this patch because other removes of camelcase
> have been made in other files of the same directory.

The "changes" need to go below the --- line, not here in the changelog
text.

thanks,

greg k-h

