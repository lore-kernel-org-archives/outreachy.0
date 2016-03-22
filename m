X-GM-THRID: 6264811554202451968
X-Received: by 10.182.3.40 with SMTP id 8mr28260690obz.15.1458681221825;
        Tue, 22 Mar 2016 14:13:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.15 with SMTP id c15ls4361469qge.30.gmail; Tue, 22 Mar
 2016 14:13:40 -0700 (PDT)
X-Received: by 10.140.93.199 with SMTP id d65mr2992954qge.30.1458681220956;
        Tue, 22 Mar 2016 14:13:40 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si5162686pab.0.2016.03.22.14.13.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 14:13:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 691C467;
	Tue, 22 Mar 2016 21:13:40 +0000 (UTC)
Date: Tue, 22 Mar 2016 17:13:38 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Angel Orejel <deutschluz@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: add more
 information to Kconfig
Message-ID: <20160322211338.GA9367@kroah.com>
References: <CAGLzxAr5=CPi-K9rsLHwqgKhmj=1jVHygQ3NHi=EZMcpGWQTUg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGLzxAr5=CPi-K9rsLHwqgKhmj=1jVHygQ3NHi=EZMcpGWQTUg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 22, 2016 at 02:48:25AM -0700, Angel Orejel wrote:
> [PATCH] staging: rtl8192e: add more information to Kconfig
> 
> The warnings were originating in the Kconfig file and were
> essentially, asking for more information to display. A quick google
> search returned the patch that separated the rtl driver from 2011 into
> several separate drivers in order to comply with a certain IEEE
> standard.
> 
> Signed-off-by: deutschluz <deutschluz@gmail.com>
> 
> # Please enter the commit message for your changes. Lines starting
> # with '#' will be ignored, and an empty message aborts the commit.
> # On branch first-patch
> # Changes to be committed:
> #� �(use "git reset HEAD <file>..." to unstage)
> #
> #� � � �modified:� �drivers/staging/rtl8192e/Kconfig
> #
> # Untracked files:
> #� �(use "git add <file>..." to include in what will be committed)
> #
> #� � � �Kconf_warnings.txt
> #� � � �comedi_Kconfig_chkpatch.out
> #� � � �config
> #� � � �config-4.5

How did this get here?

And I need a full name for a signed-off-by line, as well as a patch that
is not in html format to be able to apply it.

thanks,

greg k-h

