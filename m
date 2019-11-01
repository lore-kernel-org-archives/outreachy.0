X-GM-THRID: 6753896393761357824
X-Received: by 2002:a67:6202:: with SMTP id w2mr5361100vsb.22.1572602073776;
        Fri, 01 Nov 2019 02:54:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:324a:: with SMTP id y10ls288150uad.8.gmail; Fri, 01 Nov
 2019 02:54:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyvaJF5I6djNvu9R6WTf0Po2FzRcx3w0/T5i4tSI82SprOQ8U1geKWAbb8NjRplo4qEBJr/
X-Received: by 2002:ab0:60d2:: with SMTP id g18mr5078554uam.64.1572602072709;
        Fri, 01 Nov 2019 02:54:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572602072; cv=none;
        d=google.com; s=arc-20160816;
        b=ESJO68/evnK6UoYNMprSIqN4djF3mQiOKnD7/eYp7iia3riHBH/G8yuxG2SFEz0CD5
         7sRSez8wrZLhM0XlIJY/ayhjdVuiE+SbQ4R9F9TbOBlWmJ73pQCLJYcGFJ0VhA5Wa2CV
         ocQ2dn000cyJRCCRDAB00ipYpcqb8FPggyGZCFNzJF0UAyOi7johKM2ECacDOLtxM/XS
         JEKgQImOuN0r2wjwz8L8ZFEuuGbZt9v+510xmFPY0npQNjTT8+2a6xXH+fLo18qoeDJ/
         fk9Ta4AvQ1g4yYkc1HUd61pjrKqCAEmYmKApVXqZdnL0WkMXSaBQf/zJx9dsy/TE3FXH
         8+tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5hheK+aJ9thJasciaI3s9LllOetgtFXa7FmeHw9pqJA=;
        b=QGKwpd0G9cWq/Ks8lopCBo72ueHTJmNusO+E19gQ+udnhw2ca74FbsTcQyaSCqjdSx
         UuGksZq6Vfky7KPfyJ9GuX3L2NmfeXNfOUVPR2JtMYo1DDdm4XSh+mq+HRwvZ20NcLJR
         lRAX5VYJRxHM7G/++MmAQ1/U3aWNqBmN4HU1rpqe52al3QQy4t2AY4ltXncvpJfA6CR+
         MHAvPoQYRUGQxvUP3rgcgXtDreWtkmKzxRm7sedsBJmc37XWzPf1MFBEYqoaCVVKu83J
         hK/sOSob0eM+EJ9ZzaNuRnNPYtx5BIn/btPmVvlVonEd9ub+OWAXV3wAr7ZLksM9TxnB
         9RFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AXFfdX5J;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y8si316245vsg.2.2019.11.01.02.54.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Nov 2019 02:54:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AXFfdX5J;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [84.241.195.165])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E4A2120862;
	Fri,  1 Nov 2019 09:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572602071;
	bh=5hheK+aJ9thJasciaI3s9LllOetgtFXa7FmeHw9pqJA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AXFfdX5Jqhrhn7OUO1KGeIQ79+ht+w+R1xsX4jg4fLh/jiqQ0ub4Rt34uWYmY0TK3
	 23lW3Kj4NkliJmxrgmJ0TJdbv6swdU2AF3Kz41i481/Yj0EA4vHOSrroCP+bJE0PpD
	 ulr9SrQvWqHN3M32iwO1PmejqyACSXZf0o8IM3nA=
Date: Fri, 1 Nov 2019 10:54:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, eric@anholt.net, wahrenst@gmx.net
Subject: Re: [PATCH v2 1/7] staging: vc04_services: Remove enum typedefs in
 vchi
Message-ID: <20191101095428.GA2786419@kroah.com>
References: <cover.1572585566.git.jamal.k.shareef@gmail.com>
 <b422f45f5120ccdb8d83036a5340ba9eb92d3fec.1572585566.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b422f45f5120ccdb8d83036a5340ba9eb92d3fec.1572585566.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 31, 2019 at 10:28:29PM -0700, Jamal Shareef wrote:
> -// Opaque type for a connection API
> -typedef struct opaque_vchi_connection_api_t VCHI_CONNECTION_API_T;
> -
> -// Opaque type for a message driver
> -typedef struct opaque_vchi_message_driver_t VCHI_MESSAGE_DRIVER_T;

These are not enum typedefs, as your subject line said you were doing :(

Please fix up and redo the series as a new version.

thanks,

greg k-h

