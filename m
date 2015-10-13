X-GM-THRID: 6200385233952440320
X-Received: by 10.13.247.132 with SMTP id h126mr29185004ywf.56.1444755659753;
        Tue, 13 Oct 2015 10:00:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.100 with SMTP id k91ls3121663qgf.38.gmail; Tue, 13 Oct
 2015 10:00:59 -0700 (PDT)
X-Received: by 10.140.145.78 with SMTP id 75mr29619258qhr.1.1444755659263;
        Tue, 13 Oct 2015 10:00:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id uv4si479794pac.0.2015.10.13.10.00.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 10:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (50-76-40-150-ip-static.hfc.comcastbusiness.net [50.76.40.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A0C8E1813;
	Tue, 13 Oct 2015 17:00:58 +0000 (UTC)
Date: Tue, 13 Oct 2015 09:48:34 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija =?utf-8?Q?Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use mutex instead of
 semaphore
Message-ID: <20151013164834.GA22644@kroah.com>
References: <1443639675-18965-1-git-send-email-ksenija.stanojevic@gmail.com>
 <alpine.DEB.2.02.1509302341570.1977@localhost6.localdomain6>
 <CAL7P5j+p=JnMHuPCmdw7UH+x+Rbrg7QCtQCpBQ3noZCVUMopsA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL7P5j+p=JnMHuPCmdw7UH+x+Rbrg7QCtQCpBQ3noZCVUMopsA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 13, 2015 at 04:47:18PM +0200, Ksenija Stanojević wrote:
> Hi Greg,
> 
> I think you missed also this patch.

Anything that you think I missed, please resend.

thanks,

greg k-h

