X-GM-THRID: 6262299386982694912
X-Received: by 10.50.6.7 with SMTP id w7mr21893158igw.12.1458139619444;
        Wed, 16 Mar 2016 07:46:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.164.129 with SMTP id yq1ls1682110igb.41.canary; Wed, 16 Mar
 2016 07:46:58 -0700 (PDT)
X-Received: by 10.66.149.33 with SMTP id tx1mr3124175pab.28.1458139618882;
        Wed, 16 Mar 2016 07:46:58 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id sf5si598277pac.1.2016.03.16.07.46.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 07:46:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pf0-x232.google.com with SMTP id x3so77582071pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Mar 2016 07:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NLRupIRGiUANCVla5WAlyJRLpSMbWwzjEbSz4oV4108=;
        b=Eh1HpzRLMiNzJoe/RBQ/z5dKIfPmolmBAwdM1WWqW+D6wg2LSDr2wlU90N9XDBmQWp
         iVX6lsq4N8ye3/cDVgWJfSUGLtHwKwYrM634c8bHpdAVkQMzs3ukTsn9EaWu40TK7wWN
         K0jGAkP/G0pTnT/S1t2QKI1XFCTgq6rUXRHkaPQYAH1Q9CSMUNdwt9IY7yrJZM0Wi3ZR
         jmsYtGCejC1gjFKugMSiyOxXpbODFCLd4Uv+6ACLoqm23JS1EyV+oWicU9iah+Xg87N1
         URWzReZRMUcUwfKonqikUExxO8yTLT/ynnCZAX2S6rAEqPTFuf7DIjAyOApaqcciYmxF
         J5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=NLRupIRGiUANCVla5WAlyJRLpSMbWwzjEbSz4oV4108=;
        b=JNLEcyir9h1oYlPAA5bY0ftw1oKkzUc4C52DruAXP7NhflccVcz1dHVAjSOHmulZSh
         SRhO1ZJ2Vxc0iaQfx+ROqqb/Vubtk1eYYRS2lYmTTxybfgemuO80bcLtIg3UxmBenNmy
         Xxui9yThcNuByxXhudYXk0u37KHn/ZSKHGCUivppau18iHP4ROcl+/rXZkt6utJ8/ysy
         QrfyKuj9etTLOawWyemknMWpyYp/RsbELZi/sgCtIZhOp/5/LkqCaAld/cWr8kMw/nmd
         wy+lXfHhkDAwicM3AACl1RurA+PtFekp6yzqTIvk+qxPHRsvvW2Wk3e1iI9ONU367ZkY
         lkmQ==
X-Gm-Message-State: AD7BkJKjr7WMygLPu0tmD2X+12338jrm+0apaix3ReNVDXyMTcyQTnsxqa83fc30gjUkAw==
X-Received: by 10.66.66.140 with SMTP id f12mr6575377pat.122.1458139618763;
        Wed, 16 Mar 2016 07:46:58 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from localhost ([166.170.37.216])
        by smtp.gmail.com with ESMTPSA id f8sm6301683pfj.49.2016.03.16.07.46.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 07:46:58 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Wed, 16 Mar 2016 07:46:57 -0700
From: Tejun Heo <tj@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] iio: light: tsl2563: Remove
 flush_scheduled_work
Message-ID: <20160316144657.GC6980@mtj.duckdns.org>
References: <20160315151951.GA5890@amitoj-Inspiron-3542>
 <20160315154440.GA23557@kroah.com>
 <CA+5yK5H-ubVPv7_h12=sB9_TcWAaVh69Y=C272VQbZbY58swUA@mail.gmail.com>
 <20160315165132.GA29744@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160315165132.GA29744@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Greg.

On Tue, Mar 15, 2016 at 09:51:32AM -0700, Greg KH wrote:
> > Actually, Tejun gave the go ahead to move on to other drivers since
> > the exhaustion of opportunities in staging drivers hence the patches
> > in drivers/net/ and drivers/iio/.
> 
> Ok, but note, I can't do anything with them, so you need to be
> responsible for getting them to the correct mailing lists and
> maintainers after Tejun acks them.

Yeah, the simple conversions under drivers/staging are all done now
and there are plenty of fairly mechanical conversions outside.  I'll
help push the patches through.

Thanks.

-- 
tejun

