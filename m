X-GM-THRID: 6621495393645494272
X-Received: by 2002:a1f:fc0b:: with SMTP id a11mr3958807vki.23.1541689333418;
        Thu, 08 Nov 2018 07:02:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2e09:: with SMTP id t9ls352402uaj.5.gmail; Thu, 08 Nov
 2018 07:02:12 -0800 (PST)
X-Google-Smtp-Source: AJdET5fB7Umd6AV3giMM8NMxQRVBnhhcwvGZADbWfnyHPb7cQn60/3//76HAL0tBhey8FvCS6UPb
X-Received: by 2002:ab0:2088:: with SMTP id r8mr3969999uak.15.1541689332565;
        Thu, 08 Nov 2018 07:02:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541689332; cv=none;
        d=google.com; s=arc-20160816;
        b=EKn5zGMt+8XZKDotZ2ZpnTN+QpfBeiZAD5UI+urvWk84HjQzW4ZqfTwMxc6Odlw/3f
         qZRsy/+cDxnBAGMDodonknjlQQNeUVHPuAwnomwuE2cfJVQ2Ckw1Q+5rBJtBwvEwozmH
         plNiYhw1hbbxnyaFhHR3Mh4mX6k308LkjNyvFnyl3MIDuXjzgAQxdrgky4Pka9WVcb0n
         Jg3WRErm613g7k58KIKuc+hCW8R5wylMOYqGlXf/wPo4rC/NwVjJOw+VftVBlP+jqEXP
         3orqKpfAZ9BgEhIRd6pZEcqjGBC/JxgRPwhwZRK2HyZCONOZsZYCMb4GCnmLQqYX8roW
         9J+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TfmVB/P80BWKltBlXzfCN/avyYqyf3q9cZVsnJIlJV4=;
        b=pEh8miWiY6wh7q9eWhkHqBCIy9E6qCC9fNY6q+xySvg0r+5ZG4elSJpAgT9lxEmBoX
         AUWHB2fab/RbSpWnFycOGczm/JyC4ZRqc478q3tchGWjmanlfR2VYf3Y1c1yMbVpKTeu
         RhWdcDh+T71U/TvX7OM+uCVDxhUCs+dW1Qtx+ohC4WQ46uNlm2y1WEuAD4zIEGrW3GUf
         DS4RIaAifKaVMeCVphnOzTlUGcbWANxGWXYXTJ85Ut/vN+2nShFMvJN367OV3HFtjlgO
         l/a+QlnL5xNUfMQzoiW0RjMLnpNHWiJaVzvWxSFfw6vqd04oWjYVSIIddEqfZ08tM2Vd
         xdvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mb1kotd3;
       spf=pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b186si37318vsd.0.2018.11.08.07.02.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 07:02:12 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mb1kotd3;
       spf=pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (71-6-98-120.static-ip.telepacific.net [71.6.98.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 25A632081D;
	Thu,  8 Nov 2018 15:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541689331;
	bh=seh2liuImCKQTJjjRHuRSrHUeeLCWM0X/0SI/VUbY2s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mb1kotd3j5zidqGnPk2nfwn3HriCkluEy5SJ6x6sxXlP28DvabniCoNFjH/pnPk6f
	 UblIh6roIychb91/3LjSgk4HqEk9H6gm+iwXos29QsaH1fkiX0AD57LeWxrF9AT090
	 ulEiplieyenVIgn5IFbfdcGM0PAVigtEdGOaxaEE=
Date: Thu, 8 Nov 2018 07:02:10 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 05/15] greybus: staging: align arguments with
 parentheses
Message-ID: <20181108150210.GA10650@kroah.com>
References: <cover.1541686942.git.code@wizofe.uk>
 <d24f277ccc31f4807b54513acff6ef5c7d6b19b2.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d24f277ccc31f4807b54513acff6ef5c7d6b19b2.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Nov 08, 2018 at 02:24:38PM +0000, Ioannis Valasakis wrote:
> Align arguments with the right side of the open left parentheses.
> Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/control.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

The subject line for this patch is still incorrect :(

