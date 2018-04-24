X-GM-THRID: 6547933385592930304
X-Received: by 2002:a81:441c:: with SMTP id r28-v6mr8161690ywa.60.1524560881485;
        Tue, 24 Apr 2018 02:08:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:10a:: with SMTP id 10-v6ls1941536ybx.18.gmail; Tue, 24
 Apr 2018 02:08:00 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/5Lrfyx+qxJfElSW59CFKwbdgLs1A4kwipXBdDJ2x04YTTiaINvUF8RcbQEzW2qrNgs1mU
X-Received: by 2002:a25:3a84:: with SMTP id h126-v6mr7875668yba.77.1524560880793;
        Tue, 24 Apr 2018 02:08:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1524560880; cv=none;
        d=google.com; s=arc-20160816;
        b=ughAtPa3W7y+tszq8IOl/rVADcv48zm+sXgt1Z2Bki7ezVEnGWxBCfAzZC6T88g6Sk
         Uadl5ArACvB1hkA79i13//Nm9hf//cRLv27poEdeXHwK67N9vQRi5S8B//t6Ye8uYnXY
         IRgC+caqbYzswViLgj73Q8S9F3p44/PEGbHEdK627/fb/K6v/Qq7gRYiIdILqeByiCgC
         L7YExRUS0KgGWmJUnIvUiqftfLxL1/1JrRSSsTSbaCgKerQKlRqUfjLZDPmaC7k+tKjv
         E9AX/BN6A/ScjwXL/RgKpcaMdF/kjy5TC6hS9PgqyCbGKCQ0xq/5dpPaOTqqiYkvgEz/
         BjuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=y0OJlPyDeBUFml67RlsnlhKuVm0zzy+Rcr2hc+bBl5U=;
        b=vQze/OFg0RzkVjxDxcBzQ+OUnNpmZALBNZdBLqGhKhMGo+yYUspmn/l+rGAtZa7hzv
         VLZ2FZLWu10rjTqvx+E0snlfY8dyMGD/PjCoy7DW0q4d2Vm6L+k1VtIwLxywUfydfsee
         2upZ/Q4nUQ/U65JrAxXRnEKbf7fCbsfTT3ciOZ8SYtC+nm82zhMlNCZW48jTvggge3x6
         grKA02WrWk9X9p4VzS8p3bSrIVdd3Qs12vUQmsDIcJEDLTT3W2CyCk90bx9pqeeDnUjL
         z+D/+eGtjb4aqlvfGbEUn0MSRvJ3VdYf1GeAH1qHR7/EbwgiJP3EOz8EhrUrSIrUnDwc
         1OOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id j7-v6si1009298ybl.2.2018.04.24.02.08.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Apr 2018 02:08:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12247-202.w90-92.abo.wanadoo.fr [90.92.61.202])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 31CF79D;
	Tue, 24 Apr 2018 09:07:59 +0000 (UTC)
Date: Tue, 24 Apr 2018 11:07:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] Continuing Contributions
Message-ID: <20180424090753.GA16374@kroah.com>
References: <CAC4++KD-CN1A4AEMMRumGcmp8igXaFHUyHiyPqt4b4v7XN4ncw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC4++KD-CN1A4AEMMRumGcmp8igXaFHUyHiyPqt4b4v7XN4ncw@mail.gmail.com>
User-Agent: Mutt/1.9.5 (2018-04-13)

On Tue, Apr 24, 2018 at 02:15:42PM +0530, Nishka Dasgupta wrote:
> I would like to continue contributing to the Linux kernel, without
> waiting for the next Outreachy cycle to begin. Would that be possible?

Yes, please!

> If so, do I simply send my contributions to the driver maintainers
> (leaving out the outreachy group), or should I send it to different
> addresses as well?

As was stated, just use scripts/get_maintainer.pl on your patch to
determine who to send it to.

> Additionally, if it is possible to keep contributing, should I
> continue submitting cleanup patches for staging drivers?

If you want to do that, yes, I gladly take cleanup patches.  And, that's
a good way to get more involved in a driver as you will start to become
more familiar with it over time.

good luck!

greg k-h

