X-GM-THRID: 6200711161331056640
X-Received: by 10.182.28.73 with SMTP id z9mr11408336obg.45.1443763032518;
        Thu, 01 Oct 2015 22:17:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.138 with SMTP id 10ls1241113qgz.51.gmail; Thu, 01 Oct
 2015 22:17:11 -0700 (PDT)
X-Received: by 10.31.161.201 with SMTP id k192mr643697vke.12.1443763031768;
        Thu, 01 Oct 2015 22:17:11 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id j22si1002911ywg.2.2015.10.01.22.17.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 22:17:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.161])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3BA0F1F34;
	Fri,  2 Oct 2015 05:17:10 +0000 (UTC)
Date: Fri, 2 Oct 2015 07:17:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/4] Use mutex instead of semaphore
Message-ID: <20151002051707.GA17602@kroah.com>
References: <cover.1443715371.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1443715371.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 01, 2015 at 06:05:57PM +0200, Ksenija Stanojevic wrote:
> This patchset replaces binary semaphore with mutex in comedi drivers.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> 
> Ksenija Stanojevic (4):
>   Staging: comedi: Use mutex instead of semaphore
>   Staging: comedi: Use mutex instead of semaphore
>   Staging: comedi: Use mutex instead of semaphore
>   Staging: comedi: Use mutex instead of semaphore

All 4 of these patches have the same subject, which is not good :(

Please use the driver name in the subject to make them unique, otherwise
it looks like something went wrong and you sent the same patch 4 times.

thanks,

greg k-h

