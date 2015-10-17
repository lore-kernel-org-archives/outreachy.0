X-GM-THRID: 6205668721559601152
X-Received: by 10.50.114.2 with SMTP id jc2mr7561437igb.5.1445061313349;
        Fri, 16 Oct 2015 22:55:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.176.227 with SMTP id cl3ls382023igc.6.gmail; Fri, 16 Oct
 2015 22:55:13 -0700 (PDT)
X-Received: by 10.66.229.69 with SMTP id so5mr16248260pac.26.1445061313098;
        Fri, 16 Oct 2015 22:55:13 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zg1si2424265pbb.2.2015.10.16.22.55.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 22:55:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B722690;
	Sat, 17 Oct 2015 05:55:12 +0000 (UTC)
Date: Fri, 16 Oct 2015 22:55:11 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepa Dinamani <deepa.kernel@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, y2038@lists.linaro.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [Outreachy kernel] Re: [PATCH] staging: ft1000: replace
 timeval with ktime_t
Message-ID: <20151017055511.GA30187@kroah.com>
References: <1444869780-26658-1-git-send-email-deepa.kernel@gmail.com>
 <CABeXuvrTDkfM=2umfNcoyATN866zWQ2ed-VspCyn-xC846e1nw@mail.gmail.com>
 <9822706.yKCeF9F5MV@wuerfel>
 <5068430.5O6VKJJBka@wuerfel>
 <929BCFA7-B28D-4B76-9006-A488345D945F@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <929BCFA7-B28D-4B76-9006-A488345D945F@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 16, 2015 at 05:32:25PM -0700, Deepa Dinamani wrote:
> Should I then fix this patch as per your suggestion or let it be?

Let's just delete the driver from the tree.

thanks,

greg k-h

