X-GM-THRID: 10636159352832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3829042d7389b846
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.72.98 with SMTP id c2mr10080092igv.0.1427903317137;
        Wed, 01 Apr 2015 08:48:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.50.233 with SMTP id f9ls115940obo.11.gmail; Wed, 01 Apr
 2015 08:48:36 -0700 (PDT)
X-Received: by 10.182.248.227 with SMTP id yp3mr53751514obc.22.1427903316874;
        Wed, 01 Apr 2015 08:48:36 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id br7si253393pdb.2.2015.04.01.08.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:48:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F014E268;
	Wed,  1 Apr 2015 15:48:35 +0000 (UTC)
Date: Wed, 1 Apr 2015 17:48:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: sm750fb: Replace C99
 Comments with C89 comments style
Message-ID: <20150401154832.GA12062@kroah.com>
References: <20150401152954.GA6779@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150401152954.GA6779@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Apr 01, 2015 at 09:00:36PM +0530, Amitoj Kaur Chawla wrote:
> Replaced C99 Comments style with C89 Comment style and removed C99 comments that perform prints only.

Please wrap your comment lines at 72 characters like your editor is
asking you to do so within git :)

thanks,

greg k-h

