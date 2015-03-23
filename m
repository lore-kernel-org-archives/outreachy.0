X-GM-THRID: 9697904033792
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,cb4f1861711cff87
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.92.84 with SMTP id s20mr7066344icm.7.1427152999104;
        Mon, 23 Mar 2015 16:23:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.4 with SMTP id a4ls1944887ioa.105.gmail; Mon, 23 Mar
 2015 16:23:18 -0700 (PDT)
X-Received: by 10.50.87.97 with SMTP id w1mr20561463igz.1.1427152998755;
        Mon, 23 Mar 2015 16:23:18 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si278751pac.1.2015.03.23.16.23.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:23:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BF87B982;
	Mon, 23 Mar 2015 23:23:17 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:55:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Doubt about patches
Message-ID: <20150323215544.GA31936@kroah.com>
References: <CAHjTdYfn+yA3zCzviu9Bqf5VTL8w4EOxqf332Lj-wx0Frs2Jow@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHjTdYfn+yA3zCzviu9Bqf5VTL8w4EOxqf332Lj-wx0Frs2Jow@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 24, 2015 at 03:10:26AM +0530, Vatika Harlalka wrote:
> Hey, I would like to inquire about patches applied to staging-next.
> I've got email confirmation regarding the patches being applied to the tree on
> 20th March but I can't find them here:
> 
> https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/log/?h=
> staging-next&qt=author&q=vatika
> 
> Could someone please clarify this? Thanks! :)
> 

When traveling, sometimes emails sneak out much easier than pushing to
git.kernel.org does, due to 2-factor authentication and other security
measures around kernel.org.  Sorry for not pushing properly earlier, but
they should all now be present on git.kernel.org.  If not, please let me
know the git commit id of the patch the email said was applied and I
will look to see what went wrong.

thanks,

greg k-h

