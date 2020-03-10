X-GM-THRID: 6802571997822844928
X-Received: by 2002:a63:1e06:: with SMTP id e6mr21755886pge.134.1583847622272;
        Tue, 10 Mar 2020 06:40:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:898e:: with SMTP id v14ls59935pjn.3.gmail; Tue, 10
 Mar 2020 06:40:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtQUVarLmczJ6N9hbByal5W7Q7KRAm5iWuslNA+IlkNx4YOSm6ZQ33bfuz0MUrDUXvW60Qw
X-Received: by 2002:a17:902:7796:: with SMTP id o22mr19904597pll.250.1583847619533;
        Tue, 10 Mar 2020 06:40:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583847619; cv=none;
        d=google.com; s=arc-20160816;
        b=U6ScS7BwsQf7VYfV+KQqVYj2yNJgaWnwHH/62mrufP2M/W0jzWv6sKWeR/s6Q0rT0a
         MaRiiwZ74srPed1ymaLdu4PhJdqb846/TIUdNzfT1pYdKDIG7yt0qqzOP1Cm64CirkTJ
         qBmsHd8n4xSlf/VaajfR5qNHNDRNZzBCd6OleiktzyTuJEgEV3FVkFW4vr0miGzrc2YO
         Mwm3wWQLkQx6hYvZlDhnJtn+yu62U0XV9UvyKXzpsjXvowzX2BImP2jcZ1OTWdKBAqJS
         Jc6Zeaakbywefl/J0CDlti5rSnL+Xqk76B/scZuSKYsYe0fbfgRP3CiF6BpSG4b7qohN
         y8Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zdOooPXfPH7JBE4vx7yzncOubb3tcT8h7YuvPiNSA2c=;
        b=njV72ZSOS4qcvuHkyU23XdvCwL0X5+wxS7Xf6axpecapXgXnxuB/6Rg2xs6MoRqGY2
         A3OVJAZy9KvzoC4M3fpdSd6kos8aIJH393W8+vF8wpll7YTxbtvWN2I6yFO0QGwVnff1
         l05xfpmOL1Z3O3C4IIEJsI9UbNACwchWjkdOhe5s+mOhGxVyU5G6riFkZP88cskjtZfX
         bc88tg0nNTA9dPonPeeMxeJ1zs+ygKLIcpUDKjq+YkEgJMQE8mDg27MkxwgqGnNoVzxa
         BZBXbRyP/fzAuIF+lxbsjrgQZ2b0qzUnHq2viDbLzoVZnSPuUjjPAXYLHAqsSiyMcrNV
         ypGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mSwqyMs5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z7si354925pgz.5.2020.03.10.06.40.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:40:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mSwqyMs5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BB29620675;
	Tue, 10 Mar 2020 13:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583847619;
	bh=HdSW9jUD6f8E5yx0hcQKqAG/RCsbH+DoQiqTnYAsYM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mSwqyMs5BYqaqx53EMYa0nvMDhv61+X255gC0KF/uG9nU7lkiuZjM7soXcoGNhHEB
	 6P1S3Ht+yWjxU24jOlqKAY3WMB/IRLgQW6G//ZpppmogFkF9VOXWaHbMpZ7s3qwPkp
	 QTWCYXYt5W67lC83/TI9Ww8eUGPtNHrjOCIEmcdQ=
Date: Tue, 10 Mar 2020 14:40:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH 0/2] staging: exfat: exfat_super.c: remove unused code
 and improve readability
Message-ID: <20200310134016.GA3367142@kroah.com>
References: <20200310133309.8332-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310133309.8332-1-lu@pplo.net>

On Tue, Mar 10, 2020 at 02:33:07PM +0100, Lourdes Pedrajas wrote:
> Here's a set of patches that performs code cleanup in the file
> drivers/staging/vt6655/power.c
> 

Still not using --cover-letter.

Also the subject line is very odd for the vt6655 driver :(

