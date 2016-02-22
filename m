X-GM-THRID: 6254064858167246848
X-Received: by 10.25.136.134 with SMTP id k128mr125230lfd.5.1456175459343;
        Mon, 22 Feb 2016 13:10:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.137.68 with SMTP id l65ls486580wmd.8.gmail; Mon, 22 Feb
 2016 13:10:58 -0800 (PST)
X-Received: by 10.28.47.140 with SMTP id v134mr1479030wmv.3.1456175458684;
        Mon, 22 Feb 2016 13:10:58 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w197si995125wmw.3.2016.02.22.13.10.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 13:10:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4CF29C79;
	Mon, 22 Feb 2016 21:10:57 +0000 (UTC)
Date: Mon, 22 Feb 2016 13:10:57 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] Staging: lustre: Use min_t or
 max_t instead of ternary operator
Message-ID: <20160222211057.GA5849@kroah.com>
References: <cover.1456136671.git.bhumirks@gmail.com>
 <ae653a4fe839af60c62a545477d803c8b0866968.1456136671.git.bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ae653a4fe839af60c62a545477d803c8b0866968.1456136671.git.bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 22, 2016 at 04:15:33PM +0530, Bhumika Goyal wrote:
> Replace ternary operators with macros min_t/max_t as they are 
> shorter and thus increases code readability. Macro min_t return the minimum
> and min_t returns maximum of the two compared values.
> Made a semantic patch for changes:
> 
> @@
> type T;
> T x;
> T y;
> @@
> (
> - x < y ? x : y
> + min_t(T,x,y)
> |
> - x > y ? x : y
> + max_t(T,x,y)
> )

If they are the same type, why can't you just use min() and max()?  The
call to min_t() and max_t() seem a bit of an overkill as they do an
explicit cast for when the types of the two variables are not the same
type.

So I'd prefer this patch to just be min() and max() if at all possible.

thanks,

greg k-h

