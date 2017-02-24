X-GM-THRID: 6390646039699783680
X-Received: by 10.13.218.66 with SMTP id c63mr1045525ywe.144.1487947697439;
        Fri, 24 Feb 2017 06:48:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.86 with SMTP id j83ls1902377iod.40.gmail; Fri, 24 Feb
 2017 06:48:16 -0800 (PST)
X-Received: by 10.99.42.198 with SMTP id q189mr1014380pgq.19.1487947696498;
        Fri, 24 Feb 2017 06:48:16 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si1319843pfa.4.2017.02.24.06.48.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 06:48:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D0A12B2E;
	Fri, 24 Feb 2017 14:48:15 +0000 (UTC)
Date: Fri, 24 Feb 2017 15:48:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Questions regarding BUG macro.
Message-ID: <20170224144809.GA8962@kroah.com>
References: <e34c38a0-18ca-4d80-ba2a-113d74689185@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e34c38a0-18ca-4d80-ba2a-113d74689185@googlegroups.com>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Fri, Feb 24, 2017 at 04:10:30AM -0800, Varsha Rao wrote:
> 
> What is the functionality of unreachable() ?

It tells the compiler that it will never execute this.

> Isn't the do while loop unnecessary in the given definition ?

Not at all, why do you think it would be?

> #define BUG()��� ��� ��� ��� ��� ��� ��� ���
> ��� do {��� ��� ��� ��� ��� ��� ��� ���
> ��� ��� _BUG_OR_WARN(0);��� ��� ��� ��� ���
> ��� ��� unreachable();��� ��� ��� ��� ��� ���
> ��� } while (0)
> 
> Found the above definition at staging/arch/avr32/include/asm/bug.h
> Also what is the difference between unreachable() and unlikely()?

unlikely is a hint to the compiler that the statement vare rarely
happens.  unreachable tells the compiler that this code will never be
run, due to something stopping the CPU before it can happen.

Never use either of these in your code unless you really know what you
are doing.  Never use unlikely() unless you can measure the difference
of it being used and not being used, because almost always humans get it
wrong, CPUs are very good at guessing what should happen.

hope this helps,

greg k-h

