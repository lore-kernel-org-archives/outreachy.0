X-GM-THRID: 6330577059983654912
X-Received: by 10.36.2.142 with SMTP id 136mr5555630itu.8.1474014034458;
        Fri, 16 Sep 2016 01:20:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls5492467ota.23.gmail; Fri, 16 Sep
 2016 01:20:34 -0700 (PDT)
X-Received: by 10.157.11.233 with SMTP id 96mr9703475oth.42.1474014034069;
        Fri, 16 Sep 2016 01:20:34 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 142si3880737pfx.2.2016.09.16.01.20.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 01:20:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 280CF94D;
	Fri, 16 Sep 2016 08:20:32 +0000 (UTC)
Date: Fri, 16 Sep 2016 10:20:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Jon Nettleton <jon.nettleton@gmail.com>
Subject: Re: [PATCH v2] staging: olpc_dcon: Prefer using the BIT macro
Message-ID: <20160916082038.GA8971@kroah.com>
References: <20160915154838.GA7175@life-desktop>
 <20160915172523.GA20506@kroah.com>
 <CAAbeOSuRSzizAuoL12+-uSUiq6HXtwr6Em_qREq28wFXZjO9hQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAAbeOSuRSzizAuoL12+-uSUiq6HXtwr6Em_qREq28wFXZjO9hQ@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 15, 2016 at 11:21:33PM +0530, Anchal Jain wrote:
> 
> >You're previous commit message was a bit better :)
> >
> >And again, did you build test this?� Just looking at it, I do not think
> >it will...
> >
> >thanks,
> 
> 
> I can't understand what should I need to change in commit message

Again did you test build this patch?  I'm not going to be able to accept
any patches from you until you show that you are doing this, sorry.

thanks,

greg k-h

