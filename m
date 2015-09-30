X-GM-THRID: 6200081911391453184
X-Received: by 10.66.246.198 with SMTP id xy6mr1636714pac.36.1443590228792;
        Tue, 29 Sep 2015 22:17:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.129 with SMTP id f1ls382441igt.2.canary; Tue, 29 Sep
 2015 22:17:08 -0700 (PDT)
X-Received: by 10.107.148.204 with SMTP id w195mr2392482iod.15.1443590228420;
        Tue, 29 Sep 2015 22:17:08 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e64si611870ywb.7.2015.09.29.22.17.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 22:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.184])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 12F8D1F5D;
	Wed, 30 Sep 2015 05:17:06 +0000 (UTC)
Date: Wed, 30 Sep 2015 07:17:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: visorbus:
 visorchipset: Converted arrays to static const
Message-ID: <20150930051705.GA2303@kroah.com>
References: <20150929232413.GA16457@ubuntu>
 <20150930015931.GA14259@kroah.com>
 <CAKHNQQFAUaJfbySZ_r-ZtFAz9B7ih0Vmezgz3Qv7-khTB-2WYA@mail.gmail.com>
 <20150930041851.GA21970@kroah.com>
 <CAKHNQQHv-LA-6W5EE=tx=xKc+aMFGiUTfnqTLEuL0NWMZj2nGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKHNQQHv-LA-6W5EE=tx=xKc+aMFGiUTfnqTLEuL0NWMZj2nGQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 30, 2015 at 09:50:50AM +0530, Shivani Bhardwaj wrote:
> This was a warning message by compiler only that I need to convert char * to
> static const char * const.

The compiler said that?  Can you post the exact message gcc gave you for
this line, that seems very odd.

thanks,

greg k-h

