X-GM-THRID: 9425045684224
X-Received: by 10.42.83.209 with SMTP id i17mr21692083icl.32.1427152886744;
        Mon, 23 Mar 2015 16:21:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.1 with SMTP id i1ls2770425qgi.34.gmail; Mon, 23 Mar
 2015 16:21:26 -0700 (PDT)
X-Received: by 10.236.2.35 with SMTP id 23mr1936046yhe.22.1427152886549;
        Mon, 23 Mar 2015 16:21:26 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si291175pac.0.2015.03.23.16.21.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:21:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6E39CA79;
	Mon, 23 Mar 2015 23:21:25 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:26:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] sm750fb: Fix C99 comment and if-else
 braces
Message-ID: <20150323212648.GA23414@kroah.com>
References: <20150321171502.GA27122@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150321171502.GA27122@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 21, 2015 at 10:45:02PM +0530, Amitoj Kaur Chawla wrote:
> The edits have been made to fix C99 Comment and properly indent
> the if-else statements with the braces.
> 
> Also, to use tabs instead of spaces.

That is a bunch of things all at once, which isn't allowed.  Please only
do one type of thing per patch.

thanks,

greg k-h

