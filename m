X-GM-THRID: 6200896862154653696
X-Received: by 10.66.122.201 with SMTP id lu9mr27938418pab.8.1444108168481;
        Mon, 05 Oct 2015 22:09:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.1.52 with SMTP id 20ls1422796igj.1.gmail; Mon, 05 Oct 2015
 22:09:28 -0700 (PDT)
X-Received: by 10.50.17.35 with SMTP id l3mr8189820igd.11.1444108168202;
        Mon, 05 Oct 2015 22:09:28 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id wl2si4045472pab.1.2015.10.05.22.09.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 22:09:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hy16so58088262pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 22:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=WL7BesdNLrd2VFNfZSgrdn4J8AvwzmowSZnd4IYEGwU=;
        b=KmugzVLC1DU6tez1U/vXZb0RNB31J+WYVVhzFtC8ek5/eMqMx5hQoXgTUhAx8YW413
         mkXHGI0lLsjnN5BO1O3SLFhcv3shaEQJl7TfnmU4tGsjek81YqUVqnW9C5RIj3CRpGNU
         B6ZNRvEmJ2WpjZJXcHHfKmFr5bL1QKbQT0cBKlZ7uzfr2zAJyRvHMbn5rOjw36zFhxTB
         9RC8684k7qglYlu2NFCTrFnaQhKwSfRLEDhdKgUWO4eeQrqv6wiiN+W39Rp3xL0GOwE3
         t9ZtHG7jokDOVo0ZIIaOvjq9rpL93mv9Sw+ztuauzspIy5YpuvrlSnnTMjtWRwjqGsXk
         0a2Q==
X-Received: by 10.67.23.165 with SMTP id ib5mr43982614pad.26.1444108168003;
        Mon, 05 Oct 2015 22:09:28 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id o3sm30950220pap.37.2015.10.05.22.09.26
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 22:09:27 -0700 (PDT)
Date: Tue, 6 Oct 2015 10:39:22 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Shivani Bhardwaj <shivanib134@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
Message-ID: <20151006050922.GF4745@sudip-pc>
References: <alpine.DEB.2.10.1510020959500.2633@hadrien>
 <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
 <20151002102819.GD9346@sudip-pc>
 <775721a0-c98a-427c-a988-49ccb0ad72dc@googlegroups.com>
 <20151002125909.GB32540@sudip-pc>
 <71611fa2-5d15-4032-bd55-b7991ea55a5b@googlegroups.com>
 <alpine.DEB.2.10.1510041457450.2661@hadrien>
 <20151006040800.GA30304@ubuntu>
 <c6724038-bdcb-4813-b49b-22b9d8f5af2b@googlegroups.com>
 <alpine.DEB.2.10.1510060558150.3038@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1510060558150.3038@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Oct 06, 2015 at 06:00:23AM +0100, Julia Lawall wrote:
> On Mon, 5 Oct 2015, Shivani Bhardwaj wrote:
> 
> >
> > Done. Seems like those folders didn't have much to compile, only one file whose dependencies were compiled.
> 
> Before you send a patch, at least check that you have a .o file or the .c
> file that is affected by your patch.  You can also compile by saying make
> path/to/file.o.  The only risk with that method is that it won't find
> missing dependencies between files, if you eg change a function name in
> one place but not everywhere that it is used.  But changes inside
> functions often don't relate to that.  And with make path/to/file.o you
> will see immediately if it is able to compile your file.

Usually I will compile the whole folder. Suppose I change something in
unisys and I want to check it, I will do:
make clean M=drivers/staging/unisys
make M=drivers/staging/unisys

regards
sudip

