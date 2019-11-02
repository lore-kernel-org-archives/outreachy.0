X-GM-THRID: 6754520121946931200
X-Received: by 2002:a9d:3be3:: with SMTP id k90mr11718407otc.362.1572691484662;
        Sat, 02 Nov 2019 03:44:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:4407:: with SMTP id k7ls1939496oiw.7.gmail; Sat, 02 Nov
 2019 03:44:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyH4c16RojhZ0kx+zKhYJNi9bYsSxbhzMdN8WNAi6p5rliTFYYDxcsOaTtjbcou4N/f7i/l
X-Received: by 2002:a05:6808:60a:: with SMTP id y10mr6017583oih.102.1572691483594;
        Sat, 02 Nov 2019 03:44:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572691483; cv=none;
        d=google.com; s=arc-20160816;
        b=G7Sf1L6nseTWaUBsHuvZZMeD0LfXwKVtIPIYPsumWD5Uurph7fmqSoJzMurKYPvKaJ
         psziYZsO5/Psi7rNoUzPsUHRezZU8xjflAcvFtqTwHKvk8QQ+jKNWB1JlLF+s1fK8kli
         ppeAqTkmUPcN90qk4qLaKSXuKcT8GmHBTE1M6qDnkMVkUqYsNPbhMEjRKCJfzr4mCHEk
         fzsePxwgqx2WCuHQbponAjV23f1FpQrfX7MYNstxyzvpyfUDXQz6w0dDT0N2IsyDNCaL
         jhz+sD5+rfS/iUe32Q18gPvV2V2hngzpnpBHTNjTH9a9Q3pV0Q8QpB+plQ3yk8pO8eY6
         FyIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=MHanKRuVvlnVYzK3mP+YKrapw2r4/lLoSk+SK3qJhMc=;
        b=u7yG+Ylxc6G+tKMD51yoTsv79P6CSTXHCaxHG39IQhzm/99tiktHZWiw6zY2+VrNIZ
         +9xWCfMx0ezgaK9wRlMph1lQJIqKB/ERiD0BmahWlRc3akFgqlANCxaU8/ga4Rqn3Bep
         odFcKFbotvsDkDhbH/H1v+YddUDmMQbba2SCMfNsHiDs1Nw3sx3W/wNYebTk90h/749y
         TcBnt13m7B+UbXXmjFojqYkS59BHLctoWcwIg2pqTivfxxiS51vR/4hiLYUfmFrLK1zv
         YO+HQjTBpbKi3k4uoPzAkTTVd+DnlkSxkiayfWVDp1goYAEkDBg/4dVB1bggyN2Lts5F
         Pn5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XIWLEcc7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x65si64759oig.5.2019.11.02.03.44.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 03:44:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XIWLEcc7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A14320679;
	Sat,  2 Nov 2019 10:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572691482;
	bh=nT0i+vEVZMSSqU7tVacDXChtrgS7aihznYS43NpZZc0=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=XIWLEcc7tpPNE9WOVf42ldNA84xr5ArVzFErHRHKPdWZRDAViFFaWm5sKmY8dzpG6
	 a0nQDR43WDpKuNVkjfh4stiLIzL78BZnob3pRpEd3MB1EmoN0kgs2GYXGh5EvtAxye
	 4KoXG3OlW/xHObkfF/JJs0pRYB5PPwSutXnQW0y4=
Date: Sat, 2 Nov 2019 11:44:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH V2] media: staging/intel-ipu3: Fix assignment warning
Message-ID: <20191102104440.GB184849@kroah.com>
References: <20191102014741.bjt23bzuz6coijgo@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191102014741.bjt23bzuz6coijgo@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Nov 01, 2019 at 08:47:42PM -0500, Javier F. Arias wrote:
> This patch fixes a warning by replacing the integer value with
> a boolean.

What "warning"?  That term is used to describe things that the compiler
spits out, not coccinelle scripts.

Please rephrase this to say exactly what is happening here.

thanks,

greg k-h

