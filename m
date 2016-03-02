X-GM-THRID: 6256393273902891008
X-Received: by 10.25.136.134 with SMTP id k128mr3222551lfd.5.1456935933887;
        Wed, 02 Mar 2016 08:25:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.25.76 with SMTP id 73ls437419lfz.96.gmail; Wed, 02 Mar 2016
 08:25:33 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr3250175lbb.2.1456935933383;
        Wed, 02 Mar 2016 08:25:33 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v68si234685wmd.1.2016.03.02.08.25.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0C0E5DBA;
	Wed,  2 Mar 2016 16:25:32 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:31 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: ptlrpc: Use
 list_for_each_entry_safe()
Message-ID: <20160302162531.GD987@kroah.com>
References: <20160228222021.GA8699@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160228222021.GA8699@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 05:20:21PM -0500, Janani Ravichandran wrote:
> Use list_for_each_entry_safe() instead of a combination of
> list_for_each_safe() and list_entry(). Also remove variable pos
> which becomes useless as a result.
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
>  drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Does not apply to the tree properly :(

