X-GM-THRID: 6621495393645494272
X-Received: by 2002:a17:902:d908:: with SMTP id c8-v6mr8044plz.103.1541689360589;
        Thu, 08 Nov 2018 07:02:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:51cd:: with SMTP id i13-v6ls550147pgq.1.gmail; Thu, 08
 Nov 2018 07:02:39 -0800 (PST)
X-Google-Smtp-Source: AJdET5dHK02unhiT6q/OOR0JuhSuhZfenwy5a4iuoOjxnyOgOi3Nd9otb1fxHRv1wW1RA1ISGIC3
X-Received: by 2002:a62:e0cc:: with SMTP id d73-v6mr2035431pfm.134.1541689359692;
        Thu, 08 Nov 2018 07:02:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541689359; cv=none;
        d=google.com; s=arc-20160816;
        b=YwkaONT+jwNL8URJMVzaZjgn00jRcoZ59Pc5qh6f+8QJviFcEHkh2nugnyWb86Ckdw
         8uwsGIfYJqLC58/sxTK21bjjFaIbD061LHG10pfMMmdJ4Wv2HejqpJ/ZJl4YkaAi5nnx
         tb0VFM0c5KnFTakjdtoNUzdpD3WswEo65Jnab6Z3YNwCj/G2dd4qTHWcNYjSoZFYYAV/
         o2dYn8LIHikjO+B+rNA7kS5+dnPvDsK1fbD/UkVN/IChynLIOrGNosso/YJ6c8+yzlC4
         MwZ5P6zVLaG0QS+H1rZVWygx+A0V0NereH0IimDEfQBFLk8ir7surXgnHXLMMENKtYHg
         QMJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ePMeaOoymNVn6VY8TPfqgVJUu0Cv8xRp2v7aSxOJr/I=;
        b=NtKxwt6F1lh8oq92Z8TdAX+q1VhCU9SRrdA3FFcSjFTB+MNzihqL8n0A17eR7c1+No
         lGRO0IORblTWIkx9/LFENV1B2zb2wiQ51d8AuNDiTtKIZAkocV39RiwyAM6TnxpkdRel
         3EzPvn0Mz+w7PZywYckmWbZzvIzG2kc25buGWyfwnTibFjLHQhjhaidoAWrGZmiLUbBh
         Q13bOhr+LpOfh2WaSao4/HURbKoWMWRhHAHgVUwVX2ASaA9tNs9wFOEZknyTJt+hpWjm
         BlsHQ5ojRWshvbVZHXVaRS5MQgGoudDvfAPTIInuV+oJVXaAxp8AhFsMfY0xxZPmLOcR
         cz+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y7K3xpgo;
       spf=pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 7-v6si169109pga.5.2018.11.08.07.02.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 07:02:39 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y7K3xpgo;
       spf=pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (71-6-98-120.static-ip.telepacific.net [71.6.98.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 39EC920818;
	Thu,  8 Nov 2018 15:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541689359;
	bh=Xgs84jFQg4wCA/bQH+X8Qb6cpZr+fhh45DQYtMlmWPQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=y7K3xpgoMgxsSydETX/zac03JTEZOQI0Vj4/qbOdNNzXDd36ykAy5BKB88rckXNgx
	 MBwrf58F4eOH49FV2tdXzlq3Mc0H+vkjzuA81CUA2emVTjk0N9y4eCfdwmW8UZeuzW
	 evo+VMHOTf0WT5SOX3X7PBMWhBGqtULHncnMXsUw=
Date: Thu, 8 Nov 2018 07:02:38 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 00/15] staging: greybus: fix coding style issues
Message-ID: <20181108150238.GB10650@kroah.com>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Nov 08, 2018 at 02:23:46PM +0000, Ioannis Valasakis wrote:
> Changed in V2:
> 	- Change the subject title

Are you sure?

> 
> Ioannis Valasakis (15):
>   staging: greybus: shorten comparison to NULL
>   staging: greybus: align parameters to parentheses
>   staging: greybus: add a blank line after declaration
>   staging: greybus: fix SPDX License Identifier
>   greybus: staging: align arguments with parentheses

Nope, still looks incorrect :(

Can you fix this up and resend a v3?

thanks,

greg k-h

