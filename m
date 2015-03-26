X-GM-THRID: 9790095884288
X-Received: by 10.236.32.238 with SMTP id o74mr18332077yha.2.1427402456660;
        Thu, 26 Mar 2015 13:40:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.1 with SMTP id i1ls971974qgi.34.gmail; Thu, 26 Mar 2015
 13:40:56 -0700 (PDT)
X-Received: by 10.140.201.202 with SMTP id w193mr18017861qha.7.1427402456501;
        Thu, 26 Mar 2015 13:40:56 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si819604pdo.0.2015.03.26.13.40.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 13:40:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1897EAF5;
	Thu, 26 Mar 2015 20:40:54 +0000 (UTC)
Date: Thu, 26 Mar 2015 21:40:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: Vatika Harlalka <vatikaharlalka@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Add new
 variable to make code compact
Message-ID: <20150326204051.GB5122@kroah.com>
References: <20150325131311.GA10728@akanksha>
 <55145A95.909@gmail.com>
 <CAHjTdYc0-dAGWOLq=Bvm2Mcy76XNyc3w_Z6kxtrKZDHgk=xa7Q@mail.gmail.com>
 <55145E92.4080209@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55145E92.4080209@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 26, 2015 at 03:31:30PM -0400, Jes Sorensen wrote:
> On 03/26/15 15:26, Vatika Harlalka wrote:
> > Hi Jes
> > This was to align the declaration with that of hal_data above.
> > Should I change them both and send in a new patch?
> > 
> 
> That would be preferred!

Not really as I've accepted the first patch.  So just a follow-on one
would be good.

thanks,

greg k-h

