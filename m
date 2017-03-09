X-GM-THRID: 6394986223504457728
X-Received: by 10.99.106.131 with SMTP id f125mr5750702pgc.140.1489069266782;
        Thu, 09 Mar 2017 06:21:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.1 with SMTP id e1ls1904107ite.16.gmail; Thu, 09 Mar 2017
 06:21:05 -0800 (PST)
X-Received: by 10.99.114.70 with SMTP id c6mr5708941pgn.17.1489069265877;
        Thu, 09 Mar 2017 06:21:05 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si1208295pfb.5.2017.03.09.06.21.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 06:21:05 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so2500107pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 06:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7uCIkY6GpMe2nXB3g6Bkf96dYFOgZQpttbpnRZjpPpY=;
        b=kxaEzJwHAK8imlJ0uLjV4M1x7XhEenDkX47h9BM/y6JWqK/AciCiWTqvfdZSCjANfL
         QFX8UEKXFdo9BHuqv2ZOa8xfmPNJXa7w9x5tdwAWjjMVJenYJdDsvbpuASKd0JJlPVgW
         5lK4rHOnuxs/2Nuvgl6RQYwm9ybVE+d4MKytDHqwnJmyc7mk0jHYgT+pyN20CqHOpB45
         W8TAzgYZAa4nIFvgFSA1vlkA0jRBdv737F1xg0PdHnpLH5Ch9gHI2aaOurDLizLgvLkh
         hnIsFXDK5VHi89frnFc7HbRplp7f668Kw6/DwnqSc4QGDcSGY9qAeEk7GhLhc6cMGVKi
         tivg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7uCIkY6GpMe2nXB3g6Bkf96dYFOgZQpttbpnRZjpPpY=;
        b=hXK+zvESp+4bkzeYHzlxXyQ8QK+HdPCsmuX1OHl1zVSJUCOk8d+aspXBx1i5FORqU9
         AH91ug1hZu4jnx3aZvgWP+zufJYam3k5MlK19fZaxmSPDL+ls6z0jPlYcDnRy+mE/yQC
         kHYPDprI3EmByvy2119feuzX1YspCsNoQfcMlZxW8+J/pOG0+uuI0VWxngyl3Lex6sW3
         rcrVMfi4fXLXx9MUbJLpE+dbY2UO4HyskZ6a91IQShK5fAK8/uYpOvxf35QcRL36oiZK
         2LFrq1nBVz7nxOco5n7yO28nwT4q91kJ1Whz+dnNXlnL5jmiS0QHXeLgZIqmAi0Iv8Jh
         jVMQ==
X-Gm-Message-State: AMke39mX+XIC2yxio4JbdYraLZiqUGnWIcAnlmikj4c7S7Pt4VykK/+GkiWkzN7Ec1OhKQ==
X-Received: by 10.99.121.78 with SMTP id u75mr14041821pgc.202.1489069265534;
        Thu, 09 Mar 2017 06:21:05 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.227.22.116])
        by smtp.gmail.com with ESMTPSA id b7sm12958389pfg.53.2017.03.09.06.21.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 06:21:04 -0800 (PST)
Date: Thu, 9 Mar 2017 19:50:58 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: bcm2835-camera: replace
 get_msg_context() with kzalloc
Message-ID: <20170309142058.GA13334@aishwarya>
References: <cover.1488948214.git.aishpant@gmail.com>
 <cde948e8a5e5fcb53544d81018d67d48b7e0d141.1488948214.git.aishpant@gmail.com>
 <20170309133651.GA7082@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170309133651.GA7082@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Mar 09, 2017 at 02:36:51PM +0100, Greg KH wrote:
> On Wed, Mar 08, 2017 at 10:14:28AM +0530, Aishwarya Pant wrote:
> > This patch replaces function get_msg_context(..) with a kzalloc at
> > the caller. This is safe as the only usage found in mmal-vchiq.c has been
> > refactored.
> > 
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > ---
> >  .../staging/vc04_services/bcm2835-camera/mmal-vchiq.c    | 16 ++--------------
> >  1 file changed, 2 insertions(+), 14 deletions(-)
> 
> This, and the 2/2 patch do not apply at all to my tree :(
> 
> Please fix up and resend.

Hey

I checked this file. The definitions of get_msg_context(..) and
release_msg_context(..) have changed completely, they do more work than
a simple alloc and de-alloc. So these patches don't make sense anymore.

There is still scope to replace kmalloc + memset with a kzalloc, so I'll
do that and send a separate patch.

> 
> thanks,
> 
> greg k-h

