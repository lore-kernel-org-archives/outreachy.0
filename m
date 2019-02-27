X-GM-THRID: 6662431164424257536
X-Received: by 2002:a63:2b8a:: with SMTP id r132mr1115143pgr.62.1551278919587;
        Wed, 27 Feb 2019 06:48:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:59d7:: with SMTP id k84ls568949pfj.6.gmail; Wed, 27 Feb
 2019 06:48:38 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZRLxGpCr2WyKYGGF6M34zYwWOZlziG/MD27k5c0POYy4BGlroGElqq1daIj0E+SRHmLRXB
X-Received: by 2002:a62:475b:: with SMTP id u88mr766705pfa.18.1551278918783;
        Wed, 27 Feb 2019 06:48:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551278918; cv=none;
        d=google.com; s=arc-20160816;
        b=u8J3/JihWbNnNHPpcvD6uamRdPW9LjUkbeO1VjdZVztj9XYKHgCmqVv7xyTSlpajPy
         bdDIYKkreeQwg0OTa3ez89Ace4DpOajH/MENkwN9yastdiiDPkLKWpIeB3luBING7vtf
         iHtISdbZ62d345saJJWFxUrAXtF5nHrDFVegF4JnHzw5JfNRR33lg9c4DmWo2nQ/ePN8
         gYLcUMtI7s0jvQOSEY3BJJ+R8wTxMg8n9SQTt3+qB72/VLtApjCVw1Vf9Ghb7QlnvMZh
         clmSCW7O3mhaeKJEeiGsl1Xi/cJld3jJtL/T4UgIaHQm9Dmcp53rgot20CozYLtYxD+t
         JTcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=F4qqMYxqg1i4VEkIgot0hkUnmorPr4d4jK/JxrZTaDU=;
        b=Sx855iziKScpyf6hs0zRT+h2m1S3Qe6giSEU1tqeR4BWSZLlBm79ADH3vswIL9f/W/
         owx4dnAP+a3YvDRW9xCfTzP9b/qC4DMm3DUXYFcgUbVuK9y+20JRjbvj0pbj6zPBxm2z
         lg+c0QBUeLHNw6vsE4SjV8DjfP38zQ/0kbpnwgMgYxLSCJ3cgeAtY7TleuUCth8DqYpf
         4UQERuPKVcZ/b1bxYtQMLf+wnUhTMEnQyvEYYs/nbA2C/yBL3VodhLFqJhOR7g6t2i0P
         7VjGoO3fIHr7JXrZIcpqkhcZH4w8/bAG1rS2eAVbSnawI7NsI7JdYed7Xc/KeXzjV66s
         JkaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fLATprav;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f79si1052730pff.4.2019.02.27.06.48.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 06:48:38 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fLATprav;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 132232083D;
	Wed, 27 Feb 2019 14:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551278918;
	bh=hx4vDQDtS3WtqDU9tkSTi8pPn9l/3Hvy26/dU/JAxeU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fLATpravG9DYVtXvfcVL3kV0VIt03c4UTGrYn1MYfOGyD1qyaptDN8Phtzn6XNG9I
	 zFWIEjeu6NhQfFyttpRPoOIV7x7NICdMmNEv3jCE6qb6YjhscqAMDW67ZVHyZGeQKL
	 PDlPMn4gpFZzfsELPszO31m3JAamnoZLSPDqkSw8=
Date: Wed, 27 Feb 2019 15:48:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: vt6655: Modify comment style for SPDX
 License Identifier
Message-ID: <20190227144836.GA32231@kroah.com>
References: <20190226215531.5196-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190226215531.5196-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Feb 26, 2019 at 03:55:31PM -0600, Madhumitha Prabakaran wrote:
> FIx the warning by changing comment style based on header file type as
> per License identifier syntax
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
> Changes in v2
> - Modified subject line and commit log
> 
>  drivers/staging/vt6655/baseband.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> index f2b6a98de2c1..0cc2e07829c5 100644
> --- a/drivers/staging/vt6655/baseband.h
> +++ b/drivers/staging/vt6655/baseband.h
> @@ -1,4 +1,4 @@
> -* SPDX-License-Identifier: GPL-2.0+ */
> +/* SPDX-License-Identifier: GPL-2.0+ */

This patch does not apply to my tree :(


