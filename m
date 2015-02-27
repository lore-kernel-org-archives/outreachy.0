X-GM-THRID: 195205005312
X-Received: by 10.152.19.100 with SMTP id d4mr1778129lae.7.1425016434650;
        Thu, 26 Feb 2015 21:53:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.9 with SMTP id p9ls113160lag.86.gmail; Thu, 26 Feb 2015
 21:53:53 -0800 (PST)
X-Received: by 10.112.222.131 with SMTP id qm3mr1748949lbc.1.1425016433123;
        Thu, 26 Feb 2015 21:53:53 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id ew5si51383wid.1.2015.02.26.21.53.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 21:53:53 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevm14 with SMTP id m14so17359715wev.13
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 21:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Z79feHeDJ/c7DpOYeNkbUXiSgEbOYwSvOJHITw1OSO4=;
        b=IdH2uaLuQK62Kp/TSMwJMrFN2ieZe4bPPz6Oc5qkxWUKLgvQaaLpMj0oc7c+8W9QEv
         GW2FIJcFcZNNbSy2rW+ZRcPiZaPFGRSkwBAN6eE+F6Pg6fksmq7t9FNwEvV1mKjI+sek
         OUOPTAcrCNe6gggbPMH1LfonvhNDug4G7XE2qKJzQf/XyXYNaVFOYHbRRFtzZVaxVOj1
         cgx5Fp3A/pwQ3EjKo7Hd4DeeiIVDXCfYK6F13h0clZlrRiEuiXqtMbWEuZBYLvWQ4VCi
         UWVCqVORBT7fFxP+F6vBV8udW8tawHn1JZTD8mq/0PYAyhH6Bfvqjtcqwgxip/Zn+m0L
         jSCA==
X-Received: by 10.181.12.17 with SMTP id em17mr3060827wid.74.1425016433035;
        Thu, 26 Feb 2015 21:53:53 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.174.81])
        by mx.google.com with ESMTPSA id v6sm1269410wix.8.2015.02.26.21.53.51
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 21:53:52 -0800 (PST)
Date: Fri, 27 Feb 2015 07:53:49 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace memcpy by
 ether_addr_copy
Message-ID: <20150227055349.GA22452@waves>
References: <20150217200055.GA11277@localhost.localdomain>
 <20150226182827.GA1267@kroah.com>
 <20150226203243.GA12622@waves>
 <20150226205930.GB21154@kroah.com>
 <20150227013251.GA14999@waves>
 <20150227015512.GA29726@kroah.com>
 <20150227015943.GA15393@waves>
 <alpine.DEB.2.10.1502270644080.2709@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1502270644080.2709@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 06:45:35AM +0100, Julia Lawall wrote:
> > > It's usually just easiest to build the whole tree, you can do it quicker
> > > by doing:
> > > 	make -j16
> > >
> > > replace the number with 2x the number of cpus you have, and you should
> > > be fine.
> > >
> > > good luck,
> > >
> > > greg k-h
> >
> > ok, Thanks!
> 
> I guess that the problem would have been seen by just compiling make
> foo/bar/file.o?
> 
Yup! works for me and my poor old CPU :-D Thanks!
> julia

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

