X-GM-THRID: 6809407412551811072
X-Received: by 2002:a25:6b05:: with SMTP id g5mr8274606ybc.111.1585465888792;
        Sun, 29 Mar 2020 00:11:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5789:: with SMTP id l131ls4645779ybb.9.gmail; Sun, 29
 Mar 2020 00:11:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs7WgpNicWxrCCTdj6PQoIuwTwW/RubD1yA01FeTavur8hsy2EpZZLzrDlIg0GrCJG4mUKX
X-Received: by 2002:a25:b7ce:: with SMTP id u14mr10623497ybj.192.1585465887165;
        Sun, 29 Mar 2020 00:11:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585465887; cv=none;
        d=google.com; s=arc-20160816;
        b=jSzWcHGVEbAuZ9myjpaZ7kEGqWe/Jg9L1bDV6LdIcmgXNVzluOUXeDSgVkdA34oBak
         G0nuf45Mf9ONhp4ZLbT1ERkahJxhf5Lb1/JK8LFAFsZUaM5PIGVZo0QD9pkyO+KGTlno
         T7AZrWSODggg82eb7Grzma5gytBRwAyanzEa2HWXrILB1H1b7HZxaigxfWrWCLylL8ur
         qSStORAcm7PTBi5ZGUzf6+R3YJdetnFfVGKMxGZsKcf5Fn4RrHzrnuOm/kA0u73Ffsiu
         m/ZrkDB9lAUWdC4+1cDRlQpnvG0e0Uyy1pD/BFOqxmntt/N6hUmwKxMar1YGbE9O1Ayv
         T5Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=F7djGvWCbabmj6kBMUnKy43CqCq2yRCLfiIwnPunyu0=;
        b=s5aMBdGOyzoEFTpRxyg3So/pbPT4YAsiYg2Ck7VGWQFg+6fusiaAczzv/2NTGspeuT
         x8JKwOgzdlcM0k0SKeUhSM4ajVbzRzsDbLgRi8tq3vBx/NHB75ve4yTnxuBmJ6ckf9P6
         Vrq9X15OwQMm/guHvFnZvdKigeoITjFv/wPJmTH6n7Q9ssPWgQrJqmDD+SxGuXxrKJbU
         a832yySFhtUwbUPwnAHxwPQLh3ri3MmfuAnHyC4i7fYHi0okBQBxPg7Iw5dre9jKSD9j
         L43gfVJ8b52pD9dCg5OQo4TnGT0U9kC+CP7YWW2OQS2RCAjKXkpWdUiHnO59002eInUo
         GihQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DDBD8bsz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e14si625183ybp.0.2020.03.29.00.11.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 00:11:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DDBD8bsz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 82EBF206E6;
	Sun, 29 Mar 2020 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585465886;
	bh=cMRexdqbR2iH2t/nb+AGJEsRVmrGtk1BRVXYAZ5gXTg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DDBD8bszcoLjabhpOhwoEWpGRZbnILHXbpgO/s4/8R7eY2I+0hxQo4yt5av/AWr8N
	 w2vz9TDdobU0vPnEYCsIROQww9B8x4n3CKDnsrWn2SIzkvYmBcqv3zCB6wUzF/0pq7
	 WuaIfCi61oS3rWhqHJi9UHQ8jFzHo4cPVmddg2j0=
Date: Sun, 29 Mar 2020 09:11:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux@armlinux.org.uk
Subject: Re: [PATCH] ARM: amba: Add blank line
Message-ID: <20200329071122.GA3907908@kroah.com>
References: <20200328233825.GA28891@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200328233825.GA28891@siyah2>

On Sun, Mar 29, 2020 at 02:38:25AM +0300, Gokce Kuler wrote:
> Add missing blank line after declarations.Problem found using checkpatch.
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/amba/bus.c | 1 +
>  1 file changed, 1 insertion(+)

I can not take patches for outreachy that are outside of
drivers/staging/ sorry.

greg k-h

