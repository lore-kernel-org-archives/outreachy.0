X-GM-THRID: 6262299386982694912
X-Received: by 10.98.75.75 with SMTP id y72mr20309401pfa.10.1458060799148;
        Tue, 15 Mar 2016 09:53:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.4 with SMTP id j4ls330738qge.40.gmail; Tue, 15 Mar 2016
 09:53:18 -0700 (PDT)
X-Received: by 10.13.234.87 with SMTP id t84mr22361595ywe.11.1458060798656;
        Tue, 15 Mar 2016 09:53:18 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id w126si1774754ywe.6.2016.03.15.09.53.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 09:53:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id w104so19596010qge.1
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 09:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=JI6bvYH0/8fK3cvz+H7sh8ntZhLoOq0gj6Bz1kdOX4w=;
        b=kGm6a+hZKC3z3usoXlNMXWXdnYnNWanA15346M+eeO8lIs9gRgIRBYI0caMgJXlMU9
         dqop8Ln5zVOnyNmdf39ZxBd0deAYOcSc/7yfVgkNz8U9Es0UJbNWoT/4ZR3/+QR1RqsO
         luGHWc3ZmAk5uT+I7R1wD7J1Pt//FGUxws2XaTnKOvjfO8adwMxNgCYYOijs5zSJCJ7E
         r84xI1cNOuAfyj2Zp+eLfSvNV5Iv3m0Yl3ASsGiKQqDmDzQjKCcwuUGAzm6DZlvaVlMG
         6dPrqnbtRD/dUonMTkSiyHasoDuN/95HsWIjXwad1UDq/R924pO2BHc4V/6dAn4w61X4
         JuhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=JI6bvYH0/8fK3cvz+H7sh8ntZhLoOq0gj6Bz1kdOX4w=;
        b=XdvOtc0HYuSgbrwdulwBum68KAKtDdekaogMxgYMgP6sZku2NRdAjxyK4gEIFzJnRx
         cGPR84eFJHsuQV+Mx5sXJsczk2hyXZ3+swPm6JECSvwC2MYs+s+ZWu68So4B5WcU8Aw+
         uIuEV3iam6YQqBhYCZGjgSYeGk1406nkgGavcSqSFaSWenaDILI3iJZTbbjgdQxThFKb
         bR9uiF2aYgvagTw3FukUOAxLoUx2YQRG5tCReCSeJp6nmXCz9+vPZ+wRMlufMABxIIYa
         Y0RbUpxjQcgwPsi1/zoo+vn1ud283EuCTroeYiTDdHBOrb5Rfs3bA/AyGAAA22OOD5Bk
         dGNw==
X-Gm-Message-State: AD7BkJL2JQqpwlEUfmos8SeMUyJ7s4Qirs0Edm/mFhbVwmvi+tD55WCwKE5uwdlNKRDaXDV8kZBU3VYhDxktqg==
MIME-Version: 1.0
X-Received: by 10.140.31.69 with SMTP id e63mr38972657qge.30.1458060798407;
 Tue, 15 Mar 2016 09:53:18 -0700 (PDT)
Received: by 10.140.44.99 with HTTP; Tue, 15 Mar 2016 09:53:18 -0700 (PDT)
In-Reply-To: <20160315165132.GA29744@kroah.com>
References: <20160315151951.GA5890@amitoj-Inspiron-3542>
	<20160315154440.GA23557@kroah.com>
	<CA+5yK5H-ubVPv7_h12=sB9_TcWAaVh69Y=C272VQbZbY58swUA@mail.gmail.com>
	<20160315165132.GA29744@kroah.com>
Date: Tue, 15 Mar 2016 22:23:18 +0530
Message-ID: <CA+5yK5HHG9V6krCHD2JM3G+OWt=2dUN_nOEuzaij8PgPb3X4SA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] iio: light: tsl2563: Remove flush_scheduled_work
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Tejun Heo <tj@kernel.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 15, 2016 at 10:21 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> Ok, but note, I can't do anything with them, so you need to be
> responsible for getting them to the correct mailing lists and
> maintainers after Tejun acks them.
>
> thanks,
>
> greg k-h

Understood, thanks for the heads up.

Amitoj

