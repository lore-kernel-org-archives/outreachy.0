X-GM-THRID: 6396125246226694144
X-Received: by 10.99.113.1 with SMTP id m1mr3635447pgc.87.1489629037318;
        Wed, 15 Mar 2017 18:50:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls3989336oth.13.gmail; Wed, 15 Mar
 2017 18:50:36 -0700 (PDT)
X-Received: by 10.157.23.43 with SMTP id i43mr3021340ota.118.1489629036762;
        Wed, 15 Mar 2017 18:50:36 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r66si656611pfb.7.2017.03.15.18.50.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 18:50:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.132.152.98])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0F470BF0;
	Thu, 16 Mar 2017 01:50:35 +0000 (UTC)
Date: Thu, 16 Mar 2017 10:50:22 +0900
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: "Dilger, Andreas" <andreas.dilger@intel.com>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: rw26: Remove
 unused function definition
Message-ID: <20170316015022.GC27447@kroah.com>
References: <20170311063153.GA6625@sayli-HP-15-Notebook-PC>
 <20170312134000.GE27791@kroah.com>
 <5D9F29B8-FC98-4FE2-B218-4F5173382EE2@intel.com>
 <CAKG5xWg=vNNUuARiqVZ2aEouYxqSMjpJ4xDh39wBHKg2gTbH0g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKG5xWg=vNNUuARiqVZ2aEouYxqSMjpJ4xDh39wBHKg2gTbH0g@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 15, 2017 at 09:35:31PM +0530, sayli karnik wrote:
> On Wed, Mar 15, 2017 at 2:37 PM, Dilger, Andreas
> <andreas.dilger@intel.com> wrote:
> > On Mar 12, 2017, at 07:40, Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> >>
> >> On Sat, Mar 11, 2017 at 12:01:53PM +0530, sayli karnik wrote:
> >>> The patch removes unused function definition ll_get_user_pages().
> >>>
> >>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> >>> ---
> >>> drivers/staging/lustre/lustre/llite/rw26.c | 26 --------------------------
> >>> 1 file changed, 26 deletions(-)
> >>>
> >>> diff --git a/drivers/staging/lustre/lustre/llite/rw26.c b/drivers/staging/lustre/lustre/llite/rw26.c
> >>> index d89e795..420f296 100644
> >>> --- a/drivers/staging/lustre/lustre/llite/rw26.c
> >>> +++ b/drivers/staging/lustre/lustre/llite/rw26.c
> >>> @@ -156,32 +156,6 @@ static int ll_releasepage(struct page *vmpage, gfp_t gfp_mask)
> >>>
> >>> #define MAX_DIRECTIO_SIZE (2 * 1024 * 1024 * 1024UL)
> >>>
> >>> -static inline int ll_get_user_pages(int rw, unsigned long user_addr,
> >>> -                                size_t size, struct page ***pages,
> >>> -                                int *max_pages)
> >>> -{
> >>> -    int result = -ENOMEM;
> >>> -
> >>> -    /* set an arbitrary limit to prevent arithmetic overflow */
> >>> -    if (size > MAX_DIRECTIO_SIZE) {
> >>> -            *pages = NULL;
> >>> -            return -EFBIG;
> >>> -    }
> >>> -
> >>> -    *max_pages = (user_addr + size + PAGE_SIZE - 1) >> PAGE_SHIFT;
> >>> -    *max_pages -= user_addr >> PAGE_SHIFT;
> >>> -
> >>> -    *pages = libcfs_kvzalloc(*max_pages * sizeof(**pages), GFP_NOFS);
> >>> -    if (*pages) {
> >>> -            result = get_user_pages_fast(user_addr, *max_pages,
> >>> -                                         (rw == READ), *pages);
> >>> -            if (unlikely(result <= 0))
> >>> -                    kvfree(*pages);
> >>> -    }
> >>> -
> >>> -    return result;
> >>> -}
> >>> -
> >>
> >> Should this be deleted?  Given that ll_free_user_pages() is used, that
> >> implies that this function should also be used somewhere.  Why isn't it?
> >
> > Al replaced the use of ll_get_user_pages() with iov_iter_get_pages_alloc() in
> > commit 91f79c43d1b54d7154b118860d81b39bad07dfff so it is no longer used.
> >
> Yes it is, thanks for the input!

Ok, can you please resend this patch with this information in the
changelog text so I don't ask it again when I see it again?

thanks,

greg k-h

