X-GM-THRID: 6810983981857636352
X-Received: by 2002:a0c:f207:: with SMTP id h7mr6795302qvk.20.1585898712509;
        Fri, 03 Apr 2020 00:25:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:34c6:: with SMTP id x64ls3545158qtd.5.gmail; Fri, 03 Apr
 2020 00:25:11 -0700 (PDT)
X-Google-Smtp-Source: APiQypKSI4U9cTr0ceLmKoiF1UURnxZdkLV14lRw9AQ0Gnzq8MzspW5AcqFcYeCSm7E4doVctF9m
X-Received: by 2002:ac8:1b2f:: with SMTP id y44mr6992363qtj.25.1585898711115;
        Fri, 03 Apr 2020 00:25:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585898711; cv=none;
        d=google.com; s=arc-20160816;
        b=X07JYvmddPzifIL2Pbq/RwWNjFyTd5ZejsVtd0vcHltzJT5EnyjSEA3umeiEPib6Z1
         tYEHB9WNyJ3co6Hch+vk8LwhrGBvS+hMFpa+f8+KfJs785tuQGmwHNoLbeXnP9TxayXV
         UYgMWRS6/NbrJAFJrJdLNWGyJwj++gGNZydl6W5jlwWsQPzrTbcxi6vASXUETYa2Ee63
         qvX1cf9zsG6BtkhXLuZg3iKlLcu/AypfyBn+UXOQ/Th/lzqx75XVLjl4EKy6voaOcndS
         lKqF0MpoZF06ZacFAGbh4UEeyl6ddHgjkwIOGGpUj9plprQGtMe7KjW5JtGPRn4iWonH
         qU8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=g3/Fc957Z7NC/ooLjlDEdU4lNYlmrkyPlpFNoziR7PQ=;
        b=0JFV39Y/qXyWLnY7G5/LVUjOPmOd+0/bjolFP/2YdF4zWbAxGgaysGcalvFHGjbFvq
         QYRIzJVJfIUVceac6Eo1ySlMEPfOr1hUA2MSCxEu4TVJbuTu6RiywS1hQE8KkOebyx1F
         rX7T0tU8mfCL5tdRN60rmQJ7m/be+UicAhMbKkBfNWASkr79v28XNDIxiHe2nr3NzITu
         gJY3VcjGnQnRwR9z7o7DMh1c7AcKOO5yTgPzeRNHBInjrSpyYwdxz+jixFtASI6eGBnj
         WZKo8dTT1hGFoCykWFMZZOzL6E6rraybtZKjdALm9Br1vEb7QaTAXAqICeWU32Km8nQm
         VgKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OPaopi7J;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j56si653241qta.0.2020.04.03.00.25.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 00:25:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OPaopi7J;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 93E96206F8;
	Fri,  3 Apr 2020 07:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585898710;
	bh=UrW0qh9b86HOoFRZ6/gp1zp7+bI3Pc9plhScThk4b/4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OPaopi7JNVueL99fqC5I2IPOvDiw5PKfVqx9nnXQdh4jBpwLu6GA5N+MIjudjKghG
	 2rDOnIj44L9SSeMWA/kfFvQngwKidFl6YHO0Xhakwt8GUBA2/TjpIPM5idzX/gvI56
	 ZegQxlDn6+iLUFYFEI8XXnz2kAs3z0qtrFjZMGYQ=
Date: Fri, 3 Apr 2020 09:25:02 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] staging: gasket: Fix comment 75 character limit
 warning
Message-ID: <20200403072502.GD3405737@kroah.com>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
 <20200402053617.826678-3-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200402053617.826678-3-jbwyatt4@gmail.com>

On Wed, Apr 01, 2020 at 10:36:17PM -0700, John B. Wyatt IV wrote:
> Fix 75 character limit warning in comment reported by checkpatch.

comments are not allowed to go beyond 75 columns now?  Is that something
new?

The code is fine as-is, sorry.

thanks,

greg k-h

