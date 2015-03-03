X-GM-THRID: 5931983175680
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bd66ad1392ef0d48
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.197.137 with SMTP id iu9mr325770pbc.5.1425408407195;
        Tue, 03 Mar 2015 10:46:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.191.36 with SMTP id gv4ls109010obc.96.gmail; Tue, 03 Mar
 2015 10:46:46 -0800 (PST)
X-Received: by 10.182.246.198 with SMTP id xy6mr353085obc.26.1425408406931;
        Tue, 03 Mar 2015 10:46:46 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si221915pdb.1.2015.03.03.10.46.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 10:46:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.0.216])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9991FB31;
	Tue,  3 Mar 2015 18:46:46 +0000 (UTC)
Date: Tue, 3 Mar 2015 09:05:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Somya Anand <somyaanand214@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH V2 1/2] Staging: media: Add a blank
 line after declaration
Message-ID: <20150303170505.GA11303@kroah.com>
References: <1425321027-20698-1-git-send-email-somyaanand214@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425321027-20698-1-git-send-email-somyaanand214@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 03, 2015 at 12:00:26AM +0530, Somya Anand wrote:
> This patch fixes checkpatch.pl warning by adding a blank line after
> declaration for better readability.
> 
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
> Changes since v1:
> * Remove some of the false positive warnings
> 
>  drivers/staging/media/davinci_vpfe/dm365_isif.c | 1 +
>  1 file changed, 1 insertion(+)

Does not apply at all :(

