X-GM-THRID: 6203546917110022144
X-Received: by 10.129.73.143 with SMTP id w137mr14545459ywa.19.1444464442091;
        Sat, 10 Oct 2015 01:07:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.179 with SMTP id f48ls2139657qgd.22.gmail; Sat, 10 Oct
 2015 01:07:21 -0700 (PDT)
X-Received: by 10.140.237.202 with SMTP id i193mr14600773qhc.10.1444464441669;
        Sat, 10 Oct 2015 01:07:21 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id el2si622417pbb.0.2015.10.10.01.07.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 01:07:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id hy16so107492359pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 01:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=x7d+0kWiWROGWQr1hNG5nepxszWDYOKIvbbrgZMBMhY=;
        b=GXYGrv4avPglcKeAc9WPYUFR/KEPoZ+8u4YpZ5EYskkHLUmLTKjtAGKfZb9Y2CXrlj
         8tIhmak5IeoSqF1e2J4UYeFw5659ion/FikVWHL8ve3E6dBOhTHgGzAxXv0ylwEpI0om
         cIf96bt9Z/HgPymhyXqZdeqlVuvqgsqoyMUQjUde4AyNFnKIWypCiujw6T+UsW//ooaZ
         WKi3wlT+e3K5f/dJ0BmH8BIvoYLx9iiFlKMk9TSGf/tV5AggeRJbotK0Pd+GsL0KDm6b
         c0vSI6qiMa2VuiKD2acncD2rpyUToQzOvSwm0PvwQOcLU33ZAxCiuw4OJiiEiuAY2HUC
         x7Fg==
X-Received: by 10.66.161.234 with SMTP id xv10mr3643308pab.131.1444464441494;
        Sat, 10 Oct 2015 01:07:21 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id bo5sm6581002pbb.76.2015.10.10.01.07.19
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 10 Oct 2015 01:07:20 -0700 (PDT)
Date: Sat, 10 Oct 2015 13:37:15 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Shivani Bhardwaj <shivanib134@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: sm750fb: ddk750_help:
 Included KERN_facility level using dev_info
Message-ID: <20151010080715.GF4795@sudip-pc>
References: <20151009142118.GA57009@ubuntu>
 <20151010071443.GC4795@sudip-pc>
 <alpine.DEB.2.02.1510100923080.2062@localhost6.localdomain6>
 <20151010073822.GE4795@sudip-pc>
 <alpine.DEB.2.02.1510100940030.2062@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510100940030.2062@localhost6.localdomain6>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Oct 10, 2015 at 09:40:53AM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 10 Oct 2015, Sudip Mukherjee wrote:
> 
> > On Sat, Oct 10, 2015 at 09:24:52AM +0200, Julia Lawall wrote:
> > > On Sat, 10 Oct 2015, Sudip Mukherjee wrote:
> > > 
> > > > On Fri, Oct 09, 2015 at 07:51:18PM +0530, Shivani Bhardwaj wrote:
<snip>
> > 
> > pr_info will be better. I can use dev_info here, but the changes that
> > has to be made for that, I think that will become too complicated for
> > her, atleast at this stage.
> 
> Maybe the callers have a device structure available?

Yes, they have. :)

regards
sudip

