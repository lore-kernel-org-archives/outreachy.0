X-GM-THRID: 6212618506149560320
X-Received: by 10.13.217.75 with SMTP id b72mr2559341ywe.30.1446663671993;
        Wed, 04 Nov 2015 11:01:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.90 with SMTP id h87ls491775iod.11.gmail; Wed, 04 Nov
 2015 11:01:11 -0800 (PST)
X-Received: by 10.50.142.1 with SMTP id rs1mr3756466igb.0.1446663670997;
        Wed, 04 Nov 2015 11:01:10 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si296776pbc.1.2015.11.04.11.01.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 11:01:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.10.71])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 53F9F9A;
	Wed,  4 Nov 2015 19:01:10 +0000 (UTC)
Date: Wed, 4 Nov 2015 11:01:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: tracefile: Remove
 wrapper function
Message-ID: <20151104190109.GA26203@kroah.com>
References: <20151102181237.GA41744@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151102181237.GA41744@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Nov 02, 2015 at 11:42:37PM +0530, Shivani Bhardwaj wrote:
> Remove the function cfs_tage_from_list() and replace all its calls with
> the function it wrapped.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/lustre/lustre/libcfs/tracefile.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.c b/drivers/staging/lustre/lustre/libcfs/tracefile.c
> index 973c7c2..907214a 100644
> --- a/drivers/staging/lustre/lustre/libcfs/tracefile.c
> +++ b/drivers/staging/lustre/lustre/libcfs/tracefile.c
> @@ -59,12 +59,6 @@ static atomic_t cfs_tage_allocated = ATOMIC_INIT(0);
>  static void put_pages_on_tcd_daemon_list(struct page_collection *pc,
>  					 struct cfs_trace_cpu_data *tcd);
>  
> -static inline struct cfs_trace_page *
> -cfs_tage_from_list(struct list_head *list)
> -{
> -	return list_entry(list, struct cfs_trace_page, linkage);
> -}

No, this is a "good" function to keep around, it makes it easier to
understand what is going on, and easier to remember how to call it
instead of having to look up the list_entry() logic each time.

So please keep this one.

thanks,

greg k-h

