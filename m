X-GM-THRID: 6204202017564393472
X-Received: by 10.50.41.7 with SMTP id b7mr14905619igl.12.1444694047306;
        Mon, 12 Oct 2015 16:54:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.36 with SMTP id q33ls75479qgd.62.gmail; Mon, 12 Oct
 2015 16:54:06 -0700 (PDT)
X-Received: by 10.13.228.133 with SMTP id n127mr26055740ywe.37.1444694046722;
        Mon, 12 Oct 2015 16:54:06 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si24507pbb.0.2015.10.12.16.54.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 16:54:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (mobile-166-176-185-12.mycingular.net [166.176.185.12])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 63C99360;
	Mon, 12 Oct 2015 23:54:04 +0000 (UTC)
Date: Mon, 12 Oct 2015 16:40:02 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] sending patch revisions w mutt ???
Message-ID: <20151012234002.GB23779@kroah.com>
References: <20151011015226.GA3134@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151011015226.GA3134@Ubuntu-D830>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 10, 2015 at 06:52:27PM -0700, Alison Schofield wrote:
> Looking for help threading my patch revisions in mutt.
> 
> I use the mutt -H option to send the original and now I want to send v2 threaded.  
> 
> I can open mutt, goto thread, select reply, and then read (:r) in the patch
> file with vim.  This also means I edit the Subject line manually. None of this is very elegant. 
> 
> Is there a better way?
> 
> Also, do you want it threaded right on top, ie. in reply to the previous
> patch message.

For a patch series, send a whole new series, it's easier for me to
figure out.

As for using mutt, it will work, you can just go to the email and do a
'reply all' and hand-edit the header like you are doing, which works
well, I do that all the time for "small" patch series.  It's whatever
you get comfortable with.

thanks,

greg k-h

