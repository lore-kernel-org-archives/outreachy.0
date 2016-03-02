X-GM-THRID: 6256371025364123648
X-Received: by 10.194.239.163 with SMTP id vt3mr3238422wjc.3.1456935936214;
        Wed, 02 Mar 2016 08:25:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.86.135 with SMTP id k129ls443884wmb.26.canary; Wed, 02 Mar
 2016 08:25:35 -0800 (PST)
X-Received: by 10.28.194.213 with SMTP id s204mr123442wmf.1.1456935935677;
        Wed, 02 Mar 2016 08:25:35 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z75si45332wmz.2.2016.03.02.08.25.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5F080DBA;
	Wed,  2 Mar 2016 16:25:34 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:34 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lustre: lov: Prefer
 list_for_each_entry_safe()
Message-ID: <20160302162534.GE987@kroah.com>
References: <20160228205401.GA7543@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160228205401.GA7543@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 03:54:01PM -0500, Janani Ravichandran wrote:
> Use list_for_each_entry_safe() instead of a combination of
> list_for_each_safe() and list_entry(). Also, remove declaration of
> variable pos, which is no longer used.
> 
> Semantic patch used:
> 
> @a@
> expression pos, n, head;
> expression mem;
> type t;
> identifier var;
> iterator name list_for_each_entry_safe, list_for_each_safe;
> @@
> 
> - list_for_each_safe(pos, n, head)
> + list_for_each_entry_safe(var, n, head, mem)
>   {
>    ... when != var
> -  var = \(list_entry \| container_of\)(pos, t, mem);
>    ... when != pos
>   }
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_obd.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

One, or more, of your patches in this 9 patch series (why didn't you
number it), breaks the build :(

Please ALWAYS test build your patches.

greg k-h

