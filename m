X-GM-THRID: 6254064858167246848
X-Received: by 10.112.162.101 with SMTP id xz5mr3734026lbb.20.1456175483224;
        Mon, 22 Feb 2016 13:11:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.10.209 with SMTP id 200ls500243wmk.18.gmail; Mon, 22 Feb
 2016 13:11:22 -0800 (PST)
X-Received: by 10.28.63.19 with SMTP id m19mr1482513wma.0.1456175482656;
        Mon, 22 Feb 2016 13:11:22 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h73si812792wme.0.2016.02.22.13.11.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 13:11:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 536BAC79;
	Mon, 22 Feb 2016 21:11:21 +0000 (UTC)
Date: Mon, 22 Feb 2016 13:11:21 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/5] Staging: Replace ternary
 operators with min_t/max_t
Message-ID: <20160222211121.GB5849@kroah.com>
References: <cover.1456136671.git.bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456136671.git.bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 22, 2016 at 04:15:29PM +0530, Bhumika Goyal wrote:
> This patchset replaces ternary operators with macros min_t/max_t as 
> they are shorter and thus increases code readability. Macro min_t return 
> the minimum and min_t returns maximum  of the two compared values.
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

Same min_t() and max_t() comment for all of these, thanks.

greg k-h

