X-GM-THRID: 6330194437741740032
X-Received: by 10.157.23.171 with SMTP id j40mr9431069otj.41.1474013264494;
        Fri, 16 Sep 2016 01:07:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.201 with SMTP id g67ls2448272otg.26.gmail; Fri, 16 Sep
 2016 01:07:44 -0700 (PDT)
X-Received: by 10.31.170.11 with SMTP id t11mr1614570vke.6.1474013264119;
        Fri, 16 Sep 2016 01:07:44 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si2230131pfw.1.2016.09.16.01.07.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 01:07:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 72AEA8F5;
	Fri, 16 Sep 2016 08:07:43 +0000 (UTC)
Date: Fri, 16 Sep 2016 10:07:49 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Rehas Sachdeva <aquannie@gmail.com>, outreachy-kernel@googlegroups.com,
	Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: dgnc: Fix long line and
 spelling mistake
Message-ID: <20160916080749.GA21425@kroah.com>
References: <20160915040821.GA5441@toblerone>
 <alpine.DEB.2.10.1609150710330.6078@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609150710330.6078@hadrien>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 15, 2016 at 07:10:42AM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 15 Sep 2016, Rehas Sachdeva wrote:
> 
> > This patch fixes the checkpatch.pl warning: Line over 80 characters.
> > Also, the word 'because' was spelled as 'Becuz' and has been corrected.
> 
> Looks much betetr :)

Julia, can you provide "Reviewed-by:" or "Acked-by:" for patches like
this so that I can give you credit for doing this review?

thanks,

greg k-h

