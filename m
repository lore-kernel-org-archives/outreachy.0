X-GM-THRID: 3148599001088
X-Received: by 10.66.224.42 with SMTP id qz10mr17236983pac.0.1424787526924;
        Tue, 24 Feb 2015 06:18:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.8 with SMTP id p8ls1033177ioe.77.gmail; Tue, 24 Feb
 2015 06:18:46 -0800 (PST)
X-Received: by 10.66.153.16 with SMTP id vc16mr10127578pab.42.1424787526460;
        Tue, 24 Feb 2015 06:18:46 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si4190237pbc.2.2015.02.24.06.18.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:18:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2B33BB09;
	Tue, 24 Feb 2015 14:18:46 +0000 (UTC)
Date: Tue, 24 Feb 2015 06:18:45 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2 v2] Introduce new macro
Message-ID: <20150224141845.GA16196@kroah.com>
References: <cover.1424761857.git.vatikaharlalka@gmail.com>
 <a504aa6ef851fcf381d8dbf9a1804bb43fbbd343.1424761857.git.vatikaharlalka@gmail.com>
 <20150224074018.GB11701@kroah.com>
 <CAHjTdYeJwoC26O-c1oWWaTtdxRfBegggu1fS0qXj+LwLoii5Wg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHjTdYeJwoC26O-c1oWWaTtdxRfBegggu1fS0qXj+LwLoii5Wg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 24, 2015 at 01:27:46PM +0530, Vatika Harlalka wrote:
> Hi, thanks for your response!
> 
> I'm using this macro in� /rtl8188eu/hal/phy.c ( in patch 2/2 ).
> > u8 channel_5g[ODM_TARGET_CHNL_NUM_5G]
> However, based on your response, I will make this array static const int,
> so I won't explicitly declare the size.
> Should I resend a patch for this with just that fix?

Why 'int'?

And watch out for your email client settings, you are sending html email
which the linux-kernel mailing lists will reject.

thanks,

greg k-h

